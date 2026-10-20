-- =============================================================================
-- economy_04.sql — economy question pack, part 04
-- 250 questions. Applied after supabase/migrations/004_reference_data.sql
-- =============================================================================

begin;

-- economy | rbi-and-financial-regulation | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'rbi-and-financial-regulation'),
    'The ''NHB'' is:',
    'The National Housing Bank, set up in July 1988 as the apex institution for the housing finance, is wholly owned by the RBI.',
    'medium',
    'Standard Reference',
    null,
    'd6502a609c173e8145f0d90963f55f25'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd6502a609c173e8145f0d90963f55f25'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The apex institution for the housing finance and it was set up in 1988'),
            ('B', 'It was set up in 1955'),
            ('C', 'It is a commercial bank'),
            ('D', 'It is the apex of the agriculture')
           ) as v(label, option_text)
 where q.question_hash = 'd6502a609c173e8145f0d90963f55f25'
on conflict (question_id, label) do nothing;

-- economy | rbi-and-financial-regulation | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'rbi-and-financial-regulation'),
    'The SEBI was constituted:',
    'The SEBI was constituted in April 1988 as a non-statutory body and it was given the statutory powers by the SEBI Act of 1992.',
    'easy',
    'Standard Reference',
    null,
    'baaaab4c199dfba2c82ab84341723987'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'baaaab4c199dfba2c82ab84341723987'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a ministry'),
            ('B', 'in 1988 and it was given the statutory powers in 1992'),
            ('C', 'in 1992 as a statute'),
            ('D', 'in 2000')
           ) as v(label, option_text)
 where q.question_hash = 'baaaab4c199dfba2c82ab84341723987'
on conflict (question_id, label) do nothing;

-- economy | rbi-and-financial-regulation | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'rbi-and-financial-regulation'),
    'Which of the following statements is/are correct in relation to the IRDAI?',
    'The IRDAI was constituted in 1999 under the IRDA Act of 1999 and it took over the regulation of the insurance from the Controller of Insurance.',
    'medium',
    'Standard Reference',
    null,
    '92708acc64bf7bb47444a7bf6f535bde'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '92708acc64bf7bb47444a7bf6f535bde'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The IRDAI was set up in 1999 and it regulates the insurance sector'),
            ('B', 'It was set up in 1991'),
            ('C', 'It was set up in 1948'),
            ('D', 'It is a commercial bank')
           ) as v(label, option_text)
 where q.question_hash = '92708acc64bf7bb47444a7bf6f535bde'
on conflict (question_id, label) do nothing;

-- economy | rbi-and-financial-regulation | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'rbi-and-financial-regulation'),
    'The ''PFRDA'' is:',
    'The PFRDA, the Pension Fund Regulatory and Development Authority, was constituted in 2003 under the PFRDA Act of 1999 to regulate the pension funds and the National Pension System.',
    'medium',
    'Standard Reference',
    null,
    '351c24a3677328c18199ec12d8b78f00'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '351c24a3677328c18199ec12d8b78f00'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The securities regulator'),
            ('B', 'The insurance regulator'),
            ('C', 'The Pension Fund Regulatory and Development Authority set up in 2003'),
            ('D', 'The financial regulator of the banks')
           ) as v(label, option_text)
 where q.question_hash = '351c24a3677328c18199ec12d8b78f00'
on conflict (question_id, label) do nothing;

-- economy | rbi-and-financial-regulation | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'rbi-and-financial-regulation'),
    'The CVC was constituted in 1988 and it was made:',
    'The Central Vigilance Commission was constituted in 1988 and it was made a multi-member body with the executive control in 1993 and it was given the statutory status in 2003.',
    'hard',
    'Standard Reference',
    null,
    'c9fbd22a4e9fdfe6d2babc7b1db287f7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'c9fbd22a4e9fdfe6d2babc7b1db287f7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'in 1991'),
            ('B', 'a statutory body of the 2003 Act'),
            ('C', 'a judicial body'),
            ('D', 'a multi-member body in 1993')
           ) as v(label, option_text)
 where q.question_hash = 'c9fbd22a4e9fdfe6d2babc7b1db287f7'
on conflict (question_id, label) do nothing;

-- economy | rbi-and-financial-regulation | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'rbi-and-financial-regulation'),
    'In the context of the Capital adequacy, which of the following is correct?',
    'The Basel III norms require the total capital of at least 8 per cent of the risk weighted assets and the RBI phased them in from 2013 with the full compliance by 2019.',
    'medium',
    'Standard Reference',
    null,
    'bd1587c06a709e975d9e2eeee1977c5e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'bd1587c06a709e975d9e2eeee1977c5e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'They regulate the insurance solvency'),
            ('B', 'The Basel norms require the minimum capital of 8 per cent of the risk weighted assets and the India adopted them from 2013'),
            ('C', 'They require the 5 per cent of the deposits'),
            ('D', 'They are the guidelines of the SEBI')
           ) as v(label, option_text)
 where q.question_hash = 'bd1587c06a709e975d9e2eeee1977c5e'
on conflict (question_id, label) do nothing;

-- economy | rbi-and-financial-regulation | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'rbi-and-financial-regulation'),
    'The overall priority sector lending target is:',
    'The overall priority sector target of the scheduled commercial banks is 18 per cent of the adjusted net bank credit with the sub-targets of 18 per cent for the agriculture and 7.5 per cent for the MSMEs.',
    'medium',
    'Standard Reference',
    null,
    'e1f783c54904837cfdc3784905c73321'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e1f783c54904837cfdc3784905c73321'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '5 per cent of the deposits'),
            ('B', '18 per cent of the ANBC with the sub-targets for the agriculture and the MSMEs'),
            ('C', '40 per cent of the GDP'),
            ('D', 'only to the exports')
           ) as v(label, option_text)
 where q.question_hash = 'e1f783c54904837cfdc3784905c73321'
on conflict (question_id, label) do nothing;

-- economy | rbi-and-financial-regulation | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'rbi-and-financial-regulation'),
    'The PMJDY of 2014 aimed at a bank account for every household and it had:',
    'The Pradhan Mantri Jan Dhan Yojana of 2014 aimed at a bank account for every household and it achieved the largest number of the basic bank accounts opened in the world.',
    'easy',
    'Standard Reference',
    null,
    'ceca386b750be52f3f61c297c7be66b4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ceca386b750be52f3f61c297c7be66b4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the largest number of the accounts opened in the world'),
            ('B', 'of 2015'),
            ('C', 'the insurance scheme'),
            ('D', 'of 1991')
           ) as v(label, option_text)
 where q.question_hash = 'ceca386b750be52f3f61c297c7be66b4'
on conflict (question_id, label) do nothing;

-- economy | rbi-and-financial-regulation | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'rbi-and-financial-regulation'),
    'Consider the following statements. Which of them is correct with regard to the Payment?',
    'The National Payments Corporation of India was set up in 2008 as an initiative of the RBI and the Indian Banks'' Association to operate the retail payments systems.',
    'medium',
    'Standard Reference',
    null,
    '67b4b69f41bf8f09bff52bcd2c09b319'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '67b4b69f41bf8f09bff52bcd2c09b319'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It was set up in 1991'),
            ('B', 'It is a commercial bank'),
            ('C', 'It is a ministry'),
            ('D', 'The NPCI was set up in 2008 under the guidance of the RBI and the IBA')
           ) as v(label, option_text)
 where q.question_hash = '67b4b69f41bf8f09bff52bcd2c09b319'
on conflict (question_id, label) do nothing;

-- economy | rbi-and-financial-regulation | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'rbi-and-financial-regulation'),
    'The digital payment transactions in India have grown enormously with the UPI and it was:',
    'The digital payment transactions of India have grown enormously and the UPI, launched in 2016, is the largest real time payment system in the world.',
    'medium',
    'Standard Reference',
    null,
    '7c8a410c74f7691755619b96480faf31'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '7c8a410c74f7691755619b96480faf31'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'achieved in 1991'),
            ('B', 'launched in 2016'),
            ('C', 'the largest real time payment system of the world'),
            ('D', 'still negligible')
           ) as v(label, option_text)
 where q.question_hash = '7c8a410c74f7691755619b96480faf31'
on conflict (question_id, label) do nothing;

-- economy | rbi-and-financial-regulation | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'rbi-and-financial-regulation'),
    'The National Financial Literacy Assessment Survey is:',
    'The National Financial Literacy Assessment Survey, conducted annually by the RBI, measures the financial literacy of the Indians and it showed an improvement in 2021.',
    'hard',
    'Standard Reference',
    null,
    'c8e5644c035d3eee2638cdb17947bc12'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'c8e5644c035d3eee2638cdb17947bc12'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'conducted annually by the RBI'),
            ('B', 'conducted by the SEBI'),
            ('C', 'a census'),
            ('D', 'a mandatory exam')
           ) as v(label, option_text)
 where q.question_hash = 'c8e5644c035d3eee2638cdb17947bc12'
on conflict (question_id, label) do nothing;

-- economy | rbi-and-financial-regulation | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'rbi-and-financial-regulation'),
    'Which of the following statements is/are correct in relation to the Mutual Fund?',
    'The mutual funds are regulated by the SEBI with the AMFI and the Unit Trust of India, the largest, was established in 1964.',
    'medium',
    'Standard Reference',
    null,
    'bb2309462074cb0679e9dadf35caf706'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'bb2309462074cb0679e9dadf35caf706'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The RBI regulates the mutual funds'),
            ('B', 'The IRDAI regulates the mutual funds'),
            ('C', 'The MFI is a department of the government'),
            ('D', 'The SEBI and the AMFI regulate the mutual funds and the UTI is the oldest one')
           ) as v(label, option_text)
 where q.question_hash = 'bb2309462074cb0679e9dadf35caf706'
on conflict (question_id, label) do nothing;

-- economy | rbi-and-financial-regulation | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'rbi-and-financial-regulation'),
    'The LIC of India is:',
    'The Life Insurance Corporation was formed in 1956 with the nationalisation of the 44 Indian insurers and it is the largest life insurer in the country.',
    'medium',
    'Standard Reference',
    null,
    '1f6e736ff463f3bf9907a036e58abcd9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '1f6e736ff463f3bf9907a036e58abcd9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a unit of the RBI'),
            ('B', 'the largest life insurer and it was nationalised in 1956'),
            ('C', 'nationalised in 1947'),
            ('D', 'a private company')
           ) as v(label, option_text)
 where q.question_hash = '1f6e736ff463f3bf9907a036e58abcd9'
on conflict (question_id, label) do nothing;

-- economy | rbi-and-financial-regulation | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'rbi-and-financial-regulation'),
    'The FEMA of 1999 gave:',
    'The Foreign Exchange Management Act of 1999, which came into force in 2000, gave the RBI the authority to regulate the foreign exchange and the capital account transactions, replacing the FERA of 1973.',
    'medium',
    'Standard Reference',
    null,
    'da47d5d4e174e6152868e42bfd0a9a05'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'da47d5d4e174e6152868e42bfd0a9a05'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a trade law'),
            ('B', 'a bankruptcy law'),
            ('C', 'the RBI the authority over the foreign exchange and the capital account transactions'),
            ('D', 'of 1973')
           ) as v(label, option_text)
 where q.question_hash = 'da47d5d4e174e6152868e42bfd0a9a05'
on conflict (question_id, label) do nothing;

-- economy | rbi-and-financial-regulation | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'rbi-and-financial-regulation'),
    'The IBC of 2016 gave:',
    'The Insolvency and Bankruptcy Code of 2016 put the creditors in control of the insolvent company and provided for a time-bound resolution with the professional managers.',
    'medium',
    'Standard Reference',
    null,
    'd8aaf92a9d48206085c95d5b1c56ca01'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd8aaf92a9d48206085c95d5b1c56ca01'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the creditors the control of the company and the time-bound resolution'),
            ('B', 'it abolished the SARFAESI Act'),
            ('C', 'the SEBI'),
            ('D', 'the banking regulation act')
           ) as v(label, option_text)
 where q.question_hash = 'd8aaf92a9d48206085c95d5b1c56ca01'
on conflict (question_id, label) do nothing;

-- economy | rbi-and-financial-regulation | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'rbi-and-financial-regulation'),
    'The MUDRA loans are:',
    'The MUDRA, the Micro Units Development and Refinance Agency Ltd, provides the loans to the micro and the small enterprises with the Shishu, the Kishore and the Tarun categories.',
    'easy',
    'Standard Reference',
    null,
    '42b64de62dbc3bec4eef7c927e52faf8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '42b64de62dbc3bec4eef7c927e52faf8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'for the large corporates'),
            ('B', 'for the farmers only'),
            ('C', 'a foreign funding scheme'),
            ('D', 'for the micro units and the small enterprises and the Shishu category is for the new entrepreneurs')
           ) as v(label, option_text)
 where q.question_hash = '42b64de62dbc3bec4eef7c927e52faf8'
on conflict (question_id, label) do nothing;

-- economy | rbi-and-financial-regulation | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'rbi-and-financial-regulation'),
    'The banks in the India have:',
    'The Indian banks are subject to the CRR and the SLR and the priority sector lending obligations and the RBI is the apex regulator of the banking system.',
    'easy',
    'Standard Reference',
    null,
    '4d6dff5dd8c6985a38676de29804dea0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '4d6dff5dd8c6985a38676de29804dea0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'all privately owned'),
            ('B', 'the CRR and the SLR and the priority sector lending obligations'),
            ('C', 'no regulatory obligations'),
            ('D', 'The RBI does not regulate the banks')
           ) as v(label, option_text)
 where q.question_hash = '4d6dff5dd8c6985a38676de29804dea0'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'The balance sheet is:',
    'The balance sheet is a statement of the financial position at a particular date and the income statement presents the performance over a period.',
    'easy',
    'Standard Reference',
    null,
    'b9b1c36a183b303904e28efc938c8d93'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'b9b1c36a183b303904e28efc938c8d93'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'for a period'),
            ('B', 'for a point in time'),
            ('C', 'a statement of the financial position at a point of time and the income statement is for a period'),
            ('D', 'a point in time and the balance sheet is for a period')
           ) as v(label, option_text)
 where q.question_hash = 'b9b1c36a183b303904e28efc938c8d93'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'The ''Depreciation'' in the accounting:',
    'The depreciation is the systematic allocation of the cost of a tangible asset over its useful life and it is a non-cash expense.',
    'easy',
    'Standard Reference',
    null,
    '1852fd80863637468c59dd873d5ee862'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '1852fd80863637468c59dd873d5ee862'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is an expense of the year of the purchase'),
            ('B', 'Is the allocation of the cost of the asset over its useful life'),
            ('C', 'Is the fall in the market value'),
            ('D', 'Is the loss of the cash')
           ) as v(label, option_text)
 where q.question_hash = '1852fd80863637468c59dd873d5ee862'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'The ''Working capital'' of a company:',
    'The working capital is the current assets less the current liabilities and it measures the short term liquidity of the business.',
    'easy',
    'Standard Reference',
    null,
    '349ef535d1e3980602510268e110191b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '349ef535d1e3980602510268e110191b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the cash balance only'),
            ('B', 'Is the long term funds'),
            ('C', 'Is the current assets less the current liabilities'),
            ('D', 'Is the total assets')
           ) as v(label, option_text)
 where q.question_hash = '349ef535d1e3980602510268e110191b'
on conflict (question_id, label) do nothing;

-- economy | inflation | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'inflation'),
    'The headline inflation of India is:',
    'The headline inflation of India is measured by the CPI (Combined) and the core inflation is the CPI without the food, the fuel and the light.',
    'medium',
    'Standard Reference',
    null,
    '703e7439e5432c5ba8e4dd2c8af56b78'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '703e7439e5432c5ba8e4dd2c8af56b78'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'measured by the WPI'),
            ('B', 'the WPI'),
            ('C', 'the same'),
            ('D', 'measured by the CPI and the core by the CPI excluding the food and the fuel')
           ) as v(label, option_text)
 where q.question_hash = '703e7439e5432c5ba8e4dd2c8af56b78'
on conflict (question_id, label) do nothing;

-- economy | inflation | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'inflation'),
    'The ''Base year'' of the Indian CPI has been revised to:',
    'The base year of the CPI series was revised to 2012 and the earlier 2010 and the 2004-05 bases are no longer used.',
    'hard',
    'Standard Reference',
    null,
    '5965cc87dc0c7221fb441eb7773585e5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '5965cc87dc0c7221fb441eb7773585e5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2012'),
            ('B', '2011-12'),
            ('C', '2010'),
            ('D', '2004-05')
           ) as v(label, option_text)
 where q.question_hash = '5965cc87dc0c7221fb441eb7773585e5'
on conflict (question_id, label) do nothing;

-- economy | inflation | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'inflation'),
    'Which of the following is correct in the case of the Deflation?',
    'Deflation is a fall in the general price level and it is generally regarded as more harmful than the mild inflation, as it increases the real burden of the debt.',
    'easy',
    'Standard Reference',
    null,
    '637cbb236187b32f4adc33b26c80a642'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '637cbb236187b32f4adc33b26c80a642'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is the fall in the GDP'),
            ('B', 'It is the fall in the exports'),
            ('C', 'It is the opposite of the inflation and it is the fall in the general price level'),
            ('D', 'It is the rise in the interest rate')
           ) as v(label, option_text)
 where q.question_hash = '637cbb236187b32f4adc33b26c80a642'
on conflict (question_id, label) do nothing;

-- economy | inflation | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'inflation'),
    'In the context of the CPI, which of the following is correct?',
    'The Consumer Price Index measures the retail prices of the consumer goods and the Wholesale Price Index measures the wholesale prices of the commodities.',
    'easy',
    'Standard Reference',
    null,
    'f7819bb55634922af07ea05adc607e11'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f7819bb55634922af07ea05adc607e11'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Neither is used in India'),
            ('B', 'The CPI measures the retail prices and the WPI the wholesale prices'),
            ('C', 'The WPI measures the retail prices'),
            ('D', 'Both measure the same')
           ) as v(label, option_text)
 where q.question_hash = 'f7819bb55634922af07ea05adc607e11'
on conflict (question_id, label) do nothing;

-- economy | inflation | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'inflation'),
    'The expectations theory says that the inflation is:',
    'The expectations theory, associated with the Lucas and the Sargent, holds that the inflation is a function of the expected inflation and that the monetary policy is forward looking.',
    'hard',
    'Standard Reference',
    null,
    '1c21a937489d5f7a0f1c1e566ac4b0a6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '1c21a937489d5f7a0f1c1e566ac4b0a6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a function of the expected inflation and it is a forward looking process'),
            ('B', 'always the demand pull'),
            ('C', 'fixed'),
            ('D', 'the monetarist theory')
           ) as v(label, option_text)
 where q.question_hash = '1c21a937489d5f7a0f1c1e566ac4b0a6'
on conflict (question_id, label) do nothing;

-- economy | inflation | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'inflation'),
    'The ''Base effect'' in the inflation:',
    'A high base of the previous year makes the year-on-year inflation look lower, which is the base effect and it is important in reading the Indian inflation data.',
    'medium',
    'Standard Reference',
    null,
    'd39e3bfbd290eb1ca43cfbbdb19d606e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'd39e3bfbd290eb1ca43cfbbdb19d606e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Raises the interest rate'),
            ('B', 'Is the monetary policy tool'),
            ('C', 'Is the fiscal deficit'),
            ('D', 'Makes the year-on-year inflation look lower because of a high base of the previous year')
           ) as v(label, option_text)
 where q.question_hash = 'd39e3bfbd290eb1ca43cfbbdb19d606e'
on conflict (question_id, label) do nothing;

-- economy | inflation | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'inflation'),
    'The fuel and the transport are:',
    'The fuel and the light and the transport are the largest contributors of the retail inflation in India and the administered prices of the fuel amplify the fluctuations.',
    'medium',
    'Standard Reference',
    null,
    '23621f6d65dbc1f96f7469aefc354d14'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '23621f6d65dbc1f96f7469aefc354d14'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'only the wholesale prices'),
            ('B', 'the largest contributors of the retail inflation in India'),
            ('C', 'the smallest'),
            ('D', 'not included in the CPI')
           ) as v(label, option_text)
 where q.question_hash = '23621f6d65dbc1f96f7469aefc354d14'
on conflict (question_id, label) do nothing;

-- economy | monetary-policy | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'monetary-policy'),
    'The monetary policy is:',
    'The monetary policy is the process of the control of the supply of money in the economy and the demand for it, with the objective of the price stability.',
    'easy',
    'Standard Reference',
    null,
    'a9587ae8e14cbd1d3b95f83f0ae04a5d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a9587ae8e14cbd1d3b95f83f0ae04a5d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the process of controlling the supply of money and the demand for it'),
            ('B', 'the process of the taxation'),
            ('C', 'the control of the foreign exchange'),
            ('D', 'the control of the fiscal deficit')
           ) as v(label, option_text)
 where q.question_hash = 'a9587ae8e14cbd1d3b95f83f0ae04a5d'
on conflict (question_id, label) do nothing;

-- economy | monetary-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'monetary-policy'),
    'Zero lower bound is:',
    'The zero lower bound is the constraint that a central bank facing a very weak demand cannot lower the policy rate below zero, which is one reason for the unconventional policies after 2008.',
    'hard',
    'Standard Reference',
    null,
    'be5308be6b6633d4924000152028bd04'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'be5308be6b6633d4924000152028bd04'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a rule about the government borrowing'),
            ('B', 'the limit on the budget deficit'),
            ('C', 'a restriction on the foreign investment'),
            ('D', 'the constraint that the central bank cannot lower the interest rate below zero')
           ) as v(label, option_text)
 where q.question_hash = 'be5308be6b6633d4924000152028bd04'
on conflict (question_id, label) do nothing;

-- economy | monetary-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'monetary-policy'),
    'The forward contract is:',
    'The forward contract is an agreement to buy or sell a currency at a fixed price on a future date and it is the simplest instrument of the currency risk management.',
    'medium',
    'Standard Reference',
    null,
    'fc2dcc2103ce82a2129cfcb533647356'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'fc2dcc2103ce82a2129cfcb533647356'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a speculative future'),
            ('B', 'a government bond'),
            ('C', 'an agreement to buy or sell at a future price and it is used to hedge the currency risk'),
            ('D', 'a spot transaction')
           ) as v(label, option_text)
 where q.question_hash = 'fc2dcc2103ce82a2129cfcb533647356'
on conflict (question_id, label) do nothing;

-- economy | monetary-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'monetary-policy'),
    'Which of the following statements is/are correct in relation to the Sterilised?',
    'In a sterilised intervention the central bank sells or buys the foreign exchange to check the exchange rate while offsetting the domestic liquidity impact.',
    'hard',
    'Standard Reference',
    null,
    'f8a913f517cd9217c55da559378966d3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f8a913f517cd9217c55da559378966d3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is the increase of the CRR'),
            ('B', 'The sterilised intervention means the RBI intervenes to check the exchange rate without changing the domestic liquidity'),
            ('C', 'It means the RBI prints the money'),
            ('D', 'It is the sale of the government securities')
           ) as v(label, option_text)
 where q.question_hash = 'f8a913f517cd9217c55da559378966d3'
on conflict (question_id, label) do nothing;

-- economy | monetary-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'monetary-policy'),
    'The bank rate was:',
    'The bank rate, the oldest instrument of the monetary policy, is the rate at which the RBI can lend to the commercial banks against the commercial paper and the securities.',
    'medium',
    'Standard Reference',
    null,
    '417eb7f921d526f694c65ad51f77a2d6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '417eb7f921d526f694c65ad51f77a2d6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the rate of the deposit of the public'),
            ('B', 'the rate of the open market operations'),
            ('C', 'the repo rate'),
            ('D', 'the rate at which the RBI lent to the commercial banks and it was the earlier instrument of the monetary policy')
           ) as v(label, option_text)
 where q.question_hash = '417eb7f921d526f694c65ad51f77a2d6'
on conflict (question_id, label) do nothing;

-- economy | monetary-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'monetary-policy'),
    'Which of the following statements regarding the The CRR is correct?',
    'The Cash Reserve Ratio is the minimum reserve that the banks must keep with the RBI as a share of the NDTL and it earns no interest for the banks, unlike the SLR.',
    'medium',
    'Standard Reference',
    null,
    'c1eca5d44b6b6b24d70f4eaf7eeee762'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'c1eca5d44b6b6b24d70f4eaf7eeee762'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The CRR is the minimum reserve that the banks must keep with the RBI and it earns no interest'),
            ('B', 'It is the reserve with the post office'),
            ('C', 'It is the reserve of the government securities'),
            ('D', 'It is the cash reserve of the public')
           ) as v(label, option_text)
 where q.question_hash = 'c1eca5d44b6b6b24d70f4eaf7eeee762'
on conflict (question_id, label) do nothing;

-- economy | monetary-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'monetary-policy'),
    'Which of the following is correct in the case of the SLR?',
    'The Statutory Liquidity Ratio is maintained in the cash, the gold or the approved securities and the banks earn interest on it.',
    'medium',
    'Standard Reference',
    null,
    'c3fedf76ef3730830088656983893bbe'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c3fedf76ef3730830088656983893bbe'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is the reserve of the cash with the public'),
            ('B', 'It is a tax'),
            ('C', 'The SLR is the share of the NDTL that must be maintained in the cash, the gold or the approved securities'),
            ('D', 'It is the reserve with the RBI')
           ) as v(label, option_text)
 where q.question_hash = 'c3fedf76ef3730830088656983893bbe'
on conflict (question_id, label) do nothing;

-- economy | monetary-policy | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'monetary-policy'),
    'The call money is:',
    'The call money is the overnight loan between the banks and the term money is lent for a period of more than a day and it is the largest segment of the money market.',
    'easy',
    'Standard Reference',
    null,
    '6b605f9e296541a4cf44f3b13361e712'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '6b605f9e296541a4cf44f3b13361e712'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'for a longer period'),
            ('B', 'the same'),
            ('C', 'used in the India'),
            ('D', 'the overnight loan between the banks and the term money is for a longer period')
           ) as v(label, option_text)
 where q.question_hash = '6b605f9e296541a4cf44f3b13361e712'
on conflict (question_id, label) do nothing;

-- economy | monetary-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'monetary-policy'),
    'The ''Inflation targeting'' in the India:',
    'The inflation targeting framework is statutory in India since the RBI Act amendment of 2016 and the target is notified by the Central Government in consultation with the RBI.',
    'medium',
    'Standard Reference',
    null,
    '64d6c3c0cfbd07e21290364a418853d4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '64d6c3c0cfbd07e21290364a418853d4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The RBI has a statutory mandate with the target notified by the Central Government'),
            ('B', 'It is a discretionary framework'),
            ('C', 'It was introduced in 1991'),
            ('D', 'There is no target')
           ) as v(label, option_text)
 where q.question_hash = '64d6c3c0cfbd07e21290364a418853d4'
on conflict (question_id, label) do nothing;

-- economy | monetary-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'monetary-policy'),
    'Consider the following statements. Which of them is correct with regard to the MPC?',
    'The Monetary Policy Committee has six members and in the event of an equality of the votes the Governor has a second or the casting vote.',
    'medium',
    'Standard Reference',
    null,
    'c82f542cb4b199aa9eb7f9433cd3de47'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'c82f542cb4b199aa9eb7f9433cd3de47'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It has no voting'),
            ('B', 'The MPC has six members and the Governor has the casting vote in the event of a tie'),
            ('C', 'It has four members'),
            ('D', 'It is chaired by the Finance Minister')
           ) as v(label, option_text)
 where q.question_hash = 'c82f542cb4b199aa9eb7f9433cd3de47'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'Which of the following statements is/are correct in relation to the Fiscal?',
    'The fiscal policy is the use of the government spending, the taxation and the borrowing to achieve the economic objectives and it is the responsibility of the Ministry of Finance.',
    'easy',
    'Standard Reference',
    null,
    'b4c5fdf56167dde6b3d5ede38121f779'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'b4c5fdf56167dde6b3d5ede38121f779'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is the management of the foreign exchange'),
            ('B', 'It is the control of the money supply'),
            ('C', 'The fiscal policy is the manipulation of the government spending and the taxation to achieve the economic goals'),
            ('D', 'It is the manipulation of the interest rate')
           ) as v(label, option_text)
 where q.question_hash = 'b4c5fdf56167dde6b3d5ede38121f779'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'Consider the following statements. Which of them is correct with regard to the Automatic Stabiliser?',
    'The automatic stabilisers are the built-in features of the budget like the progressive taxation and the unemployment benefits, which moderate the business cycle without any new government action.',
    'medium',
    'Standard Reference',
    null,
    '3c21fac84fd5e5bb1bfc4a1b52d328cb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '3c21fac84fd5e5bb1bfc4a1b52d328cb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'There are no automatic stabilisers'),
            ('B', 'The progressive taxes and the unemployment benefits are the automatic stabilisers'),
            ('C', 'The repo rate is an automatic stabiliser'),
            ('D', 'The monetary policy is an automatic stabiliser')
           ) as v(label, option_text)
 where q.question_hash = '3c21fac84fd5e5bb1bfc4a1b52d328cb'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'Which of the following is correct in the case of the Deficit?',
    'The fiscal deficit is the total expenditure minus the total receipts excluding the borrowings, and it is the total of the revenue deficit and the capital deficit.',
    'medium',
    'Standard Reference',
    null,
    '8f31b6aba4c24405eaa1df4bc69a1947'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '8f31b6aba4c24405eaa1df4bc69a1947'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The fiscal deficit is the total expenditure less the receipts excluding the borrowings'),
            ('B', 'The revenue deficit is the capital expenditure'),
            ('C', 'The primary deficit excludes the capital expenditure'),
            ('D', 'The fiscal deficit is the borrowings less the repayments')
           ) as v(label, option_text)
 where q.question_hash = '8f31b6aba4c24405eaa1df4bc69a1947'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'The FRBM Act of 2003 provides:',
    'The Fiscal Responsibility and Budget Management Act of 2003 provides the framework of the fiscal policy with the targets of the fiscal deficit and the public debt and the medium term fiscal policy statement.',
    'easy',
    'Standard Reference',
    null,
    'e18f2c20d56cb31f8948cbe9e8f22619'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e18f2c20d56cb31f8948cbe9e8f22619'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'of 1991'),
            ('B', 'the monetary policy act'),
            ('C', 'the SEBI'),
            ('D', 'the framework of the fiscal discipline and the medium term targets')
           ) as v(label, option_text)
 where q.question_hash = 'e18f2c20d56cb31f8948cbe9e8f22619'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'The ''Escape clause'' of the FRBM:',
    'The escape clause of the FRBM Act allows the government to deviate from the fiscal deficit target in the exceptional circumstances like a war, a calamity or a collapse of the farm output, and it was used in 2020-21 for the pandemic.',
    'medium',
    'Standard Reference',
    null,
    '2c127d0977627bdb400e8dd039b528cb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '2c127d0977627bdb400e8dd039b528cb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is the provision to cut the taxes'),
            ('B', 'It is the provision to increase the subsidies'),
            ('C', 'Allows the deviation from the fiscal deficit target in the exceptional circumstances like a war or a calamity'),
            ('D', 'It is the provision to borrow more')
           ) as v(label, option_text)
 where q.question_hash = '2c127d0977627bdb400e8dd039b528cb'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'Which of the following is correct in the case of the Expenditure?',
    'The capital expenditure creates the assets and the future income and the revenue expenditure is for the recurring obligations with no such asset creation.',
    'easy',
    'Standard Reference',
    null,
    '659f331d3f5537294bc440a0013f3d22'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '659f331d3f5537294bc440a0013f3d22'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The revenue expenditure creates the assets'),
            ('B', 'There is no difference'),
            ('C', 'The capital expenditure creates the assets and the revenue expenditure does not'),
            ('D', 'They are the same')
           ) as v(label, option_text)
 where q.question_hash = '659f331d3f5537294bc440a0013f3d22'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'The subsidies in India are:',
    'The subsidies of the foodgrains, the fertiliser and the petroleum are the largest of the fiscal subsidies of India and the reforms of 1991 and the targeted subsidies were the response to them.',
    'medium',
    'Standard Reference',
    null,
    'bb6369818b9a9c78f7dd9422f8f634e2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'bb6369818b9a9c78f7dd9422f8f634e2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'no subsidy for the foodgrains'),
            ('B', 'the major fiscal burden and the subsidies of the fertiliser and the petroleum and the food are the largest'),
            ('C', 'negligible'),
            ('D', 'paid by the states')
           ) as v(label, option_text)
 where q.question_hash = 'bb6369818b9a9c78f7dd9422f8f634e2'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'The GST Council decides the tax rates and the structure and it is:',
    'The GST Council, chaired by the Union Finance Minister, is the apex body for the administration of the GST and it is a joint forum of the Centre and the states.',
    'easy',
    'Standard Reference',
    null,
    'a3465bfb308d837b30744dc05446dcd8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a3465bfb308d837b30744dc05446dcd8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a body of the Central government alone'),
            ('B', 'chaired by the President'),
            ('C', 'a judicial body'),
            ('D', 'a joint forum of the Centre and the states')
           ) as v(label, option_text)
 where q.question_hash = 'a3465bfb308d837b30744dc05446dcd8'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'Enabled the GST and the NJAC and it was:',
    'The Constitution (One Hundred and First Amendment) Act of 2016 enabled the GST with the Article 279A and the National Judicial Appointments Commission with the Article 124.',
    'medium',
    'Standard Reference',
    null,
    '11535643125afb3707dc8ee7f827df80'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '11535643125afb3707dc8ee7f827df80'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the 101st Amendment of 2016'),
            ('B', 'of 1991'),
            ('C', 'the NITI Aayog'),
            ('D', 'it lowered the voting age')
           ) as v(label, option_text)
 where q.question_hash = '11535643125afb3707dc8ee7f827df80'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    '122nd Amendment was:',
    'The Constitution (122nd Amendment) Bill of 2014 became the 101st Amendment Act of 2016 after the ratification by the states.',
    'hard',
    'Standard Reference',
    2016,
    'c9f592736ed682f2974900a0cfb3ff9e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'c9f592736ed682f2974900a0cfb3ff9e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the bill for the citizenship amendment'),
            ('B', 'the GST Bill that was passed in 2016 with the 101st Amendment'),
            ('C', 'of 1991'),
            ('D', 'the NITI Aayog')
           ) as v(label, option_text)
 where q.question_hash = 'c9f592736ed682f2974900a0cfb3ff9e'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'The petroleum products are:',
    'The petroleum products have been kept outside the GST and they continue to be subject to the central excise, and the GST Council reviews the issue periodically.',
    'medium',
    'Standard Reference',
    null,
    '9a9f004721ac45fc35d185ae71f2d185'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '9a9f004721ac45fc35d185ae71f2d185'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'in the GST from 2018'),
            ('B', 'exempt from all the taxes'),
            ('C', 'outside the GST and are governed by the central excise'),
            ('D', 'in the GST from 2017')
           ) as v(label, option_text)
 where q.question_hash = '9a9f004721ac45fc35d185ae71f2d185'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'The direct taxes are:',
    'The direct taxes, the income tax and the corporation tax, are borne by the persons according to their ability to pay and the indirect taxes are the GST and the customs.',
    'easy',
    'Standard Reference',
    null,
    'be5e032073d99a0f67657d2a901053f6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'be5e032073d99a0f67657d2a901053f6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the taxes on the income and the corporation and they are progressive'),
            ('B', 'regressive'),
            ('C', 'the customs duties'),
            ('D', 'the excises')
           ) as v(label, option_text)
 where q.question_hash = 'be5e032073d99a0f67657d2a901053f6'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'The ''Corporate tax'' of 2017:',
    'The Finance Act of 2017 reduced the corporate tax rate to 25.17 per cent for the companies that had an effective tax rate of that level, and it removed the surcharges and the cess for them.',
    'medium',
    'Standard Reference',
    2017,
    'a47ec72f288e18134d861593af2980bd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a47ec72f288e18134d861593af2980bd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Increased the rate to 40 per cent'),
            ('B', 'Was abolished'),
            ('C', 'It was the same as the personal income tax'),
            ('D', 'Reduced the rate to 25.17 per cent for the companies with the effective tax of that level')
           ) as v(label, option_text)
 where q.question_hash = 'a47ec72f288e18134d861593af2980bd'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'The new slabs of the 2021 have:',
    'The Finance Act of 2021 introduced the new slabs with the Rs. 2.5 lakh exemption and the standard deduction of Rs. 50,000 and the 30 per cent as the highest rate.',
    'medium',
    'Standard Reference',
    2021,
    '1c30d33edacec832797e2cc466eceecb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '1c30d33edacec832797e2cc466eceecb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the 2.5 lakh exemption with the 5.4 per cent and the 12 per cent and the 20 per cent and the 30 per cent'),
            ('B', 'the same as the 2019'),
            ('C', 'no personal income tax'),
            ('D', 'rs. 5 lakh')
           ) as v(label, option_text)
 where q.question_hash = '1c30d33edacec832797e2cc466eceecb'
on conflict (question_id, label) do nothing;

-- economy | economic-survey-and-budget | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'economic-survey-and-budget'),
    'Which of the following statements regarding the Defence is correct?',
    'The defence is the largest single budget head of the Indian government, with the capital expenditure accounting for a large share of it and the pensions and the revenue expenditure for the rest.',
    'easy',
    'Standard Reference',
    null,
    'fead49f28045aa6454a1342c3059aec1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'fead49f28045aa6454a1342c3059aec1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The defence is not in the budget'),
            ('B', 'The defence is the largest single budget head of the Indian government'),
            ('C', 'The defence is a minor head'),
            ('D', 'The defence budget is funded by the states')
           ) as v(label, option_text)
 where q.question_hash = 'fead49f28045aa6454a1342c3059aec1'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'The MGNREGA has a budget of about Rs. 1,48,000 crore and it is:',
    'The MGNREGA has a budget allocation of about Rs. 1.48 lakh crore and it is the largest rural employment programme of the world.',
    'medium',
    'Standard Reference',
    null,
    '1679fa04564f372cbcd3ed1ed4347a8f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '1679fa04564f372cbcd3ed1ed4347a8f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a budget of Rs. 5,000 crore'),
            ('B', 'a state scheme'),
            ('C', 'the largest budget head'),
            ('D', 'the largest rural employment programme')
           ) as v(label, option_text)
 where q.question_hash = '1679fa04564f372cbcd3ed1ed4347a8f'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'The interest payments of the government are:',
    'The interest payments are a substantial and growing part of the revenue expenditure of the government and they constrain the fiscal space.',
    'easy',
    'Standard Reference',
    null,
    'a79d7afebfe22b1f51a15c9bbca1e331'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'a79d7afebfe22b1f51a15c9bbca1e331'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the fiscal deficit'),
            ('B', 'the primary deficit'),
            ('C', 'a significant part of the revenue expenditure'),
            ('D', 'the capital expenditure')
           ) as v(label, option_text)
 where q.question_hash = 'a79d7afebfe22b1f51a15c9bbca1e331'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'Which of the following statements is/are correct in relation to the Finance Commission?',
    'The 15th Finance Commission recommended the devolution of 41 per cent of the divisible pool to the states for 2021-26, an increase of six percentage points over the 14th Commission.',
    'medium',
    'Standard Reference',
    null,
    '4e714a347cec88e8c6b1e06964d4ac2c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '4e714a347cec88e8c6b1e06964d4ac2c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It recommended no devolution'),
            ('B', 'It is an advisory of the RBI'),
            ('C', 'The 15th Finance Commission increased the tax devolution to the states to 41 per cent'),
            ('D', 'It reduced it to 30 per cent')
           ) as v(label, option_text)
 where q.question_hash = '4e714a347cec88e8c6b1e06964d4ac2c'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'The GST revenue has grown to about Rs. 18 lakh crore a year and the collections are:',
    'The gross GST revenue has crossed the Rs. 18 lakh crore mark and the collections have been consistently above the target.',
    'medium',
    'Standard Reference',
    null,
    '1bf68846e9d9268b0dea8d65bcf7e669'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '1bf68846e9d9268b0dea8d65bcf7e669'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'no growth'),
            ('B', 'of about 96 per cent of the target'),
            ('C', 'about Rs. 5 lakh crore'),
            ('D', 'about Rs. 30 lakh crore')
           ) as v(label, option_text)
 where q.question_hash = '1bf68846e9d9268b0dea8d65bcf7e669'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'The peak customs duty was:',
    'The peak customs duty of over 300 per cent in 1990-91 was reduced to about 60 per cent in the 1992-93 budget as a part of the liberalisation.',
    'medium',
    'Standard Reference',
    null,
    '1552524565af5ff441ad38cf559d04b8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '1552524565af5ff441ad38cf559d04b8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '10 per cent in 1991'),
            ('B', 'never reduced'),
            ('C', '50 per cent in 1990'),
            ('D', 'over 300 per cent in 1990-91 and it was reduced to about 60 per cent in 1992-93')
           ) as v(label, option_text)
 where q.question_hash = '1552524565af5ff441ad38cf559d04b8'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'In the context of the disinvestment, which of the following is correct?',
    'The disinvestment proceeds are credited to the Consolidated Fund of India and they are part of the receipts that finance the fiscal deficit.',
    'hard',
    'Standard Reference',
    null,
    '3f7085b96bd4d7f7c4d97beb8d21baa3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '3f7085b96bd4d7f7c4d97beb8d21baa3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The disinvestment proceeds go to the Consolidated Fund and they finance the fiscal deficit'),
            ('B', 'They go to the states directly'),
            ('C', 'They are tax free for the buyer'),
            ('D', 'They are not in the budget')
           ) as v(label, option_text)
 where q.question_hash = '3f7085b96bd4d7f7c4d97beb8d21baa3'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'Which of the following statements regarding the fiscal gap is correct?',
    'The fiscal gap, the concept of the Olivier Blanchard, is the difference between the actual and the potential output and it measures the macroeconomic cost of the fiscal adjustment.',
    'hard',
    'Standard Reference',
    null,
    'f9639e5a40bd55c720cf5d43e6c0ad5b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f9639e5a40bd55c720cf5d43e6c0ad5b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is the same as the fiscal deficit'),
            ('B', 'It is the difference between the actual and the potential output'),
            ('C', 'It is the difference between the revenue and the expenditure'),
            ('D', 'It is the gap in the tax base')
           ) as v(label, option_text)
 where q.question_hash = 'f9639e5a40bd55c720cf5d43e6c0ad5b'
on conflict (question_id, label) do nothing;

-- economy | economic-survey-and-budget | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'economic-survey-and-budget'),
    'The Annual Financial Statement of the Constitution is:',
    'The Annual Financial Statement, the Budget, is laid before the Parliament under Article 112 and the Economic Survey is a separate document presented a day earlier.',
    'easy',
    'Standard Reference',
    null,
    '02d2383faf17bb1f0a40492b58ffd4e2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '02d2383faf17bb1f0a40492b58ffd4e2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Budget and it is laid before the Parliament under Article 112'),
            ('B', 'the Economic Survey'),
            ('C', 'the Monetary Policy Statement'),
            ('D', 'a part of the Audit Report')
           ) as v(label, option_text)
 where q.question_hash = '02d2383faf17bb1f0a40492b58ffd4e2'
on conflict (question_id, label) do nothing;

-- economy | economic-survey-and-budget | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'economic-survey-and-budget'),
    'The ''Zero-based budgeting'' in India:',
    'The zero-based budgeting is the approach of a fresh scrutiny of the expenditure every year with no presumption of the continuation, and it has been introduced in some the departments.',
    'hard',
    'Standard Reference',
    null,
    '015bbc860788769ef2a7f765800ffe69'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '015bbc860788769ef2a7f765800ffe69'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the preparation of the budget from the scratch every year without any review'),
            ('B', 'Is the budget of the defence'),
            ('C', 'Is a scheme of the NITI Aayog'),
            ('D', 'Is the approach of the fresh scrutiny of the expenditure every year')
           ) as v(label, option_text)
 where q.question_hash = '015bbc860788769ef2a7f765800ffe69'
on conflict (question_id, label) do nothing;

-- economy | economic-survey-and-budget | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'economic-survey-and-budget'),
    'Consider the following statements. Which of them is correct with regard to the Outcome budget?',
    'The outcome budget, introduced in 2018-19, states the outcomes of the schemes and the outputs of the departments along with the measurable deliverables.',
    'medium',
    'Standard Reference',
    null,
    '7440860937f7a7526d2d7652933096aa'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '7440860937f7a7526d2d7652933096aa'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the audit report of the CAG'),
            ('B', 'Is the monetary policy statement'),
            ('C', 'States the outcomes of the schemes and the outputs of the departments'),
            ('D', 'Is a part of the Economic Survey')
           ) as v(label, option_text)
 where q.question_hash = '7440860937f7a7526d2d7652933096aa'
on conflict (question_id, label) do nothing;

-- economy | economic-survey-and-budget | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'economic-survey-and-budget'),
    'Which of the following statements is/are correct in relation to the gender budget?',
    'The gender budget is the practice of the accounting of the expenditure and the provisioning of the services for the women, and it is presented in the Expenditure Profile of the Union Budget.',
    'medium',
    'Standard Reference',
    null,
    'f53b0389dab52ea34609dac21fbc8349'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'f53b0389dab52ea34609dac21fbc8349'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is a scheme of the women self-help groups'),
            ('B', 'Is the budget of the state governments'),
            ('C', 'Is the practice of the accounting of the expenditure and the provisioning of the services for the women'),
            ('D', 'Is a budget for the ministries of the women')
           ) as v(label, option_text)
 where q.question_hash = 'f53b0389dab52ea34609dac21fbc8349'
on conflict (question_id, label) do nothing;

-- economy | economic-survey-and-budget | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'economic-survey-and-budget'),
    'The sub-centre is:',
    'The sub-centre is the first tier of the health care delivery with the four health workers, the ANM, the ASHA, the AWW and the male health worker, providing the five services.',
    'medium',
    'Standard Reference',
    null,
    'c5a6bfe266bb052c84a2f37190cdb00a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'c5a6bfe266bb052c84a2f37190cdb00a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the first tier of the education'),
            ('B', 'a court'),
            ('C', 'a revenue office'),
            ('D', 'the first tier of the health care with the four health workers and the five services')
           ) as v(label, option_text)
 where q.question_hash = 'c5a6bfe266bb052c84a2f37190cdb00a'
on conflict (question_id, label) do nothing;

-- economy | economic-survey-and-budget | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'economic-survey-and-budget'),
    'The Ayushman Arogya Mandir is:',
    'The Ayushman Arogya Mandir scheme is the upgradation of the existing sub-centres and the primary health centres into the health and the wellness centres with the Ayushman Bharat and the ABHA.',
    'hard',
    'Standard Reference',
    null,
    'e94175bb71263bd049462cfdb6d54993'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e94175bb71263bd049462cfdb6d54993'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a drug procurement scheme'),
            ('B', 'the upgradation of the sub-centres into the health and the wellness centres'),
            ('C', 'a hospital scheme'),
            ('D', 'a medical college scheme')
           ) as v(label, option_text)
 where q.question_hash = 'e94175bb71263bd049462cfdb6d54993'
on conflict (question_id, label) do nothing;

-- economy | economic-survey-and-budget | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'economic-survey-and-budget'),
    'The Samagra Shiksha is:',
    'The Samagra Shiksha, the school education programme, subsumes the Sarva Shiksha Abhiyan, the Rashtriya Madhyamik Shiksha Abhiyan, the teacher education and the adult education.',
    'easy',
    'Standard Reference',
    null,
    '0f04866e9076b8656d62af43f91869eb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '0f04866e9076b8656d62af43f91869eb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the school education programme of the Ministry of Education'),
            ('B', 'the higher education programme'),
            ('C', 'the adult literacy programme'),
            ('D', 'the teacher training programme')
           ) as v(label, option_text)
 where q.question_hash = '0f04866e9076b8656d62af43f91869eb'
on conflict (question_id, label) do nothing;

-- economy | economic-survey-and-budget | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'economic-survey-and-budget'),
    'In the context of the PM SHRI, which of the following is correct?',
    'The PM SHRI, the school infrastructure programme, covers the school construction, the repair, the toilets and the ramps and the teacher training.',
    'medium',
    'Standard Reference',
    null,
    '4e3c944d289fc236e9ed0b5ab1bf110a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '4e3c944d289fc236e9ed0b5ab1bf110a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a higher education scheme'),
            ('B', 'It is a scholarship scheme'),
            ('C', 'It is a midday meal scheme'),
            ('D', 'Is the school education programme for the school infrastructure and the teachers in the government schools')
           ) as v(label, option_text)
 where q.question_hash = '4e3c944d289fc236e9ed0b5ab1bf110a'
on conflict (question_id, label) do nothing;

-- economy | economic-survey-and-budget | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'economic-survey-and-budget'),
    'The Panchkoshi was:',
    'The Panchkoshi, the draft of the second five year plan prepared by the V.K. Krishna Menon, was dropped after the food crisis and the Sino-Indian War.',
    'hard',
    'Standard Reference',
    null,
    '96ca366bae7ca221a9408decc1c2709a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '96ca366bae7ca221a9408decc1c2709a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a fiscal policy'),
            ('B', 'the education policy'),
            ('C', 'the five-year plan of the V.K. Krishna Menon that was dropped'),
            ('D', 'a five-year plan of the Nehru')
           ) as v(label, option_text)
 where q.question_hash = '96ca366bae7ca221a9408decc1c2709a'
on conflict (question_id, label) do nothing;

-- economy | economic-survey-and-budget | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'economic-survey-and-budget'),
    'The Garibi Hatao plan of 1961-66 was:',
    'The Garibi Hatao, the third five year plan of 1961-66, emphasised the agriculture and the employment and it was drafted largely by the D.R. Gadgil.',
    'medium',
    'Standard Reference',
    null,
    '70c64a73c207494e31d5c6215532d319'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '70c64a73c207494e31d5c6215532d319'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the fifth plan'),
            ('B', 'the third five year plan'),
            ('C', 'the fourth plan'),
            ('D', 'the second plan')
           ) as v(label, option_text)
 where q.question_hash = '70c64a73c207494e31d5c6215532d319'
on conflict (question_id, label) do nothing;

-- economy | economic-survey-and-budget | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'economic-survey-and-budget'),
    'The balanced regional development of the Gadgil Yojana was:',
    'The Gadgil Yojana of the first plan, based on the balanced regional development and the industries, was the model of the P.C. Mahalanobis of the second plan.',
    'hard',
    'Standard Reference',
    null,
    '1e54f17f38ee7ed6d8e3e686c237ff4f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '1e54f17f38ee7ed6d8e3e686c237ff4f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the model of the first plan'),
            ('B', 'the model of the second plan'),
            ('C', 'the model of the third plan'),
            ('D', 'the model of the seventh plan')
           ) as v(label, option_text)
 where q.question_hash = '1e54f17f38ee7ed6d8e3e686c237ff4f'
on conflict (question_id, label) do nothing;

-- economy | economic-survey-and-budget | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'economic-survey-and-budget'),
    'The Fifth Plan of 1974-79 was:',
    'The Fifth Plan of 1974-79, the last of the five year plans, was severely hit by the drought, the oil shock and the inflation and it ended with the Janata government.',
    'medium',
    'Standard Reference',
    null,
    'a9282d9cac5961f785c10142ce07a7b4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a9282d9cac5961f785c10142ce07a7b4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the last of the five year plans and it was affected by the drought and the oil shock'),
            ('B', 'the plan of the heavy industry'),
            ('C', 'the employment plan'),
            ('D', 'the backward regions plan')
           ) as v(label, option_text)
 where q.question_hash = 'a9282d9cac5961f785c10142ce07a7b4'
on conflict (question_id, label) do nothing;

-- economy | economic-survey-and-budget | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'economic-survey-and-budget'),
    'The Sixth Plan of 1980-85 had:',
    'The Sixth Plan of 1980-85 emphasised the growth with the modernisation of the agriculture and the industrialisation with the employment generation.',
    'medium',
    'Standard Reference',
    null,
    '1649e0757547fbfdf8c52d92f2ecb041'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '1649e0757547fbfdf8c52d92f2ecb041'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the backward regions plan'),
            ('B', 'the employment plan'),
            ('C', 'the food security plan'),
            ('D', 'the objectives of the growth and the modernisation of the agriculture and the industrialisation')
           ) as v(label, option_text)
 where q.question_hash = '1649e0757547fbfdf8c52d92f2ecb041'
on conflict (question_id, label) do nothing;

-- economy | economic-survey-and-budget | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'economic-survey-and-budget'),
    'The Eighth Plan of 1992-97 was:',
    'The Eighth Plan of 1992-97 was the employment plan and it emphasised the human capital formation, the globalisation and the private sector development.',
    'medium',
    'Standard Reference',
    null,
    'ac9daa7f627247428fe11a4e8b90770a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'ac9daa7f627247428fe11a4e8b90770a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Garibi Hatao plan'),
            ('B', 'the heavy industry plan'),
            ('C', 'the employment plan with the human capital formation'),
            ('D', 'the backward regions plan')
           ) as v(label, option_text)
 where q.question_hash = 'ac9daa7f627247428fe11a4e8b90770a'
on conflict (question_id, label) do nothing;

-- economy | economic-survey-and-budget | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'economic-survey-and-budget'),
    'The Ninth Plan of 1997-2002 was:',
    'The Ninth Plan of 1997-2002 was the backward regions plan with the emphasis on the human resources and the reduction of the regional disparities.',
    'medium',
    'Standard Reference',
    null,
    'eeed1a2f56ce9c747d5b619e8ff81765'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'eeed1a2f56ce9c747d5b619e8ff81765'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the heavy industry plan'),
            ('B', 'the backward regions plan'),
            ('C', 'the employment plan'),
            ('D', 'the Garibi Hatao plan')
           ) as v(label, option_text)
 where q.question_hash = 'eeed1a2f56ce9c747d5b619e8ff81765'
on conflict (question_id, label) do nothing;

-- economy | economic-survey-and-budget | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'economic-survey-and-budget'),
    'The Tenth Plan of 2002-07 had:',
    'The Tenth Plan of 2002-07 had the targets of the 8 to 10 per cent growth, the reduction of the poverty ratio and the emphasis on the health, the education and the employment.',
    'medium',
    'Standard Reference',
    null,
    '7ea6c8f4c9ffb69433a1aaaf849f824d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '7ea6c8f4c9ffb69433a1aaaf849f824d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the backward regions plan'),
            ('B', 'the employment plan'),
            ('C', 'the Garibi Hatao plan'),
            ('D', 'the targets of the 8 to 10 per cent growth and the reduction of the poverty')
           ) as v(label, option_text)
 where q.question_hash = '7ea6c8f4c9ffb69433a1aaaf849f824d'
on conflict (question_id, label) do nothing;

-- economy | economic-survey-and-budget | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'economic-survey-and-budget'),
    'The Eleventh Plan of 2007-12 was:',
    'The Eleventh Plan of 2007-12 was the plan of the faster and the inclusive growth and it was the first to be prepared by the NITI Aayog.',
    'medium',
    'Standard Reference',
    null,
    'ce2b8b2d69fdd596d1a030456ef64142'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'ce2b8b2d69fdd596d1a030456ef64142'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Garibi Hatao plan'),
            ('B', 'the plan of the faster and the inclusive growth'),
            ('C', 'the backward regions plan'),
            ('D', 'the employment plan')
           ) as v(label, option_text)
 where q.question_hash = 'ce2b8b2d69fdd596d1a030456ef64142'
on conflict (question_id, label) do nothing;

-- economy | economic-survey-and-budget | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'economic-survey-and-budget'),
    'The Twelfth Plan of 2012-17 had:',
    'The Twelfth Plan of 2012-17 had the targets of the 8.5 per cent growth and the reduction of the poverty and the emphasis on the health, the education, the jobs and the skills.',
    'easy',
    'Standard Reference',
    null,
    '7ec7dc6318546fb37c23f2508e3ccb89'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '7ec7dc6318546fb37c23f2508e3ccb89'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the targets of the 8.5 per cent growth and the reduction of the poverty'),
            ('B', 'the backward regions plan'),
            ('C', 'the employment plan'),
            ('D', 'the Garibi Hatao plan')
           ) as v(label, option_text)
 where q.question_hash = '7ec7dc6318546fb37c23f2508e3ccb89'
on conflict (question_id, label) do nothing;

-- economy | economic-survey-and-budget | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'economic-survey-and-budget'),
    'Which of the following statements regarding the NITI Aayog is correct?',
    'The NITI Aayog, which replaced the Planning Commission in 2015, has the three-tier structure of the national, the state and the district and it does not allocate the plan funds.',
    'medium',
    'Standard Reference',
    null,
    '79470cddf1e4b220e2db45bb39d2f00b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '79470cddf1e4b220e2db45bb39d2f00b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It has a two-tier structure'),
            ('B', 'It is chaired by the President'),
            ('C', 'The NITI Aayog has the three-tier structure and it does not allocate the plan funds'),
            ('D', 'It allocates the plan funds')
           ) as v(label, option_text)
 where q.question_hash = '79470cddf1e4b220e2db45bb39d2f00b'
on conflict (question_id, label) do nothing;

-- economy | economic-survey-and-budget | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'economic-survey-and-budget'),
    'The Make in India Index of the NITI Aayog ranks:',
    'The Make in India Index ranks the states on the 45 parameters of the manufacturing ecosystem, the business ecosystem, the human capital, the technology and the trade.',
    'medium',
    'Standard Reference',
    null,
    '6533033bcbb5516bd1b19d78f8933cfd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '6533033bcbb5516bd1b19d78f8933cfd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the states on the literacy'),
            ('B', 'the states on the health'),
            ('C', 'the states on the exports'),
            ('D', 'the states on the 45 parameters of the manufacturing ecosystem')
           ) as v(label, option_text)
 where q.question_hash = '6533033bcbb5516bd1b19d78f8933cfd'
on conflict (question_id, label) do nothing;

-- economy | economic-survey-and-budget | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'economic-survey-and-budget'),
    'The SDG India Index is:',
    'The SDG India Index is prepared by the NITI Aayog with the technical assistance of the Oxford Policy and Human Development Centre and it is the first such index in the world.',
    'medium',
    'Standard Reference',
    null,
    'a892ba8052ba2f474ce372893b8f6e1f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a892ba8052ba2f474ce372893b8f6e1f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'prepared by the NITI Aayog with the Oxford Policy and Human Development Centre'),
            ('B', 'prepared by the World Bank'),
            ('C', 'prepared by the RBI'),
            ('D', 'prepared by the CAG')
           ) as v(label, option_text)
 where q.question_hash = 'a892ba8052ba2f474ce372893b8f6e1f'
on conflict (question_id, label) do nothing;

-- economy | economic-survey-and-budget | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'economic-survey-and-budget'),
    'The ''Multidimensional Poverty Index'' of the UNDP and the OPHI measures:',
    'The MPI measures the overlapping deprivations in the three dimensions of the health, the education and the living standards and it is a measure of the acute poverty.',
    'easy',
    'Standard Reference',
    null,
    'b5745209a6793230ed40b8a7b1a1d528'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b5745209a6793230ed40b8a7b1a1d528'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The inequality of the income'),
            ('B', 'The deprivations in the health, the education and the living standards'),
            ('C', 'Only the income'),
            ('D', 'Only the health')
           ) as v(label, option_text)
 where q.question_hash = 'b5745209a6793230ed40b8a7b1a1d528'
on conflict (question_id, label) do nothing;

-- economy | economic-survey-and-budget | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'economic-survey-and-budget'),
    'The ''Ease of Doing Business'' of the World Bank was discontinued after the report of:',
    'The World Bank discontinued the Doing Business Report after the 2020 edition, and the India was ranked 63rd in that report.',
    'medium',
    'Standard Reference',
    2020,
    'c151cbf427f2661291a83e727efcd014'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c151cbf427f2661291a83e727efcd014'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2021'),
            ('B', '2018'),
            ('C', '2020'),
            ('D', '2019')
           ) as v(label, option_text)
 where q.question_hash = 'c151cbf427f2661291a83e727efcd014'
on conflict (question_id, label) do nothing;

-- economy | economic-survey-and-budget | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'economic-survey-and-budget'),
    'The World Banks Human Development Report is:',
    'The World Bank publishes the Human Capital Index and the reports on the poverty and the shared prosperity as the alternatives to the UNDP''s Human Development Report.',
    'hard',
    'Standard Reference',
    null,
    'c8b11fb7b81fc7e1b9464e2d12426003'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'c8b11fb7b81fc7e1b9464e2d12426003'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the alternative to the HDI of the UNDP'),
            ('B', 'the economic survey'),
            ('C', 'the monetary policy report'),
            ('D', 'the human development report')
           ) as v(label, option_text)
 where q.question_hash = 'c8b11fb7b81fc7e1b9464e2d12426003'
on conflict (question_id, label) do nothing;

-- economy | economic-survey-and-budget | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'economic-survey-and-budget'),
    'The ''Global Hunger Index'' is published by:',
    'The Global Hunger Index is published annually by the Concern Worldwide and the World Food Policy Institute and it ranks the countries on the three hunger indicators.',
    'medium',
    'Standard Reference',
    null,
    'af4cf7c32784da227335d203d9d4992e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'af4cf7c32784da227335d203d9d4992e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The World Bank'),
            ('B', 'The Concern Worldwide and the World Food Policy Institute'),
            ('C', 'The UNDP'),
            ('D', 'The FAO and the WHO')
           ) as v(label, option_text)
 where q.question_hash = 'af4cf7c32784da227335d203d9d4992e'
on conflict (question_id, label) do nothing;

-- economy | economic-survey-and-budget | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'economic-survey-and-budget'),
    'The Economic Freedom Index is:',
    'The Economic Freedom Index is published by the Heritage Foundation and the Fraser Institute and India is ranked in the ''moderately free'' category.',
    'hard',
    'Standard Reference',
    null,
    'c9a97e4a405069b4b31c2cfd712c0d3d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c9a97e4a405069b4b31c2cfd712c0d3d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'published by the IMF'),
            ('B', 'published by the UNCTAD'),
            ('C', 'published by the Heritage Foundation and the Fraser Institute'),
            ('D', 'published by the World Bank')
           ) as v(label, option_text)
 where q.question_hash = 'c9a97e4a405069b4b31c2cfd712c0d3d'
on conflict (question_id, label) do nothing;

-- economy | economic-survey-and-budget | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'economic-survey-and-budget'),
    'Which of the following statements regarding the Transparency International is correct?',
    'The Corruption Perceptions Index is published by the Transparency International and India has consistently been ranked in the lower half of the index.',
    'easy',
    'Standard Reference',
    null,
    '52575174bc7dadd72e9f8a8e3c6868f9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '52575174bc7dadd72e9f8a8e3c6868f9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The World Bank'),
            ('B', 'The UNDP'),
            ('C', 'The OECD'),
            ('D', 'Transparency International')
           ) as v(label, option_text)
 where q.question_hash = '52575174bc7dadd72e9f8a8e3c6868f9'
on conflict (question_id, label) do nothing;

-- economy | economic-survey-and-budget | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'economic-survey-and-budget'),
    'The ''Democracy Index'' is published by:',
    'The Democracy Index is published by the Economist Intelligence Unit and it measures the five dimensions of the democratic governance.',
    'medium',
    'Standard Reference',
    null,
    '04d280c323deae8651641ad3e0012fdb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '04d280c323deae8651641ad3e0012fdb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Freedom House'),
            ('B', 'The Transparency International'),
            ('C', 'The World Bank'),
            ('D', 'The Economist Intelligence Unit')
           ) as v(label, option_text)
 where q.question_hash = '04d280c323deae8651641ad3e0012fdb'
on conflict (question_id, label) do nothing;

-- economy | economic-survey-and-budget | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'economic-survey-and-budget'),
    'The ''World Happiness Report'' is published by:',
    'The World Happiness Report is a product of the World Happiness Forum and it is compiled with the SDSU and the Gallup World Poll.',
    'medium',
    'Standard Reference',
    null,
    '4a043c8c1aaadfaae0ea8ccf05046e8c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '4a043c8c1aaadfaae0ea8ccf05046e8c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The World Happiness Report is a product of the World Happiness Forum with the SDSU and the Gallup'),
            ('B', 'It is published by the UNDP'),
            ('C', 'It is published by the World Bank'),
            ('D', 'It is published by the OECD')
           ) as v(label, option_text)
 where q.question_hash = '4a043c8c1aaadfaae0ea8ccf05046e8c'
on conflict (question_id, label) do nothing;

-- economy | economic-survey-and-budget | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'economic-survey-and-budget'),
    'The ''Global Innovation Index'' is published by:',
    'The Global Innovation Index is published by the WIPO in partnership with the World Bank and a number of other organisations.',
    'easy',
    'Standard Reference',
    null,
    '43e534773f1fa6c33509650895be5b00'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '43e534773f1fa6c33509650895be5b00'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The UNDP'),
            ('B', 'The WIPO with the World Bank and the other partners'),
            ('C', 'The OECD'),
            ('D', 'The World Bank')
           ) as v(label, option_text)
 where q.question_hash = '43e534773f1fa6c33509650895be5b00'
on conflict (question_id, label) do nothing;

-- economy | economic-survey-and-budget | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'economic-survey-and-budget'),
    'The ''World Competitiveness Report'' is published by:',
    'The World Competitiveness Report is published by the World Economic Forum at the Davos and it ranks the economies on the twelve factors of the competitiveness.',
    'medium',
    'Standard Reference',
    null,
    '2e95f78cb21020ecfcd9c4934e745330'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '2e95f78cb21020ecfcd9c4934e745330'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The IMF'),
            ('B', 'The OECD'),
            ('C', 'The World Economic Forum'),
            ('D', 'The World Bank')
           ) as v(label, option_text)
 where q.question_hash = '2e95f78cb21020ecfcd9c4934e745330'
on conflict (question_id, label) do nothing;

-- economy | economic-survey-and-budget | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'economic-survey-and-budget'),
    'The ''Global Gender Gap Report'' is published by:',
    'The Global Gender Gap Report is published by the World Economic Forum and it measures the gender gaps in the economic participation, the education, the health and the political empowerment.',
    'medium',
    'Standard Reference',
    null,
    '0cfd0a6b910949294bd47e73393514fa'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '0cfd0a6b910949294bd47e73393514fa'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The UNDP'),
            ('B', 'The World Bank'),
            ('C', 'The ILO'),
            ('D', 'The World Economic Forum')
           ) as v(label, option_text)
 where q.question_hash = '0cfd0a6b910949294bd47e73393514fa'
on conflict (question_id, label) do nothing;

-- economy | economic-survey-and-budget | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'economic-survey-and-budget'),
    'The ''Environmental Performance Index'' is published by:',
    'The Environmental Performance Index is published jointly by the Yale Center for Environmental Law and Policy and the Columbia University''s Center for International Earth Science Information Network.',
    'hard',
    'Standard Reference',
    null,
    '67e2223cfb153123250d71ea2bb55912'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '67e2223cfb153123250d71ea2bb55912'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The OECD'),
            ('B', 'The Yale University and the Columbia University'),
            ('C', 'The UNDP'),
            ('D', 'The World Bank')
           ) as v(label, option_text)
 where q.question_hash = '67e2223cfb153123250d71ea2bb55912'
on conflict (question_id, label) do nothing;

-- economy | economic-survey-and-budget | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'economic-survey-and-budget'),
    'The ''Human Development Report'' is published by:',
    'The Human Development Report, published annually by the UNDP since 1990, introduced the Human Development Index with the three dimensions of the health, the education and the income.',
    'easy',
    'Standard Reference',
    null,
    '95a1543e023749af662f0c34fcaea5ac'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '95a1543e023749af662f0c34fcaea5ac'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The WHO'),
            ('B', 'The ILO'),
            ('C', 'The UNDP'),
            ('D', 'The World Bank')
           ) as v(label, option_text)
 where q.question_hash = '95a1543e023749af662f0c34fcaea5ac'
on conflict (question_id, label) do nothing;

-- economy | economic-survey-and-budget | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'economic-survey-and-budget'),
    'The ''F index'' of the press freedom:',
    'The F index or the score of the freedom of the press is the part of the World Press Freedom Index and it measures the freedom of the news media in the country.',
    'hard',
    'Standard Reference',
    null,
    'c4c298893a688f1f96e8bf6c28d0f183'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'c4c298893a688f1f96e8bf6c28d0f183'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the score of the freedom of the press and it is the part of the World Press Freedom Index'),
            ('B', 'Is a monetary policy measure'),
            ('C', 'It is the index of the media ownership'),
            ('D', 'It is a trade competitiveness index')
           ) as v(label, option_text)
 where q.question_hash = 'c4c298893a688f1f96e8bf6c28d0f183'
on conflict (question_id, label) do nothing;

-- economy | economic-survey-and-budget | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'economic-survey-and-budget'),
    'Consider the following statements. Which of them is correct with regard to the Inequality?',
    'The Gini coefficient, from 0 for the perfect equality to 1 for the perfect inequality, is the most widely used measure of the income inequality.',
    'medium',
    'Standard Reference',
    null,
    'cbc48669ba7c3c111b8b7240d55709eb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'cbc48669ba7c3c111b8b7240d55709eb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It measures the inflation'),
            ('B', 'It measures the unemployment'),
            ('C', 'It measures the growth'),
            ('D', 'The Gini coefficient measures the inequality of the income and it ranges from 0 to 1')
           ) as v(label, option_text)
 where q.question_hash = 'cbc48669ba7c3c111b8b7240d55709eb'
on conflict (question_id, label) do nothing;

-- economy | economic-survey-and-budget | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'economic-survey-and-budget'),
    'The number of the Indian billionaires in the world is:',
    'The Hurun index of the global billionaires and the number of the Indian billionaires in the world are the indicators of the concentration of the wealth.',
    'hard',
    'Standard Reference',
    null,
    'a6ccfa88d6819b488afe2b5f520ef9d2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'a6ccfa88d6819b488afe2b5f520ef9d2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a monetary policy measure'),
            ('B', 'a trade indicator'),
            ('C', 'a measure of the inequality and it is the part of the Hurun index'),
            ('D', 'a measure of the GDP')
           ) as v(label, option_text)
 where q.question_hash = 'a6ccfa88d6819b488afe2b5f520ef9d2'
on conflict (question_id, label) do nothing;

-- economy | economic-survey-and-budget | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'economic-survey-and-budget'),
    'Consider the following statements. Which of them is correct with regard to the Multidimensional?',
    'The Alkire and the Foster multidimensional poverty index identifies the poor through the overlapping deprivations and it gives the poverty headcount ratio and the intensity.',
    'hard',
    'Standard Reference',
    null,
    'b636635fcafd8a147e10a9d2084bd50d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b636635fcafd8a147e10a9d2084bd50d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a trade index'),
            ('B', 'The Alkire and the Foster multidimensional poverty index identifies the poor by the overlapping deprivations'),
            ('C', 'It measures the income only'),
            ('D', 'It is the Human Development Index')
           ) as v(label, option_text)
 where q.question_hash = 'b636635fcafd8a147e10a9d2084bd50d'
on conflict (question_id, label) do nothing;

-- economy | economic-survey-and-budget | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'economic-survey-and-budget'),
    'In the context of the Eklavya, which of the following is correct?',
    'The Eklavya model school, with the bagless and the bagless and the holistic education, is the NITI Aayog''s model for the school education with the foundational learning and the vocational exposure.',
    'medium',
    'Standard Reference',
    null,
    '2594e5580035ea5da57e97733bc85e13'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '2594e5580035ea5da57e97733bc85e13'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Eklavya is the model school of the NITI Aayog for the school education'),
            ('B', 'It is a scheme of the education ministry'),
            ('C', 'It is a digital education platform'),
            ('D', 'It is a scheme of the NITI Aayog for the health')
           ) as v(label, option_text)
 where q.question_hash = '2594e5580035ea5da57e97733bc85e13'
on conflict (question_id, label) do nothing;

-- economy | economic-survey-and-budget | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'economic-survey-and-budget'),
    'The Indian economy is:',
    'By the nominal GDP the Indian economy is the fifth largest in the world after the United States, China, Germany and Japan.',
    'medium',
    'Standard Reference',
    null,
    '0d0a86c88a702fdd5c1a0949d8301550'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '0d0a86c88a702fdd5c1a0949d8301550'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the third largest'),
            ('B', 'the eighth largest'),
            ('C', 'the seventh largest'),
            ('D', 'the fifth largest of the world by the nominal GDP')
           ) as v(label, option_text)
 where q.question_hash = '0d0a86c88a702fdd5c1a0949d8301550'
on conflict (question_id, label) do nothing;

-- economy | economic-survey-and-budget | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'economic-survey-and-budget'),
    'In the context of the Services, which of the following is correct?',
    'The tertiary or the services sector contributes about half of the GDP and the bulk of the exports and it is the largest employer of the country.',
    'medium',
    'Standard Reference',
    null,
    'a40d8a1c0e9c3253bc9f557e66d9be49'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'a40d8a1c0e9c3253bc9f557e66d9be49'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is the smallest sector'),
            ('B', 'It employs a tenth of the workforce'),
            ('C', 'The tertiary sector contributes about half of the GDP and the bulk of the exports and the employment'),
            ('D', 'It contributes a tenth of the GDP')
           ) as v(label, option_text)
 where q.question_hash = 'a40d8a1c0e9c3253bc9f557e66d9be49'
on conflict (question_id, label) do nothing;

-- economy | economic-survey-and-budget | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'economic-survey-and-budget'),
    'Which of the following is correct in the case of the Unemployment?',
    'The Periodic Labour Force Survey is the official source of the employment data and the CMIE provides the alternative estimates that are often quoted.',
    'medium',
    'Standard Reference',
    null,
    '1b4d6b26c3838c674c25602baf84024e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '1b4d6b26c3838c674c25602baf84024e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The CMIE estimates the unemployment rate and the PLFS is the official source'),
            ('B', 'The PLFS is the private estimate'),
            ('C', 'The CMIE is the official source'),
            ('D', 'There is no official estimate')
           ) as v(label, option_text)
 where q.question_hash = '1b4d6b26c3838c674c25602baf84024e'
on conflict (question_id, label) do nothing;

-- economy | economic-survey-and-budget | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'economic-survey-and-budget'),
    'Which of the following statements regarding the The agriculture is correct?',
    'The agriculture and the allied sectors contribute about 18 per cent of the GDP and provide the livelihood to about 45 per cent of the workforce, and the disparity is the core challenge of the Indian economy.',
    'easy',
    'Standard Reference',
    null,
    'e3c1ac2f13f6a3136cf5558e252abdc5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e3c1ac2f13f6a3136cf5558e252abdc5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is 10 per cent of the GDP'),
            ('B', 'The agriculture is about 18 per cent of the GDP and it employs about 45 per cent of the workforce'),
            ('C', 'It is 30 per cent of the GDP'),
            ('D', 'It employs 20 per cent of the workforce')
           ) as v(label, option_text)
 where q.question_hash = 'e3c1ac2f13f6a3136cf5558e252abdc5'
on conflict (question_id, label) do nothing;

-- economy | economic-survey-and-budget | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'economic-survey-and-budget'),
    'The secondary sector is about a quarter of the GDP and it has been:',
    'The secondary or the industrial sector contributes about a quarter of the GDP and its growth has been largely stagnant, which is the concern of the economic surveys.',
    'medium',
    'Standard Reference',
    null,
    '1cb5ab46bf0dfdc723e33fd745a8d300'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '1cb5ab46bf0dfdc723e33fd745a8d300'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'grown rapidly'),
            ('B', 'largely stagnant in the last decade'),
            ('C', 'half of the GDP'),
            ('D', 'a tenth of the GDP')
           ) as v(label, option_text)
 where q.question_hash = '1cb5ab46bf0dfdc723e33fd745a8d300'
on conflict (question_id, label) do nothing;

-- economy | economic-survey-and-budget | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'economic-survey-and-budget'),
    'The informal sector contributes about half of the GDP and it is:',
    'The informal or the unorganised sector contributes about half of the GDP and it is the largest employer with over 80 per cent of the workforce.',
    'medium',
    'Standard Reference',
    null,
    'a99410e57b9da234eb6396d06ef21afa'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a99410e57b9da234eb6396d06ef21afa'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a tenth of the GDP'),
            ('B', 'a negligible sector'),
            ('C', 'it employs a tenth of the workforce'),
            ('D', 'the largest employer')
           ) as v(label, option_text)
 where q.question_hash = 'a99410e57b9da234eb6396d06ef21afa'
on conflict (question_id, label) do nothing;

-- economy | economic-survey-and-budget | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'economic-survey-and-budget'),
    'The gross fixed capital formation is:',
    'The gross fixed capital formation of about a third of the GDP is well below the level of the peer economies and the investment rate is a key concern of the economic surveys.',
    'medium',
    'Standard Reference',
    null,
    '6439ee2798d5eda6ae467f236e33c5ed'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '6439ee2798d5eda6ae467f236e33c5ed'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'above the peer economies'),
            ('B', 'negligible'),
            ('C', 'about a third of the GDP and it is below the level of the peer economies'),
            ('D', 'half of the GDP')
           ) as v(label, option_text)
 where q.question_hash = '6439ee2798d5eda6ae467f236e33c5ed'
on conflict (question_id, label) do nothing;

-- economy | economic-survey-and-budget | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'economic-survey-and-budget'),
    'The total factor productivity in the Indian manufacturing is:',
    'The total factor productivity of the Indian manufacturing is far below that of China, and this is the central challenge of the economic growth.',
    'hard',
    'Standard Reference',
    null,
    '80f9fbc693609008f76174cd976afd00'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '80f9fbc693609008f76174cd976afd00'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'far below that of China'),
            ('B', 'the highest in the world'),
            ('C', 'comparable to the South Korea'),
            ('D', 'no data')
           ) as v(label, option_text)
 where q.question_hash = '80f9fbc693609008f76174cd976afd00'
on conflict (question_id, label) do nothing;

-- economy | economic-survey-and-budget | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'economic-survey-and-budget'),
    'The growth elasticity of the employment in the India is:',
    'The growth elasticity of the employment in India is far below the growth elasticity of the GDP, and the bridging of this gap is the central challenge of the employment generation.',
    'hard',
    'Standard Reference',
    null,
    '6f983305426dfd5cbf6cee6375f46826'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '6f983305426dfd5cbf6cee6375f46826'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'equal to one'),
            ('B', 'no data'),
            ('C', 'far below the growth elasticity of the GDP'),
            ('D', 'above the GDP elasticity')
           ) as v(label, option_text)
 where q.question_hash = '6f983305426dfd5cbf6cee6375f46826'
on conflict (question_id, label) do nothing;

-- economy | economic-survey-and-budget | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'economic-survey-and-budget'),
    'The female labour force participation rate of India is:',
    'The female labour force participation rate of India, at around 30 per cent or lower, is among the lowest in the world, and the female unemployment is correspondingly high.',
    'medium',
    'Standard Reference',
    null,
    'deeaa790898776e0a70134d89463f40e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'deeaa790898776e0a70134d89463f40e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'among the lowest in the world'),
            ('B', 'the highest in the world'),
            ('C', '50 per cent'),
            ('D', '25 per cent')
           ) as v(label, option_text)
 where q.question_hash = 'deeaa790898776e0a70134d89463f40e'
on conflict (question_id, label) do nothing;

-- economy | economic-survey-and-budget | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'economic-survey-and-budget'),
    'About 11.3 per cent of the Indian population was:',
    'The multidimensional poverty of India, at about 11.3 per cent in 2019-20, is much lower than the income poverty, and this is a strong argument for the social investments.',
    'hard',
    'Standard Reference',
    null,
    'ddabddb219eea96d58fd85a3ffbb624d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'ddabddb219eea96d58fd85a3ffbb624d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'no data'),
            ('B', 'multidimensionally poor in 2019-20'),
            ('C', '40 per cent'),
            ('D', '2 per cent')
           ) as v(label, option_text)
 where q.question_hash = 'ddabddb219eea96d58fd85a3ffbb624d'
on conflict (question_id, label) do nothing;

-- economy | economic-survey-and-budget | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'economic-survey-and-budget'),
    'Which of the following is correct in the case of the State?',
    'There is a large inter-state variation in the per capita income and the growth in India, and the poorer states have fallen further behind, which is the focus of the recent schemes.',
    'medium',
    'Standard Reference',
    null,
    'c2fac90e92f2e68a2dda86c24a1ab424'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'c2fac90e92f2e68a2dda86c24a1ab424'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'All the states have the same per capita income'),
            ('B', 'The per capita income is the same everywhere'),
            ('C', 'There is no variation'),
            ('D', 'There is a large inter-state variation in the per capita income and the growth in India')
           ) as v(label, option_text)
 where q.question_hash = 'c2fac90e92f2e68a2dda86c24a1ab424'
on conflict (question_id, label) do nothing;

-- economy | economic-survey-and-budget | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'economic-survey-and-budget'),
    'The Economic Survey 2022-23 used:',
    'The Economic Survey 2022-23, presented on 31 January 2023, had the theme of ''A New Dawn'' and it was the first under the Amrit Kaal.',
    'medium',
    'Economic Survey 2022-23',
    2023,
    '26bc08223eee187edcf5269baf4eee9f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '26bc08223eee187edcf5269baf4eee9f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the theme of ''A New Dawn'''),
            ('B', '''Time to Move'''),
            ('C', '''In the Union Budget 2021'''),
            ('D', '''India''s Growth Roadmap''')
           ) as v(label, option_text)
 where q.question_hash = '26bc08223eee187edcf5269baf4eee9f'
on conflict (question_id, label) do nothing;

-- economy | external-sector | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'The ''twin deficit'' situation in an economy refers to:',
    'The term twin deficit refers to the situation in which the fiscal deficit (excess of government spending over revenue) and the current account deficit (excess of imports over exports) occur at the same time, as in India after 2008.',
    'medium',
    'Standard Reference',
    null,
    '45008bf1a7d5d79851b8a8714d31eb45'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '45008bf1a7d5d79851b8a8714d31eb45'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A simultaneous current account surplus and fiscal surplus'),
            ('B', 'A simultaneous trade deficit and capital account deficit'),
            ('C', 'A simultaneous fiscal deficit and current account deficit'),
            ('D', 'A simultaneous fiscal deficit and inflation')
           ) as v(label, option_text)
 where q.question_hash = '45008bf1a7d5d79851b8a8714d31eb45'
on conflict (question_id, label) do nothing;

-- economy | external-sector | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'The ''capital account'' of the balance of payments records:',
    'The capital account records transactions that change the ownership of financial assets and liabilities between residents and non-residents, such as foreign direct investment, portfolio investment, external commercial borrowing and repayment of loans.',
    'medium',
    'Standard Reference',
    null,
    'cf7cdb648550d5c3a120092bc0853b12'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'cf7cdb648550d5c3a120092bc0853b12'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'All the unilateral transfers received from abroad'),
            ('B', 'The value of the goods and services imported and exported'),
            ('C', 'The income earned by Indian residents from their overseas investments'),
            ('D', 'Transactions that change the ownership of financial assets and liabilities, such as foreign direct investment and external borrowing')
           ) as v(label, option_text)
 where q.question_hash = 'cf7cdb648550d5c3a120092bc0853b12'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'Under the GST regime, the e-way bill has to be generated for the movement of goods whose value exceeds:',
    'Under the GST rules, an e-way bill is required for the consignment of goods of a value above Rs 50,000, while a separate e-way bill is needed for exempted goods exceeding Rs 1,50,000. The e-way bill carries the GSTIN of the supplier and the consignee.',
    'medium',
    'Standard Reference',
    null,
    'be90e7b7cb82aabdeb2eb55f7fc9e83d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'be90e7b7cb82aabdeb2eb55f7fc9e83d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rs 10,000'),
            ('B', 'Rs 50,000'),
            ('C', 'Rs 1,00,000'),
            ('D', 'Rs 1,50,000')
           ) as v(label, option_text)
 where q.question_hash = 'be90e7b7cb82aabdeb2eb55f7fc9e83d'
on conflict (question_id, label) do nothing;

-- economy | rbi-and-financial-regulation | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'rbi-and-financial-regulation'),
    'Under the Banking Regulation (Amendment) Act, 2020, the minimum paid-up capital required for a universal bank in India is:',
    'The Banking Regulation (Amendment) Act, 2020 raised the minimum paid-up capital for a universal bank to Rs 15,000 crore and for a global systemically important bank to Rs 21,000 crore, and the Act also allowed the merger of two or more banks into a single bank.',
    'hard',
    'Standard Reference',
    null,
    'd487ce49e10f12a8d9066ac24308d7b8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd487ce49e10f12a8d9066ac24308d7b8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rs 5,000 crore'),
            ('B', 'Rs 15,000 crore'),
            ('C', 'Rs 21,000 crore'),
            ('D', 'Rs 1,000 crore')
           ) as v(label, option_text)
 where q.question_hash = 'd487ce49e10f12a8d9066ac24308d7b8'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The Treasury bills issued by the Government of India have a maturity of:',
    'The Government of India issues Treasury bills with maturities of 91, 182 and 364 days, which are used to manage the short-term liquidity of the government. Dated securities are issued for longer tenors.',
    'easy',
    'Standard Reference',
    null,
    'd9e2f60cc069dd541519fa51436f8802'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd9e2f60cc069dd541519fa51436f8802'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '5 to 10 years'),
            ('B', '14 to 91 days'),
            ('C', '91, 182 and 364 days'),
            ('D', '6 months to 1 year')
           ) as v(label, option_text)
 where q.question_hash = 'd9e2f60cc069dd541519fa51436f8802'
on conflict (question_id, label) do nothing;

-- economy | poverty-and-employment | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'poverty-and-employment'),
    'Under the PM-Kisan Maandhan Yojana, the contribution of the Central government to the pension of a small and marginal farmer is:',
    'Under the PM-Kisan Maandhan Yojana, a small and marginal farmer contributes Rs 1,000 to Rs 3,000 per month according to age, and the Central government contributes an equal matching amount of Rs 3,000 per month to the pension account after the age of 60 years.',
    'hard',
    'PIB',
    null,
    '4d14216f5a2800e92802b8258d04aff8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '4d14216f5a2800e92802b8258d04aff8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rs 3,000 per month'),
            ('B', 'Rs 5,000 per month'),
            ('C', 'Rs 1,000 per month'),
            ('D', 'Rs 2,000 per month')
           ) as v(label, option_text)
 where q.question_hash = '4d14216f5a2800e92802b8258d04aff8'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The ''primary market'' for securities refers to:',
    'The primary market is the market in which securities are issued for the first time by the issuer, such as a fresh issue of shares or a new Government security, while the trading of already issued securities takes place in the secondary market.',
    'easy',
    'Standard Reference',
    null,
    'a2be5a1747de7929b913cb3fa00cd355'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a2be5a1747de7929b913cb3fa00cd355'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The purchase of securities by the public at a premium over the face value'),
            ('B', 'The market in which the securities of listed companies are traded'),
            ('C', 'The trading of already issued securities on the stock exchanges'),
            ('D', 'The fresh issue of securities by a company or the government')
           ) as v(label, option_text)
 where q.question_hash = 'a2be5a1747de7929b913cb3fa00cd355'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The ''yield'' of a bond is best described as:',
    'The yield of a bond is the annual return an investor earns on the investment, expressed as a percentage of the amount invested. It depends on the coupon rate, the price paid for the bond and the time to maturity.',
    'medium',
    'Standard Reference',
    null,
    '90ac0ee34d3728a1f807989a29af2a9c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '90ac0ee34d3728a1f807989a29af2a9c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The annual return on the investment in the bond, expressed as a percentage of the amount invested'),
            ('B', 'The amount of interest that the issuer fails to pay on the bond'),
            ('C', 'The difference between the interest rate of the bond and the policy rate of the central bank'),
            ('D', 'The face value of the bond expressed as a proportion of the market price')
           ) as v(label, option_text)
 where q.question_hash = '90ac0ee34d3728a1f807989a29af2a9c'
on conflict (question_id, label) do nothing;

-- economy | external-sector | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'The four components of India''s foreign exchange reserves are:',
    'Since 1999-2000 the RBI reports reserves as foreign currency assets, gold, SDRs held with the IMF and the country''s reserve tranche position with the IMF.',
    'easy',
    'RBI',
    null,
    'd84d7a274503527f636e849b161cfefd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd84d7a274503527f636e849b161cfefd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'gold, silver, SDRs and the reserve tranche in the IMF'),
            ('B', 'foreign currency assets, gold, SDRs and the reserve tranche in the IMF'),
            ('C', 'foreign currency assets, gold, SDRs and euro-denominated deposits'),
            ('D', 'foreign currency assets, gold, silver and SDRs')
           ) as v(label, option_text)
 where q.question_hash = 'd84d7a274503527f636e849b161cfefd'
on conflict (question_id, label) do nothing;

-- economy | external-sector | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'In the Balance of Payments, the identity that must always hold is that:',
    'Every transaction is recorded on both sides, so the BOP identity is that the current, capital and financial accounts together with errors and omissions sum to zero.',
    'medium',
    'RBI',
    null,
    'd296aebbb0405b8d0cd790c747bfd76f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd296aebbb0405b8d0cd790c747bfd76f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the current account balance must always be positive'),
            ('B', 'the capital account balance must always be negative'),
            ('C', 'the current account balance plus the capital account balance plus the financial account balance plus errors and omissions equals zero'),
            ('D', 'exports must always equal imports')
           ) as v(label, option_text)
 where q.question_hash = 'd296aebbb0405b8d0cd790c747bfd76f'
on conflict (question_id, label) do nothing;

-- economy | external-sector | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'The ''Appellate Body'' of the World Trade Organization has been unable to function since:',
    'The Appellate Body has not been able to hear appeals since 11 December 2019 because the United States has blocked the appointment of new members, and this has left the dispute settlement system of the WTO partly paralysed.',
    'medium',
    'WTO',
    null,
    '412ad0df6fe40f79e90446529c8fff7a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '412ad0df6fe40f79e90446529c8fff7a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'January 2020, due to the pandemic'),
            ('B', 'June 2017, after the Brexit vote'),
            ('C', 'March 2015, following the Paris Agreement'),
            ('D', 'December 2019, because of the blockage of new appointments')
           ) as v(label, option_text)
 where q.question_hash = '412ad0df6fe40f79e90446529c8fff7a'
on conflict (question_id, label) do nothing;

-- economy | external-sector | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'The RCEP agreement entered into force for India in:',
    'The Regional Comprehensive Economic Partnership entered into force for India on 1 January 2022, and it covers tariff reduction, rules of origin, customs procedures and services commitments among the fifteen parties.',
    'hard',
    'Ministry of Commerce and Industry',
    null,
    'e9a86e11d7d326fed103df0aa7b282b1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e9a86e11d7d326fed103df0aa7b282b1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2023'),
            ('B', '2022'),
            ('C', '2020'),
            ('D', '2021')
           ) as v(label, option_text)
 where q.question_hash = 'e9a86e11d7d326fed103df0aa7b282b1'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The ''Export-Import Bank of India'' finances:',
    'EXIM Bank provides financing for exports and imports, including buyer''s credit and supplier''s credit through its banking network, and it does not trade on its own account.',
    'easy',
    'Standard Reference',
    null,
    '0f93ec679860a912c1f32cb4412ea2ae'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '0f93ec679860a912c1f32cb4412ea2ae'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the purchase of crude oil by oil companies'),
            ('B', 'the working capital needs of small farmers'),
            ('C', 'the construction of port infrastructure'),
            ('D', 'export and import credit programmes for Indian buyers and overseas buyers of Indian goods')
           ) as v(label, option_text)
 where q.question_hash = '0f93ec679860a912c1f32cb4412ea2ae'
on conflict (question_id, label) do nothing;

-- economy | rbi-and-financial-regulation | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'rbi-and-financial-regulation'),
    'The ''Export Credit Guarantee Corporation of India'' provides:',
    'ECGC offers export credit insurance, both the whole-turnover and the small export policy, so that exporters are protected against commercial and political risks of non-payment by overseas buyers.',
    'easy',
    'Standard Reference',
    null,
    '7ee6f7f67519890cf032b09b136f13bc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '7ee6f7f67519890cf032b09b136f13bc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'reinsurance to life insurance companies'),
            ('B', 'credit guarantees for small enterprises in India'),
            ('C', 'insurance cover to exporters against payment risk from overseas buyers'),
            ('D', 'guarantees to banks against project risk')
           ) as v(label, option_text)
 where q.question_hash = '7ee6f7f67519890cf032b09b136f13bc'
on conflict (question_id, label) do nothing;

-- economy | infrastructure-and-services | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'infrastructure-and-services'),
    'Under the ''Cabotage'' rules in India:',
    'Under the Merchant Shipping Act and the relevant notifications, a foreign flag vessel needs a cabotage licence to carry cargo between Indian ports, which is a way of protecting the domestic shipping industry.',
    'easy',
    'Standard Reference',
    null,
    '0dcb12742e03b495432a5e36a82ac565'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '0dcb12742e03b495432a5e36a82ac565'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a foreign vessel requires a licence from the Director General of Shipping to carry cargo between two Indian ports'),
            ('B', 'only Indian built vessels may be registered in India'),
            ('C', 'Indian flag vessels must sail only on domestic routes'),
            ('D', 'no vessel may carry cargo between Indian ports without a cabotage licence')
           ) as v(label, option_text)
 where q.question_hash = '0dcb12742e03b495432a5e36a82ac565'
on conflict (question_id, label) do nothing;

-- economy | infrastructure-and-services | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'infrastructure-and-services'),
    'The ''Shipping Board of India'' is an apex body for:',
    'The Shipping Board of India, constituted in 1961, promotes the Indian shipping industry, runs the National Shipping Academy for seafarer training and advises the government on shipping policy.',
    'easy',
    'Standard Reference',
    null,
    'ec1725e203829f45048634d8eafcbd4f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'ec1725e203829f45048634d8eafcbd4f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the development of inland waterways'),
            ('B', 'the certification of exporters'),
            ('C', 'the regulation of insurance companies'),
            ('D', 'the development of the Indian shipping industry and the training of seafarers')
           ) as v(label, option_text)
 where q.question_hash = 'ec1725e203829f45048634d8eafcbd4f'
on conflict (question_id, label) do nothing;

-- economy | infrastructure-and-services | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'infrastructure-and-services'),
    'India''s research stations in Antarctica are named:',
    'Dakshin Gangotri, India''s first Antarctic station, was set up in 1984 and Bharati, commissioned in 2024, is India''s second permanent station in the Larsemann Hills of Antarctica.',
    'easy',
    'Standard Reference',
    null,
    'f6aa85b55c4575002f4a6451304ed406'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'f6aa85b55c4575002f4a6451304ed406'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Maharaja and Maitri'),
            ('B', 'Bharati and Dakshin Gangotri'),
            ('C', 'Dakshin Gangotri and Bharati'),
            ('D', 'Maitri and Bharati')
           ) as v(label, option_text)
 where q.question_hash = 'f6aa85b55c4575002f4a6451304ed406'
on conflict (question_id, label) do nothing;

-- economy | infrastructure-and-services | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'infrastructure-and-services'),
    'The ''Major Port Authorities Act, 2021'' provides for:',
    'The Major Port Authorities Act, 2021 replaced the major port trusts with autonomous port authorities that are corporatised, with greater administrative and financial powers and a statutory Board of Directors.',
    'easy',
    'Standard Reference',
    2021,
    '2746e2a56ffd07c302561d7df4d9996d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '2746e2a56ffd07c302561d7df4d9996d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the transfer of major ports to private operators'),
            ('B', 'the corporatisation of major ports with professional management and the devolution of powers to the port authorities'),
            ('C', 'the merger of major ports with the Indian Navy'),
            ('D', 'the abolition of the port trusts')
           ) as v(label, option_text)
 where q.question_hash = '2746e2a56ffd07c302561d7df4d9996d'
on conflict (question_id, label) do nothing;

-- economy | infrastructure-and-services | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'infrastructure-and-services'),
    'The ''Land Ports Authority of India'' was constituted to:',
    'The Land Ports Authority of India was set up in 2010 to manage the land ports along the borders with Nepal, Bhutan and Bangladesh, upgrading their infrastructure and facilities.',
    'easy',
    'Standard Reference',
    null,
    '6a3fe4b1fc26a8d83376635a8db42162'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '6a3fe4b1fc26a8d83376635a8db42162'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'regulate and manage the land ports on the western and northern borders of India'),
            ('B', 'develop the inland waterways'),
            ('C', 'administer the customs duty on seaports'),
            ('D', 'operate the airports along the borders')
           ) as v(label, option_text)
 where q.question_hash = '6a3fe4b1fc26a8d83376635a8db42162'
on conflict (question_id, label) do nothing;

-- economy | infrastructure-and-services | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'infrastructure-and-services'),
    'India''s transhipment traffic is mainly routed through:',
    'A large share of India''s container transhipment cargo is handled at Colombo, Singapore and Dubai because of the deeper drafts and better connectivity available at those transhipment hubs.',
    'easy',
    'Standard Reference',
    null,
    '90aea57df220eae44c5cc81f56cff73a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '90aea57df220eae44c5cc81f56cff73a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the ports of Colombo, Singapore and Dubai'),
            ('B', 'the ports of Kochi and Mangaluru'),
            ('C', 'the inland waterways of the Ganga'),
            ('D', 'the ports of Chennai and Kolkata only')
           ) as v(label, option_text)
 where q.question_hash = '90aea57df220eae44c5cc81f56cff73a'
on conflict (question_id, label) do nothing;

-- economy | external-sector | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'The ''India-EFTA'' trade agreement signed in 2022 provided for:',
    'The India-EFTA BIPA of 2022 offers preferential tariff access to Indian goods in the four EFTA countries and required India to extend a commitment of origin to more than 90 per cent of its exports.',
    'easy',
    'Ministry of Commerce and Industry',
    2022,
    'a54e5bb8b6e22991184ab29e079cfff5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a54e5bb8b6e22991184ab29e079cfff5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the opening of the Indian market to EFTA services alone'),
            ('B', 'a free trade pact with the European Union'),
            ('C', 'a currency swap with the EFTA countries'),
            ('D', 'duty-free access for Indian exports to the EFTA countries and a commitment of Indian origin for over 90 per cent of Indian exports')
           ) as v(label, option_text)
 where q.question_hash = 'a54e5bb8b6e22991184ab29e079cfff5'
on conflict (question_id, label) do nothing;

-- economy | external-sector | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'The ''Comprehensive Economic and Trade Agreement'' between India and Australia entered into force in:',
    'The India-Australia ECTA was signed in 2020 and came into force on 5 May 2022, giving Indian exporters preferential access to the Australian market and Australian firms to the Indian market.',
    'hard',
    'Ministry of Commerce and Industry',
    2022,
    'dc561542fd67802430b70c31fa44e586'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'dc561542fd67802430b70c31fa44e586'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2018'),
            ('B', '2024'),
            ('C', '2022'),
            ('D', '2020')
           ) as v(label, option_text)
 where q.question_hash = 'dc561542fd67802430b70c31fa44e586'
on conflict (question_id, label) do nothing;

-- economy | external-sector | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'The ''New Development Bank'' established by the BRICS countries in 2014 is headquartered at:',
    'The New Development Bank, with an initial authorised capital of USD 100 billion, is headquartered in Shanghai and India is one of its five founding members with a share of the capital.',
    'easy',
    'Standard Reference',
    null,
    'e05349066dc256f22a838432104f8b66'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e05349066dc256f22a838432104f8b66'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Brasilia'),
            ('B', 'Shanghai'),
            ('C', 'New Delhi'),
            ('D', 'Moscow')
           ) as v(label, option_text)
 where q.question_hash = 'e05349066dc256f22a838432104f8b66'
on conflict (question_id, label) do nothing;

-- economy | external-sector | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'The ''Asian Development Bank'' is headquartered at:',
    'The Asian Development Bank, established in 1966, is headquartered in Manila and India has been a member since its inception, with the ADB''s India resident mission based in New Delhi.',
    'easy',
    'Standard Reference',
    null,
    '9e78f10d1b0f4693de8bfbf223bbe088'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '9e78f10d1b0f4693de8bfbf223bbe088'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Tokyo'),
            ('B', 'Manila'),
            ('C', 'Beijing'),
            ('D', 'Bangkok')
           ) as v(label, option_text)
 where q.question_hash = '9e78f10d1b0f4693de8bfbf223bbe088'
on conflict (question_id, label) do nothing;

-- economy | external-sector | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'The Asian Infrastructure Investment Bank, of which India is a founding member, began operations in:',
    'The AIIB was established by the Articles of Agreement in 2015 and commenced operations in January 2016, with its headquarters in Beijing and India as one of the five founding members.',
    'medium',
    'Standard Reference',
    null,
    'f638c40a7975c077f93220da836751b9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'f638c40a7975c077f93220da836751b9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2010'),
            ('B', '2008'),
            ('C', '2019'),
            ('D', '2016')
           ) as v(label, option_text)
 where q.question_hash = 'f638c40a7975c077f93220da836751b9'
on conflict (question_id, label) do nothing;

-- economy | external-sector | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'The ''IDA'' of the World Bank Group lends to:',
    'The International Development Association, the concessional window of the World Bank Group, lends to the poorest countries on interest-free or very low interest terms, while the IBRD lends to middle-income countries.',
    'medium',
    'Standard Reference',
    null,
    '04615591594a82aa9822e325f59e4c6b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '04615591594a82aa9822e325f59e4c6b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the poorest countries on interest-free or concessional terms'),
            ('B', 'all member countries on commercial terms'),
            ('C', 'middle-income countries only'),
            ('D', 'Indian states for infrastructure projects')
           ) as v(label, option_text)
 where q.question_hash = '04615591594a82aa9822e325f59e4c6b'
on conflict (question_id, label) do nothing;

-- economy | external-sector | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'The IMF''s ''Rapid Financing Instrument'' is available to:',
    'The RFI, introduced in 2011, provides rapid and unconditional financing to any member country facing an urgent balance of payments need, without a programmatic review, and the RFI and RCF are the Fund''s non-financing facilities.',
    'medium',
    'IMF',
    null,
    '5e6b478643a4811019bd61beb18c0624'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '5e6b478643a4811019bd61beb18c0624'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'only countries in the euro area'),
            ('B', 'only low-income countries'),
            ('C', 'all member countries facing a balance of payments need, without a programme review'),
            ('D', 'only countries facing a balance of payments need caused by a commodity price shock')
           ) as v(label, option_text)
 where q.question_hash = '5e6b478643a4811019bd61beb18c0624'
on conflict (question_id, label) do nothing;

-- economy | external-sector | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'In the WTO, the ''Special and Differential Treatment'' provisions:',
    'Special and differential treatment gives developing and least developed countries longer implementation periods, exemptions and additional flexibilities in the use of subsidies and in dispute settlement.',
    'medium',
    'WTO',
    null,
    '5559fa396e7c520fb0f228f441c119bf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '5559fa396e7c520fb0f228f441c119bf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'provide for tariff-free access to their exports'),
            ('B', 'apply only to the least developed countries'),
            ('C', 'give developing countries longer implementation periods and additional flexibilities in their commitments'),
            ('D', 'allow developing countries to opt out of all dispute settlement')
           ) as v(label, option_text)
 where q.question_hash = '5559fa396e7c520fb0f228f441c119bf'
on conflict (question_id, label) do nothing;

-- economy | external-sector | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'The WTO''s ''Agreement on Subsidies and Countervailing Measures'' governs:',
    'The SCM Agreement regulates the use of subsidies by prohibiting those that cause adverse effects and allows importing members to impose countervailing duties on subsidised imports after an investigation.',
    'medium',
    'WTO',
    null,
    'df74fd2a0d6a47ddd56014f2e4727d50'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'df74fd2a0d6a47ddd56014f2e4727d50'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the tariff concessions of developing countries'),
            ('B', 'prohibiting or disciplining trade subsidies that cause injury and the countervailing duties on subsidised imports'),
            ('C', 'the settlement of disputes over patents'),
            ('D', 'the rules of origin')
           ) as v(label, option_text)
 where q.question_hash = 'df74fd2a0d6a47ddd56014f2e4727d50'
on conflict (question_id, label) do nothing;

-- economy | external-sector | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'A ''countervailing duty'' is imposed on an import when:',
    'Countervailing duties are imposed after an investigation establishes that the imported product receives a specific subsidy and that the subsidised imports cause injury to the domestic industry; anti-dumping duties address dumping instead.',
    'medium',
    'DGFT',
    null,
    '8873625e6d61c25765aca36dca4e7407'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '8873625e6d61c25765aca36dca4e7407'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the import price falls below the cost of production'),
            ('B', 'the exporting country imposes a restriction on Indian goods'),
            ('C', 'the good is listed in the special economic zone'),
            ('D', 'the import is found to be subsidised and the subsidy causes injury to the domestic industry')
           ) as v(label, option_text)
 where q.question_hash = '8873625e6d61c25765aca36dca4e7407'
on conflict (question_id, label) do nothing;

-- economy | external-sector | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'The ''Rules of Origin'' under India''s trade agreements determine:',
    'Rules of origin establish whether goods qualify for preferential tariff treatment under a trade agreement, usually through substantial transformation, production or value-addition criteria.',
    'medium',
    'Ministry of Commerce and Industry',
    null,
    '7b5cb1e52deb2115adf541530356fdaf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '7b5cb1e52deb2115adf541530356fdaf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the origin of goods for preference treatment, and consequently the applicable preferential tariff'),
            ('B', 'the customs valuation of imports'),
            ('C', 'the shipping cost of exports'),
            ('D', 'the exchange rate for settlement')
           ) as v(label, option_text)
 where q.question_hash = '7b5cb1e52deb2115adf541530356fdaf'
on conflict (question_id, label) do nothing;

-- economy | external-sector | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'A ''Preferential Trade Agreement'' between India and a partner country differs from a ''Free Trade Agreement'' in that it:',
    'A preferential trade agreement covers a limited number of goods with lower commitments, while a free trade agreement seeks substantially complete elimination of tariffs on most traded goods and deeper coverage of services and investment.',
    'hard',
    'Ministry of Commerce and Industry',
    null,
    '677272e0779066a997507442f5a97766'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '677272e0779066a997507442f5a97766'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'covers a limited number of tariff lines with a narrower scope of commitments'),
            ('B', 'has no rules of origin'),
            ('C', 'is negotiated only at the multilateral level'),
            ('D', 'eliminates all tariffs immediately')
           ) as v(label, option_text)
 where q.question_hash = '677272e0779066a997507442f5a97766'
on conflict (question_id, label) do nothing;

-- economy | external-sector | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'The ''CEPA'' between India and a partner is:',
    'A Comprehensive Economic and Trade Agreement covers trade in goods, trade in services, investment, movement of persons and regulatory cooperation, and India has such agreements with the UAE, Australia and others.',
    'medium',
    'Standard Reference',
    null,
    'bead1cd1e6d6f772d7891be06b441ec4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'bead1cd1e6d6f772d7891be06b441ec4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a currency swap arrangement'),
            ('B', 'a Comprehensive Economic and Trade Agreement covering goods, services and investment'),
            ('C', 'a bilateral defence agreement'),
            ('D', 'a customs union')
           ) as v(label, option_text)
 where q.question_hash = 'bead1cd1e6d6f772d7891be06b441ec4'
on conflict (question_id, label) do nothing;

-- economy | external-sector | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'The ''Wildlife Crime Control Act'' and the ''CITES'' conventions are relevant to India''s international trade because:',
    'CITES, to which India is a party, lists endangered species whose trade is regulated, and the Wildlife Crime Control Act enforces the ban on trade in such species and products like ivory, rhino horn and tiger parts.',
    'hard',
    'Standard Reference',
    null,
    'b6f8fe49b6a4092346f4798631bd958e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'b6f8fe49b6a4092346f4798631bd958e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'they fix the export duty on timber'),
            ('B', 'they regulate the import of coal from Australia'),
            ('C', 'they standardise the quality of pharma products for export'),
            ('D', 'they restrict the export of species and products covered by international wildlife treaties')
           ) as v(label, option_text)
 where q.question_hash = 'b6f8fe49b6a4092346f4798631bd958e'
on conflict (question_id, label) do nothing;

-- economy | external-sector | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'The ''Foreign Direct Investment'' in India differs from ''Foreign Portfolio Investment'' because FDI:',
    'FDI is an investment that confers a lasting interest and effective management influence, whereas FPI is a purely financial investment in securities that is readily reversible; the two are governed by separate FEMA regulations.',
    'hard',
    'RBI',
    null,
    '12e09fffc4589d73742c29a1ad3eefc1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '12e09fffc4589d73742c29a1ad3eefc1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'cannot be made in the services sector'),
            ('B', 'is short term and easily reversible'),
            ('C', 'involves a lasting management interest and is made in the capital of an enterprise in which the investor has significant control'),
            ('D', 'is always routed through the mutual funds')
           ) as v(label, option_text)
 where q.question_hash = '12e09fffc4589d73742c29a1ad3eefc1'
on conflict (question_id, label) do nothing;

-- economy | industry-and-manufacturing | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'industry-and-manufacturing'),
    'The ''Press Note 3 of 2020'' issued by the DPIIT relates to:',
    'Press Note 3 of 2020 changed the definition of beneficial owner for FDI, which altered the automatic-route treatment of investments in sectors with Press Note 3 restrictions, such as media and certain technology areas.',
    'easy',
    'DPIIT',
    2020,
    '20dc308c92757791fb2186f029f2c1e8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '20dc308c92757791fb2186f029f2c1e8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the extension of the e-commerce rules'),
            ('B', 'the revision of the export promotion schemes'),
            ('C', 'the abolition of the SEZ'),
            ('D', 'the redefinition of the beneficial owner for the purpose of determining the sector under which FDI could be made')
           ) as v(label, option_text)
 where q.question_hash = '20dc308c92757791fb2186f029f2c1e8'
on conflict (question_id, label) do nothing;

-- economy | industry-and-manufacturing | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'industry-and-manufacturing'),
    'Under the ''automatic route'' of FDI, an investor may:',
    'Under the automatic route, the foreign investor does not need prior government approval, though the investment must still comply with the FEMA regulations and sectoral caps and the RBI must be informed.',
    'medium',
    'DPIIT',
    null,
    'b86b8e22a35f869cc8d1b8a925d46106'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b86b8e22a35f869cc8d1b8a925d46106'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'invest only in special economic zones'),
            ('B', 'make the investment without the prior approval of the government'),
            ('C', 'make the investment only through the automatic listing route'),
            ('D', 'make the investment only after the approval of the RBI')
           ) as v(label, option_text)
 where q.question_hash = 'b86b8e22a35f869cc8d1b8a925d46106'
on conflict (question_id, label) do nothing;

-- economy | industry-and-manufacturing | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'industry-and-manufacturing'),
    'The ''special economic zones'' in India offer, among others, the facility of:',
    'Units in special economic zones enjoy a duty free enclave with no duty on imports and no taxes on exports, along with infrastructure and a faster dispute resolution mechanism, but they remain subject to labour and environmental law.',
    'medium',
    'Standard Reference',
    null,
    'cb8be021b0884239f2c36bf484b4cba4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'cb8be021b0884239f2c36bf484b4cba4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'free of the requirement to pay land revenue'),
            ('B', 'exemption from the corporate tax for ever'),
            ('C', 'exemption from customs duty on imports and from taxes on exports'),
            ('D', 'a waiver of all labour laws permanently')
           ) as v(label, option_text)
 where q.question_hash = 'cb8be021b0884239f2c36bf484b4cba4'
on conflict (question_id, label) do nothing;

-- economy | industry-and-manufacturing | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'industry-and-manufacturing'),
    'The ''duty drawback'' and ''RoDTEP'' schemes in India are:',
    'Both duty drawback and RoDTEP aim at refunding the taxes and duties embedded in inputs of exports; RoDTEP replaced duty drawback and the focus product scheme with a single scrip-based mechanism.',
    'medium',
    'DGFT',
    null,
    'a45c22372f3d8f1469e3cfbedefca0f5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a45c22372f3d8f1469e3cfbedefca0f5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'both intended to refund the taxes and duties embedded in the cost of inputs of exported goods'),
            ('B', 'tariff concessions granted to the least developed countries'),
            ('C', 'the two components of the GST Council''s compensation formula'),
            ('D', 'the instruments used by the RBI to sterilise foreign exchange')
           ) as v(label, option_text)
 where q.question_hash = 'a45c22372f3d8f1469e3cfbedefca0f5'
on conflict (question_id, label) do nothing;

-- economy | industry-and-manufacturing | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'industry-and-manufacturing'),
    'The ''Export Promotion Mission'' also known as ''Niryat Bandhu'' was launched in 2021 to:',
    'Niryat Bandhu, the Niryat Bandhu Vridhi scheme, was launched to provide handholding support to small exporters and enable them to participate in international trade and use digital tools.',
    'easy',
    'DGFT',
    2021,
    '8548f67555faad190cd702a9a8f83249'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '8548f67555faad190cd702a9a8f83249'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'simplify the customs procedure for the e-commerce exports'),
            ('B', 'regulate the export of strategic minerals'),
            ('C', 'assist Indian exporters, particularly small exporters, in reaching international markets'),
            ('D', 'finance the setting up of export oriented industrial parks')
           ) as v(label, option_text)
 where q.question_hash = '8548f67555faad190cd702a9a8f83249'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'The ''Import Duty'' in the Union Budget is levied by the:',
    'Customs duty is a Union subject under the Seventh Schedule and the proceeds accrue to the Consolidated Fund of India, whereas GST on goods sold within a State is shared with the States.',
    'medium',
    'NCERT Class XII',
    null,
    '9ece0d28358b9c6ce62cd693d3f9e735'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '9ece0d28358b9c6ce62cd693d3f9e735'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Directorate General of Foreign Trade'),
            ('B', 'State Governments on goods entering their territory'),
            ('C', 'both the Union and the States in equal proportion'),
            ('D', 'Union Government and the proceeds accrue to the Union')
           ) as v(label, option_text)
 where q.question_hash = '9ece0d28358b9c6ce62cd693d3f9e735'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'The Customs Act, 1962 and the Customs Tariff Act, 1961 are concerned with:',
    'The Customs Act, 1962 and the Customs Tariff Act, 1961 govern the assessment and collection of customs duty, with the tariff rates being revised through the annual customs notifications.',
    'easy',
    'Standard Reference',
    null,
    'b7889d23c69f98260df7f763d75fa25e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'b7889d23c69f98260df7f763d75fa25e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the levy and collection of customs duty on imported goods'),
            ('B', 'the rate of corporate income tax'),
            ('C', 'the regulation of the insurance business'),
            ('D', 'the pricing of petroleum products')
           ) as v(label, option_text)
 where q.question_hash = 'b7889d23c69f98260df7f763d75fa25e'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'The ''Decommissioning of Embossed Duty on Goods'' in the Indian customs system relates to:',
    'The measure removed the requirement of affixing an embossed serial number on the duty drawback certificates and streamlined the procedure, in line with the ease of doing business reforms of the GST era.',
    'hard',
    'Standard Reference',
    null,
    '68a0bee4e03860f5272c10d24a77e523'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '68a0bee4e03860f5272c10d24a77e523'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the end of the export incentive scheme'),
            ('B', 'the simplification of the procedure for duty drawback and the removal of the requirement of embossing on duty drawback certificates'),
            ('C', 'the abolition of basic customs duty on imports'),
            ('D', 'the introduction of the single window for customs clearance')
           ) as v(label, option_text)
 where q.question_hash = '68a0bee4e03860f5272c10d24a77e523'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'The ''Basic Customs Duty'' and the ''Special Additional Duty'' levied on petroleum products are:',
    'Basic customs duty is a Union tax on imports, while the special additional duty on petroleum products accrues to the Union and is used to compensate oil companies for the controlled retail prices of petroleum products.',
    'hard',
    'Standard Reference',
    null,
    '3f36ad30eecf8a8a1b9067b819e07341'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '3f36ad30eecf8a8a1b9067b819e07341'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'both part of the GST'),
            ('B', 'levied only on imports and not on domestic production'),
            ('C', 'both levied by the States'),
            ('D', 'a Union tax and a cess-like levy used to fund downstream subsidies')
           ) as v(label, option_text)
 where q.question_hash = '3f36ad30eecf8a8a1b9067b819e07341'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'The ''per unit value standard'' and the ''specific duty'' are the two methods of:',
    'Ad valorem duty is levied as a percentage of the assessed value of the import, which may be calculated either on the basis of the specific value per unit of the goods or on the specific rate of duty per unit.',
    'hard',
    'Standard Reference',
    null,
    '8e0daff7ad4c8b0efb1b81e99d6c2e0e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '8e0daff7ad4c8b0efb1b81e99d6c2e0e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'ad valorem duty calculation'),
            ('B', 'determining the excise duty on petroleum'),
            ('C', 'computing the GDP deflator'),
            ('D', 'fixing the customs valuation of imports')
           ) as v(label, option_text)
 where q.question_hash = '8e0daff7ad4c8b0efb1b81e99d6c2e0e'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'A ''real exchange rate'' differs from a nominal exchange rate in that it:',
    'The real exchange rate adjusts the nominal rate for relative price levels, and a depreciation of the real exchange rate makes Indian goods cheaper for foreigners once inflation is taken into account.',
    'hard',
    'Standard Reference',
    null,
    '36cd81921eed53b6bef5277b8655a50e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '36cd81921eed53b6bef5277b8655a50e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'is used only for official reserves'),
            ('B', 'refers to the rate at which the central bank buys foreign currency'),
            ('C', 'takes account of the difference in price levels between countries'),
            ('D', 'is quoted only in terms of the dollar')
           ) as v(label, option_text)
 where q.question_hash = '36cd81921eed53b6bef5277b8655a50e'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'A deterioration in the ''terms of trade'' of a country means:',
    'The terms of trade measure the ratio of export prices to import prices, so a fall in export prices relative to import prices is a deterioration, and for India a fall in petroleum prices is a classic example of an improvement.',
    'medium',
    'Standard Reference',
    null,
    '7b7234ba2b3d0332769a49aa5e16319c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '7b7234ba2b3d0332769a49aa5e16319c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'its import demand curve shifts inwards'),
            ('B', 'the prices of its exports fall relative to the prices of its imports'),
            ('C', 'the volume of its exports falls'),
            ('D', 'its currency appreciates in real terms')
           ) as v(label, option_text)
 where q.question_hash = '7b7234ba2b3d0332769a49aa5e16319c'
on conflict (question_id, label) do nothing;

-- economy | monetary-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'monetary-policy'),
    'The ''exchange rate pass-through'' refers to:',
    'Pass-through measures how much of a depreciation is transmitted into domestic prices, and its size matters for the inflation consequences of an exchange rate adjustment.',
    'medium',
    'RBI',
    null,
    'c98c742cfde117c2ba97a780d706afe4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'c98c742cfde117c2ba97a780d706afe4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the mechanism by which the RBI sterilises forex intervention'),
            ('B', 'the extent to which a change in the exchange rate is reflected in domestic prices'),
            ('C', 'the rate at which exporters convert dollars into rupees'),
            ('D', 'the cost of hedging a currency forward')
           ) as v(label, option_text)
 where q.question_hash = 'c98c742cfde117c2ba97a780d706afe4'
on conflict (question_id, label) do nothing;

-- economy | monetary-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'monetary-policy'),
    'When the RBI purchases foreign currency from the market, the liquidity it adds to the system is called:',
    'Foreign exchange intervention that injects liquidity into the domestic system is termed sterilised liquidity, and the RBI usually absorbs it through open market sales or reverse repos when it wants to keep liquidity conditions stable.',
    'hard',
    'RBI',
    null,
    '95bf0c90a7e3d76303760ff732eef8dd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '95bf0c90a7e3d76303760ff732eef8dd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'sterilised liquidity'),
            ('B', 'primary deficit'),
            ('C', 'quasi-fiscal deficit'),
            ('D', 'fiscal deficit')
           ) as v(label, option_text)
 where q.question_hash = '95bf0c90a7e3d76303760ff732eef8dd'
on conflict (question_id, label) do nothing;

-- economy | monetary-policy | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'monetary-policy'),
    'The ''Interest Equalisation Deposit Scheme'' of the RBI was introduced in 2022 to:',
    'The scheme allowed exporters to deposit foreign currency proceeds with the RBI for a period at a fixed interest rate, in order to boost foreign exchange inflows and provide a hedge against exchange rate risk.',
    'easy',
    'RBI',
    2022,
    '80eaf9848101fcf3c2df9670aea1f9a7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '80eaf9848101fcf3c2df9670aea1f9a7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'raise the repo rate to control inflation'),
            ('B', 'enable Indian companies to borrow in foreign currency'),
            ('C', 'subsidise the import of edible oil'),
            ('D', 'allow exporters to park their foreign currency proceeds with the RBI at a fixed rate for a specified period')
           ) as v(label, option_text)
 where q.question_hash = '80eaf9848101fcf3c2df9670aea1f9a7'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The ''Foreign Currency Non-Resident'' deposits in India are:',
    'FCNR deposits may be made by Indian residents who hold foreign currency and by foreigners resident outside India, and they are of a specified minimum maturity, attracting an interest rate fixed by the RBI.',
    'medium',
    'RBI',
    null,
    'e88770972c77f08cffb51938b0050178'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e88770972c77f08cffb51938b0050178'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the reserve account of the RBI'),
            ('B', 'short term loans from the IMF'),
            ('C', 'term deposits made by Indian residents holding foreign currency, and by foreign nationals from outside India'),
            ('D', 'current account balances of foreign companies in rupee')
           ) as v(label, option_text)
 where q.question_hash = 'e88770972c77f08cffb51938b0050178'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The ''NRI'' in the FEMA regulations denotes:',
    'For FEMA purposes, a non-resident Indian is a person who, during the financial year, has stayed in India for less than 182 days, while a person of Indian origin is defined separately and can be of any nationality.',
    'medium',
    'RBI',
    null,
    '657fa14cd16f40e59c3df2add8673a98'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '657fa14cd16f40e59c3df2add8673a98'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'any foreigner holding an Indian visa'),
            ('B', 'a person who is an Indian citizen and who has stayed outside India for more than 180 days during the preceding financial year'),
            ('C', 'a person of Indian origin resident outside India irrespective of citizenship'),
            ('D', 'an overseas Indian who has permanently settled abroad')
           ) as v(label, option_text)
 where q.question_hash = '657fa14cd16f40e59c3df2add8673a98'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The ''Liberalised Remittance Scheme'' of the RBI allows an Indian resident to remit:',
    'Under the LRS, an individual may remit up to USD 2,50,000 in a financial year to any country for any permissible purpose, and the limit was temporarily revised during the pandemic period.',
    'hard',
    'RBI',
    null,
    'c44b9974c0d222d2e23371e213ee53c4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c44b9974c0d222d2e23371e213ee53c4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'up to USD 50,000 a year for trade related remittances'),
            ('B', 'any amount for personal travel abroad'),
            ('C', 'up to USD 2,50,000 a year for any permissible purpose without any approval'),
            ('D', 'unlimited amounts for medical treatment only')
           ) as v(label, option_text)
 where q.question_hash = 'c44b9974c0d222d2e23371e213ee53c4'
on conflict (question_id, label) do nothing;

-- economy | national-income | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'national-income'),
    'The ''Indian diaspora'' remittances to India have been:',
    'Inward remittances from Indians working abroad, mainly from the Gulf and the OECD countries, are a major and relatively stable component of the current account, and the World Bank estimates that India is the world leader in remittance inflows.',
    'medium',
    'RBI',
    null,
    '4056a7467cba4004437bf2b5f03b1db0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '4056a7467cba4004437bf2b5f03b1db0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the main source of India''s outward foreign investment'),
            ('B', 'restricted by the FEMA since 1991'),
            ('C', 'the largest source of India''s fiscal deficit'),
            ('D', 'one of the largest sources of India''s inward remittances and a significant support for the balance of payments')
           ) as v(label, option_text)
 where q.question_hash = '4056a7467cba4004437bf2b5f03b1db0'
on conflict (question_id, label) do nothing;

-- economy | national-income | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'national-income'),
    'In India''s expenditure approach to national income, ''net exports'' equal:',
    'Net exports in the domestic product identity include both goods and services, and a negative net export figure means the country is running a deficit on the overall trade in goods and services.',
    'medium',
    'NCERT Class XII',
    null,
    '10bb9977cdbdd521c62c17e8c4cc7ac3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '10bb9977cdbdd521c62c17e8c4cc7ac3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'exports of goods and services minus imports of goods and services'),
            ('B', 'exports of goods minus imports of goods only'),
            ('C', 'the balance of the current account plus capital account'),
            ('D', 'the forex reserves at the end of the year')
           ) as v(label, option_text)
 where q.question_hash = '10bb9977cdbdd521c62c17e8c4cc7ac3'
on conflict (question_id, label) do nothing;

-- economy | national-income | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'national-income'),
    'The share of ''services'' in India''s exports has increased mainly because of:',
    'India''s comparative advantage in skilled labour has driven the rapid expansion of information technology and business process service exports, which have made services the dominant share of the export basket.',
    'medium',
    'Economic Survey 2023-24',
    null,
    '2462c9f4ce0c481bb4103f1d65f15fad'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '2462c9f4ce0c481bb4103f1d65f15fad'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the removal of all quantitative restrictions on imports'),
            ('B', 'the growth of information technology, business process and financial services with a comparative advantage in skilled labour'),
            ('C', 'the devaluation of the rupee'),
            ('D', 'the large-scale migration of Indian professionals')
           ) as v(label, option_text)
 where q.question_hash = '2462c9f4ce0c481bb4103f1d65f15fad'
on conflict (question_id, label) do nothing;

-- economy | external-sector | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'The ''import cover'' of India is measured as:',
    'Import cover is the number of months of imports that the forex reserves can finance, and a higher cover implies a larger buffer against external shocks.',
    'medium',
    'RBI',
    null,
    'fb3aa1c4e43a9c481b9a5327a2d615ea'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'fb3aa1c4e43a9c481b9a5327a2d615ea'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the ratio of exports to imports'),
            ('B', 'the ratio of the fiscal deficit to the GDP'),
            ('C', 'the ratio of foreign exchange reserves to the value of annual imports'),
            ('D', 'the ratio of the trade deficit to the current account deficit')
           ) as v(label, option_text)
 where q.question_hash = 'fb3aa1c4e43a9c481b9a5327a2d615ea'
on conflict (question_id, label) do nothing;

-- economy | external-sector | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'The ''current account deficit'' of an economy is:',
    'The current account records trade in goods and services, primary income and secondary income, and a deficit means that the country is receiving less than it spends abroad, which must be financed by capital inflows.',
    'medium',
    'RBI',
    null,
    'a5d048b0c29102baf6aadff7a761a41e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a5d048b0c29102baf6aadff7a761a41e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the difference between the fiscal deficit and the primary deficit'),
            ('B', 'the gap between the current and the capital account of the budget'),
            ('C', 'the sum of the fiscal deficit and the external commercial borrowing'),
            ('D', 'the excess of imports of goods and services plus income payments over exports plus income receipts')
           ) as v(label, option_text)
 where q.question_hash = 'a5d048b0c29102baf6aadff7a761a41e'
on conflict (question_id, label) do nothing;

-- economy | external-sector | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'The ''Global Trade Alert'' and the ''Trade Policy Review'' are:',
    'The Trade Policy Review Mechanism and the Global Trade Alert are part of the WTO''s transparency and surveillance architecture, and they examine the trade policies of members and the measures that may distort trade.',
    'easy',
    'WTO',
    null,
    'b186af2b354d1495d0c792ea1e25efb4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'b186af2b354d1495d0c792ea1e25efb4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'WTO mechanisms for transparency and surveillance of trade policies'),
            ('B', 'programmes of the UNIDO for industrial development'),
            ('C', 'tools of the World Bank for project appraisal'),
            ('D', 'initiatives of the IMF for debt sustainability')
           ) as v(label, option_text)
 where q.question_hash = 'b186af2b354d1495d0c792ea1e25efb4'
on conflict (question_id, label) do nothing;

-- economy | external-sector | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'The ''General Agreement on Tariffs and Trade'' of 1947 is significant because:',
    'The GATT of 1947 set out the principles of trade policy, including most favoured nation treatment, and after eight rounds of negotiations it was replaced by the WTO Agreement in 1995.',
    'easy',
    'WTO',
    null,
    '945d6c47880ae92f281eab6eefc7f1bd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '945d6c47880ae92f281eab6eefc7f1bd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'it created the International Monetary Fund'),
            ('B', 'it was the first multilateral agreement on tariffs and provided the institutional base for the WTO'),
            ('C', 'it was the first treaty to liberalise services trade'),
            ('D', 'it established the Bretton Woods exchange rate system')
           ) as v(label, option_text)
 where q.question_hash = '945d6c47880ae92f281eab6eefc7f1bd'
on conflict (question_id, label) do nothing;

-- economy | external-sector | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'The ''General Agreement on Trade in Services'' of the WTO applies to:',
    'GATS was the first multilateral agreement to liberalise and rules-basedly discipline trade in services, and it has annexes on specific sectors such as financial services, telecommunications and movement of natural persons.',
    'easy',
    'WTO',
    null,
    'd409dbb697f595c745e08dd17e3d4223'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd409dbb697f595c745e08dd17e3d4223'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'trade in services such as tourism, transport, financial and business services'),
            ('B', 'only the supply of services in the agriculture sector'),
            ('C', 'the tariff preferences of developing countries'),
            ('D', 'the settlement of disputes relating to services')
           ) as v(label, option_text)
 where q.question_hash = 'd409dbb697f595c745e08dd17e3d4223'
on conflict (question_id, label) do nothing;

-- economy | external-sector | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'The ''Trade Facilitation Agreement'' of the WTO aims to:',
    'The Trade Facilitation Agreement, in force since 2017, simplifies and harmonises customs procedures, sets a time limit for the release of cargo and requires advance rulings and risk management, with a special and differential treatment for developing countries.',
    'easy',
    'WTO',
    null,
    '2588baa1bb356fc95f741a4f1ce6ec08'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '2588baa1bb356fc95f741a4f1ce6ec08'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'provide for the abolition of all customs duties'),
            ('B', 'reduce the tariffs on agricultural products'),
            ('C', 'simplify customs procedures and reduce the cost of border compliance for traders'),
            ('D', 'subsidise the agricultural exports of developing countries')
           ) as v(label, option_text)
 where q.question_hash = '2588baa1bb356fc95f741a4f1ce6ec08'
on conflict (question_id, label) do nothing;

-- economy | industry-and-manufacturing | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'industry-and-manufacturing'),
    'India''s export of business process services is facilitated by the:',
    'The policy of setting up software technology parks and SEZs for the IT sector, together with the strength of engineering education, created the skilled labour pool that made India a global outsourcing destination.',
    'easy',
    'Standard Reference',
    null,
    'b16ac81fa15645dcce1416ef6047f841'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'b16ac81fa15645dcce1416ef6047f841'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the restriction of work-from-home arrangements for exporters'),
            ('B', 'the imposition of a high export duty on software'),
            ('C', 'the absence of any special economic zones for the IT sector'),
            ('D', 'IT parks and the SEZ policy, with a large share of the workforce trained at the university and technical institute level')
           ) as v(label, option_text)
 where q.question_hash = 'b16ac81fa15645dcce1416ef6047f841'
on conflict (question_id, label) do nothing;

-- economy | industry-and-manufacturing | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'industry-and-manufacturing'),
    'For Indian exports, the recognition of the ''BIS'' certification:',
    'BIS certification, and the Quality Control Orders, enable Indian exporters to demonstrate conformity with international standards and thereby access markets with strict technical regulations.',
    'easy',
    'Standard Reference',
    null,
    '02ec9bb9bda7aec0b429427637c7e43a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '02ec9bb9bda7aec0b429427637c7e43a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'helps exporters meet the quality and labelling requirements of the destination country'),
            ('B', 'entitles them to a rebate on customs duty'),
            ('C', 'is mandatory only for imports'),
            ('D', 'replaces the need for a certificate of origin')
           ) as v(label, option_text)
 where q.question_hash = '02ec9bb9bda7aec0b429427637c7e43a'
on conflict (question_id, label) do nothing;

-- economy | external-sector | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'The ''Foreign Trade Policy'' of India is:',
    'The Foreign Trade Policy is notified by the DGFT under the Foreign Trade (Development and Regulation) Act, and it is supplemented by the annual tariff notifications of the Department of Revenue.',
    'easy',
    'DGFT',
    null,
    '35fb7003e1bfa6a0fd0ee557cfcb9011'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '35fb7003e1bfa6a0fd0ee557cfcb9011'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a part of the Income Tax Act'),
            ('B', 'an annual statement of the RBI'),
            ('C', 'the tariff schedule notified by the Department of Revenue'),
            ('D', 'a document of the DGFT that outlines the policy framework for exports and imports')
           ) as v(label, option_text)
 where q.question_hash = '35fb7003e1bfa6a0fd0ee557cfcb9011'
on conflict (question_id, label) do nothing;

-- economy | infrastructure-and-services | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'infrastructure-and-services'),
    'The Indian postal network enables exports by:',
    'The Department of Posts runs e-commerce export hubs and an export mail scheme that allows small traders and exporters to ship consignments abroad through the international mail network.',
    'easy',
    'Standard Reference',
    null,
    'd066f70aa550e28816b72d294d2f9234'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd066f70aa550e28816b72d294d2f9234'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'issuing letters of credit for exporters'),
            ('B', 'facilitating exports of small value consignments through the international mail and the e-commerce export hubs'),
            ('C', 'certifying the quality of exported goods'),
            ('D', 'operating the customs bonded warehouses')
           ) as v(label, option_text)
 where q.question_hash = 'd066f70aa550e28816b72d294d2f9234'
on conflict (question_id, label) do nothing;

-- economy | infrastructure-and-services | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'infrastructure-and-services'),
    'India''s coastal shipping policy aims to:',
    'India''s coastal shipping and inland waterways policy seeks to move cargo from road and rail to cheaper and more environment friendly waterways, and the National Inland Waterways Act, 2016 designated three national waterways.',
    'easy',
    'Economic Survey 2023-24',
    null,
    '7fcacca3237d8e054ad01b3057d66ed6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '7fcacca3237d8e054ad01b3057d66ed6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'increase the number of inland waterways in the Ganga basin'),
            ('B', 'ban the movement of cargo by road'),
            ('C', 'shift a greater share of the freight from road and rail to waterways to reduce logistics cost and congestion'),
            ('D', 'privatise all the major ports without any regulation')
           ) as v(label, option_text)
 where q.question_hash = '7fcacca3237d8e054ad01b3057d66ed6'
on conflict (question_id, label) do nothing;

-- economy | external-sector | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'India joined the ''Belt and Road Initiative'' in:',
    'India formally joined the Belt and Road Initiative in 2019 at the Second Belt and Road Forum in Beijing, on the condition that the forum respect India''s sovereignty and territorial integrity.',
    'easy',
    'Ministry of External Affairs',
    2019,
    'f891ce5af46b844a59c7ad9758949aea'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f891ce5af46b844a59c7ad9758949aea'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2022, at the SCO summit in Samarkand'),
            ('B', '2019, at the Second Belt and Road Forum in Beijing'),
            ('C', '2013, at the launch of the initiative in Beijing'),
            ('D', '2016, at the G20 summit in Hangzhou')
           ) as v(label, option_text)
 where q.question_hash = 'f891ce5af46b844a59c7ad9758949aea'
on conflict (question_id, label) do nothing;

-- economy | external-sector | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'The ASEAN-India Dialogue Relations were upgraded to a summit in:',
    'The ASEAN-India Dialogue Relations were elevated to the level of a summit in 2014 in Nay Pyi Taw, and the ASEAN-India Centenary was observed in 2022 marking fifty years of dialogue relations.',
    'easy',
    'Ministry of External Affairs',
    null,
    '5523ffbbebd1f502187544e950ad00d7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '5523ffbbebd1f502187544e950ad00d7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2014, at the ASEAN-India Summit in Nay Pyi Taw'),
            ('B', '1997, at the ASEAN Summit in Kuala Lumpur'),
            ('C', '2008, at the ASEAN-India Summit in New Delhi'),
            ('D', '2020, at the ASEAN-India Summit in Hanoi')
           ) as v(label, option_text)
 where q.question_hash = '5523ffbbebd1f502187544e950ad00d7'
on conflict (question_id, label) do nothing;

-- economy | external-sector | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'The voting power of a country in the IMF is determined by:',
    'A country''s quota in the Fund determines its voting power, its access to the credit line and its share of the allocation of SDRs, and the quota is reviewed every five years through the general review and the fourteen-yearly quota increase.',
    'easy',
    'IMF',
    null,
    'c8fcbb7b07eca3f763253602897fd90b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c8fcbb7b07eca3f763253602897fd90b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the number of its diplomats in the capital'),
            ('B', 'its population'),
            ('C', 'its quota, which also determines its share of the credit line and of the distribution of SDRs'),
            ('D', 'its contribution to the World Bank alone')
           ) as v(label, option_text)
 where q.question_hash = 'c8fcbb7b07eca3f763253602897fd90b'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'Under the Minimum Reserve System, the RBI is required to:',
    'Under the Minimum Reserve System, adopted in 1957, the central bank holds a minimum stock of foreign assets sufficient to cover a certain period of imports, and the RBI''s stock of foreign exchange is part of these reserves.',
    'easy',
    'RBI',
    null,
    '3c9a764f5f5856ddd5054b4ce095c94b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '3c9a764f5f5856ddd5054b4ce095c94b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'maintain a minimum cash balance with the scheduled commercial banks'),
            ('B', 'maintain a minimum reserve of gold with the public'),
            ('C', 'keep the exchange rate of the rupee fixed'),
            ('D', 'hold a minimum stock of foreign assets against the import demand of the economy')
           ) as v(label, option_text)
 where q.question_hash = '3c9a764f5f5856ddd5054b4ce095c94b'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'Under FEMA, a Non-Resident Indian is a person who:',
    'NRIs may hold foreign currency in foreign currency accounts and freely use it, though they cannot hold foreign currency in the form of Indian bank notes, and Indian currency holding by NRIs is subject to specified limits.',
    'easy',
    'RBI',
    null,
    '30fbe8c357f818d65b5368b85bdc0d32'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '30fbe8c357f818d65b5368b85bdc0d32'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'require NRIs to convert all foreign currency into rupees on arrival'),
            ('B', 'permit NRIs to hold Indian currency only in national banks'),
            ('C', 'prohibit NRIs from holding any foreign currency'),
            ('D', 'allow NRIs to hold foreign currency and Indian currency in designated accounts without restrictions on the former')
           ) as v(label, option_text)
 where q.question_hash = '30fbe8c357f818d65b5368b85bdc0d32'
on conflict (question_id, label) do nothing;

-- economy | national-income | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'national-income'),
    'The ''merchandise exports'' of India consist mainly of:',
    'Merchandise exports are dominated by engineering goods, refined petroleum products, gems and jewellery, pharmaceuticals, chemicals and cotton textiles, while services make up a separate and growing share of total exports.',
    'easy',
    'Economic Survey 2023-24',
    null,
    'f0cbfe32e3ee1d26107fcbfd8e9d4dd4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f0cbfe32e3ee1d26107fcbfd8e9d4dd4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'iron ore and coal alone'),
            ('B', 'engineering goods, petroleum products, gems and jewellery, pharmaceuticals and chemicals'),
            ('C', 'only agricultural products'),
            ('D', 'mainly services and tourism receipts')
           ) as v(label, option_text)
 where q.question_hash = 'f0cbfe32e3ee1d26107fcbfd8e9d4dd4'
on conflict (question_id, label) do nothing;

-- economy | poverty-and-employment | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'poverty-and-employment'),
    'Inward remittances in India are a significant contributor to:',
    'Remittances support household consumption and smooth the current account, and their distribution across states is uneven, with the largest shares going to the poorer states of Bihar, Uttar Pradesh and Rajasthan.',
    'easy',
    'RBI',
    null,
    '74b77f553ec3266e2de578f4b4ebec77'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '74b77f553ec3266e2de578f4b4ebec77'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the current account balance and the consumption expenditure of migrant households'),
            ('B', 'the capital expenditure of the states'),
            ('C', 'the primary deficit'),
            ('D', 'the fiscal deficit of the central government')
           ) as v(label, option_text)
 where q.question_hash = '74b77f553ec3266e2de578f4b4ebec77'
on conflict (question_id, label) do nothing;

-- economy | poverty-and-employment | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'poverty-and-employment'),
    'The key labour market indicator that captures the share of the working-age population engaged in gainful activity is the:',
    'The labour force participation rate is the share of the working-age population in the labour force, and a low female participation rate is a persistent feature of the Indian labour market.',
    'easy',
    'NCERT Class XII',
    null,
    'aa58ef40809d3b801a409d66db4612dc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'aa58ef40809d3b801a409d66db4612dc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'unemployment rate'),
            ('B', 'dependency ratio'),
            ('C', 'labour force participation rate'),
            ('D', 'population density')
           ) as v(label, option_text)
 where q.question_hash = 'aa58ef40809d3b801a409d66db4612dc'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'The ''Fisher index number'' is the:',
    'Fisher''s ideal index number is the geometric mean of the Laspeyres and the Paasche index numbers, and it is free from the biases of both the base period and the current period weighting.',
    'easy',
    'NCERT Class XI',
    null,
    '98fb1f84e84e4069f97b7dd953a9dc01'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '98fb1f84e84e4069f97b7dd953a9dc01'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'harmonic mean of the Laspeyres and the Paasche index numbers'),
            ('B', 'geometric mean of the Laspeyres and the Paasche index numbers'),
            ('C', 'arithmetic mean of the Laspeyres and the Paasche index numbers'),
            ('D', 'simple average of the base period and the current period values')
           ) as v(label, option_text)
 where q.question_hash = '98fb1f84e84e4069f97b7dd953a9dc01'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'A ''time series'' index number is used to compare:',
    'The time series index numbers measure the changes in a variable over time, like the wholesale price index, while the cross sectional index numbers compare different items at a point of time, like the cost of living index.',
    'easy',
    'NCERT Class XI',
    null,
    'c77102bbf73136736dbaf4d6e345d72e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'c77102bbf73136736dbaf4d6e345d72e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'different variables at one point of time'),
            ('B', 'the same variable in different places at one time'),
            ('C', 'the price of one commodity with another commodity'),
            ('D', 'the same variable over different periods of time')
           ) as v(label, option_text)
 where q.question_hash = 'c77102bbf73136736dbaf4d6e345d72e'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The ''Net Stable Funding Ratio'' introduced under the Basel III framework is a:',
    'The NSFR is a longer term structural liquidity metric with a one year horizon, while the Liquidity Coverage Ratio is the short term metric with a thirty day stress horizon.',
    'hard',
    'RBI',
    null,
    '0bf472a74cee8726f5be8e3c7e6e7767'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '0bf472a74cee8726f5be8e3c7e6e7767'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'long term structural liquidity metric with a one year horizon'),
            ('B', 'profitability measure of the banks'),
            ('C', 'asset quality ratio of the banks'),
            ('D', 'short term liquidity metric with a thirty day stress horizon')
           ) as v(label, option_text)
 where q.question_hash = '0bf472a74cee8726f5be8e3c7e6e7767'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The cheque truncation system in India became effective in phases from:',
    'The cheque truncation system was introduced in 1992 and the newer formats CTS-2010 and CTS-2019 superseded the earlier series with the clearing of the balances and the positive pay system.',
    'easy',
    'Standard Reference',
    null,
    'df79ff6430db75651bf43a6288d453a9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'df79ff6430db75651bf43a6288d453a9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1 January 1988'),
            ('B', '1 January 1992'),
            ('C', '1 January 2001'),
            ('D', '1 January 1998')
           ) as v(label, option_text)
 where q.question_hash = 'df79ff6430db75651bf43a6288d453a9'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The ''CTS-2019'' format of cheques introduced by the RBI makes it mandatory for the banks to:',
    'The CTS-2019 series, effective from 1 January 2019, requires the clearing of the balances before the cheques are issued, and it applies to the government as well as the commercial transactions above a threshold.',
    'easy',
    'RBI',
    null,
    'c1c5aa9b82d96f226a898e9f70c429b0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'c1c5aa9b82d96f226a898e9f70c429b0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'issue the cheques only against the clearing of the balance in the accounts'),
            ('B', 'return the cheques unpaid for want of funds only'),
            ('C', 'use the MICR code for the sorting of the cheques'),
            ('D', 'print the cheques on the special paper')
           ) as v(label, option_text)
 where q.question_hash = 'c1c5aa9b82d96f226a898e9f70c429b0'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The RBI''s guidelines on the ''Payment Aggregator - Cross Border'' deal with:',
    'The RBI issued the guidelines on the Payment Aggregator - Cross Border in 2020 to provide the regulated framework for the entities facilitating the cross border exports and the imports and the remittances of the individuals.',
    'easy',
    'RBI',
    null,
    '282e30702add402b13577a3ff1688336'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '282e30702add402b13577a3ff1688336'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the licensing of the payment banks in the smaller States'),
            ('B', 'the regulation of the cryptocurrency exchanges'),
            ('C', 'the settlement of the card transactions of the overseas tourists'),
            ('D', 'the facilitation of the cross border payment transactions for the export and the import of goods and services')
           ) as v(label, option_text)
 where q.question_hash = '282e30702add402b13577a3ff1688336'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The ''Digital Lending Guidelines'' of the RBI require the lending entities to:',
    'The Digital Lending Guidelines of 2021 require the disclosure of the key facts, the rate of interest and the fees and the existence of the borrower''s right to complain to the digital lending ombudsman, with the data of the borrowers also being placed in the public domain.',
    'easy',
    'RBI',
    null,
    '274ae34dc80a8f92088ceaeb51a0478d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '274ae34dc80a8f92088ceaeb51a0478d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'charge the processing fee of not more than two per cent of the loan'),
            ('B', 'disclose the key facts, the annualised rate of interest and the borrower''s right to approach the Ombudsman'),
            ('C', 'keep the borrowers'' data only on the Indian servers'),
            ('D', 'seek the prior approval of the RBI for every loan')
           ) as v(label, option_text)
 where q.question_hash = '274ae34dc80a8f92088ceaeb51a0478d'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The ''Securitisation and Reconstruction of Financial Assets Act, 2002'' provides for:',
    'The SARFAESI Act allows the banks and the financial institutions to enforce the security interest over the secured assets without the court intervention, and it also provides for the establishment of the Debt Recovery Tribunals.',
    'easy',
    'Standard Reference',
    null,
    '524364d04c2051251556257d46b2949c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '524364d04c2051251556257d46b2949c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the nationalisation of the sick units'),
            ('B', 'the abolition of the Debt Recovery Tribunals'),
            ('C', 'the enforcement of the security interest by the banks without the intervention of the courts'),
            ('D', 'the guarantee of the deposits of the small finance banks')
           ) as v(label, option_text)
 where q.question_hash = '524364d04c2051251556257d46b2949c'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The ''Retail Direct'' scheme of the RBI allows:',
    'Retail Direct, introduced in 2021, enables the individual investors to open a gilt account with the RBI and to subscribe to the government securities directly without a demat account with a broker.',
    'easy',
    'RBI',
    null,
    '0dfe9167129fd1c92d15422331263a25'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '0dfe9167129fd1c92d15422331263a25'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the banks to sell the government securities only to the corporates'),
            ('B', 'the foreign portfolio investors to invest in the retail bonds'),
            ('C', 'the States to borrow directly from the retail market'),
            ('D', 'the retail investors to subscribe to the government securities directly with the RBI')
           ) as v(label, option_text)
 where q.question_hash = '0dfe9167129fd1c92d15422331263a25'
on conflict (question_id, label) do nothing;

-- economy | external-sector | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'The ''Marshall-Lerner condition'' in international trade states that a devaluation will improve the trade balance only when:',
    'The Marshall-Lerner condition requires that the sum of the price elasticities of the demand for the exports and of the demand for the imports exceeds unity, otherwise the devaluation only worsens the trade balance.',
    'hard',
    'Standard Reference',
    null,
    'dd38fccc57304dc1a24e48148d2d2aee'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'dd38fccc57304dc1a24e48148d2d2aee'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the sum of the elasticities of demand for the exports and of the demand for the imports is greater than one'),
            ('B', 'the elasticity of the demand for the exports is less than one'),
            ('C', 'the currency is fully convertible'),
            ('D', 'the country is a net exporter of services only')
           ) as v(label, option_text)
 where q.question_hash = 'dd38fccc57304dc1a24e48148d2d2aee'
on conflict (question_id, label) do nothing;

-- economy | external-sector | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'The ''J-curve effect'' in the balance of payments refers to:',
    'After a devaluation the export and the import contracts adjust at different speeds, so the trade balance may worsen initially before the volume responses improve it, and this is called the J-curve effect.',
    'easy',
    'Standard Reference',
    null,
    'caf5579f189a472c0eef397a73002402'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'caf5579f189a472c0eef397a73002402'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a permanent improvement of the trade balance after a devaluation'),
            ('B', 'a temporary deterioration of the trade balance after a devaluation before it improves'),
            ('C', 'the inflation caused by a devaluation'),
            ('D', 'the loss of the reserves after a devaluation')
           ) as v(label, option_text)
 where q.question_hash = 'caf5579f189a472c0eef397a73002402'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'The ''Equalisation levy'' introduced in India in 2016 was levied on:',
    'The equalisation levy of 2016 at two per cent applied to the income of the e-commerce companies, and a six per cent levy on the online advertising was introduced in 2021.',
    'easy',
    'Standard Reference',
    null,
    '0db1367ba010615d113789e078c04da9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '0db1367ba010615d113789e078c04da9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the exports of the software companies'),
            ('B', 'the profits of the banks'),
            ('C', 'the income of the e-commerce companies operating in the country'),
            ('D', 'the import of the luxury goods')
           ) as v(label, option_text)
 where q.question_hash = '0db1367ba010615d113789e078c04da9'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'The ''National Monetisation Pipeline'' prepared by the government is:',
    'The National Monetisation Pipeline is an inventory of the assets of the central public sector enterprises, the public sector undertakings and the government entities that can be offered for the monetisation, the privatisation or the leasing.',
    'easy',
    'Standard Reference',
    null,
    '53110179380271d171a6313de97ff4af'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '53110179380271d171a6313de97ff4af'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a fund for the revival of the closed public sector units'),
            ('B', 'an inventory of the assets of the public sector entities available for the divestment or the lease'),
            ('C', 'a schedule of the public sector projects approved by the NITI Aayog'),
            ('D', 'a list of the assets of the banks taken over by the RBI')
           ) as v(label, option_text)
 where q.question_hash = '53110179380271d171a6313de97ff4af'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'The ''N. K. Singh Committee'' on the fiscal policy framework recommended:',
    'The committee recommended that the fiscal deficit be expressed as a percentage of the nominal GDP, the escape clause be extended and the target of 3 per cent be achieved in two years instead of three.',
    'easy',
    'Standard Reference',
    null,
    'fb6a360ad12a6078f0d5561b985da8e4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'fb6a360ad12a6078f0d5561b985da8e4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the abolition of the fiscal deficit target'),
            ('B', 'the reduction of the fiscal deficit to 2 per cent of the GDP by 2025'),
            ('C', 'the replacement of the FRBM Act by a new statute'),
            ('D', 'the setting of the fiscal deficit targets in terms of the GDP and the extension of the escape clause')
           ) as v(label, option_text)
 where q.question_hash = 'fb6a360ad12a6078f0d5561b985da8e4'
on conflict (question_id, label) do nothing;

-- economy | economic-survey-and-budget | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'economic-survey-and-budget'),
    'The ''Fiscal Policy Statement'' in the Union Budget:',
    'The Fiscal Policy Statement, which was first presented in 2018-19 along with the Medium Term Fiscal Policy Statement and the Macro Economic Framework Statement, sets out the medium term targets and the key priorities of the fiscal policy.',
    'easy',
    'Economic Survey 2023-24',
    null,
    '6cae1ece53f282b9954109801a54cb73'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '6cae1ece53f282b9954109801a54cb73'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'presents the report of the Comptroller and Auditor General'),
            ('B', 'contains the details of the schemes of the ministries'),
            ('C', 'sets out the medium term fiscal policy targets and the key policy priorities'),
            ('D', 'gives the statement of the foreign exchange reserves')
           ) as v(label, option_text)
 where q.question_hash = '6cae1ece53f282b9954109801a54cb73'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The ''Inflation-indexed bond'' issued by the Government of India in 2013 was named:',
    'The Government issued the 6.33 per cent IINSS-C 2030 as a pilot inflation indexed security, with the principal indexed to the wholesale price index and the interest taxed as the inflation indexed bond income.',
    'easy',
    'Standard Reference',
    null,
    '453db9ca32d64a883696e9da62069bcd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '453db9ca32d64a883696e9da62069bcd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the 6.33 per cent IINSS-C 2030'),
            ('B', 'the 5.5 per century NSIB 2028'),
            ('C', 'the 7.5 per cent IINSS-D 2035'),
            ('D', 'the 6 per cent GSIB 2025')
           ) as v(label, option_text)
 where q.question_hash = '453db9ca32d64a883696e9da62069bcd'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The ''STRIPS'' in the government securities market stand for:',
    'The STRIPS are zero coupon securities that allow the investor to separate the interest and the principal components of a government security, and they are issued for the securities with a residual maturity of more than one year.',
    'easy',
    'Standard Reference',
    null,
    '0f76c936a5ab01193e2ada37b88eb32c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '0f76c936a5ab01193e2ada37b88eb32c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Separate Trading of Registered Interest and Principal Securities'),
            ('B', 'Short Term Repurchase Investment and Purchase System'),
            ('C', 'Securities Trading and Repurchase in International Settlement'),
            ('D', 'Standard Term Rate Indexing for Price Settlement')
           ) as v(label, option_text)
 where q.question_hash = '0f76c936a5ab01193e2ada37b88eb32c'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'expenditure on the interest payments is:',
    'The interest payments are the largest single component of the revenue expenditure of the Union Government and they are a contractual obligation with no tax implications.',
    'medium',
    'NCERT Class XII',
    null,
    'b5dfab33639b28c132c6aafdc101f760'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b5dfab33639b28c132c6aafdc101f760'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'is met from the public account without the appropriation'),
            ('B', 'is the largest single item of the revenue expenditure'),
            ('C', 'is a capital expenditure'),
            ('D', 'is not included in the budget at all')
           ) as v(label, option_text)
 where q.question_hash = 'b5dfab33639b28c132c6aafdc101f760'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'The ''Public Account of India'' is:',
    'The Public Account of India holds the provident fund and the pension funds, the small savings, the deposits of the banks and the other funds, and the liabilities of the government in respect of these are not met from the Consolidated Fund.',
    'medium',
    'NCERT Class XII',
    null,
    '3c602a452bd80516fcb883fb381bb988'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '3c602a452bd80516fcb883fb381bb988'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the account of the loans taken by the States'),
            ('B', 'the account of the disinvestment proceeds'),
            ('C', 'the account of the revenue receipts of the government'),
            ('D', 'the account of the provident funds, the small savings and the deposits of the banks')
           ) as v(label, option_text)
 where q.question_hash = '3c602a452bd80516fcb883fb381bb988'
on conflict (question_id, label) do nothing;

-- economy | national-income | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'national-income'),
    'In the national accounts, the ''gross capital formation'' comprises:',
    'Gross capital formation is the addition to the fixed assets, the change in the stocks and the depreciation, while the net capital formation excludes the depreciation, and the consumption of fixed capital is not a component of the gross capital formation.',
    'medium',
    'NCERT Class XII',
    null,
    '681597335bca383c7a6e8ba96ac3a768'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '681597335bca383c7a6e8ba96ac3a768'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the depreciation and the consumption of fixed capital'),
            ('B', 'the money supply and the bank credit'),
            ('C', 'the addition to the fixed assets, the change in the stocks and the depreciation'),
            ('D', 'the addition to the fixed assets and the change in the stocks')
           ) as v(label, option_text)
 where q.question_hash = '681597335bca383c7a6e8ba96ac3a768'
on conflict (question_id, label) do nothing;

-- economy | national-income | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'national-income'),
    'The ''primary sector'' of the national accounts includes:',
    'The primary sector comprises the agriculture and the allied activities, the forestry, the fishing and the mining and the quarrying, and the secondary sector covers the manufacturing and the construction while the tertiary covers the services.',
    'medium',
    'NCERT Class XII',
    null,
    '5bfba2dd0e5016d55a65ef521f82d4d0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '5bfba2dd0e5016d55a65ef521f82d4d0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'agriculture, forestry, fishing and the mining and the quarrying'),
            ('B', 'the manufacturing, the mining and the services'),
            ('C', 'all the services and the agriculture'),
            ('D', 'agriculture and the manufacturing')
           ) as v(label, option_text)
 where q.question_hash = '5bfba2dd0e5016d55a65ef521f82d4d0'
on conflict (question_id, label) do nothing;

-- economy | national-income | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'national-income'),
    'The ''depreciation'' in the national accounts is valued at the:',
    'In the national accounts the depreciation is valued at the current replacement cost of the fixed assets, which is a measure of the consumption of the fixed capital during the year.',
    'medium',
    'NCERT Class XII',
    null,
    'fbf04683bda69d64d3890c5cab9b9b5b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'fbf04683bda69d64d3890c5cab9b9b5b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'original cost of the assets'),
            ('B', 'market value of the assets'),
            ('C', 'current replacement cost of the fixed assets'),
            ('D', 'the amount of the capital allowances of the income tax')
           ) as v(label, option_text)
 where q.question_hash = 'fbf04683bda69d64d3890c5cab9b9b5b'
on conflict (question_id, label) do nothing;

-- economy | national-income | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'national-income'),
    'The ''per capita income'' of a State is best described as:',
    'The per capita income of a State is the state domestic product at the current prices divided by the mid-year population, and it is a measure of the average income of the residents of the State.',
    'medium',
    'NCERT Class XII',
    null,
    '16d9c4d046dae5a21faebe2a33f38aa4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '16d9c4d046dae5a21faebe2a33f38aa4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the central government''s income divided by the population'),
            ('B', 'the per capita tax revenue of the State'),
            ('C', 'the per capita public expenditure of the State'),
            ('D', 'the state domestic product at current prices divided by the population')
           ) as v(label, option_text)
 where q.question_hash = '16d9c4d046dae5a21faebe2a33f38aa4'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The ''money multiplier'' in India is computed as:',
    'The money multiplier is the reciprocal of the reserve ratio, and it shows the multiple by which the primary money injection of the central bank is expanded into the total money supply through the credit creation by the banking system.',
    'medium',
    'NCERT Class XI',
    null,
    '23c34daa4dce52e8ca3dfb6c0bfee5c5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '23c34daa4dce52e8ca3dfb6c0bfee5c5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the ratio of the credit to the capital'),
            ('B', 'the reciprocal of the required reserve ratio'),
            ('C', 'the ratio of the currency with the public to the total deposits'),
            ('D', 'the ratio of the cash to the total money supply')
           ) as v(label, option_text)
 where q.question_hash = '23c34daa4dce52e8ca3dfb6c0bfee5c5'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The ''high power money'' of India includes:',
    'The monetary base of India consists of the currency issued by the RBI, the reserves of the commercial banks with the RBI and the other deposits of the RBI, and the broad money supply of M3 is the high power money multiplied by the money multiplier.',
    'medium',
    'NCERT Class XI',
    null,
    '5402480c8606ea0a70ffd1208a92b9d9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '5402480c8606ea0a70ffd1208a92b9d9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the currency with the RBI, the reserves of the commercial banks with the RBI and the other deposits of the RBI'),
            ('B', 'the currency with the public and the time deposits'),
            ('C', 'the total deposits of the commercial banks'),
            ('D', 'the currency with the public and the demand deposits')
           ) as v(label, option_text)
 where q.question_hash = '5402480c8606ea0a70ffd1208a92b9d9'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The ''primary dealers'' in the government securities market are:',
    'The primary dealers are the entities authorised by the RBI to participate in the primary and the secondary markets in the government securities, and they act as the interface between the government, the banks and the investors.',
    'medium',
    'RBI',
    null,
    'a3dc8136b38cc0235534a87c02e28c67'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'a3dc8136b38cc0235534a87c02e28c67'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the institutions that underwrite the corporate bonds'),
            ('B', 'the mutual funds that invest in the government securities'),
            ('C', 'the entities authorised by the RBI to trade directly with the RBI in the primary market'),
            ('D', 'the banks that can subscribe to the securities of the States')
           ) as v(label, option_text)
 where q.question_hash = 'a3dc8136b38cc0235534a87c02e28c67'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The ''ways and means advances'' by the RBI to the central government:',
    'The Ways and Means Advances are made by the RBI only to the central government and are limited in the extent, with the repayments being made by the issue of the treasury bills, so that the government meets its temporary liquidity needs.',
    'medium',
    'RBI',
    null,
    'a8709ee067de3d9e19ee48200341a408'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a8709ee067de3d9e19ee48200341a408'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'are a permanent source of the government borrowing'),
            ('B', 'are made only to the State Governments'),
            ('C', 'are a part of the monetary policy of the RBI'),
            ('D', 'are limited to the rediscounting of the treasury bills and the Ways and Means Advances to avoid a disorderly imbalance in the cash balance')
           ) as v(label, option_text)
 where q.question_hash = 'a8709ee067de3d9e19ee48200341a408'
on conflict (question_id, label) do nothing;

-- economy | inflation | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'inflation'),
    'The ''deflation'' in the Indian context is best described as:',
    'Deflation is a sustained fall in the general level of prices, and it is generally considered harmful because the real burden of the debt rises and the spending is postponed in the expectation of lower prices.',
    'medium',
    'NCERT Class XII',
    null,
    '89b58e0c1f5c89edfed96c582dc92e2c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '89b58e0c1f5c89edfed96c582dc92e2c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a fall in the price of the gold alone'),
            ('B', 'a sustained fall in the general price level'),
            ('C', 'a fall in the export prices'),
            ('D', 'a seasonal fall in the food prices')
           ) as v(label, option_text)
 where q.question_hash = '89b58e0c1f5c89edfed96c582dc92e2c'
on conflict (question_id, label) do nothing;

-- economy | inflation | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'inflation'),
    'the prices of the essential goods that are:',
    'The administered prices are the prices of the essential commodities like the petrol, the diesel, the fertilisers, the sugar and the electricity that are set by the government, and they are a part of the administered price mechanism of the economic policy.',
    'medium',
    'NCERT Class XII',
    null,
    'e245353073117f2b5ec0a922e99e5b95'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'e245353073117f2b5ec0a922e99e5b95'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the prices of the essential goods that are determined by the government and not by the market forces'),
            ('B', 'the prices fixed by the competition commission for the corporate sector'),
            ('C', 'the prices of the exports determined by the international prices'),
            ('D', 'the minimum support prices of the crops')
           ) as v(label, option_text)
 where q.question_hash = 'e245353073117f2b5ec0a922e99e5b95'
on conflict (question_id, label) do nothing;

-- economy | inflation | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'inflation'),
    'The ''food inflation'' in India is measured with the weights drawn from:',
    'The CPI-Combined uses the household consumption pattern of the National Sample Survey for the weights, and the cereals with a weight of about 46 per cent dominate the food inflation measure in India.',
    'medium',
    'RBI',
    null,
    '53249ba7c957d80fa0c5feb82a71a1a6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '53249ba7c957d80fa0c5feb82a71a1a6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the production weights of the crops in the country'),
            ('B', 'the population of the States in proportion to their area'),
            ('C', 'the share of the foodgrains in the total exports'),
            ('D', 'the consumption pattern of the households, with the cereals having the highest weight')
           ) as v(label, option_text)
 where q.question_hash = '53249ba7c957d80fa0c5feb82a71a1a6'
on conflict (question_id, label) do nothing;

-- economy | monetary-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'monetary-policy'),
    'The ''MPC'' of the RBI votes on:',
    'The Monetary Policy Committee has six members, three from the RBI and three appointed by the Central Government, and it decides the policy rate by a majority, with the Governor holding a casting vote in the event of an equality of votes.',
    'medium',
    'RBI',
    null,
    '13663afc70e7ef3ba9a714694694e97c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '13663afc70e7ef3ba9a714694694e97c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the fiscal deficit and the revenue deficit'),
            ('B', 'the exchange rate of the rupee and the forex reserves'),
            ('C', 'the repo rate and the policy rates, by a majority with the Governor holding a casting vote in the event of a tie'),
            ('D', 'the repo rate only, by the unanimity of the six members')
           ) as v(label, option_text)
 where q.question_hash = '13663afc70e7ef3ba9a714694694e97c'
on conflict (question_id, label) do nothing;

-- economy | monetary-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'monetary-policy'),
    'The ''SBI''s Monetary Policy Report'' is published:',
    'The Monetary Policy Report of the RBI is published in February and August along with the statement on the policy and the resolution of the Monetary Policy Committee, and the projections and the risks to the growth and the inflation are set out in it.',
    'medium',
    'RBI',
    null,
    '12ef3ac2bfeff2d60dfc8118d629d571'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '12ef3ac2bfeff2d60dfc8118d629d571'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'only when the policy rate is changed'),
            ('B', 'twice a year, in February and August, along with the policy statements'),
            ('C', 'every quarter along with the credit policy'),
            ('D', 'once a year in the month of October')
           ) as v(label, option_text)
 where q.question_hash = '12ef3ac2bfeff2d60dfc8118d629d571'
on conflict (question_id, label) do nothing;

-- economy | rbi-and-financial-regulation | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'rbi-and-financial-regulation'),
    'The ''RBI Governor'' holds a rank equivalent to:',
    'The Governor of the RBI is given the rank of a Cabinet Secretary in the Government of India, and the Deputy Governors are given the rank of the Secretary to the Government of India.',
    'medium',
    'Standard Reference',
    null,
    '145f093ad203c73c7a5d006f508efdd5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '145f093ad203c73c7a5d006f508efdd5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a Secretary of the Ministry of Finance'),
            ('B', 'a Chief Justice of a High Court'),
            ('C', 'a Cabinet Secretary of the Government of India'),
            ('D', 'a Deputy Governor of the Reserve Bank')
           ) as v(label, option_text)
 where q.question_hash = '145f093ad203c73c7a5d006f508efdd5'
on conflict (question_id, label) do nothing;

-- economy | rbi-and-financial-regulation | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'rbi-and-financial-regulation'),
    'The ''RBI''s annual report'' is presented by the Governor to:',
    'The Governor of the RBI presents the annual report on the working and the operations of the Bank to the Parliament, and the annual report also contains the balance sheet and the profit and loss account of the Bank.',
    'hard',
    'Standard Reference',
    null,
    'd13d472422c20d5871197bc9a8e5edb2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'd13d472422c20d5871197bc9a8e5edb2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Economic Survey'),
            ('B', 'the Central Board of Directors of the RBI'),
            ('C', 'the Finance Commission'),
            ('D', 'the Parliament')
           ) as v(label, option_text)
 where q.question_hash = 'd13d472422c20d5871197bc9a8e5edb2'
on conflict (question_id, label) do nothing;

-- economy | rbi-and-financial-regulation | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'rbi-and-financial-regulation'),
    'The ''National Pension System'' for the government employees:',
    'The National Pension System for the government employees was started in 2004 and was made applicable to the new recruits of the central and the State governments from 2009, and it is managed by the PFRDA.',
    'hard',
    'Standard Reference',
    null,
    'ba5a88243c1a549e39cc759f8a600e8a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'ba5a88243c1a549e39cc759f8a600e8a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'is administered by the Reserve Bank of India'),
            ('B', 'was started in 2004 and was made mandatory for the new recruits of the central and the State governments'),
            ('C', 'was started in 2015 for the private sector'),
            ('D', 'replaced the EPF for the private employees')
           ) as v(label, option_text)
 where q.question_hash = 'ba5a88243c1a549e39cc759f8a600e8a'
on conflict (question_id, label) do nothing;

-- economy | rbi-and-financial-regulation | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'rbi-and-financial-regulation'),
    'The ''Insurance Act, 1938'' was replaced by the:',
    'The Insurance Act, 1938 was replaced by the Insurance Act, 1998 and the IRDAI was constituted in 1999 under the IRDA Act, 1999 to regulate the insurance sector.',
    'easy',
    'Standard Reference',
    null,
    '57478a282827187a1a54c54a634df94f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '57478a282827187a1a54c54a634df94f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Insurance Act, 1998'),
            ('B', 'Insurance Companies Act, 1999'),
            ('C', 'Insurance Regulatory Act, 1999'),
            ('D', 'Insurance Development Act, 2000')
           ) as v(label, option_text)
 where q.question_hash = '57478a282827187a1a54c54a634df94f'
on conflict (question_id, label) do nothing;

-- economy | rbi-and-financial-regulation | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'rbi-and-financial-regulation'),
    'The ''Securities Contracts (Regulation) Act, 1950'' provides for the:',
    'The Securities Contracts (Regulation) Act, 1950 provides for the recognition of the stock exchanges, the listing of the securities and the obligations of the issuers regarding the disclosure of the information, and it is administered by the SEBI.',
    'easy',
    'Standard Reference',
    null,
    'e920bcee6bd263df9c5d5d92b5fceefe'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e920bcee6bd263df9c5d5d92b5fceefe'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the licensing of the payment banks'),
            ('B', 'the supervision of the cooperative societies'),
            ('C', 'regulation of the insurance companies'),
            ('D', 'regulation of the stock exchanges, the listing of the securities and the disclosure of the information')
           ) as v(label, option_text)
 where q.question_hash = 'e920bcee6bd263df9c5d5d92b5fceefe'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'The ''exemptions under the Income Tax Act'' for the charitable trusts and the donations:',
    'The tax exemption under the sections 11, 12 and 80G of the Income Tax Act is available to the registered charitable trusts and institutions, and the registration is with the Principal Commissioner of the Income Tax.',
    'hard',
    'Standard Reference',
    null,
    '516a8491a0ca92a85181c16dca4a736a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '516a8491a0ca92a85181c16dca4a736a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'require the registration under the Income Tax Act for the tax exemption of the income of the trust'),
            ('B', 'are available only to the foreign donations'),
            ('C', 'are available to all the non-profit organisations of the country'),
            ('D', 'are available only to the trusts formed before 1970')
           ) as v(label, option_text)
 where q.question_hash = '516a8491a0ca92a85181c16dca4a736a'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'The ''Corporate tax'' of India:',
    'The Finance Act of 2021 brought down the corporate tax rate to 25 per cent for the companies that abandoned the profit linked incentives, while the effective rate of the others remained at about 25.17 per cent.',
    'hard',
    'Standard Reference',
    null,
    'a553035e7690210f8185bc320479131a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'a553035e7690210f8185bc320479131a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'has been unchanged at 34 per cent since 1991'),
            ('B', 'does not apply to the domestic companies'),
            ('C', 'was reduced to 25 per cent in 2021 on the condition of the abandonment of the profit-linked tax incentives'),
            ('D', 'was raised to 30 per cent in 2018')
           ) as v(label, option_text)
 where q.question_hash = 'a553035e7690210f8185bc320479131a'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'The voting weight of the Centre and the States in the GST Council is:',
    'Under Article 279A, one-third of the votes in the GST Council is vested in the Centre and two-thirds in all the States together, and the decisions require a three-fourths majority of the weighted votes.',
    'hard',
    'Standard Reference',
    null,
    'd10d643bf616e40f219db335be75ac79'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd10d643bf616e40f219db335be75ac79'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'one-third to each of the States and one-third to the Centre'),
            ('B', 'one-third of the total votes to the Centre and two-thirds to all the States together'),
            ('C', 'one-half to the Centre and one-half to the States'),
            ('D', 'one-fifth to the Centre and four-fifths to the States')
           ) as v(label, option_text)
 where q.question_hash = 'd10d643bf616e40f219db335be75ac79'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'The ''compensation to the States for the revenue loss on the abolition of the excise duty and the sales tax'' was:',
    'The Constitution provided for the compensation to the States for the loss of the revenue for a period of five years from the commencement of the GST, which was later extended by the 53rd GST Council meeting.',
    'hard',
    'Standard Reference',
    null,
    '98d6b8bebfd78e622c281b57ea5d7e9b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '98d6b8bebfd78e622c281b57ea5d7e9b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'payable for five years from the date of the commencement of the GST'),
            ('B', 'payable permanently'),
            ('C', 'not payable because the GST was a destination based tax'),
            ('D', 'payable for ten years')
           ) as v(label, option_text)
 where q.question_hash = '98d6b8bebfd78e622c281b57ea5d7e9b'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The ''credit guarantee for the MSMEs'' in the Credit Guarantee Fund:',
    'The Credit Guarantee Fund scheme for the MSMEs provides the credit guarantee for the credit facilities of up to Rs 5 crore without the collateral or the third party guarantee, which has been raised to Rs 10 crore for the units in the priority sectors.',
    'hard',
    'Standard Reference',
    null,
    'a3d6e3600af612414247911c9a20b72e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a3d6e3600af612414247911c9a20b72e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'requires the pledge of the fixed deposits'),
            ('B', 'is available only to the export oriented units'),
            ('C', 'covers only the term loans above ten years'),
            ('D', 'covers the credit facility of up to Rs 5 crore without the collateral or the third party guarantee')
           ) as v(label, option_text)
 where q.question_hash = 'a3d6e3600af612414247911c9a20b72e'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The ''Aadhaar (Unique Identification Authority of India) Act, 2016'' provides for:',
    'The Aadhaar Act provides for the voluntary and the compulsory enrolment of the residents, and the authentication of the identity for the welfare and the other schemes, with the UIDAI as the authority.',
    'easy',
    'Standard Reference',
    null,
    '0d2e389313ee1ef942bcaea5e02a925e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '0d2e389313ee1ef942bcaea5e02a925e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the use of the Aadhaar number for the purposes of the taxation'),
            ('B', 'the establishment of the Aadhaar appellate tribunals'),
            ('C', 'the voluntary and the compulsory enrolment of the residents and the use of the authentication services for the welfare schemes'),
            ('D', 'the compulsory enrolment of every resident of India')
           ) as v(label, option_text)
 where q.question_hash = '0d2e389313ee1ef942bcaea5e02a925e'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The overdraft facility of Rs 10,000 in the Jan Dhan account is available after:',
    'The overdraft of up to Rs 10,000 in the Basic Savings Bank Deposit Account is available after six months of the satisfactory operation of the account, and the RuPay debit card carries a personal accident insurance cover of Rs 2 lakh.',
    'hard',
    'Standard Reference',
    null,
    '947ca90da7d7d940c4731c48d7b8c65d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '947ca90da7d7d940c4731c48d7b8c65d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'twelve months of the regular credit transactions'),
            ('B', 'six months of satisfactory operation of the account'),
            ('C', 'one year of satisfactory operation of the account'),
            ('D', 'three months of satisfactory operation of the account')
           ) as v(label, option_text)
 where q.question_hash = '947ca90da7d7d940c4731c48d7b8c65d'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The overall priority sector target for the domestic scheduled commercial banks under the priority sector lending norms is:',
    'The overall priority sector target is 40 per cent of the Adjusted Net Bank Credit of the domestic scheduled commercial banks, with the agriculture accounting for 18 per cent and the weaker sections for the balance.',
    'hard',
    'RBI',
    null,
    '9619482781bc076e7c498f5586d4c171'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '9619482781bc076e7c498f5586d4c171'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '25 per cent of the Adjusted Net Bank Credit'),
            ('B', '18 per cent of the Adjusted Net Bank Credit'),
            ('C', '40 per cent of the Adjusted Net Bank Credit'),
            ('D', '32 per cent of the Adjusted Net Bank Credit')
           ) as v(label, option_text)
 where q.question_hash = '9619482781bc076e7c498f5586d4c171'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The ''payment banks'' can:',
    'A payment bank can accept the deposits of up to Rs 2 lakh per customer and can lend up to Rs 2 lakh and cannot lend to the real estate and the agriculture sectors among others.',
    'hard',
    'RBI',
    null,
    '921b8988c3e5021cd2bb79efaf33fc33'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '921b8988c3e5021cd2bb79efaf33fc33'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'accept deposits of up to Rs 2 lakh per customer and lend up to Rs 2 lakh'),
            ('B', 'issue credit cards of any value'),
            ('C', 'accept deposits of up to Rs 5 lakh and lend without any limit'),
            ('D', 'lend only to the corporate sector')
           ) as v(label, option_text)
 where q.question_hash = '921b8988c3e5021cd2bb79efaf33fc33'
on conflict (question_id, label) do nothing;

-- economy | industry-and-manufacturing | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'industry-and-manufacturing'),
    'The Production Linked Incentive scheme for the pharmaceuticals covers:',
    'The PLI for the pharmaceuticals covers the new drugs, the generics and the complex generics and the formulation, with a significant portion of the incentive linked to the research and the development and the new product approvals.',
    'easy',
    'Economic Survey 2023-24',
    null,
    '7be6e07cd88cd00c45411ac0c89f3b7e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '7be6e07cd88cd00c45411ac0c89f3b7e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the bulk drugs of the public sector undertakings'),
            ('B', 'new drugs, generics and complex generics with an emphasis on the research and development'),
            ('C', 'the marketing and the distribution of the medicines'),
            ('D', 'only the generic medicines exported to Africa')
           ) as v(label, option_text)
 where q.question_hash = '7be6e07cd88cd00c45411ac0c89f3b7e'
on conflict (question_id, label) do nothing;

-- economy | industry-and-manufacturing | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'industry-and-manufacturing'),
    'The Production Linked Incentive scheme for the electronics covers:',
    'The PLI for the electronics manufacturing covers the mobile phones, the specified electronic components and the IT hardware, and it is administered by the Ministry of Electronics and Information Technology.',
    'easy',
    'PIB',
    null,
    '8528864790d6f99136bc9ca0e9416337'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '8528864790d6f99136bc9ca0e9416337'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the consumer electronics of the imported brands only'),
            ('B', 'the semiconductor fabrication plants only'),
            ('C', 'the assembly of the televisions of the foreign brands'),
            ('D', 'the mobile phones, the specified electronic components and the IT hardware')
           ) as v(label, option_text)
 where q.question_hash = '8528864790d6f99136bc9ca0e9416337'
on conflict (question_id, label) do nothing;

-- economy | industry-and-manufacturing | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'industry-and-manufacturing'),
    'The Production Linked Incentive scheme for the advanced chemistry cell is linked to:',
    'The ACC battery PLI supports the manufacturing of the advanced chemistry cells and the electric vehicles with a high degree of the localisation of the value chain.',
    'medium',
    'PIB',
    null,
    '8170512237ddfc42ea8cc0bb1caf728c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '8170512237ddfc42ea8cc0bb1caf728c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the electric vehicle and the advanced chemistry cell manufacturing with the localisation of the value chain'),
            ('B', 'the telecom equipment of the 5G networks'),
            ('C', 'the export of the speciality steel'),
            ('D', 'the bulk drug formulation')
           ) as v(label, option_text)
 where q.question_hash = '8170512237ddfc42ea8cc0bb1caf728c'
on conflict (question_id, label) do nothing;

-- economy | industry-and-manufacturing | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'industry-and-manufacturing'),
    'The Production Linked Incentive scheme for the textiles and the apparel focuses on:',
    'The textiles and the apparel PLI covers the man-made fibre, the technical textiles, the speciality textiles and the apparel with a focus on the exports and the creation of the employment.',
    'medium',
    'Economic Survey 2023-24',
    null,
    'ecd0fd940e26d35c199c059ee9f02509'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'ecd0fd940e26d35c199c059ee9f02509'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the processing of the imported fabric for the re-export'),
            ('B', 'the spinning capacity of the cooperative mills'),
            ('C', 'the cotton of the traditional handloom sector only'),
            ('D', 'man-made fibre, technical textiles, speciality textiles and the apparel with the emphasis on the exports')
           ) as v(label, option_text)
 where q.question_hash = 'ecd0fd940e26d35c199c059ee9f02509'
on conflict (question_id, label) do nothing;

-- economy | industry-and-manufacturing | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'industry-and-manufacturing'),
    'The Production Linked Incentive scheme for the white goods covers:',
    'The white goods PLI covers the refrigerators, the air conditioners, the washing machines and the LED lighting with the focus on the local manufacturing and the export.',
    'easy',
    'PIB',
    null,
    '2de8d559184393862a0f36fd7d062846'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '2de8d559184393862a0f36fd7d062846'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'only the air conditioners and the refrigerators'),
            ('B', 'the televisions and the home appliances of the import'),
            ('C', 'refrigerators, air conditioners, washing machines and the LED lighting'),
            ('D', 'the kitchen appliances of the unorganised sector')
           ) as v(label, option_text)
 where q.question_hash = '2de8d559184393862a0f36fd7d062846'
on conflict (question_id, label) do nothing;

-- economy | industry-and-manufacturing | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'industry-and-manufacturing'),
    'The Production Linked Incentive scheme for the food products covers:',
    'The food processing PLI covers the milk and the dairy, the tea, the coffee, the eggs, the meat and the marine, the fruits and the vegetables, the spices, the packaged food and the ready to eat food products.',
    'easy',
    'PIB',
    null,
    '169a2d4b546eeaab6ddfb17d36945970'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '169a2d4b546eeaab6ddfb17d36945970'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the primary processing of the pulses and the oilseeds'),
            ('B', 'the milk and the dairy, the tea, the coffee, the eggs, the meat, the marine, the fruits and the vegetables, the spices, the packaged food and the ready to eat items'),
            ('C', 'only the export of the rice and the wheat'),
            ('D', 'the cold storage and the warehousing alone')
           ) as v(label, option_text)
 where q.question_hash = '169a2d4b546eeaab6ddfb17d36945970'
on conflict (question_id, label) do nothing;

-- economy | industry-and-manufacturing | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'industry-and-manufacturing'),
    'The ''ZED'' certification scheme of the Bureau of Indian Standards:',
    'The ZED certification is a quality and performance certification for the products of the small and the micro enterprises that enables them to compete in the export markets with the zero defect products.',
    'easy',
    'Standard Reference',
    null,
    'cd4860d987c6968a39eee649f29524c6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'cd4860d987c6968a39eee649f29524c6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'is a mandatory pre-shipment inspection of the textiles'),
            ('B', 'is the quality standard for the defence equipment of the public sector'),
            ('C', 'certifies the export worthy quality products of the small and the micro enterprises'),
            ('D', 'certifies the organic produce of the exporters')
           ) as v(label, option_text)
 where q.question_hash = 'cd4860d987c6968a39eee649f29524c6'
on conflict (question_id, label) do nothing;

-- economy | industry-and-manufacturing | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'industry-and-manufacturing'),
    'The ''Udyam'' registration for the micro, small and medium enterprises is:',
    'The Udyam registration, introduced in July 2020, is a self declaration based and paperless registration that replaced the Udyog Aadhaar and the PAN based registration of the MSMEs.',
    'easy',
    'PIB',
    null,
    '89ee7b868d4395e84bf3e1d4967a9959'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '89ee7b868d4395e84bf3e1d4967a9959'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a registration required only for the export oriented units'),
            ('B', 'a mandatory registration under the Companies Act'),
            ('C', 'a licence issued by the Ministry of MSME after the inspection'),
            ('D', 'a self declaration based registration that replaced the earlier Udyog Aadhaar and the PAN based registration')
           ) as v(label, option_text)
 where q.question_hash = '89ee7b868d4395e84bf3e1d4967a9959'
on conflict (question_id, label) do nothing;

-- economy | infrastructure-and-services | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'infrastructure-and-services'),
    'The ''National Optical Fibre'' project aims to:',
    'The National Optical Fibre project of the BharatNet aims to provide a fibre connection to every gram panchayat and to strengthen the digital infrastructure for the e-governance and the education and the health services.',
    'medium',
    'Standard Reference',
    null,
    '78d10bc45df77d4bbcb318ac05273e14'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '78d10bc45df77d4bbcb318ac05273e14'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'connect every gram panchayat with the high speed internet and provide the digital infrastructure for the e-governance'),
            ('B', 'replace the mobile broadband in the cities'),
            ('C', 'lay the undersea cables in the Indian Ocean'),
            ('D', 'provide the leased line connectivity to the defence establishments only')
           ) as v(label, option_text)
 where q.question_hash = '78d10bc45df77d4bbcb318ac05273e14'
on conflict (question_id, label) do nothing;

-- economy | infrastructure-and-services | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'infrastructure-and-services'),
    'The ''Dedicated Freight Corridor'' projects of India are:',
    'The Dedicated Freight Corridors are the Eastern corridor from Ludhiana to Kolkata and the Western corridor from Delhi to Mumbai, and they are aimed at a faster and a cheaper freight movement with the double stack containers.',
    'easy',
    'Standard Reference',
    null,
    '93879e8cead8cb5f435b7b42c659b4fd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '93879e8cead8cb5f435b7b42c659b4fd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Ludhiana to the Mundra and the Delhi to the Kandla routes'),
            ('B', 'the Eastern corridor from Ludhiana to Kolkata and the Western corridor from Delhi to Mumbai'),
            ('C', 'the Chennai to the Delhi and the Mumbai to the Kolkata routes'),
            ('D', 'the Chennai to the Visakhapatnam and the Pune to the Kochi routes')
           ) as v(label, option_text)
 where q.question_hash = '93879e8cead8cb5f435b7b42c659b4fd'
on conflict (question_id, label) do nothing;

-- economy | infrastructure-and-services | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'infrastructure-and-services'),
    'The ''Parvatmala'' scheme of the road ministry is intended for:',
    'The Parvatmala Pariyojana aims to develop the ropeways at the hill and the pilgrim destinations to provide the safe and the affordable mobility and to improve the last mile connectivity.',
    'medium',
    'PIB',
    null,
    'eee8517ccb462fb7f614367c05613e65'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'eee8517ccb462fb7f614367c05613e65'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the ropeways in the hill and the pilgrim destinations to improve the last mile connectivity'),
            ('B', 'the construction of the ropeways for the tourist circuit of Kerala only'),
            ('C', 'the maintenance of the existing cable cars of the tourism department'),
            ('D', 'the ropeway network in the plains for the freight movement')
           ) as v(label, option_text)
 where q.question_hash = 'eee8517ccb462fb7f614367c05613e65'
on conflict (question_id, label) do nothing;

-- economy | infrastructure-and-services | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'infrastructure-and-services'),
    'The ''garbage-free city'' certification under the Swachh Bharat Mission-U is given to:',
    'The garbage free city certification under the SBM-U requires the declaration of the ODF status along with the verification of the solid waste processing and the disposal by the third party audit.',
    'hard',
    'PIB',
    null,
    'b1f3c1e8678ef27875e6d9862299c118'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'b1f3c1e8678ef27875e6d9862299c118'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the cities that have the largest urban population'),
            ('B', 'the cities with the maximum number of the public toilets'),
            ('C', 'the cities with the highest municipal revenue'),
            ('D', 'the cities that have declared themselves ODF plus the waste processing certification')
           ) as v(label, option_text)
 where q.question_hash = 'b1f3c1e8678ef27875e6d9862299c118'
on conflict (question_id, label) do nothing;

-- economy | infrastructure-and-services | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'infrastructure-and-services'),
    'The ''source separation'' of the waste:',
    'The source separation of the waste into the wet, the dry and the inert fractions at the household level is the key component of the sustainable waste management under the SBM-U, and it is verified by the third party audit.',
    'hard',
    'PIB',
    null,
    'eee80985b7541fb2cb17654b9aedc797'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'eee80985b7541fb2cb17654b9aedc797'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'has been stopped after the certification of the cities'),
            ('B', 'is a key component of the sustainable waste management in the urban local bodies'),
            ('C', 'is done only by the private concessionaires'),
            ('D', 'is mandatory only for the commercial establishments')
           ) as v(label, option_text)
 where q.question_hash = 'eee80985b7541fb2cb17654b9aedc797'
on conflict (question_id, label) do nothing;

-- economy | infrastructure-and-services | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'infrastructure-and-services'),
    'The ''e-Courts'' project of the judiciary:',
    'The e-Courts project of the National Judicial Data Grid enables the electronic filing of the cases, the digital cause lists, the e-filing of the appeals and the video conferencing, and it has been operational in the district courts since 2007.',
    'medium',
    'Standard Reference',
    null,
    '528b485fe2dcced4bf4d244f40f2c65f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '528b485fe2dcced4bf4d244f40f2c65f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'replaces the interpreters in the court proceedings'),
            ('B', 'digitises only the records of the Supreme Court'),
            ('C', 'provides the electronic filing of the cases, the digital cause lists and the video conferencing in the courts'),
            ('D', 'automates the judgement writing in the criminal cases')
           ) as v(label, option_text)
 where q.question_hash = '528b485fe2dcced4bf4d244f40f2c65f'
on conflict (question_id, label) do nothing;

-- economy | agriculture | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'agriculture'),
    'The ''Agriculture Infrastructure Fund'' provides the interest subvention for the post harvest infrastructure with a loan of up to:',
    'The Agriculture Infrastructure Fund offers a 3 per cent interest subvention for a loan of up to Rs 2 crore for a period of seven years for the post harvest management infrastructure and the community level assets.',
    'medium',
    'PIB',
    null,
    'a9d5aa27b7f7ec3e8dc13d468677a796'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a9d5aa27b7f7ec3e8dc13d468677a796'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rs 2 crore for a period of seven years'),
            ('B', 'Rs 5 crore for a period of five years'),
            ('C', 'Rs 1 crore for a period of three years'),
            ('D', 'Rs 10 crore for a period of ten years')
           ) as v(label, option_text)
 where q.question_hash = 'a9d5aa27b7f7ec3e8dc13d468677a796'
on conflict (question_id, label) do nothing;

-- economy | agriculture | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'agriculture'),
    'The ''Integrated Scheme for Agricultural Marketing'' (ISAM) was formulated in:',
    'The ISAM of 2020 subsumes the sub-schemes of the Agricultural Marketing Infrastructure, the Marketing Structure Reform, the Krishi Value Chain Development and the e-NAM with the scheme to continue from 2021-22.',
    'easy',
    'Standard Reference',
    null,
    'd3f9a432b9f009554a84f49698e6d0a1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'd3f9a432b9f009554a84f49698e6d0a1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1995, with the creation of the e-NAM'),
            ('B', '2005, with the launch of the MSP procurement'),
            ('C', '2015, replacing the APMC reform programme'),
            ('D', '2020, to be implemented from 2021-22 with the continuation of the existing sub-schemes')
           ) as v(label, option_text)
 where q.question_hash = 'd3f9a432b9f009554a84f49698e6d0a1'
on conflict (question_id, label) do nothing;

-- economy | agriculture | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'agriculture'),
    'The ''Rashtriya Krishi Vikas Yojana'' was restructured in 2018 as:',
    'The RKVY was restructured in 2018 with the focus on the integrated farming system, the value chain, the food processing and the agri-entrepreneurship with the States free to choose the sub-schemes.',
    'easy',
    'Standard Reference',
    null,
    'c154f1c7db55234902d6143a64ec1f8e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c154f1c7db55234902d6143a64ec1f8e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Pradhan Mantri Fasal Bima Yojana'),
            ('B', 'the Agriculture Infrastructure Fund'),
            ('C', 'the Rashtriya Krishi Vikas Yojana with the focus on the integrated farming system and the value chain'),
            ('D', 'the Kisan Call Centre and the Agritech Portal')
           ) as v(label, option_text)
 where q.question_hash = 'c154f1c7db55234902d6143a64ec1f8e'
on conflict (question_id, label) do nothing;

-- economy | agriculture | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'agriculture'),
    'The ''Seed Bill'' proposed in India seeks to:',
    'The Seed Bill proposes to replace the Seeds Act of 1966, to bring the seed varieties in the registration and to provide the farmers the right to register their own varieties and to store and sell the seed of their choice.',
    'easy',
    'Standard Reference',
    null,
    '348392db8b396c010a1b9faca38f625e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '348392db8b396c010a1b9faca38f625e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'make the seed companies eligible for the export subsidy'),
            ('B', 'replace the Seeds Act of 1966 and include the farmers in the registration of the varieties'),
            ('C', 'increase the subsidy on the certified seed'),
            ('D', 'abolish the seed certification of the private sector')
           ) as v(label, option_text)
 where q.question_hash = '348392db8b396c010a1b9faca38f625e'
on conflict (question_id, label) do nothing;

commit;
