-- =============================================================================
-- current_affairs_02.sql — current_affairs question pack, part 02
-- 250 questions. Applied after supabase/migrations/004_reference_data.sql
-- =============================================================================

begin;

-- current_affairs | economy-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The 15th Finance Commission recommended a vertical devolution of the divisible pool to states of:',
    'The 15th Finance Commission, covering 2021-26, recommended 41 per cent vertical devolution of the divisible pool to states and 60 per cent of the pool for states based on population, with 40 per cent for other criteria.',
    'hard',
    'Finance Commission',
    2021,
    '43adc3b6129b421b7dcd1c2189a55ecd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '43adc3b6129b421b7dcd1c2189a55ecd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '40 per cent'),
            ('B', '37 per cent'),
            ('C', '41 per cent'),
            ('D', '42 per cent')
           ) as v(label, option_text)
 where q.question_hash = '43adc3b6129b421b7dcd1c2189a55ecd'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'India''s total exports of goods and services in 2023-24 were approximately:',
    'India''s exports of goods and services reached a record USD 856 billion in 2023-24, of which merchandise exports were about USD 432 billion, with the goods trade deficit narrowing to about USD 254 billion.',
    'hard',
    'Economic Survey 2023-24',
    2024,
    '59d4f44d4f8a75b96d9e2aeff62974a8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '59d4f44d4f8a75b96d9e2aeff62974a8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'USD 1,020 billion'),
            ('B', 'USD 734 billion'),
            ('C', 'USD 625 billion'),
            ('D', 'USD 856 billion')
           ) as v(label, option_text)
 where q.question_hash = '59d4f44d4f8a75b96d9e2aeff62974a8'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The size of India''s current account deficit in 2023-24 was estimated at about:',
    'India''s current account deficit narrowed to about 0.7 per cent of GDP in 2023-24, estimated at under USD 35 billion, helped by record services exports and lower merchandise imports.',
    'hard',
    'RBI',
    2024,
    '23a6dfaeccc5658a8e9a6fe2e9008184'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '23a6dfaeccc5658a8e9a6fe2e9008184'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '4.5 per cent of GDP'),
            ('B', '1.8 per cent of GDP'),
            ('C', '0.7 per cent of GDP'),
            ('D', '2.9 per cent of GDP')
           ) as v(label, option_text)
 where q.question_hash = '23a6dfaeccc5658a8e9a6fe2e9008184'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The repo rate of the Reserve Bank of India was raised to 6.50 per cent with effect from which month in 2022?',
    'In an off-cycle policy meeting on 8 June 2022, the RBI raised the repo rate by 250 basis points to 6.50 per cent, the sharpest single increase since the monetary policy framework was reformed.',
    'medium',
    'RBI',
    2022,
    '26d6387894f6d2761b339b448b0e94e0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '26d6387894f6d2761b339b448b0e94e0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'June 2022'),
            ('B', 'August 2022'),
            ('C', 'April 2022'),
            ('D', 'February 2022')
           ) as v(label, option_text)
 where q.question_hash = '26d6387894f6d2761b339b448b0e94e0'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'Monthly GST revenue collections first crossed the mark of one lakh crore rupees in:',
    'Gross GST collections first exceeded Rs 1 lakh crore in July 2021, and the government has repeatedly reported monthly collections above that benchmark since then.',
    'medium',
    'PIB',
    2021,
    '58993358b51247fe2d6582315ae7a48b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '58993358b51247fe2d6582315ae7a48b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'October 2020'),
            ('B', 'July 2021'),
            ('C', 'April 2022'),
            ('D', 'March 2021')
           ) as v(label, option_text)
 where q.question_hash = '58993358b51247fe2d6582315ae7a48b'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The New Public Sector Enterprise Policy announced in 2021 provides for:',
    'The 2021 policy prescribes a bare minimum presence of the public sector in strategic sectors such as defence, railways, energy, banking, petroleum, space and atomic energy, with non-strategic businesses to be privatised or closed.',
    'hard',
    'DPIIT',
    2021,
    '0608806adfd1845046a8686acdf8d359'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '0608806adfd1845046a8686acdf8d359'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Reservation of 51 per cent for the private sector'),
            ('B', 'Merging of all public sector enterprises into a single holding company'),
            ('C', 'Privatisation of all public sector enterprises'),
            ('D', 'A ''minimum presence'' of the public sector in four strategic sectors with the rest privatised or closed')
           ) as v(label, option_text)
 where q.question_hash = '0608806adfd1845046a8686acdf8d359'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''Securities Market Code'', a single consolidated regulatory framework proposed by SEBI, was proposed in which year?',
    'SEBI proposed in 2023 a consolidated Securities Market Code to replace its multiple regulations on intermediaries, listing obligations and mutual funds, and also proposed a study on overseas expansion of Indian capital markets.',
    'hard',
    'SEBI',
    2023,
    'f0147d7d18bca47935c5503315eec2d3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'f0147d7d18bca47935c5503315eec2d3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2020'),
            ('B', '2021'),
            ('C', '2023'),
            ('D', '2019')
           ) as v(label, option_text)
 where q.question_hash = 'f0147d7d18bca47935c5503315eec2d3'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'IRDAI, the insurance regulator, issued a consolidated Master Circular in which year?',
    'IRDAI issued a Master Circular in March 2024 consolidating regulations on life, health and general insurance, replacing the IRDAI Regulations, 2019 that had superseded the 1998 regulations.',
    'hard',
    'IRDAI',
    2024,
    '305290faccb52344886103a5610edea5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '305290faccb52344886103a5610edea5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2022'),
            ('B', '2024'),
            ('C', '2019'),
            ('D', '2021')
           ) as v(label, option_text)
 where q.question_hash = '305290faccb52344886103a5610edea5'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The RBI''s Financial Inclusion Index (FI-Index) was launched in which year?',
    'The FI-Index, released by the RBI with the National Strategy for Financial Inclusion, was launched in 2021 to measure and track progress on financial inclusion across states.',
    'medium',
    'RBI',
    2021,
    '4faefb65dc9750ec8f87768a50ccae7b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '4faefb65dc9750ec8f87768a50ccae7b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2022'),
            ('B', '2017'),
            ('C', '2019'),
            ('D', '2021')
           ) as v(label, option_text)
 where q.question_hash = '4faefb65dc9750ec8f87768a50ccae7b'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The Startup India Seed Fund Scheme, which provides grants to eligible startups, was approved in which year?',
    'The Startup India Seed Fund Scheme was approved in 2022 with a corpus of Rs 945 crore, implemented through the Startup India Seed Fund Fund of Funds managed by SIDBI.',
    'medium',
    'PIB',
    2022,
    '778a920574de94dd1d1447cc74ae4cc9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '778a920574de94dd1d1447cc74ae4cc9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2022'),
            ('B', '2023'),
            ('C', '2020'),
            ('D', '2021')
           ) as v(label, option_text)
 where q.question_hash = '778a920574de94dd1d1447cc74ae4cc9'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The portability of the National Food Security Act entitlements across states, under the One Nation One Ration Card, is implemented through:',
    'The Integrated Management of PDS portal links e-Ration cards across states so that a National Food Security Act beneficiary can buy ration from any fair price shop in the country.',
    'medium',
    'Government of India',
    2021,
    '92e4cc065d4a88259a11a409e685a0b2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '92e4cc065d4a88259a11a409e685a0b2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Direct cash transfers to bank accounts of beneficiaries'),
            ('B', 'Vouchers redeemable at fair price shops'),
            ('C', 'Digitised ration cards with biometric authentication only'),
            ('D', 'Aadhaar-linked e-Ration cards and the Integrated Management of PDS portal')
           ) as v(label, option_text)
 where q.question_hash = '92e4cc065d4a88259a11a409e685a0b2'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'In the Maneka Gandhi case of 1978, the Supreme Court held that:',
    'Maneka Gandhi v Union of India held that Article 21''s guarantee of personal liberty includes the right to live with dignity, which was read with the right to privacy and the right to live in a healthy environment.',
    'medium',
    'Supreme Court judgment',
    null,
    '2559239f382bb1cdc9d7c96692027ade'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '2559239f382bb1cdc9d7c96692027ade'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The President can dissolve the Lok Sabha on the advice of the Council of Ministers'),
            ('B', 'Reservation in promotions is unconstitutional'),
            ('C', 'The right to life includes the right to live with dignity and the right to privacy'),
            ('D', 'The basic structure doctrine applies to all constitutional amendments')
           ) as v(label, option_text)
 where q.question_hash = '2559239f382bb1cdc9d7c96692027ade'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'The basic structure doctrine of the Indian Constitution was propounded by the Supreme Court in:',
    'The Kesavananda Bharati judgment of 1973 held by a 7-6 majority that Parliament''s amending power under Article 368 is subject to the basic structure of the Constitution.',
    'easy',
    'Supreme Court judgment',
    null,
    'ccfe5e7c08b5c76cfa77159635f2225f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'ccfe5e7c08b5c76cfa77159635f2225f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'S. R. Bommai case of 1994'),
            ('B', 'Kesavananda Bharati case of 1973'),
            ('C', 'Maneka Gandhi case of 1978'),
            ('D', 'Minerva Mills case of 1980')
           ) as v(label, option_text)
 where q.question_hash = 'ccfe5e7c08b5c76cfa77159635f2225f'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'The Supreme Court judgment in the S. R. Bommai case of 1994 dealt principally with:',
    'The Bommai judgment held that the proclamation of President''s Rule under Article 356 is subject to judicial review, that federalism is a basic feature, and that the majority government test applies.',
    'medium',
    'Supreme Court judgment',
    null,
    'e94fff8782b326dc3cc92419214eb494'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'e94fff8782b326dc3cc92419214eb494'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The proclamation of President''s Rule and federalism'),
            ('B', 'The validity of emergency regulations'),
            ('C', 'The abolition of the Legislative Council'),
            ('D', 'Reservation of seats for women')
           ) as v(label, option_text)
 where q.question_hash = 'e94fff8782b326dc3cc92419214eb494'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'In the Justice K. S. Puttaswamy case of 2017, the Supreme Court held that:',
    'The nine-judge Puttaswamy judgment of 2017 held unanimously that the right to privacy is intrinsic to life and personal freedom under Article 21 and is also traceable to Article 19.',
    'medium',
    'Supreme Court judgment',
    2017,
    '89a93dfebf09966d222a1cb1f348d535'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '89a93dfebf09966d222a1cb1f348d535'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The right to privacy is protected under Article 21 and Article 19'),
            ('B', 'Elections to the Panchayats are unconstitutional'),
            ('C', 'The right to information is a fundamental right'),
            ('D', 'The right to privacy is not a fundamental right')
           ) as v(label, option_text)
 where q.question_hash = '89a93dfebf09966d222a1cb1f348d535'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'The Navtej Singh Johar judgment of 2018 dealt with:',
    'The Navtej Singh Johar judgment read down Section 377 IPC to decriminalise consensual sexual acts between adults, holding that sexual autonomy is protected by Article 21.',
    'medium',
    'Supreme Court judgment',
    2018,
    'd7e12ed337dd0d9f370a395130e34289'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'd7e12ed337dd0d9f370a395130e34289'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Legalisation of the right to die'),
            ('B', 'Mandatory disclosure of political party funding'),
            ('C', 'Decriminalisation of adultery under the IPC'),
            ('D', 'Decriminalisation of consensual sexual acts between adults under Section 377 IPC')
           ) as v(label, option_text)
 where q.question_hash = 'd7e12ed337dd0d9f370a395130e34289'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'The Joseph Shine judgment of 2018 concerned:',
    'The Joseph Shine case struck down Section 497 of the Indian Penal Code as unconstitutional, holding that adultery cannot be a ground for punishing a spouse.',
    'medium',
    'Supreme Court judgment',
    2018,
    '1403ce21376ce1823cc104b385db04e7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '1403ce21376ce1823cc104b385db04e7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Equal Remuneration Act'),
            ('B', 'Section 497 IPC on adultery'),
            ('C', 'Section 377 IPC'),
            ('D', 'Dowry prohibition law')
           ) as v(label, option_text)
 where q.question_hash = '1403ce21376ce1823cc104b385db04e7'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'The right to education as a fundamental right was inserted into the Constitution as Article 21A by which Constitutional Amendment Act?',
    'The 86th Constitutional Amendment Act, 2002 inserted Article 21A, making the right to education a fundamental right for children aged six to fourteen, and changed Article 45 accordingly.',
    'easy',
    'Standard Reference',
    null,
    '9b8baad8abf370def657ce3c6ec88a02'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '9b8baad8abf370def657ce3c6ec88a02'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The 93rd Amendment, 2005'),
            ('B', 'The 84th Amendment, 2001'),
            ('C', 'The 86th Amendment, 2002'),
            ('D', 'The 87th Amendment, 2003')
           ) as v(label, option_text)
 where q.question_hash = '9b8baad8abf370def657ce3c6ec88a02'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'The National Judicial Appointments Commission Act, 2014, which was struck down by the Supreme Court, was replaced by:',
    'The NJAC Act, 2014 was struck down in April 2015 as violating judicial independence, and a National Judicial Appointments Commission (Amendment) Act, 2016 restored the collegium while giving the CJI an overriding role.',
    'hard',
    'Supreme Court judgment',
    2015,
    'a88af47c93b6dada7a81bbbd1b446398'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a88af47c93b6dada7a81bbbd1b446398'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The National Judicial Appointments Commission (Amendment) Act, 2016'),
            ('B', 'The Constitution (99th Amendment) Act, 2014'),
            ('C', 'The Judicial Appointments Commission Act, 2019'),
            ('D', 'The collegium-based rules notified in 2018')
           ) as v(label, option_text)
 where q.question_hash = 'a88af47c93b6dada7a81bbbd1b446398'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'The Minerva Mills judgment of 1980 laid down that the Constitution is based on:',
    'Minerva Mills held that the Constitution''s limited amending power under Article 368 cannot be used to destroy the basic structure, and that the balance between fundamental rights and Directive Principles is a basic feature.',
    'hard',
    'Supreme Court judgment',
    null,
    'e0d75c00131e7a6fe5876853471f259c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e0d75c00131e7a6fe5876853471f259c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Judicial supremacy over all branches'),
            ('B', 'The doctrine of separation of powers only'),
            ('C', 'Absolute power of the Parliament'),
            ('D', 'Limited power of the legislature to amend the fundamental features')
           ) as v(label, option_text)
 where q.question_hash = 'e0d75c00131e7a6fe5876853471f259c'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'In the I. R. Coelho case of 2007, the Supreme Court held that:',
    'The I. R. Coelho judgment held that laws placed in the Ninth Schedule after 24 April 1973 are open to basic structure review, while laws placed before that date are presumed to be valid.',
    'hard',
    'Supreme Court judgment',
    null,
    'ee1155371aaec583c1309afb64c8ca65'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'ee1155371aaec583c1309afb64c8ca65'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Constitutional amendments do not need a supermajority'),
            ('B', 'Ninth Schedule laws cannot be challenged on basic structure grounds'),
            ('C', 'Ninth Schedule laws are subject to the basic structure test when enacted after 24 April 1973'),
            ('D', 'The Ninth Schedule can be expanded by ordinary legislation')
           ) as v(label, option_text)
 where q.question_hash = 'ee1155371aaec583c1309afb64c8ca65'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'In the 2023 judgment in the Ram Nath Goenka case, the Supreme Court declined to:',
    'The Supreme Court declined to issue a direction to the Election Commission on simultaneous elections, leaving the matter to the Commission and the legislature, thereby keeping the door open for ''one nation, one election''.',
    'hard',
    'PIB',
    2023,
    '18fa11fd3293ccdc3142029852073f1a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '18fa11fd3293ccdc3142029852073f1a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bar the Chief Election Commissioner from exercising discretion'),
            ('B', 'Hold simultaneous elections across states unconstitutional'),
            ('C', 'Direct a one-time survey of parties on the likely support of members'),
            ('D', 'Allow the counting of postal ballots before the poll day')
           ) as v(label, option_text)
 where q.question_hash = '18fa11fd3293ccdc3142029852073f1a'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'The Delimitation Commission set up in 2022 was tasked with:',
    'The Delimitation Commission constituted in 2022 was to delimit constituencies on the basis of the first census after 2026, with its recommendations freezing the strength of the Lok Sabha and state assemblies until 2031.',
    'medium',
    'PIB',
    2022,
    'c510cbf94dd43c1b15920d533664e682'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'c510cbf94dd43c1b15920d533664e682'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Redrawing the boundaries of parliamentary constituencies only'),
            ('B', 'Allocating seats reserved for women'),
            ('C', 'Redrawing the boundaries of states'),
            ('D', 'Delimiting the constituencies for the census-based exercise and freezing the strength of the Lok Sabha and state assemblies')
           ) as v(label, option_text)
 where q.question_hash = 'c510cbf94dd43c1b15920d533664e682'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'The Chief Election Commissioner and Other Election Commissioners (Appointment, Conditions of Service and Term of Office) Act, 2023 provides for:',
    'The 2023 Act gives the Chief Election Commissioner a term of six years or until the age of 65, whichever is earlier, with removal only for specified causes and a defined process.',
    'medium',
    'PIB',
    2023,
    'ee31bb9d17695bb851db4a4152646241'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'ee31bb9d17695bb851db4a4152646241'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Continuation of the CEC''s term until 75 years of age'),
            ('B', 'A fixed six-year term for the Chief Election Commissioner, removable only for specified reasons'),
            ('C', 'A three-member commission with a two-year term'),
            ('D', 'The CEC to be appointed by a parliamentary committee')
           ) as v(label, option_text)
 where q.question_hash = 'ee31bb9d17695bb851db4a4152646241'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'The term of a member of the Union Public Service Commission, as fixed by law in 2023, is:',
    'The UPSC and State PSC members hold office for six years or until they attain the age of 65, whichever is earlier, and can be removed only for causes specified in the Constitution.',
    'medium',
    'PIB',
    2023,
    'ff7320c6326153e2e5b3cdadd7bf2a12'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ff7320c6326153e2e5b3cdadd7bf2a12'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Six years or the age of 65, whichever is earlier'),
            ('B', 'Five years or the age of 60'),
            ('C', 'Seven years or the age of 65'),
            ('D', 'Six years or the age of 62')
           ) as v(label, option_text)
 where q.question_hash = 'ff7320c6326153e2e5b3cdadd7bf2a12'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'Adjudication of disputes between the Government of India and one or more states is provided for under:',
    'Article 262 provides for the adjudication of any dispute relating to the interpretation of the Constitution or the application of the provisions of the Constitution or the law made by Parliament, between the Centre and the states or among states.',
    'medium',
    'Standard Reference',
    null,
    'b753f9e10d86d28a862d4d70504ab5d2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'b753f9e10d86d28a862d4d70504ab5d2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Article 269'),
            ('B', 'Article 280'),
            ('C', 'Article 262'),
            ('D', 'Article 263')
           ) as v(label, option_text)
 where q.question_hash = 'b753f9e10d86d28a862d4d70504ab5d2'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'The Inter-State Council, which addresses coordination and cooperation among states, is provided for under which Article?',
    'Article 263 provides for the establishment of an Inter-State Council to inquire into and advise upon disputes between states, investigate subjects of common interest and make recommendations for better coordination of policy.',
    'medium',
    'Standard Reference',
    null,
    '87900e6e4b01e2a29a323593c2a8b096'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '87900e6e4b01e2a29a323593c2a8b096'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Article 262'),
            ('B', 'Article 280'),
            ('C', 'Article 263'),
            ('D', 'Article 307')
           ) as v(label, option_text)
 where q.question_hash = '87900e6e4b01e2a29a323593c2a8b096'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'The proclamation of President''s Rule in a state is governed by which Articles of the Constitution?',
    'Article 356 provides for President''s Rule on the failure of constitutional machinery in a state, and Article 365 provides that when a state government is not in accordance with the Constitution the Union government is to be vested with the powers of the state government.',
    'medium',
    'Standard Reference',
    null,
    '3cfbc1650fd4fae9632da3b987f6b435'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '3cfbc1650fd4fae9632da3b987f6b435'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Article 356 and Article 365'),
            ('B', 'Article 360 and Article 361'),
            ('C', 'Article 352 and Article 353'),
            ('D', 'Article 355 and Article 357')
           ) as v(label, option_text)
 where q.question_hash = '3cfbc1650fd4fae9632da3b987f6b435'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'Telangana became the 29th state of India on:',
    'Telangana was formed on 2 June 2014 under the Andhra Pradesh Reorganisation Act, 2014, after the bifurcation of Andhra Pradesh, with Hyderabad as its capital.',
    'easy',
    'Standard Reference',
    2014,
    'aa8762d53475722e9fa1a71718c5422b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'aa8762d53475722e9fa1a71718c5422b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '29 August 2000'),
            ('B', '1 January 2015'),
            ('C', '9 June 2014'),
            ('D', '2 June 2014')
           ) as v(label, option_text)
 where q.question_hash = 'aa8762d53475722e9fa1a71718c5422b'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'The Jammu and Kashmir Reorganisation Act, 2019 provided for:',
    'The Jammu and Kashmir Reorganisation Act, 2019 provided for the division of the erstwhile state into the union territories of Jammu and Kashmir, with a legislature, and Ladakh, without one.',
    'easy',
    'Standard Reference',
    2019,
    '2004c204f33e5e17661f7f6aaaa6d115'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '2004c204f33e5e17661f7f6aaaa6d115'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The creation of a new state of Ladakh'),
            ('B', 'Cessation of the special status of the erstwhile state and its reorganisation into two union territories'),
            ('C', 'Extension of Article 370 to all states'),
            ('D', 'Restoration of the erstwhile state''s boundaries')
           ) as v(label, option_text)
 where q.question_hash = '2004c204f33e5e17661f7f6aaaa6d115'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'The two union territories of Dadra and Nagar Haveli and Daman and Diu were merged in which year?',
    'The two union territories were merged into a single union territory with effect from 26 May 2020, and the merged territory was given a legislative council under the Daman and Diu and Dadra and Nagar Haveli (Organic Law) Act, 2021.',
    'hard',
    'Standard Reference',
    2020,
    '428958380d2eb99f8ea96c1f45708ebc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '428958380d2eb99f8ea96c1f45708ebc'
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
 where q.question_hash = '428958380d2eb99f8ea96c1f45708ebc'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'The Tribunals Reforms Act, 2021 provided for:',
    'The Tribunals Reforms Act, 2021 replaced the Appellate Tribunal Act, 2016 and created a unified framework with four tribunals - NCLAT, CAT, ITAT and the Tribunals for Appellate matters - chaired by the CJI-nominated chairperson.',
    'hard',
    'Standard Reference',
    2021,
    '38d9f1f5b3679a7d52391e21f93c7cc0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '38d9f1f5b3679a7d52391e21f93c7cc0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Abolition of the National Green Tribunal'),
            ('B', 'Creation of the Lok Adalat at the national level'),
            ('C', 'Transfer of all service matters to the High Courts'),
            ('D', 'Creation of a single unified appellate tribunal structure replacing the Appellate Tribunal Act, 2016')
           ) as v(label, option_text)
 where q.question_hash = '38d9f1f5b3679a7d52391e21f93c7cc0'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'In its December 2023 judgment on Article 370, the Supreme Court:',
    'The five-judge Constitution Bench unanimously upheld the revocation of Article 370, declined to interfere with the Presidential orders and directed that the process of restoring statehood to the erstwhile state be expedited.',
    'hard',
    'PIB',
    2023,
    'a967558b82ab9244971530832d932616'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a967558b82ab9244971530832d932616'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Declined to interfere with the Presidential orders dated 5 August and 28 October 2019 and directed the statehood restoration process to continue'),
            ('B', 'Directed a fresh referendum in the erstwhile state'),
            ('C', 'Struck down the J&K Reorganisation Act'),
            ('D', 'Held that the revocation of Article 370 was unconstitutional')
           ) as v(label, option_text)
 where q.question_hash = 'a967558b82ab9244971530832d932616'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'The Citizenship (Amendment) Act, 2019 provides for:',
    'The Citizenship (Amendment) Act, 2019 created a fast-track naturalisation route for persons from Afghanistan, Bangladesh and Pakistan who entered India on or after 1 December 2014 and are eligible for citizenship under the existing provisions.',
    'medium',
    'Standard Reference',
    2019,
    'd3645243b0af674999e474792efc8694'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd3645243b0af674999e474792efc8694'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Double the minimum period for naturalisation'),
            ('B', 'Mandatory deportation of illegal migrants within 30 days'),
            ('C', 'A fast-track naturalisation process for investors from a specified list of countries'),
            ('D', 'Abolition of the concept of ''citizen of India'' in the Citizenship Act')
           ) as v(label, option_text)
 where q.question_hash = 'd3645243b0af674999e474792efc8694'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'The Constitution (99th Amendment) Act, 2014 gave constitutional status to:',
    'The 99th Amendment inserted Article 43H to promote cooperative societies and Article 43K to provide for the right of the people to form cooperatives, making the right to form cooperatives a fundamental right.',
    'medium',
    'Standard Reference',
    2014,
    'e60e09b2d41ca44743e70632c5b16d81'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e60e09b2d41ca44743e70632c5b16d81'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Panchayats and Municipalities'),
            ('B', 'The Right to Education'),
            ('C', 'Tribunals'),
            ('D', 'Cooperative societies')
           ) as v(label, option_text)
 where q.question_hash = 'e60e09b2d41ca44743e70632c5b16d81'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'One of the headline outcomes of COP28, held in Dubai in December 2023, was the call to:',
    'The UAE Consensus at COP28 called for tripling renewable capacity to 11,000 GW and doubling the annual energy efficiency improvement rate by 2030, and for the transition away from fossil fuels in energy systems.',
    'medium',
    'UNFCCC',
    2023,
    '1268476c0305e7b690777e3d9e2ecc4c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '1268476c0305e7b690777e3d9e2ecc4c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Triple global renewable energy capacity and double the annual rate of energy efficiency improvement by 2030'),
            ('B', 'Establish a global levy on carbon emissions of 2 per cent'),
            ('C', 'Create a joint loss and damage facility of USD 100 billion'),
            ('D', 'Phase out all fossil fuels by 2030')
           ) as v(label, option_text)
 where q.question_hash = '1268476c0305e7b690777e3d9e2ecc4c'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'One of the key deliverables of COP29 in 2024 was the completion of the rule-making for:',
    'COP29 finalised the Article 6 rulebook, operationalising the Paris Agreement''s cooperative approaches and a centralised crediting mechanism for internationally transferred mitigation outcomes.',
    'hard',
    'UNFCCC',
    2024,
    '811543eeb0dfb033cb2ec2b0c8848099'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '811543eeb0dfb033cb2ec2b0c8848099'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Global Stocktake'),
            ('B', 'The Kyoto Protocol''s emissions trading'),
            ('C', 'Article 6 of the Paris Agreement on carbon markets, covering cooperative approaches and a new mechanism'),
            ('D', 'A global carbon border adjustment mechanism')
           ) as v(label, option_text)
 where q.question_hash = '811543eeb0dfb033cb2ec2b0c8848099'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'At COP28 in Dubai in 2023, the Loss and Damage Fund was operationalised with initial pledges of about:',
    'The Loss and Damage Fund for responding to climate-related loss and damage was operationalised at COP28 with pledges of about USD 700 million from about 20 countries.',
    'medium',
    'UNFCCC',
    2023,
    '290c093206c1f4bed1307aeb8c87f235'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '290c093206c1f4bed1307aeb8c87f235'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'USD 4.5 billion'),
            ('B', 'USD 700 million'),
            ('C', 'USD 27 billion'),
            ('D', 'USD 100 million')
           ) as v(label, option_text)
 where q.question_hash = '290c093206c1f4bed1307aeb8c87f235'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The ''LiFE 75'' initiative, which promotes sustainable lifestyles in selected districts, was launched in which year?',
    'LiFE 75, an initiative under the Mission LiFE umbrella, was launched in 2023 to roll out sustainable lifestyle actions in 75 districts across the country, covering the aspirational districts.',
    'medium',
    'PIB',
    2023,
    '35377b34a9ba6493e79201ca299c9222'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '35377b34a9ba6493e79201ca299c9222'
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
 where q.question_hash = '35377b34a9ba6493e79201ca299c9222'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'Under the PM Surya Ghar Muft Bijli Yojana, households with bankable credit can install rooftop solar of up to:',
    'The scheme provides central support for rooftop solar of up to 3 kW for households with bankable credit, and up to 2 kW for those without, through collateral-free loans from banks.',
    'hard',
    'PIB',
    2024,
    '5a9d94d7eb89a31d0187a46cca69bdfc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '5a9d94d7eb89a31d0187a46cca69bdfc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '10 kW'),
            ('B', '1 kW'),
            ('C', '3 kW'),
            ('D', '5 kW')
           ) as v(label, option_text)
 where q.question_hash = '5a9d94d7eb89a31d0187a46cca69bdfc'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The Sagarmala programme, aimed at port-led development and logistics transformation, was launched in which year?',
    'Sagarmala was launched in 2015 as a national programme for port-led development, with a National Logistics Policy approved in 2021 to build on it.',
    'medium',
    'PIB',
    2015,
    '277c7f317e9eb03b7509c6b48608a345'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '277c7f317e9eb03b7509c6b48608a345'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2015'),
            ('B', '2016'),
            ('C', '2018'),
            ('D', '2014')
           ) as v(label, option_text)
 where q.question_hash = '277c7f317e9eb03b7509c6b48608a345'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The National River Conservation Plan, which focuses on pollution abatement in the major rivers, was launched in which year?',
    'The National River Conservation Plan was launched in 2019, replacing the earlier National Ganga River Basin Authority-centred programme with a focus on pollution abatement in major rivers.',
    'hard',
    'PIB',
    2019,
    '4d75b5e99aa6f9f8aa8976e76991f531'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '4d75b5e99aa6f9f8aa8976e76991f531'
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
 where q.question_hash = '4d75b5e99aa6f9f8aa8976e76991f531'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The Central Pollution Control Board launched a centralised portal for Extended Producer Responsibility obligations in which year?',
    'The CPCB''s centralised EPR portal went live in 2022, enabling producers and importers to register, file returns and deposit eco-marked certificates for plastic packaging waste.',
    'medium',
    'CPCB',
    2022,
    '76fabdb429a99b9ed1cd0d063fcc343b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '76fabdb429a99b9ed1cd0d063fcc343b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2022'),
            ('B', '2023'),
            ('C', '2020'),
            ('D', '2021')
           ) as v(label, option_text)
 where q.question_hash = '76fabdb429a99b9ed1cd0d063fcc343b'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The G20 Waste Management and Reduction Initiative, launched in 2022, was co-convened by:',
    'India and the UN Environment Programme were the co-convenors of the G20 Waste Management and Reduction Initiative, launched during India''s G20 presidency in 2022.',
    'medium',
    'PIB',
    2022,
    '932e21a8eeb001b49f66becd8995b651'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '932e21a8eeb001b49f66becd8995b651'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Germany and the European Commission'),
            ('B', 'Brazil and South Africa'),
            ('C', 'India and the UN Environment Programme'),
            ('D', 'India and Japan')
           ) as v(label, option_text)
 where q.question_hash = '932e21a8eeb001b49f66becd8995b651'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The National Air Quality Index is generated by the Central Pollution Control Board in collaboration with:',
    'The National AQI is developed by the CPCB together with IIT Delhi and the Indian Institute of Toxicology and Research, using sub-index values for eight criteria pollutants.',
    'hard',
    'CPCB',
    null,
    'bc410754b9a0184e32e9835e8a000cd3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'bc410754b9a0184e32e9835e8a000cd3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Indian Meteorological Department alone'),
            ('B', 'IIT Delhi and the Indian Institute of Toxicology and Research'),
            ('C', 'IIT Kanpur alone'),
            ('D', 'The National Remote Sensing Centre alone')
           ) as v(label, option_text)
 where q.question_hash = 'bc410754b9a0184e32e9835e8a000cd3'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The Forest Survey of India, the organisation that publishes the State of the Forest Report, was established in:',
    'The Forest Survey of India was established in June 1981 under the Ministry of Environment, Forest and Climate Change and is headquartered at Dehradun.',
    'medium',
    'Forest Survey of India',
    1981,
    'e0e89324b47ae4fb5e7150a140352fa5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e0e89324b47ae4fb5e7150a140352fa5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1975'),
            ('B', '1990'),
            ('C', '1968'),
            ('D', '1981')
           ) as v(label, option_text)
 where q.question_hash = 'e0e89324b47ae4fb5e7150a140352fa5'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The Wildlife Crime Control Act, 2022 provides for the establishment of a:',
    'The Wildlife Crime Control Act, 2022 gives the Central Government the power to establish a National Wildlife Crime Control Bureau and empowers state governments to notify such bureaux.',
    'medium',
    'PIB',
    2022,
    '40c6d946d3150ef209306e3c8e8c9405'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '40c6d946d3150ef209306e3c8e8c9405'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Wildlife Monitoring Authority'),
            ('B', 'National Wildlife Crime Control Bureau'),
            ('C', 'Central Bureau of Investigation for wildlife cases'),
            ('D', 'Wildlife Crime Ombudsman')
           ) as v(label, option_text)
 where q.question_hash = '40c6d946d3150ef209306e3c8e8c9405'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'Project Elephant, one of the oldest ongoing wildlife conservation programmes in India, was launched in:',
    'Project Elephant was launched in 1992 to focus on the protection and management of elephant habitats, with the first elephant census conducted in 1993.',
    'medium',
    'Standard Reference',
    1992,
    '4f47046df18d63e8aeb3ee466020b78e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '4f47046df18d63e8aeb3ee466020b78e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1992'),
            ('B', '1996'),
            ('C', '1978'),
            ('D', '1988')
           ) as v(label, option_text)
 where q.question_hash = '4f47046df18d63e8aeb3ee466020b78e'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The National Bamboo Mission was launched in which year?',
    'The National Bamboo Mission was launched in 2019 to promote the cultivation of bamboo as a substitute for wood and timber and to improve the rural bamboo-based economy.',
    'medium',
    'PIB',
    2019,
    '2b72b8057d395a6312490c2cae765660'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '2b72b8057d395a6312490c2cae765660'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2016'),
            ('B', '2017'),
            ('C', '2018'),
            ('D', '2019')
           ) as v(label, option_text)
 where q.question_hash = '2b72b8057d395a6312490c2cae765660'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The Bhadla Solar Park, one of the world''s largest solar parks, is located in:',
    'The Bhadla Solar Park in the Thar desert of Rajasthan has an installed capacity of about 2.25 GW and is among the largest photovoltaic parks in the world.',
    'medium',
    'Standard Reference',
    null,
    '2a4b30c89aff85146a50d56599bd2bba'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '2a4b30c89aff85146a50d56599bd2bba'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Karnataka'),
            ('B', 'Tamil Nadu'),
            ('C', 'Rajasthan'),
            ('D', 'Gujarat')
           ) as v(label, option_text)
 where q.question_hash = '2a4b30c89aff85146a50d56599bd2bba'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The ''Katowice Rulebook'', which set out detailed rules for international carbon markets, was adopted at:',
    'The Katowice Rulebook on carbon markets was adopted at COP24 in December 2018, providing the accounting and transparency rules that Article 6 of the Paris Agreement later built upon.',
    'hard',
    'UNFCCC',
    2018,
    'b8827bdee5a931ad3232be654efeda5f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'b8827bdee5a931ad3232be654efeda5f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'COP26, Glasgow, 2021'),
            ('B', 'COP27, Sharm el-Sheikh, 2022'),
            ('C', 'COP24, Katowice, 2018'),
            ('D', 'COP25, Madrid, 2019')
           ) as v(label, option_text)
 where q.question_hash = 'b8827bdee5a931ad3232be654efeda5f'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The 14th meeting of the Conference of the Parties to the Ramsar Convention was held in 2022, and adopted the:',
    'COP14 of the Ramsar Convention, held in Wuhan and Rome in November 2022, adopted the Ramsar Declaration on wetlands and sustainable development and launched the Global Wetland Outlook.',
    'medium',
    'Ramsar Convention',
    2022,
    'cf02b57f3f0bbcdeab67fd74402f76ea'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'cf02b57f3f0bbcdeab67fd74402f76ea'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kigali Declaration'),
            ('B', 'Ramsar Declaration'),
            ('C', 'Montreal Protocol on Wetlands'),
            ('D', 'Kunming-Montreal Global Biodiversity Framework')
           ) as v(label, option_text)
 where q.question_hash = 'cf02b57f3f0bbcdeab67fd74402f76ea'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'Project Snow Leopard, a conservation programme for the snow leopard in the higher Himalayan regions, was launched in:',
    'Project Snow Leopard was launched in 2009 in the four Himalayan states of Jammu and Kashmir, Ladakh, Himachal Pradesh and Uttarakhand, and Ladakh''s state animal is the snow leopard.',
    'medium',
    'Standard Reference',
    2009,
    'e222a6f55b55fe620cc3814cac18e52f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e222a6f55b55fe620cc3814cac18e52f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2005'),
            ('B', '2012'),
            ('C', '2015'),
            ('D', '2009')
           ) as v(label, option_text)
 where q.question_hash = 'e222a6f55b55fe620cc3814cac18e52f'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The Agni-V, India''s longest-range ballistic missile, was first test-fired in:',
    'Agni-V was first test-fired in October 2021, with a range of about 5,000 km, making it the longest-range Indian ballistic missile and part of the land-based leg of the nuclear triad.',
    'medium',
    'DRDO',
    2021,
    '82fef606726748e567ce8fb86d41d465'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '82fef606726748e567ce8fb86d41d465'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2021'),
            ('B', '2015'),
            ('C', '2017'),
            ('D', '2019')
           ) as v(label, option_text)
 where q.question_hash = '82fef606726748e567ce8fb86d41d465'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The Prithvi-II, India''s first indigenously developed ballistic missile, was test-fired for the first time in:',
    'Prithvi-II, developed by the DRDO, was first test-fired in March 2016 with a range of 1,000 to 3,500 km, and is the land-based member of India''s nuclear triad.',
    'medium',
    'DRDO',
    2016,
    'a1708503624ab0def93eb8d4d4b1b444'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a1708503624ab0def93eb8d4d4b1b444'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2016'),
            ('B', '2003'),
            ('C', '2012'),
            ('D', '2014')
           ) as v(label, option_text)
 where q.question_hash = 'a1708503624ab0def93eb8d4d4b1b444'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The MR-SAM, a long-range surface-to-air missile inducted into the Indian Air Force in 2022, is a joint project with:',
    'The MR-SAM (Barak-8) was developed in collaboration with Israel by the DRDO with Bharat Dynamics and Rafael, and was inducted into the IAF in 2022.',
    'medium',
    'DRDO',
    2022,
    'e0ba1db9bd8b280bcb00ba36e05eefd1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e0ba1db9bd8b280bcb00ba36e05eefd1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Russia'),
            ('B', 'France'),
            ('C', 'United States'),
            ('D', 'Israel')
           ) as v(label, option_text)
 where q.question_hash = 'e0ba1db9bd8b280bcb00ba36e05eefd1'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The Astra Mk-II, an air-to-air missile designed and developed indigenously by the DRDO, was inducted into the Indian Air Force in:',
    'Astra Mk-II, the Indian version of the R-77, was inducted into the Indian Air Force in September 2021, having been developed by the DRDO and the Defence Institute of Advanced Technology.',
    'medium',
    'DRDO',
    2021,
    'd0ac551f75528651c1d099a6035ea382'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd0ac551f75528651c1d099a6035ea382'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2019'),
            ('B', '2021'),
            ('C', '2023'),
            ('D', '2016')
           ) as v(label, option_text)
 where q.question_hash = 'd0ac551f75528651c1d099a6035ea382'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'Operation Shakti, India''s first anti-satellite (ASAT) mission, was conducted in:',
    'Operation Shakti on 27 March 2019 used a modified PSLV-AS4 to destroy a target satellite in low earth orbit, making India the fourth country to demonstrate an ASAT capability.',
    'easy',
    'DRDO',
    2019,
    'fdb8d18d23e4fc539e5c83af71cb0190'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'fdb8d18d23e4fc539e5c83af71cb0190'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'March 2017'),
            ('B', 'June 2015'),
            ('C', 'March 2019'),
            ('D', 'July 2019')
           ) as v(label, option_text)
 where q.question_hash = 'fdb8d18d23e4fc539e5c83af71cb0190'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The Kudankulam Nuclear Power Plant in Tamil Nadu uses reactor units imported from:',
    'Kudankulam, India''s largest nuclear power station, uses Russian VVER-1000 units supplied by Atomstroyexport, with six units of 1,000 MW each approved by the Atomic Energy Commission.',
    'medium',
    'Standard Reference',
    null,
    '2a8b0a281bab3e49f8024605ed760070'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '2a8b0a281bab3e49f8024605ed760070'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'USA'),
            ('B', 'South Korea'),
            ('C', 'Russia'),
            ('D', 'France')
           ) as v(label, option_text)
 where q.question_hash = '2a8b0a281bab3e49f8024605ed760070'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The Prototype Fast Breeder Reactor (PFBR), India''s first breeder reactor, is being built at:',
    'The 500 MW PFBR is being built by the Bhabha Atomic Research Centre at Kalpakkam, and is designed to breed uranium-239 plutonium-239 for use in fast reactors.',
    'medium',
    'BARC',
    null,
    '631e1e203ea3ef4edd32f4e79e135860'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '631e1e203ea3ef4edd32f4e79e135860'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kalpakkam'),
            ('B', 'Tarapur'),
            ('C', 'Rajasthan'),
            ('D', 'Kudankulam')
           ) as v(label, option_text)
 where q.question_hash = '631e1e203ea3ef4edd32f4e79e135860'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The three elements of India''s nuclear triad are:',
    'India''s nuclear triad consists of the land-based Prithvi missiles, the air-launched Agni family and the sea-based K-15 and K-4 carried by the nuclear-powered submarine INS Arihant.',
    'medium',
    'Standard Reference',
    null,
    '2b435007c1f294c2f82404a3bc86bde8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '2b435007c1f294c2f82404a3bc86bde8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Submarine INS Chakra, aircraft Tejas and missile Prithvi'),
            ('B', 'Nuclear reactors, bombs and missiles'),
            ('C', 'Agni, Akash and BrahMos'),
            ('D', 'Land-based Prithvi, air-based Agni and sea-based Arihant')
           ) as v(label, option_text)
 where q.question_hash = '2b435007c1f294c2f82404a3bc86bde8'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The Small Satellite Launch Vehicle (SSLV) of ISRO made its first successful orbital flight in:',
    'The SSLV completed its first successful development flight on 28 August 2023 from Sriharikota, carrying two satellites to orbit and opening a new market for small satellite launches.',
    'medium',
    'ISRO',
    2023,
    '7847b816df1e4f9264d59955a79529ef'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '7847b816df1e4f9264d59955a79529ef'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'June 2024'),
            ('B', 'August 2023'),
            ('C', 'July 2022'),
            ('D', 'November 2023')
           ) as v(label, option_text)
 where q.question_hash = '7847b816df1e4f9264d59955a79529ef'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The LVM3 (GSLV Mk III) rocket, which launched the Mars Orbiter Mission and Aditya-L1, uses a cryogenic engine developed by:',
    'The LVM3''s upper stage uses a cryogenic propellant engine developed by the Space Propulsion Centre at Thiruvananthapuram, first flown with the 2014 Mars Orbiter Mission.',
    'medium',
    'ISRO',
    null,
    '554d14b063f9addea9453e510ce0e9d6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '554d14b063f9addea9453e510ce0e9d6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Indian Institute of Science'),
            ('B', 'ISRO''s Space Propulsion Centre'),
            ('C', 'DRDO'),
            ('D', 'Bharat Dynamics')
           ) as v(label, option_text)
 where q.question_hash = '554d14b063f9addea9453e510ce0e9d6'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The Union Cabinet approved the revised ''Space Policy'' for the country in:',
    'The Space Policy 2023, approved by the Cabinet in April 2023, replaced the 2020 policy and created a predictable framework for private sector participation in space activities.',
    'medium',
    'PIB',
    2023,
    'fa9accdb74c90ec46cd30d36dc336b14'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'fa9accdb74c90ec46cd30d36dc336b14'
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
 where q.question_hash = 'fa9accdb74c90ec46cd30d36dc336b14'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The ''NewSpace'' policy, which created an authorisation route for private entities to operate in space, was approved in:',
    'The NewSpace policy was approved in 2022 and operationalised through IN-SPACe, allowing private companies to engage in space activities through a single-window authorisation mechanism.',
    'hard',
    'PIB',
    2022,
    '0ed1182027ad75b7de55da67bb6b80b0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '0ed1182027ad75b7de55da67bb6b80b0'
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
 where q.question_hash = '0ed1182027ad75b7de55da67bb6b80b0'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'ISRO''s first space debris management policy was approved in:',
    'The Space Debris Management Policy 2022 mandated mitigation measures for satellite operators, including passivation, orbit-raising and the disposal of satellites at the end of their mission life.',
    'hard',
    'PIB',
    2022,
    'a9b6de12442ebc85d676ce8e427c1e08'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a9b6de12442ebc85d676ce8e427c1e08'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2023'),
            ('B', '2020'),
            ('C', '2021'),
            ('D', '2022')
           ) as v(label, option_text)
 where q.question_hash = 'a9b6de12442ebc85d676ce8e427c1e08'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'In the NISAR mission, NASA and ISRO have agreed that:',
    'Under the NISAR mission, NASA is providing the synthetic aperture radar payload and ISRO is building and operating the spacecraft, which will be launched from India, making it the first joint NASA-ISRO mission of this kind.',
    'hard',
    'NASA',
    null,
    'df7661a21c8b50a968dd70afb410e5f7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'df7661a21c8b50a968dd70afb410e5f7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'ISRO will provide the launch vehicle and NASA will operate the mission'),
            ('B', 'Both agencies will operate separate spacecraft in a formation'),
            ('C', 'NASA will build the satellite and ISRO will launch it from the United States'),
            ('D', 'NASA will provide the payload on an ISRO-built satellite launched from India')
           ) as v(label, option_text)
 where q.question_hash = 'df7661a21c8b50a968dd70afb410e5f7'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The Chandrayaan-2 orbiter detected the presence of water molecules on the lunar surface in:',
    'In October 2020, the Chandrayaan-2 orbiter''s Moon Mineralogy Mapper confirmed the presence of water molecules on the sunlit lunar surface, a finding later corroborated by Chandrayaan-3.',
    'medium',
    'ISRO',
    2020,
    'f884bced928d1dad9ad86a67e8adc0df'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f884bced928d1dad9ad86a67e8adc0df'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2018'),
            ('B', '2020'),
            ('C', '2019'),
            ('D', '2021')
           ) as v(label, option_text)
 where q.question_hash = 'f884bced928d1dad9ad86a67e8adc0df'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The humanoid robot Vyomitra that ISRO unveiled in 2023 was designed to:',
    'Vyomitra is a female humanoid robot developed by ISRO to test the modules and systems of the Gaganyaan human spaceflight programme, including the ability to perform human-like tasks in microgravity conditions.',
    'medium',
    'ISRO',
    2023,
    '34fcdd105f03a8aaf3a9d18f46640696'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '34fcdd105f03a8aaf3a9d18f46640696'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Test the human spaceflight systems and demonstrate human-like tasks in space conditions'),
            ('B', 'Operate deep-sea submersibles'),
            ('C', 'Predict monsoon patterns'),
            ('D', 'Survey the seafloor')
           ) as v(label, option_text)
 where q.question_hash = '34fcdd105f03a8aaf3a9d18f46640696'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The Indian SARS-CoV-2 Genomic Sequencing Consortium (INSACOG) was set up in:',
    'INSACOG was formed in January 2021 under the ICMR to sequence the SARS-CoV-2 genome in India, monitor circulating variants and assist the national COVID-19 response.',
    'medium',
    'ICMR',
    2021,
    '97f14608400214eca1e2e955ef4fe767'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '97f14608400214eca1e2e955ef4fe767'
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
 where q.question_hash = '97f14608400214eca1e2e955ef4fe767'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The ''One Health Mission'', announced in the Union Budget for 2023-24, is intended to:',
    'The One Health Mission brings together human, animal and environmental health under one framework, with coordinated surveillance for zoonotic diseases such as avian influenza and pandemic preparedness.',
    'medium',
    'PIB',
    2024,
    '6e0f72a6a24b19e465db315dca1d80b2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '6e0f72a6a24b19e465db315dca1d80b2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Create a universal health insurance scheme'),
            ('B', 'Launch a nationwide compulsory vaccination drive'),
            ('C', 'Set up a single national university for medical research'),
            ('D', 'Address the interconnected health of humans, animals and the environment through coordinated surveillance and research')
           ) as v(label, option_text)
 where q.question_hash = '6e0f72a6a24b19e465db315dca1d80b2'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'NexCAR19, approved by the Central Drugs Standard Control Organisation in 2023, is:',
    'NexCAR19, developed by the Indian Institute of Immuno Biology in Bengaluru, is a CAR-T cell therapy for relapsed or refractory B-cell malignancies and was the first such therapy approved in India.',
    'hard',
    'CDSCO',
    2023,
    '4014ac580075e683ed186b4fab8b3a77'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '4014ac580075e683ed186b4fab8b3a77'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A biosimilar monoclonal antibody for arthritis'),
            ('B', 'An mRNA vaccine for tuberculosis'),
            ('C', 'A CAR-T cell therapy for cancer, the first such therapy approved in India'),
            ('D', 'A vaccine for dengue')
           ) as v(label, option_text)
 where q.question_hash = '4014ac580075e683ed186b4fab8b3a77'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The National Supercomputing Mission was launched in which year?',
    'The National Supercomputing Mission was launched in 2015 to build indigenous supercomputing systems of up to 100 petaflops, with the PARAM series developed by the Centre for Development of Advanced Computing.',
    'medium',
    'PIB',
    2015,
    'ccc83f5aa74e85e081486e7f0d9a6831'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ccc83f5aa74e85e081486e7f0d9a6831'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2015'),
            ('B', '2018'),
            ('C', '2020'),
            ('D', '2012')
           ) as v(label, option_text)
 where q.question_hash = 'ccc83f5aa74e85e081486e7f0d9a6831'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The India-US 2+2 Dialogue at the level of foreign and defence ministers was held in September 2023 in connection with:',
    'The India-US 2+2 Dialogue and the third Quad Leaders'' Summit in Washington in September 2023 took place during Prime Minister Modi''s visit to the United States, focused on the strategic partnership and the Quad.',
    'medium',
    'PIB',
    2023,
    'c66ec7a33740987f0568e55a77c153dd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'c66ec7a33740987f0568e55a77c153dd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The WTO Ministerial Conference in Geneva'),
            ('B', 'Prime Minister Modi''s visit to the United States'),
            ('C', 'The G20 Summit in New Delhi'),
            ('D', 'The Quad Leaders'' Summit in Washington in 2021')
           ) as v(label, option_text)
 where q.question_hash = 'c66ec7a33740987f0568e55a77c153dd'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The 123 Agreement between India and the United States, signed in 2008, provided for:',
    'The 123 Agreement, an implementing agreement under the US Atomic Energy Act, allowed India to obtain nuclear fuel and equipment from American suppliers and enabled US companies to supply reactors and fuel to India.',
    'medium',
    'Standard Reference',
    null,
    '2fb24b7326e08cb2734389069065e95c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '2fb24b7326e08cb2734389069065e95c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A joint nuclear weapons test'),
            ('B', 'The sale of Indian coal to the United States'),
            ('C', 'The creation of a joint nuclear command'),
            ('D', 'Cooperation in nuclear energy and civil nuclear trade')
           ) as v(label, option_text)
 where q.question_hash = '2fb24b7326e08cb2734389069065e95c'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'In 2020, India signed a contract with France for the supply of:',
    'India signed a contract with Dassault Aviation in 2020 for 36 Rafale multirole fighters, which were inducted into the Indian Air Force from 2022 under the ''Rafale, the Game Changer'' agreement.',
    'easy',
    'PIB',
    2020,
    '840b99b2be039f8957be43b73227ff59'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '840b99b2be039f8957be43b73227ff59'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Two nuclear power reactor units'),
            ('B', '36 Apache helicopters'),
            ('C', '36 Rafale multirole fighter jets'),
            ('D', 'Six Scorpene submarines')
           ) as v(label, option_text)
 where q.question_hash = '840b99b2be039f8957be43b73227ff59'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The India-France Roadmap for the Environment was signed at the 14th India-France Summit held in:',
    'The India-France Roadmap for the Environment was signed at the 14th India-France Summit in March 2021, when the two countries also adopted a Joint Strategic Vision for the Indian Ocean Region.',
    'medium',
    'PIB',
    2021,
    '16c6b8c9d9781bac71c5fdf0ed01dddf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '16c6b8c9d9781bac71c5fdf0ed01dddf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'January 2018'),
            ('B', 'March 2021'),
            ('C', 'October 2018'),
            ('D', 'September 2023')
           ) as v(label, option_text)
 where q.question_hash = '16c6b8c9d9781bac71c5fdf0ed01dddf'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'In September 2023, the Indian Prime Minister and the German Chancellor signed a joint declaration on the:',
    'Prime Minister Modi and Chancellor Scholz signed a joint declaration on the ''Blue Earth Compact'' during the fourth Indo-German Partnership Summit in New Delhi in September 2023, covering climate and ocean cooperation.',
    'medium',
    'PIB',
    2023,
    '89e63ad39f6e848ff4b11833eef91959'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '89e63ad39f6e848ff4b11833eef91959'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Blue Earth Compact'),
            ('B', 'Green Hydrogen Alliance'),
            ('C', 'Global Partnership for Renewables'),
            ('D', 'Indo-Pacific Oceans Initiative')
           ) as v(label, option_text)
 where q.question_hash = '89e63ad39f6e848ff4b11833eef91959'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The India-Japan 2+2 Ministerial Dialogue, the first such meeting in nine years, was held in March 2022:',
    'The 11th India-Japan 2+2 Ministerial Dialogue was held in Tokyo in March 2022, the first such meeting since 2013, and the two sides adopted a Vision Statement for the 10th anniversary of the Act East partnership.',
    'hard',
    'PIB',
    2022,
    '305ccec06859ad4ba61e9f63a687fe8c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '305ccec06859ad4ba61e9f63a687fe8c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'In Tokyo, at the level of foreign and defence ministers'),
            ('B', 'In New Delhi, at the level of prime ministers'),
            ('C', 'In Osaka, at the level of commerce ministers'),
            ('D', 'In Kyoto, on the sidelines of the Quad summit')
           ) as v(label, option_text)
 where q.question_hash = '305ccec06859ad4ba61e9f63a687fe8c'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The Comprehensive Economic and Trade Agreement between India and the United Kingdom was signed in:',
    'The India-UK CEPA was signed on 28 July 2022 and came into force in 2022, cutting bilateral tariffs on over 96 per cent of trade and covering services, investment and procurement.',
    'medium',
    'PIB',
    2022,
    '9ba1bdbf1ebef85d6d411f31a9a1fb42'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '9ba1bdbf1ebef85d6d411f31a9a1fb42'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'September 2022'),
            ('B', 'July 2022'),
            ('C', 'July 2021'),
            ('D', 'March 2023')
           ) as v(label, option_text)
 where q.question_hash = '9ba1bdbf1ebef85d6d411f31a9a1fb42'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The Comprehensive Economic and Trade Agreement between India and Spain was signed in which year?',
    'The India-Spain CETA was signed in May 2024, making it the European Union''s first comprehensive free trade agreement with an individual member state and India''s first such agreement with a European country.',
    'medium',
    'PIB',
    2024,
    'f1e823618658e0b7d44524403e29c1b9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'f1e823618658e0b7d44524403e29c1b9'
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
 where q.question_hash = 'f1e823618658e0b7d44524403e29c1b9'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The ''Pact for the Future'', adopted at the United Nations General Assembly in September 2024, included a commitment to:',
    'The Pact for the Future, adopted by the General Assembly in September 2024, reaffirmed the commitment to reform the Security Council, make it more representative and legitimate, and strengthen the international financial architecture for development.',
    'medium',
    'United Nations',
    2024,
    '76b0bc17713c61a294b6a6628e65eda4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '76b0bc17713c61a294b6a6628e65eda4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Establish a global carbon tax'),
            ('B', 'Create a new global human rights court'),
            ('C', 'Disband the Peacekeeping Department'),
            ('D', 'Reform the Security Council and make it more representative, inclusive and accountable')
           ) as v(label, option_text)
 where q.question_hash = '76b0bc17713c61a294b6a6628e65eda4'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The first Voice of Global South Summit was hosted by India in which year?',
    'India hosted the first Voice of Global South Summit in New Delhi in January 2023 as a precursor to the G20 summit, with participation from more than 120 countries.',
    'medium',
    'PIB',
    2023,
    '0562efd5bb9c96e1310717d8ebb3f062'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '0562efd5bb9c96e1310717d8ebb3f062'
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
 where q.question_hash = '0562efd5bb9c96e1310717d8ebb3f062'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The 17th General Review of Quotas of the International Monetary Fund concluded in 2023 with:',
    'The 17th General Review of Quotas, completed in December 2023, increased the IMF''s quota resources by 50 per cent and the share of emerging market and developing countries in the governance structure by 50 per cent.',
    'hard',
    'IMF',
    2023,
    'b1a16cdf65c530b114d305edb0b3f44f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'b1a16cdf65c530b114d305edb0b3f44f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A shift of voting power entirely to advanced economies'),
            ('B', 'No change in quotas'),
            ('C', 'A 50 per cent increase in quotas and a 50 per cent increase in the IMF''s governance share for emerging markets and developing countries'),
            ('D', 'A 25 per cent increase in quotas')
           ) as v(label, option_text)
 where q.question_hash = 'b1a16cdf65c530b114d305edb0b3f44f'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The 57th Annual Meeting of the Asian Development Bank was held in 2024 at:',
    'The 57th ADB Annual Meeting was held in Manila in April 2024, with the theme ''Capital for All'' emphasising capital for climate action and food security.',
    'hard',
    'ADB',
    2024,
    '0e7149d264ebd1d3a488fd456dbce933'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '0e7149d264ebd1d3a488fd456dbce933'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bangkok'),
            ('B', 'Manila'),
            ('C', 'New Delhi'),
            ('D', 'Jakarta')
           ) as v(label, option_text)
 where q.question_hash = '0e7149d264ebd1d3a488fd456dbce933'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The seventh Ministerial Conference of the World Trade Organization was held in February 2024 at:',
    'WTO MC7 was held in Geneva from 26 February to 1 March 2024, with a focus on trade facilitation, e-commerce and the crisis in food security, following the earlier MC13 in Abu Dhabi.',
    'medium',
    'WTO',
    2024,
    '19e12e53167e7223b5a5a5af865792c4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '19e12e53167e7223b5a5a5af865792c4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Abu Dhabi'),
            ('B', 'Nairobi'),
            ('C', 'Doha'),
            ('D', 'Geneva')
           ) as v(label, option_text)
 where q.question_hash = '19e12e53167e7223b5a5a5af865792c4'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'India signed the Paris Agreement on 2 April 2016 and ratified it on:',
    'India signed the Paris Agreement on 2 April 2016 and deposited its instrument of ratification with the UNFCCC on 2 October 2016, and has never formally withdrawn from the agreement.',
    'medium',
    'UNFCCC',
    2016,
    '215a078398cd076215e99a1bfc5d7011'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '215a078398cd076215e99a1bfc5d7011'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2 October 2016'),
            ('B', '26 September 2015'),
            ('C', '2 December 2018'),
            ('D', '22 April 2016')
           ) as v(label, option_text)
 where q.question_hash = '215a078398cd076215e99a1bfc5d7011'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The SAGAR vision of India''s engagement with the Indian Ocean Rim was unveiled at the first India Ocean Rim Association summit held in:',
    'Prime Minister Modi unveiled the SAGAR (Security and Growth for All in the Region) vision at the first IORA Leaders'' Summit in Goa in November 2015.',
    'medium',
    'PIB',
    2015,
    '24ad08f533225fe9442e1cc608404728'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '24ad08f533225fe9442e1cc608404728'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Male, in 2019'),
            ('B', 'Goa, in 2015'),
            ('C', 'Jakarta, in 2013'),
            ('D', 'Colombo, in 2017')
           ) as v(label, option_text)
 where q.question_hash = '24ad08f533225fe9442e1cc608404728'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The third India-Africa Forum Summit was held in New Delhi in which year?',
    'The third India-Africa Forum Summit was hosted in New Delhi in October 2023, with the theme ''Towards a Resilient and Regenerative Africa'' and more than 40 heads of state in attendance.',
    'medium',
    'PIB',
    2023,
    '28a1e8107bd5e25e18d3f3911364d2b7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '28a1e8107bd5e25e18d3f3911364d2b7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2015'),
            ('B', '2018'),
            ('C', '2023'),
            ('D', '2021')
           ) as v(label, option_text)
 where q.question_hash = '28a1e8107bd5e25e18d3f3911364d2b7'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The 19th Non-Aligned Movement Summit was held in January 2024 at:',
    'The 19th Non-Aligned Movement Summit was hosted by Uganda in Kampala in January 2024, under the theme ''Delivering Solidarity, Equality and Sustainability'', marking the return of the grouping to its African roots.',
    'medium',
    'NAM Secretariat',
    2024,
    'b3ffec1e1fa275dc4280675038de0693'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'b3ffec1e1fa275dc4280675038de0693'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Baku, Azerbaijan'),
            ('B', 'Nairobi, Kenya'),
            ('C', 'Belgrade, Serbia'),
            ('D', 'Kampala, Uganda')
           ) as v(label, option_text)
 where q.question_hash = 'b3ffec1e1fa275dc4280675038de0693'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The 22nd ASEAN-India Summit was held in New Delhi in which year?',
    'The 22nd ASEAN-India Summit was held in New Delhi in October 2023, and 2023 was declared the ASEAN-India Year of Friendship, commemorating 20 years of the ASEAN-India Partnership.',
    'medium',
    'PIB',
    2023,
    '8831454a8827631ad8a371c90f1d2305'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '8831454a8827631ad8a371c90f1d2305'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2021'),
            ('B', '2022'),
            ('C', '2023'),
            ('D', '2024')
           ) as v(label, option_text)
 where q.question_hash = '8831454a8827631ad8a371c90f1d2305'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The Articles of Agreement of the New Development Bank came into force on:',
    'The New Development Bank, established by the BRICS states with an initial authorised capital of USD 100 billion, came into being when its Articles of Agreement entered into force on 15 July 2015.',
    'hard',
    'NDB',
    2015,
    'd14c80ec196bf6c44c7f9d32deadc8f1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'd14c80ec196bf6c44c7f9d32deadc8f1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '15 July 2014'),
            ('B', '1 January 2016'),
            ('C', '7 June 2014'),
            ('D', '15 July 2015')
           ) as v(label, option_text)
 where q.question_hash = 'd14c80ec196bf6c44c7f9d32deadc8f1'
on conflict (question_id, label) do nothing;

-- current_affairs | indices-and-reports | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'indices-and-reports'),
    'The ''Human Development Index'' for India in the 2021-22 Human Development Report was based on the data of the year:',
    'The Human Development Report 2021-22, released in March 2022, used the 2019 data for the human development index because of the pandemic related data gaps.',
    'medium',
    'UNDP Human Development Report 2021-22',
    2022,
    'd4b462ede6228ce3a34f09f77f9f59da'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd4b462ede6228ce3a34f09f77f9f59da'
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
 where q.question_hash = 'd4b462ede6228ce3a34f09f77f9f59da'
on conflict (question_id, label) do nothing;

-- current_affairs | indices-and-reports | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'indices-and-reports'),
    'The ''Global Hunger Index'' 2022 placed India in the rank of:',
    'In the Global Hunger Index 2022 India was ranked 131st out of the 136 countries covered, with a score of 16.8.',
    'medium',
    'Global Hunger Index 2022',
    2022,
    '54ce39e87a94b032543e1c7823aebe4d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '54ce39e87a94b032543e1c7823aebe4d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '131st'),
            ('B', '107th'),
            ('C', '104th'),
            ('D', '120th')
           ) as v(label, option_text)
 where q.question_hash = '54ce39e87a94b032543e1c7823aebe4d'
on conflict (question_id, label) do nothing;

-- current_affairs | indices-and-reports | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'indices-and-reports'),
    'The ''Global Innovation Index'' 2022 placed India in the rank of:',
    'In the Global Innovation Index 2022 India was ranked 47th among 132 economies, in the 2023 index it improved to 43rd.',
    'medium',
    'WIPO Global Innovation Index',
    2022,
    'e1db0baf2b64a667fb7ea0d0def52d1b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e1db0baf2b64a667fb7ea0d0def52d1b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '35th'),
            ('B', '47th'),
            ('C', '56th'),
            ('D', '25th')
           ) as v(label, option_text)
 where q.question_hash = 'e1db0baf2b64a667fb7ea0d0def52d1b'
on conflict (question_id, label) do nothing;

-- current_affairs | indices-and-reports | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'indices-and-reports'),
    'The ''World Air Quality Report'' 2022 by IQAir placed India in the rank of:',
    'In the 2022 World Air Quality Report, India was ranked between 101 and 150 among the countries with the cleanest air.',
    'medium',
    'IQAir World Air Quality Report',
    2022,
    '8a49d73a554136b768e91ab83d993357'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '8a49d73a554136b768e91ab83d993357'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '50th'),
            ('B', '60th'),
            ('C', '101st to 150th'),
            ('D', '1st to 10th')
           ) as v(label, option_text)
 where q.question_hash = '8a49d73a554136b768e91ab83d993357'
on conflict (question_id, label) do nothing;

-- current_affairs | indices-and-reports | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'indices-and-reports'),
    'The ''World Happiness Report'' 2022 was based on the survey data of the year:',
    'The World Happiness Report 2022 used the Gallup World Poll data of 2021 and India was ranked at 140th.',
    'hard',
    'World Happiness Report 2022',
    2022,
    '7f2828b7983a3bb9e68139d1743b66c7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '7f2828b7983a3bb9e68139d1743b66c7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2021'),
            ('B', '2022'),
            ('C', '2019'),
            ('D', '2020')
           ) as v(label, option_text)
 where q.question_hash = '7f2828b7983a3bb9e68139d1743b66c7'
on conflict (question_id, label) do nothing;

-- current_affairs | indices-and-reports | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'indices-and-reports'),
    'The ''Ease of Doing Business'' ranking of India before the World Bank discontinued the report in 2021 was:',
    'In the Doing Business 2020 report India was ranked 63rd, and it was the first time it had entered the top 100, and the report was discontinued in 2021.',
    'medium',
    'World Bank Doing Business Report',
    2020,
    '9931f93546e4eaa4e363d8e971b0e504'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '9931f93546e4eaa4e363d8e971b0e504'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '116th'),
            ('B', '139th'),
            ('C', '63rd'),
            ('D', '85th')
           ) as v(label, option_text)
 where q.question_hash = '9931f93546e4eaa4e363d8e971b0e504'
on conflict (question_id, label) do nothing;

-- current_affairs | indices-and-reports | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'indices-and-reports'),
    'The ''Press Freedom Index'' 2022 by Reporters Without Borders placed India in the rank of:',
    'In the 2022 Press Freedom Index India was ranked 142nd, and in 2021 it was 142nd as well, with the report published on 3 May, the World Press Freedom Day.',
    'medium',
    'Reporters Without Borders',
    2022,
    'bbc0adbe836e554fa7c21d6892b8ab98'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'bbc0adbe836e554fa7c21d6892b8ab98'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '142nd'),
            ('B', '150th'),
            ('C', '120th'),
            ('D', '161st')
           ) as v(label, option_text)
 where q.question_hash = 'bbc0adbe836e554fa7c21d6892b8ab98'
on conflict (question_id, label) do nothing;

-- current_affairs | indices-and-reports | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'indices-and-reports'),
    'The ''Global Gender Gap Report'' 2022 of the World Economic Forum ranked India at:',
    'In the Global Gender Gap Report 2022 India was ranked 129th, and it was the only country in the bottom 150 of the countries covered.',
    'medium',
    'World Economic Forum',
    2022,
    'f79c7fa044a8dad7fe51e85b53e48638'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f79c7fa044a8dad7fe51e85b53e48638'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '151st'),
            ('B', '129th'),
            ('C', '135th'),
            ('D', '112th')
           ) as v(label, option_text)
 where q.question_hash = 'f79c7fa044a8dad7fe51e85b53e48638'
on conflict (question_id, label) do nothing;

-- current_affairs | indices-and-reports | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'indices-and-reports'),
    'The ''Forest Survey of India'' reported that as per the 2021 report, the forest and tree cover in India was about:',
    'The India State of Forest Report 2021 reported the forest and tree cover of 21.76 per cent of the geographical area, an increase of 1.89 percentage points over 2019.',
    'medium',
    'India State of Forest Report 2021',
    2021,
    '557e3c4a942712a5096b70f182bc479d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '557e3c4a942712a5096b70f182bc479d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '25.17 per cent of the geographical area'),
            ('B', '18.33 per cent of the geographical area'),
            ('C', '29.48 per cent of the geographical area'),
            ('D', '21.76 per cent of the geographical area')
           ) as v(label, option_text)
 where q.question_hash = '557e3c4a942712a5096b70f182bc479d'
on conflict (question_id, label) do nothing;

-- current_affairs | indices-and-reports | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'indices-and-reports'),
    'The ''Multidimensional Poverty Index'' 2022 of the UNDP and the OPHI was based on the survey of:',
    'The Global MPI 2022 was based on the household surveys of 2019-20 conducted in India and it covered the deprivation in the health, the education and the living standards.',
    'hard',
    'UNDP Global MPI 2022',
    2022,
    '57149014ce99a2e595454ff7eb6f992b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '57149014ce99a2e595454ff7eb6f992b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2021'),
            ('B', '2020-21'),
            ('C', '2019-20'),
            ('D', '2015-16')
           ) as v(label, option_text)
 where q.question_hash = '57149014ce99a2e595454ff7eb6f992b'
on conflict (question_id, label) do nothing;

-- current_affairs | indices-and-reports | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'indices-and-reports'),
    'The ''SDG India Index'' of the NITI Aayog for the year 2021-22 was based on the data of the year:',
    'The SDG India Index 2021-22, prepared with the help of the Oxford Policy and Human Development Centre, used the district data of 2018-19.',
    'hard',
    'NITI Aayog SDG India Index',
    2022,
    '17eee47ca19fd204d6888575b0c22331'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '17eee47ca19fd204d6888575b0c22331'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2020-21'),
            ('B', '2021-22'),
            ('C', '2019-20'),
            ('D', '2018-19')
           ) as v(label, option_text)
 where q.question_hash = '17eee47ca19fd204d6888575b0c22331'
on conflict (question_id, label) do nothing;

-- current_affairs | indices-and-reports | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'indices-and-reports'),
    'The ''Environmental Performance Index'' 2022 of Yale and Columbia placed India at the rank of:',
    'In the Environmental Performance Index 2022 India was ranked 180th among 180 countries, and it was the second lowest in the air quality category.',
    'hard',
    'Yale Environmental Performance Index',
    2022,
    '93274f2cbe9154f4ee09d71021a20aad'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '93274f2cbe9154f4ee09d71021a20aad'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '110th'),
            ('B', '180th'),
            ('C', '150th'),
            ('D', '96th')
           ) as v(label, option_text)
 where q.question_hash = '93274f2cbe9154f4ee09d71021a20aad'
on conflict (question_id, label) do nothing;

-- current_affairs | indices-and-reports | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'indices-and-reports'),
    'The ''Global Peace Index'' 2022 placed India in the rank of:',
    'In the Global Peace Index 2022 India was ranked 135th, a drop from 126th in 2021, and in 2023 it was 134th.',
    'hard',
    'Institute for Economics and Peace',
    2022,
    'f1efd440903d5c43e74f7b280f08afc4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f1efd440903d5c43e74f7b280f08afc4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '135th'),
            ('B', '126th'),
            ('C', '150th'),
            ('D', '88th')
           ) as v(label, option_text)
 where q.question_hash = 'f1efd440903d5c43e74f7b280f08afc4'
on conflict (question_id, label) do nothing;

-- current_affairs | indices-and-reports | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'indices-and-reports'),
    'The ''Democracy Index'' of the Economist Intelligence Unit for 2021 placed India at:',
    'In the Democracy Index 2021 India was ranked 48th with the score of 7.18, and India was classified as a ''flawed democracy''.',
    'medium',
    'Economist Intelligence Unit',
    2021,
    'ea4fbfa848441366996a169fbe97bffd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'ea4fbfa848441366996a169fbe97bffd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '6th'),
            ('B', '29th'),
            ('C', '48th'),
            ('D', '77th')
           ) as v(label, option_text)
 where q.question_hash = 'ea4fbfa848441366996a169fbe97bffd'
on conflict (question_id, label) do nothing;

-- current_affairs | indices-and-reports | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'indices-and-reports'),
    'The ''World Competitiveness Ranking'' of the World Economic Forum for 2021-22 placed India at:',
    'In the World Competitiveness Ranking 2021-22 India was ranked 56th among 140 economies, and in 2022-23 it improved to 60th.',
    'hard',
    'World Economic Forum',
    2022,
    '479b395d2b5cd64d49787ca8bb04ad3c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '479b395d2b5cd64d49787ca8bb04ad3c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '60th'),
            ('B', '56th'),
            ('C', '45th'),
            ('D', '80th')
           ) as v(label, option_text)
 where q.question_hash = '479b395d2b5cd64d49787ca8bb04ad3c'
on conflict (question_id, label) do nothing;

-- current_affairs | indices-and-reports | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'indices-and-reports'),
    'The ''World Energy Outlook'' report of the IEA for 2021 focused on:',
    'The World Energy Outlook 2021 was the special report on the net zero emissions by 2050, and it was the first such report by the IEA.',
    'medium',
    'International Energy Agency',
    2021,
    'd4a7674d30fb23eca66a82ebbf616e32'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'd4a7674d30fb23eca66a82ebbf616e32'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The oil prices'),
            ('B', 'The nuclear power'),
            ('C', 'The coal production in India'),
            ('D', 'The energy sector and the net zero emissions pathway')
           ) as v(label, option_text)
 where q.question_hash = 'd4a7674d30fb23eca66a82ebbf616e32'
on conflict (question_id, label) do nothing;

-- current_affairs | indices-and-reports | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'indices-and-reports'),
    'The ''Economic Survey 2021-22'' was titled:',
    'The Economic Survey 2021-22 was titled ''Time to Move'', and it was presented on 31 January 2022.',
    'easy',
    'Economic Survey 2021-22',
    2022,
    'd1ee70d1fec96b3f99edc8cc900cd148'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd1ee70d1fec96b3f99edc8cc900cd148'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'In the Union Budget 2021'),
            ('B', 'The Budget''s Fiscal Policy'),
            ('C', 'Time to Move'),
            ('D', 'India''s Growth Roadmap')
           ) as v(label, option_text)
 where q.question_hash = 'd1ee70d1fec96b3f99edc8cc900cd148'
on conflict (question_id, label) do nothing;

-- current_affairs | indices-and-reports | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'indices-and-reports'),
    'The ''Economic Survey 2020-21'' was titled:',
    'The Economic Survey 2020-21 was titled ''In the Union Budget 2021'' and it was released on 29 January 2021.',
    'medium',
    'Economic Survey 2020-21',
    2021,
    'c65f29caa89455acecf447ac66d1bc53'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'c65f29caa89455acecf447ac66d1bc53'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'In the Union Budget 2021'),
            ('B', 'Reinvigorating the Financial Sector'),
            ('C', 'Strengthening the Demand'),
            ('D', 'Time to Move')
           ) as v(label, option_text)
 where q.question_hash = 'c65f29caa89455acecf447ac66d1bc53'
on conflict (question_id, label) do nothing;

-- current_affairs | indices-and-reports | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'indices-and-reports'),
    'The ''Economic Survey 2019-20'' was titled:',
    'The Economic Survey 2019-20 was titled ''India''s Growth Roadmap'' and it was presented on 14 January 2020.',
    'medium',
    'Economic Survey 2019-20',
    2020,
    '6583b3b2ddd0d7f9053e4763316aa76e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '6583b3b2ddd0d7f9053e4763316aa76e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Time to Move'),
            ('B', 'The Future of India''s Services'),
            ('C', 'In the Union Budget 2021'),
            ('D', 'India''s Growth Roadmap')
           ) as v(label, option_text)
 where q.question_hash = '6583b3b2ddd0d7f9053e4763316aa76e'
on conflict (question_id, label) do nothing;

-- current_affairs | awards-and-honours | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'awards-and-honours'),
    'The ''Padma Awards'' are announced every year on:',
    'The Padma Awards, the civilian awards of the Government of India, are announced on 26 January every year along with the Republic Day honours.',
    'easy',
    'Ministry of Home Affairs',
    null,
    '4ade19a212ed038ebf638934d94ae7a2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '4ade19a212ed038ebf638934d94ae7a2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2 October'),
            ('B', 'Republic Day eve'),
            ('C', '26 January'),
            ('D', '15 August')
           ) as v(label, option_text)
 where q.question_hash = '4ade19a212ed038ebf638934d94ae7a2'
on conflict (question_id, label) do nothing;

-- current_affairs | awards-and-honours | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'awards-and-honours'),
    'The ''Bharat Ratna'' was first awarded in:',
    'The Bharat Ratna, instituted in 1954, was first conferred on Dr. Radhakrishnan, Dr. C. Rajagopalachari and Dr. S. Radhakrishnan, and it was the 1954 award to the philosopher Sarvepalli Radhakrishnan and C. Rajagopalachari.',
    'medium',
    'Ministry of Home Affairs',
    1954,
    '2a7fc1e3a8a06b89efae0ab28a3114b2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '2a7fc1e3a8a06b89efae0ab28a3114b2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1954'),
            ('B', '1952'),
            ('C', '1962'),
            ('D', '1950')
           ) as v(label, option_text)
 where q.question_hash = '2a7fc1e3a8a06b89efae0ab28a3114b2'
on conflict (question_id, label) do nothing;

-- current_affairs | awards-and-honours | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'awards-and-honours'),
    'The Nobel Prize in Literature for 2022 was awarded to:',
    'The Nobel Prize in Literature for 2022 was awarded to the Norwegian playwright Jon Fosse, and the 2021 prize went to Abdulrazak Gurnah.',
    'medium',
    'Nobel Foundation',
    2022,
    '1e156f06c68dad7dacfefba33c96a86b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '1e156f06c68dad7dacfefba33c96a86b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Annie Ernaux'),
            ('B', 'Jon Fosse'),
            ('C', 'Abdulrazak Gurnah'),
            ('D', 'Kazuo Ishiguro')
           ) as v(label, option_text)
 where q.question_hash = '1e156f06c68dad7dacfefba33c96a86b'
on conflict (question_id, label) do nothing;

-- current_affairs | awards-and-honours | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'awards-and-honours'),
    'The Nobel Peace Prize for 2022 was awarded to:',
    'The Nobel Peace Prize for 2022 was shared by Ales Bialiatski of Belarus and the Russian Human Rights Foundation, the Memorial and the Centre for Civil Liberties, while the 2021 prize went to Maria Ressa and Dmitry Muratov.',
    'medium',
    'Nobel Foundation',
    2022,
    '5ccb04d2d6f92e12277ec370fdd4de2c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '5ccb04d2d6f92e12277ec370fdd4de2c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Maria Ressa and Dmitry Muratov'),
            ('B', 'Wangari Maathai'),
            ('C', 'Ales Bialiatski and the Memorial and the Centre for Civil Liberties'),
            ('D', 'Abiy Ahmed and the Ethiopian Peace')
           ) as v(label, option_text)
 where q.question_hash = '5ccb04d2d6f92e12277ec370fdd4de2c'
on conflict (question_id, label) do nothing;

-- current_affairs | awards-and-honours | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'awards-and-honours'),
    'The Nobel Prize in Economic Sciences for 2022 was awarded to:',
    'The 2022 prize in Economic Sciences was awarded to Ben Bernanke, Douglas Diamond and Philip Dybvig for their work on the banks and the financial crises, while the 2023 prize went to Claudia Goldin, James Heckman and Michael Katz.',
    'hard',
    'Nobel Foundation',
    2022,
    'c30476511e66cda9695f83dc05af4834'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'c30476511e66cda9695f83dc05af4834'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Michael Kremer alone'),
            ('B', 'Ben Bernanke, Douglas Diamond and Philip Dybvig'),
            ('C', 'Claudia Goldin and James Heckman and Michael Katz'),
            ('D', 'Esther Duflo and Abhijit Banerjee and Michael Kremer')
           ) as v(label, option_text)
 where q.question_hash = 'c30476511e66cda9695f83dc05af4834'
on conflict (question_id, label) do nothing;

-- current_affairs | awards-and-honours | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'awards-and-honours'),
    'The Nobel Prize in Economic Sciences for 2023 was awarded to:',
    'Claudia Goldin, James Heckman and Michael Katz shared the 2023 prize for their empirical work on the inequality and the institutions.',
    'medium',
    'Nobel Foundation',
    2023,
    'e952eac54bcda1fdff3f40a4e04c3110'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e952eac54bcda1fdff3f40a4e04c3110'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Esther Duflo, Abhijit Banerjee and Michael Kremer'),
            ('B', 'The IPCC'),
            ('C', 'Ben Bernanke and Douglas Diamond and Philip Dybvig'),
            ('D', 'Claudia Goldin, James Heckman and Michael Katz')
           ) as v(label, option_text)
 where q.question_hash = 'e952eac54bcda1fdff3f40a4e04c3110'
on conflict (question_id, label) do nothing;

-- current_affairs | awards-and-honours | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'awards-and-honours'),
    'The Nobel Prize in Physics for 2022 was awarded to:',
    'The 2022 Physics prize went to Alain Aspect, John Clauser and Anton Zeilinger for the experiments with the entangled photons and the establishment of the violation of the Bell inequalities.',
    'medium',
    'Nobel Foundation',
    2022,
    '72a92c9508fea59eb5746d5478637521'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '72a92c9508fea59eb5746d5478637521'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Alain Aspect, John Clauser and Anton Zeilinger'),
            ('B', 'Klaus Hasselmann and Syukuro Manabe and Giorgio Parisi'),
            ('C', 'Didier Queloz and Michel Mayor and David Wineland'),
            ('D', 'Ashvin A. Parmar and K. Barry Sharpless and Richard F. Schrock')
           ) as v(label, option_text)
 where q.question_hash = '72a92c9508fea59eb5746d5478637521'
on conflict (question_id, label) do nothing;

-- current_affairs | awards-and-honours | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'awards-and-honours'),
    'The Nobel Prize in Chemistry for 2022 was awarded to:',
    'The 2022 Chemistry prize was awarded to Carolyn Bertozzi, Morten Meldal and Barry Sharpless for the development of the click chemistry and the bioorthogonal reactions, while the 2023 prize went to the discovery of the quantum dots and the synthesis of the quantum dots.',
    'hard',
    'Nobel Foundation',
    2022,
    'a674cbd271385cf3d4b0fd790ab9b652'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a674cbd271385cf3d4b0fd790ab9b652'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Carolyn Bertozzi alone'),
            ('B', 'Carolyn Bertozzi, Morten Meldal and Barry Sharpless for the click chemistry and the bioorthogonal chemistry'),
            ('C', 'Klaus Hasselmann and Syukuro Manabe'),
            ('D', 'The discovery of the CRISPR')
           ) as v(label, option_text)
 where q.question_hash = 'a674cbd271385cf3d4b0fd790ab9b652'
on conflict (question_id, label) do nothing;

-- current_affairs | awards-and-honours | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'awards-and-honours'),
    'The Nobel Prize in Physiology or Medicine for 2022 was awarded to:',
    'The 2022 Medicine prize was awarded to Katalin Karikó and Drew Weissman for their discoveries concerning the nucleoside base modifications that enabled the effective mRNA vaccines.',
    'medium',
    'Nobel Foundation',
    2022,
    '847d05f3f319260379946c0826d897e8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '847d05f3f319260379946c0826d897e8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Katalin Karikó and Drew Weissman for the nucleoside base modifications'),
            ('B', 'Harvey Alter and Michael Houghton and Charles Rice'),
            ('C', 'Kaelin and Ratcliffe and Semenza'),
            ('D', 'Svante Pääbo for the paleogenomics')
           ) as v(label, option_text)
 where q.question_hash = '847d05f3f319260379946c0826d897e8'
on conflict (question_id, label) do nothing;

-- current_affairs | awards-and-honours | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'awards-and-honours'),
    'The World Food Prize for 2022 was awarded to:',
    'The World Food Prize for 2022 was awarded to Modadugu Gupta of India and the CIMMYT for their work in the development of the quality seeds of the wheat, and the 2023 prize went to Ramesh Rajasingham and the Green Transformation Foundation of the United States.',
    'hard',
    'World Food Prize Foundation',
    2022,
    '7bd9586d7d96bfc248a23787e0cb8a8e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '7bd9586d7d96bfc248a23787e0cb8a8e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Lawrence H. Summers'),
            ('B', 'Bono and The Beast of the Brothers'),
            ('C', 'Cymcrare and Modadugu Gupta'),
            ('D', 'Ramesh Rajasingham and the Green Transformation Foundation')
           ) as v(label, option_text)
 where q.question_hash = '7bd9586d7d96bfc248a23787e0cb8a8e'
on conflict (question_id, label) do nothing;

-- current_affairs | awards-and-honours | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'awards-and-honours'),
    'The ''Right Livelihood Award'' for 2022 was given to:',
    'The Right Livelihood Award for 2022 was given to the Accept Education group of Myanmar, and the 2023 award went to the Campaign for Nuclear Disarmament, the Centre for Health and the Environment and the Brazilian movement for the rights of the people of the Amazon.',
    'hard',
    'Right Livelihood Foundation',
    2022,
    '8d2a4f3c773ad569e854e79768266482'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '8d2a4f3c773ad569e854e79768266482'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Greta Thunberg'),
            ('B', 'Amnesty International'),
            ('C', 'The Right Livelihood Foundation'),
            ('D', 'Clymrar and the Accept Education group')
           ) as v(label, option_text)
 where q.question_hash = '8d2a4f3c773ad569e854e79768266482'
on conflict (question_id, label) do nothing;

-- current_affairs | awards-and-honours | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'awards-and-honours'),
    'The ''Ramon Magsaysay Award'' for 2022 was given to:',
    'The Ramon Magsaysay Award for 2022 was given to Sandeep Pandey of the Climate of Change Trust, and the 2023 award went to the Seruan-Dek Project and the Ahilan Trust.',
    'hard',
    'Ramon Magsaysay Award Foundation',
    2022,
    '76f382173fe30e7f4f033e88730870c4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '76f382173fe30e7f4f033e88730870c4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sandeep Pandey and the Climate of Change Trust'),
            ('B', 'Sandeep Pandey and the Asianet and the MTF'),
            ('C', 'The Right Livelihood Award'),
            ('D', 'None')
           ) as v(label, option_text)
 where q.question_hash = '76f382173fe30e7f4f033e88730870c4'
on conflict (question_id, label) do nothing;

-- current_affairs | awards-and-honours | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'awards-and-honours'),
    'The ''Sahitya Akademi Award'' for 2022 in the English language was given to:',
    'Girish Karnad received the Sahitya Akademi Award for the English for his novel Yakshagana in 2022, and the 2021 award went to Manilal H. Patel for Audition.',
    'hard',
    'Sahitya Akademi',
    2022,
    'e9a7ce9a0651593eaa4583e6afefb77b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e9a7ce9a0651593eaa4583e6afefb77b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'K. Satchidanandan'),
            ('B', 'Vijay Tendulkar'),
            ('C', 'Girish Karnad for Yakshagana'),
            ('D', 'Manilal H. Patel for Audition')
           ) as v(label, option_text)
 where q.question_hash = 'e9a7ce9a0651593eaa4583e6afefb77b'
on conflict (question_id, label) do nothing;

-- current_affairs | awards-and-honours | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'awards-and-honours'),
    'The ''Jnanpith Award'' for 2022 was given to:',
    'The Jnanpith Award for 2022 was given to the Malayalam writer D. Murali and the Sanskrit scholar Jagadguru Rambhadracharya, and the 2021 award went to Nilamani Phookan for his poetry.',
    'hard',
    'Jnanpith',
    2022,
    '23638d43615545e1643047c7d1764506'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '23638d43615545e1643047c7d1764506'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Girish Karnad'),
            ('B', 'D. Murali and K. Satchidanandan'),
            ('C', 'Nilamani Phookan and Jagadguru Rambhadracharya'),
            ('D', 'Vijay Tendulkar')
           ) as v(label, option_text)
 where q.question_hash = '23638d43615545e1643047c7d1764506'
on conflict (question_id, label) do nothing;

-- current_affairs | awards-and-honours | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'awards-and-honours'),
    'The ''Dadasaheb Phalke Award'' for 2022 was given to:',
    'The Dadasaheb Phalke Award for 2022 was given to Waheeda Rehman for her contribution to Indian cinema, and the 2021 award went to Rajkummar Rao.',
    'medium',
    'Ministry of Information and Broadcasting',
    2022,
    'b888784b3856a82f45fd85b724b27a85'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'b888784b3856a82f45fd85b724b27a85'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rajkummar Rao'),
            ('B', 'Shekhar Kapur'),
            ('C', 'Waheeda Rehman'),
            ('D', 'Waheeda Rehman for the contribution to Indian cinema')
           ) as v(label, option_text)
 where q.question_hash = 'b888784b3856a82f45fd85b724b27a85'
on conflict (question_id, label) do nothing;

-- current_affairs | awards-and-honours | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'awards-and-honours'),
    'The ''National Film Award for the Best Feature Film'' of 2021 was given to:',
    'The National Film Award for the Best Feature Film at the 69th ceremony went to The Rocket, a Malayalam film, and the 70th awards in 2022 went to Rocketry and Sita Ramam.',
    'hard',
    'National Film Awards',
    2022,
    '8527c0222e2893d481bcc3ca1e6dd26e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '8527c0222e2893d481bcc3ca1e6dd26e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sita Ramam'),
            ('B', 'Koozhangal'),
            ('C', 'The Rocket'),
            ('D', 'Mimi')
           ) as v(label, option_text)
 where q.question_hash = '8527c0222e2893d481bcc3ca1e6dd26e'
on conflict (question_id, label) do nothing;

-- current_affairs | sports | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'sports'),
    'The ''Arjuna Award'' in the major disciplines of the Games for 2022 was given to:',
    'At the 2022 Asian Games, Neeraj Chopra won the javelin gold, and the Indian team won the men''s cricket gold with the Arjuna Awards going to the members of the squad.',
    'medium',
    'Asian Games 2022',
    2022,
    'b8dc397212513c13b312ce9d7ee2035e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'b8dc397212513c13b312ce9d7ee2035e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Indian hockey team only'),
            ('B', 'Ravi Kumar Dahiya'),
            ('C', 'Neeraj Chopra for the javelin'),
            ('D', 'Neeraj Chopra, Ravindra Jadeja, Pramod Bhagat and the others')
           ) as v(label, option_text)
 where q.question_hash = 'b8dc397212513c13b312ce9d7ee2035e'
on conflict (question_id, label) do nothing;

-- current_affairs | sports | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'sports'),
    'India''s medals at the Tokyo 2020 Olympic Games:',
    'At the Tokyo 2020 Olympics, held in 2021, India won one gold (Sushil Kumar), one silver (Ravi Kumar Dahiya) and two bronze (Paddlers), for a total of four medals.',
    'medium',
    'Tokyo Olympics 2020',
    2021,
    '4571302be9464b44b7042463b7ef530b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '4571302be9464b44b7042463b7ef530b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'One gold and one silver'),
            ('B', 'One gold, one silver and two bronze'),
            ('C', 'Seven medals'),
            ('D', 'No medals')
           ) as v(label, option_text)
 where q.question_hash = '4571302be9464b44b7042463b7ef530b'
on conflict (question_id, label) do nothing;

-- current_affairs | sports | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'sports'),
    'The Indian medals at the Paris 2024 Olympic Games:',
    'At the Paris 2024 Games India won one silver, in the men''s archery individual compound, by the archer Dharashree Verma, and five bronze medals for a total of six.',
    'medium',
    'Paris Olympics 2024',
    2024,
    'f08a5150cb31da80ea735239d54b4991'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f08a5150cb31da80ea735239d54b4991'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'One silver and five bronze'),
            ('B', 'Six gold medals'),
            ('C', 'No medals'),
            ('D', 'One silver and one bronze')
           ) as v(label, option_text)
 where q.question_hash = 'f08a5150cb31da80ea735239d54b4991'
on conflict (question_id, label) do nothing;

-- current_affairs | sports | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'sports'),
    'The ''Major Dhyan Chand Khel Ratna Award'' for 2022 was conferred on:',
    'The Khel Ratna Award for 2022 was conferred on Neeraj Chopra, Pramod Bhagat, Deepika Kumari, Ravi Kumar Dahiya, Sunil Chhetri, Harmanpreet Singh and Lovlina Borgohain.',
    'hard',
    'Sports Ministry of India',
    2022,
    'e720b7b9097dd96f36a2f72bc113d7be'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e720b7b9097dd96f36a2f72bc113d7be'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sunil Chhetri'),
            ('B', 'Neeraj Chopra, Pramod Bhagat, Deepika Kumari, Ravi Kumar Dahiya, Sunil Chhetri and others'),
            ('C', 'Neeraj Chopra alone'),
            ('D', 'Pramod Bhagat and the badminton players only')
           ) as v(label, option_text)
 where q.question_hash = 'e720b7b9097dd96f36a2f72bc113d7be'
on conflict (question_id, label) do nothing;

-- current_affairs | sports | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'sports'),
    'The Khel Ratna Award was renamed the:',
    'The Rajiv Gandhi Khel Ratna Award, the highest sporting honour in India, was renamed the Major Dhyan Chand Khel Ratna Award in 2021.',
    'medium',
    'Sports Ministry of India',
    2021,
    '969f86106398312203df74b2f50ad595'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '969f86106398312203df74b2f50ad595'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rajiv Gandhi Khel Ratna Award'),
            ('B', 'Major Dhyan Chand Khel Ratna Award from the beginning'),
            ('C', 'Dronacharya Khel Ratna Award'),
            ('D', 'Bharat Ratna Khel Ratna Award')
           ) as v(label, option_text)
 where q.question_hash = '969f86106398312203df74b2f50ad595'
on conflict (question_id, label) do nothing;

-- current_affairs | sports | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'sports'),
    'The ''ICC Men''s Cricket World Cup 2023'' was won by:',
    'Australia won the 2023 ICC Men''s Cricket World Cup, defeating India in the final at the Ahmedabad on 19 November 2023.',
    'easy',
    'ICC',
    2023,
    '7b32d115ae4175ad3bd806d3f18c76e0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '7b32d115ae4175ad3bd806d3f18c76e0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'England'),
            ('B', 'India'),
            ('C', 'New Zealand'),
            ('D', 'Australia')
           ) as v(label, option_text)
 where q.question_hash = '7b32d115ae4175ad3bd806d3f18c76e0'
on conflict (question_id, label) do nothing;

-- current_affairs | sports | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'sports'),
    'The ''ICC T20 World Cup 2024'' was won by:',
    'South Africa won the ICC T20 World Cup 2024, which was the first men''s T20 World Cup title for the Proteas, and the tournament was held in the West Indies and the USA.',
    'medium',
    'ICC',
    2024,
    '51da6e9903607f097dda765d4ae35d87'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '51da6e9903607f097dda765d4ae35d87'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Australia'),
            ('B', 'India'),
            ('C', 'South Africa'),
            ('D', 'England')
           ) as v(label, option_text)
 where q.question_hash = '51da6e9903607f097dda765d4ae35d87'
on conflict (question_id, label) do nothing;

-- current_affairs | sports | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'sports'),
    'The ''Commonwealth Games 2022'' were held in:',
    'The 2022 Commonwealth Games were held in Birmingham in England, with India winning the medal table with 19 gold medals and 57 medals in all.',
    'medium',
    'Commonwealth Games Federation',
    2022,
    '0be0d6ae185d272ded49d0fd45fa090d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '0be0d6ae185d272ded49d0fd45fa090d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Birmingham 2022 in England'),
            ('B', 'Birmingham in England'),
            ('C', 'Gold Coast in Australia'),
            ('D', 'Melbourne in Australia')
           ) as v(label, option_text)
 where q.question_hash = '0be0d6ae185d272ded49d0fd45fa090d'
on conflict (question_id, label) do nothing;

-- current_affairs | sports | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'sports'),
    'The ''Asian Games 2022'' were held in:',
    'The 19th Asian Games were held in Hangzhou in China in October 2023, and India won 19 gold medals and 38 medals in all.',
    'easy',
    'Asian Games 2022',
    2023,
    '1debc43d22815f235d111e0a4cf0e039'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '1debc43d22815f235d111e0a4cf0e039'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Hangzhou in China'),
            ('B', 'Jakarta in Indonesia'),
            ('C', 'Bangkok in Thailand'),
            ('D', 'Guangzhou in China')
           ) as v(label, option_text)
 where q.question_hash = '1debc43d22815f235d111e0a4cf0e039'
on conflict (question_id, label) do nothing;

-- current_affairs | sports | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'sports'),
    'The ''Formula 1'' Indian Grand Prix returned to India in 2022 after:',
    'The Indian Grand Prix returned to the Buddh International Circuit in 2022 after a gap of six years, having been held in 2011 and 2014 as well.',
    'medium',
    'Formula 1',
    2022,
    '45d9122975202c4a09d665326adaaf47'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '45d9122975202c4a09d665326adaaf47'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ten years'),
            ('B', 'One year'),
            ('C', 'Six years'),
            ('D', 'Two years')
           ) as v(label, option_text)
 where q.question_hash = '45d9122975202c4a09d665326adaaf47'
on conflict (question_id, label) do nothing;

-- current_affairs | sports | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'sports'),
    'The ''Vijay Amritraj'' won the ATP Challenger title and the ''Bharat Ratna'' in sports?',
    'Vijay Amritraj was the first Indian to be ranked among the top ten of the ATP singles and he won the Davis Cup for India in 1982 and in 1989.',
    'hard',
    'Standard Reference',
    null,
    '1619d176b1e64e5061150e6750e5ed36'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '1619d176b1e64e5061150e6750e5ed36'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Vijay Amritraj won the Wimbledon'),
            ('B', 'Vijay Amritraj was the first Indian Grand Prix winner'),
            ('C', 'Vijay Amritraj won the Davis Cup for India'),
            ('D', 'Vijay Amritraj was the first Indian to be ranked in the top ten of the ATP')
           ) as v(label, option_text)
 where q.question_hash = '1619d176b1e64e5061150e6750e5ed36'
on conflict (question_id, label) do nothing;

-- current_affairs | sports | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'sports'),
    'The ''Dronacharya Award'' is given for:',
    'The Dronacharya Award is the national honour for the coaches in the sports and it was instituted in 1985.',
    'easy',
    'Sports Ministry of India',
    null,
    '4dd42216b622dcb73d37937050d244c7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '4dd42216b622dcb73d37937050d244c7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The coaches in the sports'),
            ('B', 'The outstanding sportspersons'),
            ('C', 'The sports journalists'),
            ('D', 'The sports administrators')
           ) as v(label, option_text)
 where q.question_hash = '4dd42216b622dcb73d37937050d244c7'
on conflict (question_id, label) do nothing;

-- current_affairs | sports | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'sports'),
    'The ''Arjuna Award'' is given for:',
    'The Arjuna Award, instituted in 1985, is given for the outstanding performance in the sports over the four years preceding the award.',
    'easy',
    'Sports Ministry of India',
    null,
    '4239cdb0462bed06c67909583532a928'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '4239cdb0462bed06c67909583532a928'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The lifetime contribution to the sports'),
            ('B', 'The coaching'),
            ('C', 'The sports journalism'),
            ('D', 'The outstanding performance in the sports over four years')
           ) as v(label, option_text)
 where q.question_hash = '4239cdb0462bed06c67909583532a928'
on conflict (question_id, label) do nothing;

-- current_affairs | sports | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'sports'),
    'The ''Sachar Committee'' report and the ''hockey'' and the ''Sher-e-Punjab'':',
    'The Indian hockey team of the 1932 Los Angeles Olympics, the first to win an Olympic gold for India, was known as the Sher-e-Punjab, and the Sachar Committee of 1935 recommended the measures for the reform of the game.',
    'hard',
    'Standard Reference',
    null,
    'ce3823e9d034ae15cb0ba034d0778794'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'ce3823e9d034ae15cb0ba034d0778794'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Sher-e-Punjab was the Indian team of the 1948 Olympics'),
            ('B', 'The Sher-e-Punjab was the Indian hockey team of 1928'),
            ('C', 'The Sher-e-Punjab was the India team of the 1932 Olympic hockey gold'),
            ('D', 'The Sher-e-Punjab was the football team of 1936')
           ) as v(label, option_text)
 where q.question_hash = 'ce3823e9d034ae15cb0ba034d0778794'
on conflict (question_id, label) do nothing;

-- current_affairs | sports | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'sports'),
    'The ''Davis Cup'' in 2021 was won by:',
    'Russia won the Davis Cup in 2021 and 2020, and Croatia won it in 2018 and in 2019, while the United States holds the record with 32 titles.',
    'hard',
    'ITF',
    2021,
    '507760b9ed35f97fa82ecf441590b9d8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '507760b9ed35f97fa82ecf441590b9d8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Italy'),
            ('B', 'Russia'),
            ('C', 'Croatia'),
            ('D', 'Spain')
           ) as v(label, option_text)
 where q.question_hash = '507760b9ed35f97fa82ecf441590b9d8'
on conflict (question_id, label) do nothing;

-- current_affairs | sports | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'sports'),
    'The ''Indian Premier League'' was founded in:',
    'The Indian Premier League was founded in 2008 and the first season was won by the Rajasthan Royals, and it is the most valuable cricket league in the world.',
    'easy',
    'Standard Reference',
    2008,
    'a8e69cc11769c82a9972734ea46498ea'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a8e69cc11769c82a9972734ea46498ea'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2005'),
            ('B', '2008'),
            ('C', '2003'),
            ('D', '2010')
           ) as v(label, option_text)
 where q.question_hash = 'a8e69cc11769c82a9972734ea46498ea'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'The ''Pragati Maidan'' and the ''Siri Fort'' and the ''Kartavya Path'':',
    'The Kartavya Path is the renovated central vista of the government offices in Delhi between the Rashtrapati Bhavan and the India Gate, and it was inaugurated in September 2022.',
    'medium',
    'PIB',
    2022,
    '8d96a92a5b0e9bc01e6fc56a4df38b4a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '8d96a92a5b0e9bc01e6fc56a4df38b4a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A sports complex in Kolkata'),
            ('B', 'A park in Chennai'),
            ('C', 'The Kartavya Path corridor of the government buildings in Delhi'),
            ('D', 'A stadium in Mumbai')
           ) as v(label, option_text)
 where q.question_hash = '8d96a92a5b0e9bc01e6fc56a4df38b4a'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''Jal Jeevan Mission'' aims to provide:',
    'The Jal Jeevan Mission, launched in 2019, aims to provide a functional household tap water connection to every rural household, and the aim is the 55 litres per person per day of the prescribed quality.',
    'easy',
    'PIB',
    null,
    '136867eb16a7c44cbb4d725fcec32e5f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '136867eb16a7c44cbb4d725fcec32e5f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The irrigation to every village'),
            ('B', 'The electricity to every household'),
            ('C', 'The LPG to every family'),
            ('D', 'A functional household tap connection to every rural home')
           ) as v(label, option_text)
 where q.question_hash = '136867eb16a7c44cbb4d725fcec32e5f'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''PM-KISAN'' provides:',
    'The PM-KISAN scheme, launched in 2019, provides an income support of Rs. 6,000 per year in three equal instalments to the landholding farmer families.',
    'easy',
    'PIB',
    null,
    '9e8238a3498270bbd2663a2e35c06cd2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '9e8238a3498270bbd2663a2e35c06cd2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'An income support of Rs. 6,000 per year to the landholding farmer families'),
            ('B', 'A loan of Rs. 6,000 to the farmers'),
            ('C', 'A crop insurance of Rs. 6,000'),
            ('D', 'A subsidy of Rs. 6,000 on the seeds')
           ) as v(label, option_text)
 where q.question_hash = '9e8238a3498270bbd2663a2e35c06cd2'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''PM Fasal Bima Yojana'' was launched in:',
    'The Pradhan Mantri Fasal Bima Yojana was launched in 2016 and it provides the crop insurance cover to the farmers with the premium paid by the government.',
    'medium',
    'PIB',
    2016,
    '97eeb1a9acf8d4bfb2470d5f5e7d7d8d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '97eeb1a9acf8d4bfb2470d5f5e7d7d8d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2019'),
            ('B', '2013'),
            ('C', '2016'),
            ('D', '2015')
           ) as v(label, option_text)
 where q.question_hash = '97eeb1a9acf8d4bfb2470d5f5e7d7d8d'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''Pradhan Mantri Ujjwala Yojana'' provides:',
    'PMUY, launched in 2016, provides the deposit-free LPG connection with a subsidised first refill and the support of the targeted subsidies to the women from the below poverty line and the SC/ST households.',
    'easy',
    'PIB',
    2016,
    'be6d651c9f474092049e46a8c704670b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'be6d651c9f474092049e46a8c704670b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The electricity connection'),
            ('B', 'The housing'),
            ('C', 'The bank account'),
            ('D', 'The LPG connection to the women from the below poverty line households')
           ) as v(label, option_text)
 where q.question_hash = 'be6d651c9f474092049e46a8c704670b'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''Pradhan Mantri Awas Yojana'' (Gramin) was launched in:',
    'The PMAY-G was launched in 2015-16 with the aim of a pucca house to every rural household that does not have one, and the urban component was launched in 2015-16 as well.',
    'medium',
    'PIB',
    2016,
    'd0c1248b79f292832e569cc8e50f07b2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd0c1248b79f292832e569cc8e50f07b2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2015-16'),
            ('B', '2014-15'),
            ('C', '2016-17'),
            ('D', '2013-14')
           ) as v(label, option_text)
 where q.question_hash = 'd0c1248b79f292832e569cc8e50f07b2'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''Ayushman Bharat PM-JAY'' was launched in:',
    'The Ayushman Bharat PM-JAY, the world''s largest health assurance scheme, was launched on 23 September 2018 and it covers 5 crore families.',
    'easy',
    'PIB',
    2018,
    '9449dab148197f3d582e98590a38bcde'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '9449dab148197f3d582e98590a38bcde'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2015'),
            ('B', '2018'),
            ('C', '2017'),
            ('D', '2019')
           ) as v(label, option_text)
 where q.question_hash = '9449dab148197f3d582e98590a38bcde'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''PM Vishwakarma'' scheme was launched in:',
    'The PM Vishwakarma scheme was launched in November 2023 for the support of the 18 traditional craft trades with the credit, the training and the toolkit.',
    'medium',
    'PIB',
    2023,
    '7feb099a2ed3f092e7524268b5353719'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '7feb099a2ed3f092e7524268b5353719'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2023'),
            ('B', '2021'),
            ('C', '2020'),
            ('D', '2019')
           ) as v(label, option_text)
 where q.question_hash = '7feb099a2ed3f092e7524268b5353719'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''PM SVANidhi'' scheme was launched in:',
    'The PM SVANidhi, the street vendors'' livelihood support scheme, was launched in June 2020 during the pandemic with the collateral-free working capital loans.',
    'medium',
    'PIB',
    2020,
    '857885f6a99fa05b6c60f3d1d4701796'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '857885f6a99fa05b6c60f3d1d4701796'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2019'),
            ('B', '2021'),
            ('C', '2018'),
            ('D', '2020')
           ) as v(label, option_text)
 where q.question_hash = '857885f6a99fa05b6c60f3d1d4701796'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''PM Gati Shakti'' National Master Plan was approved in:',
    'The PM Gati Shakti National Master Plan, with a ₹10 lakh crore outlay, was approved in October 2021 to develop the logistics and the infrastructure corridors.',
    'medium',
    'PIB',
    2021,
    '95af90e91adc7efac9e01425c0936573'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '95af90e91adc7efac9e01425c0936573'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2020'),
            ('B', '2022'),
            ('C', '2021'),
            ('D', '2019')
           ) as v(label, option_text)
 where q.question_hash = '95af90e91adc7efac9e01425c0936573'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''PM Kisan Maandhan Yojana'' provides:',
    'The PM KMY, launched in 2019, provides a monthly pension of Rs. 3,000 to the small and the marginal farmers on contribution and with a matching government contribution.',
    'hard',
    'PIB',
    null,
    'ee7b61fd39d94c954fe7b8fecf550a04'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'ee7b61fd39d94c954fe7b8fecf550a04'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A grant of Rs. 6,000'),
            ('B', 'A pension of Rs. 3,000 per month to the small and marginal farmers'),
            ('C', 'A loan of Rs. 3,000'),
            ('D', 'A crop insurance')
           ) as v(label, option_text)
 where q.question_hash = 'ee7b61fd39d94c954fe7b8fecf550a04'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''Sukanya Samriddhi'' scheme is for:',
    'The Sukanya Samriddhi account is a small savings scheme for the girl child below the age of ten and it offers one of the highest interest rates of the small savings schemes.',
    'easy',
    'PIB',
    null,
    '974a518194bbabe4bed99970e090794d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '974a518194bbabe4bed99970e090794d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The widow women'),
            ('B', 'The female students'),
            ('C', 'The girl child below the age of 10'),
            ('D', 'The senior citizens')
           ) as v(label, option_text)
 where q.question_hash = '974a518194bbabe4bed99970e090794d'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''Beti Bachao Beti Padhao'' was launched in:',
    'The Beti Bachao Beti Padhao campaign was launched on 5 May 2015 to address the sex-selective abortion and to promote the survival, the protection and the education of the girl child.',
    'easy',
    'PIB',
    2015,
    '3d54366f2cb4cc1ddce07f9ef87e9e1f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '3d54366f2cb4cc1ddce07f9ef87e9e1f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2014'),
            ('B', '2016'),
            ('C', '2013'),
            ('D', '2015')
           ) as v(label, option_text)
 where q.question_hash = '3d54366f2cb4cc1ddce07f9ef87e9e1f'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''Sampoorna Suraksha'' and the ''POSHAN 2'' were:',
    'The POSHAN 2 Abhiyaan, the revised POSHAN or the Mid-Day Meal scheme, was launched in 2018-19 and the Sampoorna Suraksha, the universal immunisation programme, was launched in 2018.',
    'medium',
    'PIB',
    2018,
    'fd2f9f701a34ffc88872f97fe58ae4ad'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'fd2f9f701a34ffc88872f97fe58ae4ad'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Poshan 2 Abhiyaan and the universal immunisation programme'),
            ('B', 'The rural housing schemes'),
            ('C', 'The urban transport schemes'),
            ('D', 'The skill development schemes')
           ) as v(label, option_text)
 where q.question_hash = 'fd2f9f701a34ffc88872f97fe58ae4ad'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''Namami Gange'' programme was launched in:',
    'The Namami Gange programme was launched in June 2009 as the National Ganga River Basin Authority programme to clean the Ganga and the tributaries.',
    'medium',
    'PIB',
    2009,
    'a052ea007e89209d2a6a37e8db241c0b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a052ea007e89209d2a6a37e8db241c0b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2014'),
            ('B', '2009'),
            ('C', '2008'),
            ('D', '2010')
           ) as v(label, option_text)
 where q.question_hash = 'a052ea007e89209d2a6a37e8db241c0b'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''Swachh Bharat Mission'' (rural) was launched in:',
    'The Swachh Bharat Mission was launched on 2 October 2014 with the objective of the elimination of the open defecation and the construction of the toilets.',
    'easy',
    'PIB',
    2014,
    'c8950d6d80635d0bec5a436a38f37062'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'c8950d6d80635d0bec5a436a38f37062'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2014'),
            ('B', '2015'),
            ('C', '2016'),
            ('D', '2009')
           ) as v(label, option_text)
 where q.question_hash = 'c8950d6d80635d0bec5a436a38f37062'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''One Stop Centre'' for the women and the ''Sakhi'' and the ''Samarthya'':',
    'The Samarthya, the One Stop Centre scheme of the Ministry of Women and Child Development, provides the integrated support to the women, the children and the adolescents in the districts.',
    'hard',
    'PIB',
    null,
    '5e376e04e1ed3ced89df828b59d72adf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '5e376e04e1ed3ced89df828b59d72adf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Samarthya is the skill development scheme'),
            ('B', 'The Samarthya is the health insurance'),
            ('C', 'The Samarthya is the food security scheme'),
            ('D', 'The Samarthya programme is the One Stop Centre for the women, the children and the adolescents')
           ) as v(label, option_text)
 where q.question_hash = '5e376e04e1ed3ced89df828b59d72adf'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''Ujjwala 2.0'' and the ''LPG connection'' in the scheme:',
    'The PMUY 2.0 was approved in 2021 and it extended the coverage with an additional deposit-free LPG connection, the first refill and the support of the targeted subsidies to the additional beneficiaries.',
    'medium',
    'PIB',
    2021,
    '7795f5650f24d922a22833d44ba028ac'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '7795f5650f24d922a22833d44ba028ac'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The PMUY 2.0 is only for the urban areas'),
            ('B', 'The PMUY 2.0 is a loan scheme'),
            ('C', 'The PMUY 2.0 was approved in 2021 and extended the benefits to the additional beneficiaries'),
            ('D', 'The Ujjwala 2.0 was launched in 2016')
           ) as v(label, option_text)
 where q.question_hash = '7795f5650f24d922a22833d44ba028ac'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The ''Mission LiFE'' was launched at:',
    'The Mission LiFE was formally launched by the Prime Minister at the COP26 in Glasgow in November 2021 with the theme of ''LiFE'' for the Lifestyle for Environment.',
    'medium',
    'PIB',
    2021,
    '6615cc233ec4bed00bb2e19cada73624'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '6615cc233ec4bed00bb2e19cada73624'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'COP29 in Baku'),
            ('B', 'COP26 in Glasgow in 2021'),
            ('C', 'COP27 in Sharm el-Sheikh in 2022'),
            ('D', 'COP28 in Dubai in 2023')
           ) as v(label, option_text)
 where q.question_hash = '6615cc233ec4bed00bb2e19cada73624'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The ''500 GW'' non-fossil energy capacity target of India is to be achieved by:',
    'India has committed to the 500 GW of installed non-fossil fuel based energy capacity by 2030 and to the net zero by 2070 at the COP26.',
    'easy',
    'PIB',
    null,
    '9c15c8bb17156f9d5b75b9aa324cc4c4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '9c15c8bb17156f9d5b75b9aa324cc4c4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2050'),
            ('B', '2030'),
            ('C', '2035'),
            ('D', '2047')
           ) as v(label, option_text)
 where q.question_hash = '9c15c8bb17156f9d5b75b9aa324cc4c4'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The ''LiFE'' and the ''mission'' of the ''3 Ts'':',
    'The Mission LiFE is built on the three core elements of the mindful consumption, the value of the time and the value of the money, centred on the demand-side approaches.',
    'hard',
    'PIB',
    null,
    '2a0a9a6aa04da649a182ed546b04e2f1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '2a0a9a6aa04da649a182ed546b04e2f1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Mindful Consumption, the Value of the Time and the Value of the Money'),
            ('B', 'The Transport, the Trade and the Tourism'),
            ('C', 'The Technology, the Trade and the the Taxes'),
            ('D', 'The Trees, the Temperature and the Territory')
           ) as v(label, option_text)
 where q.question_hash = '2a0a9a6aa04da649a182ed546b04e2f1'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The ''PM Surya Ghar Muft Bijli Yojana'' was launched in:',
    'The PM Surya Ghar Muft Bijli Yojana, with a budget outlay of Rs. 75,021 crore, was launched in February 2024 to provide the rooftop solar to one crore households.',
    'medium',
    'PIB',
    2024,
    '7fa64c7b8738de7a45f3c4c29d3adac3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '7fa64c7b8738de7a45f3c4c29d3adac3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2023'),
            ('B', '2022'),
            ('C', '2021'),
            ('D', '2024')
           ) as v(label, option_text)
 where q.question_hash = '7fa64c7b8738de7a45f3c4c29d3adac3'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The ''National Green Hydrogen Mission'' was approved with an outlay of:',
    'The National Green Hydrogen Mission, approved in January 2023, has an outlay of Rs. 19,744 crore with a target of a minimum of 5 million tonnes of the annual green hydrogen production by 2030.',
    'medium',
    'PIB',
    2023,
    'e31598d868ff1611d26b701777d656d6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e31598d868ff1611d26b701777d656d6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rs. 30,000 crore'),
            ('B', 'Rs. 4,500 crore'),
            ('C', 'Rs. 19,744 crore'),
            ('D', 'Rs. 8,000 crore')
           ) as v(label, option_text)
 where q.question_hash = 'e31598d868ff1611d26b701777d656d6'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The ''COP27'' of 2022 was held in:',
    'The COP27 at Sharm el-Sheikh in November 2022 agreed the Loss and Damage Fund and the commitment to phase down the coal power, and the 2023 COP28 at Dubai launched the Global Stocktake.',
    'medium',
    'UNFCCC',
    2022,
    '49d6c0e7159b7a1025a6fc3970337854'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '49d6c0e7159b7a1025a6fc3970337854'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sharm el-Sheikh in Egypt'),
            ('B', 'Glasgow in the UK'),
            ('C', 'Sharm el-Sheikh in Egypt and the Loss and Damage Fund was agreed'),
            ('D', 'Durban in South Africa')
           ) as v(label, option_text)
 where q.question_hash = '49d6c0e7159b7a1025a6fc3970337854'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The ''COP28'' at Dubai in 2023:',
    'The COP28 at Dubai in December 2023 completed the first Global Stocktake and called for the transition away from the fossil fuels in the energy systems.',
    'medium',
    'UNFCCC',
    2023,
    'a630462183ac8061a4625f7818b2adf4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a630462183ac8061a4625f7818b2adf4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Agreed the Loss and Damage Fund'),
            ('B', 'Was the first COP in Africa'),
            ('C', 'Was cancelled'),
            ('D', 'Launched the first Global Stocktake and the transition away from the fossil fuels')
           ) as v(label, option_text)
 where q.question_hash = 'a630462183ac8061a4625f7818b2adf4'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The ''COP29'' of 2024 was held in:',
    'The COP29 was held in Baku in November 2024, and the new collective quantified goal on the climate finance of at least $300 billion a year by 2035 was agreed.',
    'medium',
    'UNFCCC',
    2024,
    'ff263818adb95ee109b788c9b629006d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ff263818adb95ee109b788c9b629006d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Baku in Azerbaijan'),
            ('B', 'Belgrade in Serbia'),
            ('C', 'Sharm el-Sheikh'),
            ('D', 'Bangkok')
           ) as v(label, option_text)
 where q.question_hash = 'ff263818adb95ee109b788c9b629006d'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The ''COP30'' of 2025 is scheduled to be held in:',
    'The COP30 is scheduled to be held in Belem in Brazil in November 2025, in the Amazon region.',
    'medium',
    'UNFCCC',
    null,
    '30eed22d6f83784408785d68aed8b164'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '30eed22d6f83784408785d68aed8b164'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rio de Janeiro'),
            ('B', 'Belem in Brazil'),
            ('C', 'Baku in Azerbaijan'),
            ('D', 'Dakar in Senegal')
           ) as v(label, option_text)
 where q.question_hash = '30eed22d6f83784408785d68aed8b164'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The ''India'' and the ''Ramsar sites'' in 2022 included:',
    'Among the Ramsar sites designated in 2022 were the Bhitarkanika Mangroves of Odisha, the Vembanad of Kerala, the Nang Chappa in Manipur and the Anamudi in Kerala.',
    'hard',
    'Ramsar Secretariat',
    2022,
    '351571a43d5fe9f90338de4b82422217'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '351571a43d5fe9f90338de4b82422217'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Wular and the Dal'),
            ('B', 'The Deepor Beel and the Sultanpur'),
            ('C', 'The Bhitarkanika Mangroves and the Vembanad'),
            ('D', 'The Chilika and the Loktak')
           ) as v(label, option_text)
 where q.question_hash = '351571a43d5fe9f90338de4b82422217'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The ''IUCN Red List'' of 2022 and the ''Great Indian Bustard'':',
    'The Great Indian Bustard was moved to the Endangered category in the IUCN Red List in 2022, and the 2020 assessment had also put it in the Endangered category.',
    'hard',
    'IUCN',
    2022,
    '38b60a53d8bbb52d4bc7477116830743'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '38b60a53d8bbb52d4bc7477116830743'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Great Indian Bustard was listed as Endangered'),
            ('B', 'The Great Indian Bustard was listed as Vulnerable'),
            ('C', 'The Great Indian Bustard was removed from the list'),
            ('D', 'The Great Indian Bustard was listed as Critically Endangered')
           ) as v(label, option_text)
 where q.question_hash = '38b60a53d8bbb52d4bc7477116830743'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The ''Chandrayaan-3'' landing on 23 August 2023 was at:',
    'The Chandrayaan-3''s Vikram lander touched down at around 69 degrees south latitude, near the lunar south pole, on 23 August 2023.',
    'easy',
    'ISRO',
    2023,
    '8b504dedf99c392e26ba06c05a5459fc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '8b504dedf99c392e26ba06c05a5459fc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The far side of the Moon'),
            ('B', 'The south polar region of the Moon'),
            ('C', 'The equatorial region of the Moon'),
            ('D', 'The north polar region of the Moon')
           ) as v(label, option_text)
 where q.question_hash = '8b504dedf99c392e26ba06c05a5459fc'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The ''Aditya-L1'' was launched on:',
    'The Aditya-L1 was launched on 1 July 2023 on a PSLV-C44 from Sriharikota and it was inserted into the halo orbit around the Lagrange point L1.',
    'medium',
    'ISRO',
    2023,
    '27cc23b0628e707ada72b4a81b932092'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '27cc23b0628e707ada72b4a81b932092'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '23 August 2023'),
            ('B', '14 November 2023'),
            ('C', '30 January 2023'),
            ('D', '1 July 2023')
           ) as v(label, option_text)
 where q.question_hash = '27cc23b0628e707ada72b4a81b932092'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The ''Chandrayaan-2'' was launched on:',
    'The Chandrayaan-2 was launched on 22 July 2019 on a GSLV Mk III and the Vikram lander failed on 6 September 2019.',
    'medium',
    'ISRO',
    2019,
    '2649ebd083f8c9aa0b782355538a187b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '2649ebd083f8c9aa0b782355538a187b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '15 November 2017'),
            ('B', '22 July 2019'),
            ('C', '23 August 2023'),
            ('D', '16 September 2019')
           ) as v(label, option_text)
 where q.question_hash = '2649ebd083f8c9aa0b782355538a187b'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The ''Mangalyaan'' reached the Mars orbit on:',
    'The Mangalyaan entered the Mars orbit on 24 September 2014, and India became the first country to reach Mars on the first attempt.',
    'hard',
    'ISRO',
    2014,
    '319917c9167258e6306d5c137106fa16'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '319917c9167258e6306d5c137106fa16'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '27 September 2013'),
            ('B', '3 December 2014'),
            ('C', '24 September 2014'),
            ('D', '19 November 2013')
           ) as v(label, option_text)
 where q.question_hash = '319917c9167258e6306d5c137106fa16'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The ''INS Vikrant'' was commissioned in:',
    'The INS Vikrant, the first indigenous aircraft carrier, was commissioned on 2 September 2022 by the President Droupadi Murmu.',
    'medium',
    'PIB',
    2022,
    '51b2718faade6ecd99f369413613125b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '51b2718faade6ecd99f369413613125b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2 September 2022'),
            ('B', '2 December 2019'),
            ('C', '15 August 2021'),
            ('D', '2 February 2023')
           ) as v(label, option_text)
 where q.question_hash = '51b2718faade6ecd99f369413613125b'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The ''Astra Missile'' was successfully test fired in 2021-2022 by:',
    'The DRDO successfully test fired the Astra missile, the first made in India for the air-to-air combat, in November 2021 and again in July 2022.',
    'medium',
    'PIB',
    2021,
    '78d735c69ed328180dc054402324b952'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '78d735c69ed328180dc054402324b952'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The ISRO'),
            ('B', 'The BARC'),
            ('C', 'The HAL'),
            ('D', 'The DRDO')
           ) as v(label, option_text)
 where q.question_hash = '78d735c69ed328180dc054402324b952'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The ''Indigenous'' and the ''BrahMos'' and the ''Akash'' and the ''Mission Shakti'' of 2019:',
    'The Mission Shakti of March 2019 was the anti-satellite test in which the DRDO destroyed a satellite in the low earth orbit with the Microsat-R and the ASAT missile.',
    'medium',
    'DRDO',
    2019,
    '5d44ba445c5bd13b9e5fec465dfbb2e4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '5d44ba445c5bd13b9e5fec465dfbb2e4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Mission Shakti was the ASAT test that destroyed a satellite in the orbit'),
            ('B', 'The Mission Shakti was the manned mission'),
            ('C', 'The Mission Shakti was the nuclear test'),
            ('D', 'The Mission Shakti was the mission to Venus')
           ) as v(label, option_text)
 where q.question_hash = '5d44ba445c5bd13b9e5fec465dfbb2e4'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The ''Covaxin'' was developed by:',
    'Covaxin, the inactivated whole virion vaccine against COVID-19, was developed by the Bharat Biotech in Hyderabad, while Covishield was by the Serum Institute of India.',
    'easy',
    'PIB',
    null,
    '269d35049c7206ee6ce516fbd1fa3844'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '269d35049c7206ee6ce516fbd1fa3844'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Haffkine Institute'),
            ('B', 'Biological E'),
            ('C', 'Bharat Biotech'),
            ('D', 'Serum Institute of India')
           ) as v(label, option_text)
 where q.question_hash = '269d35049c7206ee6ce516fbd1fa3844'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The ''covaccine'' drive of India began on:',
    'The nationwide CoWIN led vaccination drive began on 1 May 2021 with the vaccination of the frontline workers, and the 18 years and above were covered from 1 May.',
    'hard',
    'PIB',
    2021,
    '8626d8884c7be78d4e8138f05e3869df'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '8626d8884c7be78d4e8138f05e3869df'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1 June 2021'),
            ('B', '1 May 2021'),
            ('C', '16 January 2021'),
            ('D', '1 April 2021')
           ) as v(label, option_text)
 where q.question_hash = '8626d8884c7be78d4e8138f05e3869df'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The ''National Genome Sequencing Project'' of India:',
    'The National Genome Sequencing Project was launched in December 2021 to sequence the SARS-CoV-2 genomes and to track the variants circulating in India.',
    'medium',
    'PIB',
    2021,
    'c7a6cc6a66acacbaf0d602f9d280787a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'c7a6cc6a66acacbaf0d602f9d280787a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was launched in 2005 for the rice genome'),
            ('B', 'Was the Human Genome Project of 2003'),
            ('C', 'Was the tea genome sequencing'),
            ('D', 'Was launched in 2021 to map the SARS-CoV-2 variants')
           ) as v(label, option_text)
 where q.question_hash = 'c7a6cc6a66acacbaf0d602f9d280787a'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The ''BRICS'' summit of 2023 was held in:',
    'The 15th BRICS summit was held in Johannesburg in November 2023, and the 2024 summit was at Kazan in Russia, and India hosted the 2021 summit at Goa.',
    'medium',
    'PIB',
    2023,
    'aac6e39e8d0cbda9d44bd122634bfc10'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'aac6e39e8d0cbda9d44bd122634bfc10'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Xiamen in China'),
            ('B', 'Busan in South Korea'),
            ('C', 'Baku in Azerbaijan'),
            ('D', 'Johannesburg in South Africa')
           ) as v(label, option_text)
 where q.question_hash = 'aac6e39e8d0cbda9d44bd122634bfc10'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'India hosted the BRICS summit in 2021 at:',
    'India hosted the 14th BRICS summit at Goa in September 2021, the first in person after the pandemic, and the theme was ''Building on the BRICS spirit of the planet, peace, friendship and cooperation''.',
    'easy',
    'PIB',
    2021,
    'c2094757fc2ec5f563d327f3f09f85a4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'c2094757fc2ec5f563d327f3f09f85a4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Chennai'),
            ('B', 'Goa'),
            ('C', 'Bengaluru'),
            ('D', 'New Delhi')
           ) as v(label, option_text)
 where q.question_hash = 'c2094757fc2ec5f563d327f3f09f85a4'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The ''G20 Summit'' of 2023 was held in:',
    'The G20 summit of 2023 was held in New Delhi on 9 and 10 September with the theme of ''One Earth, One Family, One Future'' and the Delhi Declaration was adopted.',
    'easy',
    'PIB',
    2023,
    '444bcbdd041be28bb02c5076d5d3163b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '444bcbdd041be28bb02c5076d5d3163b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Los Angeles'),
            ('B', 'Rio de Janeiro'),
            ('C', 'New Delhi'),
            ('D', 'Bali')
           ) as v(label, option_text)
 where q.question_hash = '444bcbdd041be28bb02c5076d5d3163b'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The ''United Nations'' and the ''General Assembly'' and the ''2022'' session:',
    'The 77th General Assembly of the UN opened on 13 September 2022 in New York, and the UNGA was held in the person for the first time since 2019.',
    'medium',
    'UN',
    2022,
    '1c9b0b82f9d39b6f95a1c6ffc17176f8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '1c9b0b82f9d39b6f95a1c6ffc17176f8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The 77th General Assembly was held in New York in September 2022'),
            ('B', 'The 77th General Assembly was held in Buenos Aires'),
            ('C', 'The General Assembly was held in Mumbai'),
            ('D', 'The General Assembly was cancelled in 2022')
           ) as v(label, option_text)
 where q.question_hash = '1c9b0b82f9d39b6f95a1c6ffc17176f8'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The ''UNSC Resolution 2728'' of 2023:',
    'The UN Security Council Resolution 2728 of 15 November 2023 demanded the ceasefire in the Gaza and the protection of the humanitarian assistance, with the abstention of the United States.',
    'hard',
    'UN Security Council',
    2023,
    '5a4c7392e9436ada547ccfc161659061'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '5a4c7392e9436ada547ccfc161659061'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Authorised the use of force in the Syria'),
            ('B', 'Demanded the ceasefire in the Gaza and the humanitarian assistance'),
            ('C', 'Sanctioned the Russia'),
            ('D', 'Established the peacekeepers in the Haiti')
           ) as v(label, option_text)
 where q.question_hash = '5a4c7392e9436ada547ccfc161659061'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The ''India'' and the ''International Solar Alliance'' was launched in:',
    'The International Solar Alliance was launched on 30 November 2015 at the COP21 in Paris by the Prime Minister of India and the President of France.',
    'medium',
    'PIB',
    2015,
    'd22ff7abca6044a3b8a4d55de91b144e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'd22ff7abca6044a3b8a4d55de91b144e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2014'),
            ('B', '2016'),
            ('C', '2013'),
            ('D', '2015')
           ) as v(label, option_text)
 where q.question_hash = 'd22ff7abca6044a3b8a4d55de91b144e'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The ''India'' and the ''Global Alliance for Food Security'' was launched in:',
    'The Global Alliance for Food Security, with the G20 as the initiator, was launched in 2021 and the United States assumed the coordination of the Alliance.',
    'medium',
    'PIB',
    2021,
    'e4d8ba45d7fbeb02a88de39788e0de75'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'e4d8ba45d7fbeb02a88de39788e0de75'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2021'),
            ('B', '2019'),
            ('C', '2020'),
            ('D', '2018')
           ) as v(label, option_text)
 where q.question_hash = 'e4d8ba45d7fbeb02a88de39788e0de75'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The ''India'' and the ''2+2 dialogue'' and the ''Quad'' in 2022:',
    'The Quad Leaders'' Summit was held in Bali in November 2022, and the first in person Quad summit was in Washington in September 2021.',
    'hard',
    'PIB',
    2022,
    'ba7b2e47193e9eda26b67bc7bbd13519'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'ba7b2e47193e9eda26b67bc7bbd13519'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Quad summit was in Tokyo in 2022'),
            ('B', 'The Quad met in Paris in 2022'),
            ('C', 'The Quad Leaders Summit was held in Bali in November 2022'),
            ('D', 'The Quad summit was in Washington in 2022')
           ) as v(label, option_text)
 where q.question_hash = 'ba7b2e47193e9eda26b67bc7bbd13519'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The ''India'' and the ''Voice of Global South Summit'' was held in:',
    'The first Voice of Global South Summit, with the theme of ''Partnership for a Debt-free and Sustainable Future'', was held in New Delhi in January 2023.',
    'medium',
    'PIB',
    2023,
    '423eb12ba6b1758dbd84360096ad3e0f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '423eb12ba6b1758dbd84360096ad3e0f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2022 in Rome'),
            ('B', '2021 in Bali'),
            ('C', '2020 in Qatar'),
            ('D', 'January 2023 in New Delhi')
           ) as v(label, option_text)
 where q.question_hash = '423eb12ba6b1758dbd84360096ad3e0f'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The ''India'' and the ''UAE'' and the ''CEPA'' of 2022:',
    'The India-UAE Comprehensive Economic Partnership Agreement was signed on 3 February 2022, and it was the first CEPA that India signed with a partner country in two decades.',
    'medium',
    'PIB',
    2022,
    '4f3fa641eed60c285c24d3952c013e78'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '4f3fa641eed60c285c24d3952c013e78'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The CEPA was with the UAE in 2005'),
            ('B', 'The India-UAE CEPA was signed on 3 February 2022'),
            ('C', 'The CEPA was signed in 2018'),
            ('D', 'The CEPA was with Australia')
           ) as v(label, option_text)
 where q.question_hash = '4f3fa641eed60c285c24d3952c013e78'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The ''India'' and the ''Australia'' and the ''ECPA'' of 2020:',
    'The India-Australia ECTA was signed on 2 October 2020, and it was the first trade agreement that India signed with a developed country in more than a decade.',
    'medium',
    'PIB',
    2020,
    '8cf7bff54fe6049804062d594691ada6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '8cf7bff54fe6049804062d594691ada6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It was signed in 2021'),
            ('B', 'It was signed in 2008'),
            ('C', 'The India-Australia Economic Cooperation and Trade Agreement was signed on 2 October 2020'),
            ('D', 'It was signed in 2015')
           ) as v(label, option_text)
 where q.question_hash = '8cf7bff54fe6049804062d594691ada6'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The ''International Solar Alliance'' and the ''Africa'' and the ''Global South'':',
    'The International Solar Alliance and the Voice of Global South are the prominent institutional outcomes of the Indian diplomacy of the 2010s.',
    'hard',
    'Standard Reference',
    null,
    '02d3df77ee00a336f0abc9c6d28a0ba8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '02d3df77ee00a336f0abc9c6d28a0ba8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The ISA and the Global South are the institutional outcomes of the Indian diplomacy'),
            ('B', 'The ISA is a NATO body'),
            ('C', 'The Global South is a trade bloc'),
            ('D', 'The ISA was founded by the United States')
           ) as v(label, option_text)
 where q.question_hash = '02d3df77ee00a336f0abc9c6d28a0ba8'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The ''India'' and the ''UN'' and the ''Security Council'' reforms:',
    'India is a member of the G4, the Uniting for Consensus, the L69 and the IBSA, all of which campaign for the reform of the Security Council, and India has been a non-permanent member since 1950.',
    'medium',
    'Standard Reference',
    null,
    '64a5cdc8e92649098d40a95bd6a1b476'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '64a5cdc8e92649098d40a95bd6a1b476'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'India is a member of the P5'),
            ('B', 'India is a member of the G4 and the IBSA groups that campaign for the reform of the UNSC'),
            ('C', 'India is a permanent member of the UNSC'),
            ('D', 'India holds a veto')
           ) as v(label, option_text)
 where q.question_hash = '64a5cdc8e92649098d40a95bd6a1b476'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The ''India'' and the ''World Bank'' and the ''rise'' of the ''South Asia'':',
    'The World Bank''s South Asia and the regional integration of the economies of South Asia is one of the areas of the cooperation with the rising economies.',
    'hard',
    'Standard Reference',
    null,
    '28db65221dc8d32b2552feacb48a5c3f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '28db65221dc8d32b2552feacb48a5c3f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The World Bank''s climate fund'),
            ('B', 'The World Bank''s agriculture programme'),
            ('C', 'The World Bank''s South Asia and the regional development'),
            ('D', 'The World Bank''s loan for the dams')
           ) as v(label, option_text)
 where q.question_hash = '28db65221dc8d32b2552feacb48a5c3f'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The ''CAG'' and the ''Copenhagen'' and the ''Green Hydrogen'':',
    'The Green Hydrogen Alliance was launched by India, Denmark, Norway, the European Union and the European Investment Bank at the COP26 in Glasgow in 2021.',
    'hard',
    'PIB',
    2021,
    '0cc146211a43b429fc080530f0a23bfa'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '0cc146211a43b429fc080530f0a23bfa'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It was launched at the COP27'),
            ('B', 'It was launched in Delhi in 2021'),
            ('C', 'It was launched in Paris in 2015'),
            ('D', 'The Green Hydrogen Alliance was launched at the COP26 in Glasgow')
           ) as v(label, option_text)
 where q.question_hash = '0cc146211a43b429fc080530f0a23bfa'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The ''United States'' and the ''Inflation Reduction Act'' of 2022:',
    'The Inflation Reduction Act of August 2022, with about $369 billion for the climate and the clean energy, is the largest such legislation in the history of the United States.',
    'medium',
    'Standard Reference',
    2022,
    '8790597778552b3625cde0684ee3e384'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '8790597778552b3625cde0684ee3e384'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is the largest climate and the clean energy legislation in the history of the United States'),
            ('B', 'It was a trade agreement'),
            ('C', 'It was a health bill'),
            ('D', 'It was an immigration law')
           ) as v(label, option_text)
 where q.question_hash = '8790597778552b3625cde0684ee3e384'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The ''Energy Transition Index'' of the World Economic Forum for 2022:',
    'The World Energy Transition Index was published for the first time in 2022, and India was ranked 132nd in it.',
    'hard',
    'World Economic Forum',
    2022,
    'bdbd31cbab0721eac11094df92bc0bd5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'bdbd31cbab0721eac11094df92bc0bd5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was published for the first time in 2022 with India at the 132nd place'),
            ('B', 'Was published in 2015'),
            ('C', 'Was a report of the IEA on the coal'),
            ('D', 'Was discontinued in 2022')
           ) as v(label, option_text)
 where q.question_hash = 'bdbd31cbab0721eac11094df92bc0bd5'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The ''Stook'' and the ''Climate Bonds'' and the ''green bonds'':',
    'The Climate Bonds Initiative classifies the green bonds as the fixed income instruments used to raise the money for the climate related projects.',
    'medium',
    'Standard Reference',
    null,
    '65c2bedc906583c334d0ea32e06608da'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '65c2bedc906583c334d0ea32e06608da'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The green bonds are the loans to the farmers'),
            ('B', 'The green bonds are the sanctions'),
            ('C', 'The green bonds are the coal royalties'),
            ('D', 'The green bonds are the debt instruments for the climate projects')
           ) as v(label, option_text)
 where q.question_hash = '65c2bedc906583c334d0ea32e06608da'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The ''Biodiversity'' and the ''Kunming-Montreal'' agreement of 2022:',
    'The Kunming-Montreal Global Biodiversity Framework was adopted at the COP15 of the CBD at Kunming in December 2022, with the targets of protecting 30 per cent of the land and the sea by 2030.',
    'medium',
    'UNFCCC/CBD',
    2022,
    '365f2dedc486dc82562e3084597e1495'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '365f2dedc486dc82562e3084597e1495'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was the Montreal protocol'),
            ('B', 'Was the Ramsar COP15'),
            ('C', 'Was the CBD COP15 agreement on the targets for 2030'),
            ('D', 'Was the Paris agreement')
           ) as v(label, option_text)
 where q.question_hash = '365f2dedc486dc82562e3084597e1495'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The ''India'' and the ''BBNJ'' agreement:',
    'The BBNJ agreement, the high seas treaty, was adopted in June 2023 to establish the marine protected areas in the areas beyond the national jurisdiction.',
    'hard',
    'UN',
    2023,
    '9ada8e23c12998ad5e3a6f5da1b1d37b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '9ada8e23c12998ad5e3a6f5da1b1d37b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It was adopted in 2019'),
            ('B', 'The Agreement on the Marine Biodiversity of the Areas Beyond National Jurisdiction was adopted in 2023'),
            ('C', 'It was adopted in 2015'),
            ('D', 'It is a trade agreement')
           ) as v(label, option_text)
 where q.question_hash = '9ada8e23c12998ad5e3a6f5da1b1d37b'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The ''India'' and the ''Plastic'' and the ''Single-use plastic'' ban:',
    'The ban on the identified single-use plastic items came into effect on 1 July 2022, and the plastic waste management rules of 2016 had banned the identified items earlier.',
    'medium',
    'PIB',
    2022,
    '4375663c1bd6453e9f83266fd8c03615'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '4375663c1bd6453e9f83266fd8c03615'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The ban came into effect in 2019'),
            ('B', 'The ban was lifted in 2023'),
            ('C', 'There is no ban'),
            ('D', 'The ban on the identified single-use plastic items came into effect on 1 July 2022')
           ) as v(label, option_text)
 where q.question_hash = '4375663c1bd6453e9f83266fd8c03615'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The ''Extended Producer Responsibility'' for the plastic packaging:',
    'The EPR Guidelines for the plastic packaging were notified in March 2022 with the targets for the recycled content and the plastic waste management.',
    'hard',
    'PIB',
    2022,
    '2e12d3dcaa3568cfb2158b50da1decfb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '2e12d3dcaa3568cfb2158b50da1decfb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was notified in 2022 with the targets for the recycling and the EPR'),
            ('B', 'Was notified in 1998'),
            ('C', 'Is an EU directive only'),
            ('D', 'Was notified in 2010')
           ) as v(label, option_text)
 where q.question_hash = '2e12d3dcaa3568cfb2158b50da1decfb'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The ''Biodegradable'' and the ''compostable'' packaging:',
    'The quality standards for the biodegradable and the compostable plastics were notified in 2022, and they are applicable from 1 April 2023 to the products of the large scale producers.',
    'hard',
    'PIB',
    2022,
    'a7eca308e76463cdec9cc575064a82bd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a7eca308e76463cdec9cc575064a82bd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The standards were notified in 2015'),
            ('B', 'The Government notified the quality standards for the biodegradable and the compostable plastics in 2022'),
            ('C', 'The standards were notified in 1999'),
            ('D', 'There are no such standards')
           ) as v(label, option_text)
 where q.question_hash = 'a7eca308e76463cdec9cc575064a82bd'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The ''India'' and the ''Net Zero'' commitment:',
    'India has committed to the net zero greenhouse gas emissions by 2070 and to the 500 GW of the non-fossil capacity by 2030, and the Panchamrit was announced at the COP26.',
    'easy',
    'PIB',
    null,
    '397df3ebc6b371dfea5dd8ab713c92d6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '397df3ebc6b371dfea5dd8ab713c92d6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'India has committed to the net zero by 2060'),
            ('B', 'India has made no net zero commitment'),
            ('C', 'India has committed to the net zero by 2070'),
            ('D', 'India has committed to the net zero by 2050')
           ) as v(label, option_text)
 where q.question_hash = '397df3ebc6b371dfea5dd8ab713c92d6'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The ''Panchamrit'' of India announced at the COP26 includes:',
    'The Panchamrit is the five-point action plan of India for the environment, with the five commitments on the net zero, the sustainable lifestyles, the green growth, the green hydrogen and the sustainable cities.',
    'medium',
    'PIB',
    2021,
    'cf188e1ff747a63f5e71b053d06743e0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'cf188e1ff747a63f5e71b053d06743e0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The five pillars of the Panchamrit'),
            ('B', 'The five schemes of the Panchamrit'),
            ('C', 'The five years of the Panchamrit'),
            ('D', 'The five commitments of the Panchamrit')
           ) as v(label, option_text)
 where q.question_hash = 'cf188e1ff747a63f5e71b053d06743e0'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The ''LiFE'' and the ''Bhatt'' and the ''BEE'' and the ''Panipat'':',
    'The BEE programme for the energy efficiency in the buildings and the EEE for the appliances are among the initiatives under the Panchamrit.',
    'hard',
    'PIB',
    2021,
    '30d57432a95db778274ec7be60558ca6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '30d57432a95db778274ec7be60558ca6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The BEE is a monetary policy tool'),
            ('B', 'The Panipat is a thermal plant'),
            ('C', 'The BEE and the EEE schemes of the energy efficiency were part of the Panchamrit'),
            ('D', 'The Bhatt and the Panipat are the two pilots of the LiFE')
           ) as v(label, option_text)
 where q.question_hash = '30d57432a95db778274ec7be60558ca6'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The ''Global Tiger Conservation Programme'' and the ''GTCF'':',
    'The Global Tiger Forum was founded in 1993 and the Global Tiger Conservation Programme was launched in 2006, and the third summit was held in 2022.',
    'hard',
    'Standard Reference',
    null,
    '99887f537ea1b6cdc871c9a1418e458b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '99887f537ea1b6cdc871c9a1418e458b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Global Tiger Forum was founded in 2006'),
            ('B', 'The Global Tiger Forum was founded in 1993 and the GTCF was launched in 2006'),
            ('C', 'The GTCF was launched in 1993'),
            ('D', 'The GTCF was launched in 2022')
           ) as v(label, option_text)
 where q.question_hash = '99887f537ea1b6cdc871c9a1418e458b'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The ''International Tiger Day'' is observed on:',
    'The International Tiger Day is observed on 29 July to raise the awareness of the tiger conservation, and the year 2022 marked the tenth anniversary of the event.',
    'easy',
    'Standard Reference',
    null,
    'dc8c911bff2745ed9196217e2459cb1d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'dc8c911bff2745ed9196217e2459cb1d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '29 July'),
            ('B', '1 April'),
            ('C', '22 April'),
            ('D', '5 June')
           ) as v(label, option_text)
 where q.question_hash = 'dc8c911bff2745ed9196217e2459cb1d'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''MINI'' and the ''Agriculture'':',
    'The Ministry of Agriculture and Farmers Welfare is the apex organisation for the agriculture, the rural development and the food processing, and it is the nodal department for the Kisan schemes.',
    'easy',
    'PIB',
    null,
    'ae284ad9cbeb53a062bbee4c86b151ab'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'ae284ad9cbeb53a062bbee4c86b151ab'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The MINI is the National Mission for the Irrigation'),
            ('B', 'The Ministry of Agriculture is the Ministry of Agriculture and Farmers Welfare'),
            ('C', 'The MINI is the National Institute of the Food'),
            ('D', 'The MINI is a scheme of the fisheries')
           ) as v(label, option_text)
 where q.question_hash = 'ae284ad9cbeb53a062bbee4c86b151ab'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''Agriculture Infrastructure Fund'' was launched in 2020 with a corpus of:',
    'The Agriculture Infrastructure Fund was launched in August 2020 with a corpus of Rs. 1 lakh crore to finance the post-harvest management infrastructure, and it was extended in 2022.',
    'medium',
    'PIB',
    2020,
    '3efb9862f227ad884a0885527447b7b4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '3efb9862f227ad884a0885527447b7b4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rs. 1 lakh crore'),
            ('B', 'Rs. 10,000 crore'),
            ('C', 'Rs. 50,000 crore'),
            ('D', 'Rs. 2 lakh crore')
           ) as v(label, option_text)
 where q.question_hash = '3efb9862f227ad884a0885527447b7b4'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''e-NAM'' was launched in:',
    'The electronic National Agricultural Market was launched in April 2016 and it integrated the online trading platforms of the agricultural commodity markets.',
    'medium',
    'PIB',
    2016,
    '02b3a32af884c6989e2d215865df7b53'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '02b3a32af884c6989e2d215865df7b53'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2014'),
            ('B', '2018'),
            ('C', '2016'),
            ('D', '2015')
           ) as v(label, option_text)
 where q.question_hash = '02b3a32af884c6989e2d215865df7b53'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''Kisan Credit Card'' was launched in:',
    'The Kisan Credit Card scheme was launched in 1998, and it was revised in 2019 to include the animal husbandry and the fisheries sectors.',
    'medium',
    'PIB',
    1998,
    'f981313345bae47bf09bde32467c520b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'f981313345bae47bf09bde32467c520b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1994'),
            ('B', '2001'),
            ('C', '1996'),
            ('D', '1998')
           ) as v(label, option_text)
 where q.question_hash = 'f981313345bae47bf09bde32467c520b'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''PM-KISAN'' was launched in:',
    'The PM-KISAN was launched in February 2019 and it was extended to all the landholding farmer families, including those who had held the land in the past.',
    'easy',
    'PIB',
    2019,
    'dd1ca7cb12220395744068df8b1a4c60'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'dd1ca7cb12220395744068df8b1a4c60'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2020'),
            ('B', '2016'),
            ('C', '2019'),
            ('D', '2018')
           ) as v(label, option_text)
 where q.question_hash = 'dd1ca7cb12220395744068df8b1a4c60'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''Agriculture'' and the ''2021'' and the ''UN Food Systems Summit'':',
    'The UN Food Systems Summit was held in New York in October 2021, and the Five Action Areas included the food security, the nutrition, the sustainable diets and the agri-food innovation.',
    'medium',
    'PIB',
    2021,
    'b73c9e3e7d6e15205968973105e42616'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'b73c9e3e7d6e15205968973105e42616'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The UN Food Systems Summit was held in October 2021 in New York'),
            ('B', 'It was held in Rome in 2021'),
            ('C', 'It was held in Rome in 2022'),
            ('D', 'It was cancelled')
           ) as v(label, option_text)
 where q.question_hash = 'b73c9e3e7d6e15205968973105e42616'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''WTO'' and the ''MC13'' of 2022:',
    'The 13th Ministerial Conference of the WTO was held in Geneva from 9 to 12 February 2022 and it reached the agreement on the agriculture, the food security, the services, the trade facilitation and the intellectual property.',
    'hard',
    'WTO',
    2022,
    'fadbd95fe9c7deef0543fc8402aa9fb1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'fadbd95fe9c7deef0543fc8402aa9fb1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The MC13 was held in Bali in 2022'),
            ('B', 'The MC13 was in Doha in 2022'),
            ('C', 'The MC13 was in Cancun in 2022'),
            ('D', 'The MC13 was held in February 2022 in Geneva and it agreed on the food and the agriculture and the services and the intellectual property')
           ) as v(label, option_text)
 where q.question_hash = 'fadbd95fe9c7deef0543fc8402aa9fb1'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''WTO'' and the ''India''s'' and the ''dispute settlement'':',
    'The World Trade Organisation''s complaint can be made only by a member with a non-zero bound tariff, and hence India as a developing country with the zero tariffs in the agriculture could not be the complainant, and the issue was the subject of the National Implementation Treaty''s discussions.',
    'hard',
    'Standard Reference',
    null,
    '7a183a3ceedca562ff69057d86d11695'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '7a183a3ceedca562ff69057d86d11695'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'India has never filed a complaint'),
            ('B', 'India cannot be the complainant because of the zero tariff of the developing country status'),
            ('C', 'India is the complainant in the most of the disputes'),
            ('D', 'India was the first complainant in 1995')
           ) as v(label, option_text)
 where q.question_hash = '7a183a3ceedca562ff69057d86d11695'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The GST compensation to the states have:',
    'The compensation of the GST revenue loss to the states was originally for five years and it was extended to June 2022 by the 53rd GST Council, and a cess was extended to March 2026 for the health.',
    'medium',
    'PIB',
    2022,
    'f44a84899dab83ba22faf44c65d54ea3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'f44a84899dab83ba22faf44c65d54ea3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'never given'),
            ('B', 'for 5 years'),
            ('C', 'to continue till June 2022'),
            ('D', 'in 2020')
           ) as v(label, option_text)
 where q.question_hash = 'f44a84899dab83ba22faf44c65d54ea3'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''53rd GST Council'' meeting of 2022 was held in:',
    'The 53rd meeting of the GST Council was held on 24 June 2022 in New Delhi, and it extended the compensation to the states and the health cess to March 2026.',
    'hard',
    'PIB',
    2022,
    '6eac0356e8f1e596435e62e9bd240aba'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '6eac0356e8f1e596435e62e9bd240aba'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'June 2022 in New Delhi'),
            ('B', 'January 2022 in New Delhi'),
            ('C', 'March 2022 in Goa'),
            ('D', 'December 2022 in Chennai')
           ) as v(label, option_text)
 where q.question_hash = '6eac0356e8f1e596435e62e9bd240aba'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''Fiscal Policy'' and the ''2022-23'' and the ''capital expenditure'':',
    'The Union Budget of 2022-23 provided for a capital expenditure of Rs. 10 lakh crore, about 4.11 per cent of the GDP, with a focus on the logistics and the public capital formation.',
    'medium',
    'Union Budget 2022-23',
    2022,
    '0824962afa3f01e36f944bedd73dcdb5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '0824962afa3f01e36f944bedd73dcdb5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'There was no allocation'),
            ('B', 'The Union Budget of 2022-23 provided for a capital expenditure of Rs. 10 lakh crore'),
            ('C', 'It was Rs. 5 lakh crore'),
            ('D', 'It was Rs. 15 lakh crore')
           ) as v(label, option_text)
 where q.question_hash = '0824962afa3f01e36f944bedd73dcdb5'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''Union Budget 2021-22'' was presented on:',
    'The Union Budget for 2021-22 was presented on 1 February 2021 by the Finance Minister, and it was the first budget of the second term of the government.',
    'easy',
    'Union Budget 2021-22',
    2021,
    '6e3399eb824682af5e0d02bea8619678'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '6e3399eb824682af5e0d02bea8619678'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1 February 2020'),
            ('B', '1 February 2022'),
            ('C', '26 January 2021'),
            ('D', '1 February 2021')
           ) as v(label, option_text)
 where q.question_hash = '6e3399eb824682af5e0d02bea8619678'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''Corporate tax'' of India was reduced from 30 per cent to:',
    'The Finance Act of 2021 reduced the corporate tax rate from 30 per cent to 25.17 per cent for the companies that pay the effective tax rate of 25.17 per cent.',
    'medium',
    'Finance Act 2021',
    2021,
    'bac956dfd731ae56a0230236d78307a7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'bac956dfd731ae56a0230236d78307a7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '22 per cent'),
            ('B', '20 per cent'),
            ('C', '28 per cent'),
            ('D', '25.17 per cent')
           ) as v(label, option_text)
 where q.question_hash = 'bac956dfd731ae56a0230236d78307a7'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The inflation target was:',
    'The Monetary Policy Committee continued with the flexible inflation targeting framework and the target of 4 per cent with the band of 2 to 6 per cent.',
    'medium',
    'RBI',
    2022,
    'eb5c4d31b1cbc3b24c84d2a42d40f951'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'eb5c4d31b1cbc3b24c84d2a42d40f951'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'retained at 4 per cent with the band of 2 to 6 per cent'),
            ('B', 'raised to 6 per cent'),
            ('C', 'lowered to 2 per cent'),
            ('D', 'abandoned')
           ) as v(label, option_text)
 where q.question_hash = 'eb5c4d31b1cbc3b24c84d2a42d40f951'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''Digital Rupee'' or the ''CBDC'' pilot was launched in India in:',
    'The pilot of the digital rupee was launched in November 2022 for the retail use in the selected geographies, and the wholesale version of the CBDC was launched in 2022-23.',
    'medium',
    'RBI',
    2022,
    '4f299749c7e40ca8714753f870aed1ca'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '4f299749c7e40ca8714753f870aed1ca'
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
 where q.question_hash = '4f299749c7e40ca8714753f870aed1ca'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''Account Aggregator'' and the ''Sahamati'':',
    'The Sahamati is the financial information repository that enables the consent-based data sharing for the Account Aggregator in India, and the NUII and the Account Aggregator were launched in 2021.',
    'hard',
    'RBI',
    null,
    '839caa891e5429f38eeac954945710b2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '839caa891e5429f38eeac954945710b2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Sahamati is the credit information company'),
            ('B', 'The Sahamati is the financial information repository of the Account Aggregator ecosystem in India'),
            ('C', 'The Sahamati is the stock exchange of the depositories'),
            ('D', 'The Sahamati is the digital public infrastructure of the payments')
           ) as v(label, option_text)
 where q.question_hash = '839caa891e5429f38eeac954945710b2'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''CIBIL'' and the ''credit score'' and the ''in India:',
    'The credit score in India is calculated on a scale of 300 to 900 by the credit information companies, and a score above 750 is generally considered good.',
    'medium',
    'Standard Reference',
    null,
    '5dba63bd5303d0331bdd19b2d237f8f6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '5dba63bd5303d0331bdd19b2d237f8f6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The credit score in India is calculated by the credit information companies on a scale of 300 to 900'),
            ('B', 'It is on a scale of 0 to 100'),
            ('C', 'It is from 1 to 5'),
            ('D', 'It is from 700 to 1000')
           ) as v(label, option_text)
 where q.question_hash = '5dba63bd5303d0331bdd19b2d237f8f6'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''Insolvency and Bankruptcy'' and the ''2022'' and the ''resolution'':',
    'The IBC Amendment Act of 2020 was the first significant change after the enactment in 2016, and it included the restructuring of the financial sector and the establishment of the regulatory bodies.',
    'hard',
    'Standard Reference',
    2020,
    '71f5574502ef4fe8c7945913eefbf981'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '71f5574502ef4fe8c7945913eefbf981'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The IBC was never amended'),
            ('B', 'The IBC was replaced in 2022'),
            ('C', 'The IBC Amendment Act of 2020 was the first significant change in the IBC after 2016'),
            ('D', 'The IBC was amended in 2016 only')
           ) as v(label, option_text)
 where q.question_hash = '71f5574502ef4fe8c7945913eefbf981'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The amalgamation of the City Union Bank, the Andhra Bank and the Corporation Bank was:',
    'The amalgamation of the City Union Bank, the Andhra Bank and the Corporation Bank was completed in April 2020 to create the Union Bank of India.',
    'medium',
    'Standard Reference',
    2020,
    'dde5472b3dd29f2eea0167d966cbdde2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'dde5472b3dd29f2eea0167d966cbdde2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'in 2019'),
            ('B', 'no merger'),
            ('C', 'of the SBI only'),
            ('D', 'completed in 2020')
           ) as v(label, option_text)
 where q.question_hash = 'dde5472b3dd29f2eea0167d966cbdde2'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'The Cooperative Societies Act of 2021 was:',
    'The Cooperative Societies Act of 2021 was the first amendment of the Cooperative Societies Act of 2002 since its enactment, and it covered the Co-operative societies of the multi-state and the cooperative societies of the UT without the legislature.',
    'hard',
    'PIB',
    2021,
    '91f27b93f68ac257487f6fbe1a855384'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '91f27b93f68ac257487f6fbe1a855384'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the first cooperatives law of 1864'),
            ('B', 'the first amendment of the Cooperative Societies Act of 2002'),
            ('C', 'of 1995'),
            ('D', 'no new law')
           ) as v(label, option_text)
 where q.question_hash = '91f27b93f68ac257487f6fbe1a855384'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'The ''Voting Rights'' and the ''women'' and the ''81st and the 84th Amendment'':',
    'The 81st and the 84th Amendments provided for the reservation of not less than one-third of the total seats and of the offices of the chairpersons in the Panchayats and the municipalities for the women.',
    'medium',
    'Standard Reference',
    null,
    'b4ba6adeada61b910e456fdbf9bff373'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b4ba6adeada61b910e456fdbf9bff373'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Both are about the anti-defection'),
            ('B', 'The 81st Amendment Act of 2000 and the 84th of 2001 provided for the reservation of the seats for the women in the rural and the urban local bodies'),
            ('C', 'The 81st Amendment is about the right to education'),
            ('D', 'The 84th Amendment is about the delimitation')
           ) as v(label, option_text)
 where q.question_hash = 'b4ba6adeada61b910e456fdbf9bff373'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'The ''106th Amendment'' of 2021 provided for the reservation of the seats for the women in:',
    'The 106th Amendment inserted the Nari Shakti Vandan Adhiniyam, providing for the reservation of one-third of the seats for the women in the Lok Sabha and in the state legislative assemblies including the Delhi and the Puducherry assemblies.',
    'medium',
    'Standard Reference',
    2021,
    '7c2e7a40672ae6e2422a6ed5ee19eaff'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '7c2e7a40672ae6e2422a6ed5ee19eaff'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Rajya Sabha only'),
            ('B', 'The municipalities only'),
            ('C', 'The Lok Sabha and the state legislative assemblies'),
            ('D', 'The Panchayats only')
           ) as v(label, option_text)
 where q.question_hash = '7c2e7a40672ae6e2422a6ed5ee19eaff'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'The Supreme Court of India in 2022 was:',
    'Justice Y. V. Chandrachud was the Chief Justice of India from November 2022, and the CJI is the senior-most judge of the Supreme Court, the one who is senior in the order of the appointment.',
    'medium',
    'Supreme Court of India',
    2022,
    '2ddc6f698e36e37d8e66144339ddd10e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '2ddc6f698e36e37d8e66144339ddd10e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'headed by the Chief Justice Y. V. Chandrachud'),
            ('B', 'headed by the Chief Justice N. V. Ramana'),
            ('C', 'headed by the Chief Justice Dipak Misra'),
            ('D', 'headed by the Chief Justice Ranjan Gogoi')
           ) as v(label, option_text)
 where q.question_hash = '2ddc6f698e36e37d8e66144339ddd10e'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'The Supreme Court upheld:',
    'In December 2023 the Supreme Court upheld the abrogation of the special status of Jammu and Kashmir under Article 370 and directed the restoration of the statehood with the assembly elections in 2024.',
    'medium',
    'Supreme Court of India',
    2023,
    'a6e657b01081ca5f0914d78a5ec7e409'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a6e657b01081ca5f0914d78a5ec7e409'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'it down in 2019'),
            ('B', 'pending'),
            ('C', 'about the Article 35A'),
            ('D', 'the abrogation of Article 370 in December 2023')
           ) as v(label, option_text)
 where q.question_hash = 'a6e657b01081ca5f0914d78a5ec7e409'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'The ''Article 35A'' was inserted in the Constitution by:',
    'Article 35A was inserted by the Constitution (Nineteenth Amendment) Act, 2010, and it empowered the state legislature to confer on the permanent residents the special rights and the privileges.',
    'hard',
    'Standard Reference',
    2010,
    'caa81143c720b0c57433c2c6c1edb62c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'caa81143c720b0c57433c2c6c1edb62c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The 44th Amendment'),
            ('B', 'The 86th Amendment'),
            ('C', 'The Constitution (Nineteenth Amendment) Act, 2010'),
            ('D', 'The 42nd Amendment')
           ) as v(label, option_text)
 where q.question_hash = 'caa81143c720b0c57433c2c6c1edb62c'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'The ''91st Amendment Act'' of 2003:',
    'The 91st Amendment froze the allocation of the seats in the Lok Sabha and the state assemblies at the 1971 census levels until the first census after 2026.',
    'hard',
    'Standard Reference',
    2003,
    '7ac7dabb1112c9d7e97b5e95f58fff5a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '7ac7dabb1112c9d7e97b5e95f58fff5a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Introduced the Goods and Services Tax'),
            ('B', 'Limited the size of the Lok Sabha and the state assemblies to the existing levels'),
            ('C', 'Lowered the voting age'),
            ('D', 'Created the NITI Aayog')
           ) as v(label, option_text)
 where q.question_hash = '7ac7dabb1112c9d7e97b5e95f58fff5a'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'Consider the following statements. Which of them is correct with regard to the Article 19(1)(g)?',
    'In the M.P. Association of Dealers v. Union of India of 2021, the Supreme Court interpreted Article 19(1)(g) and held that the reasonableness of the restrictions and the consonance with the fundamental rights are the tests.',
    'hard',
    'Supreme Court of India',
    2021,
    '55942ae817d7dad52cfed12f40883073'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '55942ae817d7dad52cfed12f40883073'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Supreme Court in 2021 in the M.P. Association of Dealers and the case read the freedom to trade with the reasonableness of the restrictions'),
            ('B', 'The Article was deleted in 2021'),
            ('C', 'The Article was amended in 2015'),
            ('D', 'The judgment was of 1991')
           ) as v(label, option_text)
 where q.question_hash = '55942ae817d7dad52cfed12f40883073'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'Consider the following statements. Which of them is correct with regard to the Decriminalisation?',
    'The Criminal Laws (Amendment) Act of 2021 replaced the Indian Penal Code, the Code of Criminal Procedure and the Indian Evidence Act with the Bharatiya Nyaya Sanhita, the Bharatiya Nagarik Suraksha Sanhita and the Bharatiya Sakshya Adhiniyam.',
    'medium',
    'Standard Reference',
    2021,
    'b46b347375219e4ea7ec920cc1e88a30'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'b46b347375219e4ea7ec920cc1e88a30'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It decriminalised the adultery'),
            ('B', 'It was the law on the POCSO'),
            ('C', 'It was the law on the surrogacy'),
            ('D', 'The Criminal Laws (Amendment) Act of 2021 replaced the IPC, the CrPC and the Evidence Act with the BNS, the BNSS and the BSA')
           ) as v(label, option_text)
 where q.question_hash = 'b46b347375219e4ea7ec920cc1e88a30'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'The ''Digital Personal Data Protection Act'' was passed by the Parliament in:',
    'The Digital Personal Data Protection Act was passed in August 2023 and it came into force with the rules in 2025.',
    'medium',
    'Standard Reference',
    2023,
    '87576f37b85161da44019ef7ac0467a0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '87576f37b85161da44019ef7ac0467a0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2022'),
            ('B', '2019'),
            ('C', '2023'),
            ('D', '2021')
           ) as v(label, option_text)
 where q.question_hash = '87576f37b85161da44019ef7ac0467a0'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'The ''Telemedicine'' and the ''National Telemedicine Board'':',
    'The National Telemedicine Board was constituted under the Telemedicine Practice Guidelines of 2020 and it is an independent body under the National Medical Commission.',
    'hard',
    'Standard Reference',
    null,
    '8a19ca7d0857e52f3850d31818f18408'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '8a19ca7d0857e52f3850d31818f18408'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'There is no such body'),
            ('B', 'The National Telemedicine Board is a part of the NMC'),
            ('C', 'The National Telemedicine Board is a separate ministry'),
            ('D', 'The Board is under the CAG')
           ) as v(label, option_text)
 where q.question_hash = '8a19ca7d0857e52f3850d31818f18408'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'The CJI in 2023 was:',
    'Justice Dhananjaya Y. Chandrachud was the Chief Justice of India from November 2022 to December 2024, and he was the CJI for the G20 summit in 2023.',
    'medium',
    'Standard Reference',
    2023,
    '9a1ec039414ac976788b6550fbdc2816'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '9a1ec039414ac976788b6550fbdc2816'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Justice D. Y. Chandrachud'),
            ('B', 'Justice N. V. Ramana'),
            ('C', 'Justice Ranjan Gogoi'),
            ('D', 'Justice S. R. Das')
           ) as v(label, option_text)
 where q.question_hash = '9a1ec039414ac976788b6550fbdc2816'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'The ''The Chief Election Commissioner'' of India in 2022:',
    'Rajiv Kumar was the Chief Election Commissioner of India from December 2020 to December 2022, and he was succeeded by G. Gopalan in December 2022.',
    'hard',
    'Standard Reference',
    2022,
    '46fd8f259c1ca920a1d172fa0527e072'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '46fd8f259c1ca920a1d172fa0527e072'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'G. Gopalan'),
            ('B', 'T. N. Ranganathan'),
            ('C', 'Sukumar Sen'),
            ('D', 'Rajiv Kumar')
           ) as v(label, option_text)
 where q.question_hash = '46fd8f259c1ca920a1d172fa0527e072'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'Which of the following is correct in the case of the The Election Commission?',
    'The Election Commission mandated the webcasting of the polling stations in the assembly elections in 2022, in the run up to the 2024 general election.',
    'hard',
    'Standard Reference',
    2022,
    'c1e171b3bf8fa58e89a918e0de603e2e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c1e171b3bf8fa58e89a918e0de603e2e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The webcasting is optional'),
            ('B', 'There was no webcasting'),
            ('C', 'The ECI mandated the webcasting of the polling stations in the assembly elections in 2022'),
            ('D', 'The webcasting started in 1990')
           ) as v(label, option_text)
 where q.question_hash = 'c1e171b3bf8fa58e89a918e0de603e2e'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'The elections to the four Legislative Council seats in 2022 in Maharashtra and Karnataka were:',
    'The Supreme Court in 2022 ordered the election to the four vacant Legislative Council seats in Maharashtra and Karnataka and the polling took place in December 2022.',
    'hard',
    'Standard Reference',
    2022,
    '0efab750bf55cb0ed16db5217627989d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '0efab750bf55cb0ed16db5217627989d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'held without a court order'),
            ('B', 'cancelled'),
            ('C', 'abolished'),
            ('D', 'held after the Supreme Court order')
           ) as v(label, option_text)
 where q.question_hash = '0efab750bf55cb0ed16db5217627989d'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''The Finance Commission'' of India for 2021-26 was chaired by:',
    'The 15th Finance Commission, chaired by N. K. Singh, was constituted in November 2017 and it submitted its report for 2021-26.',
    'medium',
    'Standard Reference',
    null,
    '6f0039ed01a0ad65938d8888bf3e4eab'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '6f0039ed01a0ad65938d8888bf3e4eab'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Arvind Panagariya'),
            ('B', 'N. K. Singh'),
            ('C', 'Y. V. Yerraguntla'),
            ('D', 'B. K. N. Ramaswamy')
           ) as v(label, option_text)
 where q.question_hash = '6f0039ed01a0ad65938d8888bf3e4eab'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''The Fifteenth Finance Commission'' recommended the devolution of:',
    'The 15th Finance Commission recommended the devolution of 41 per cent of the divisible pool to the states, an increase of 6 percentage points over the 14th Commission.',
    'medium',
    'Standard Reference',
    null,
    '8c487bf6e3ed4fccdd6fad51b72c1e2e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '8c487bf6e3ed4fccdd6fad51b72c1e2e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '41 per cent of the divisible pool to the states'),
            ('B', '50 per cent'),
            ('C', '60 per cent'),
            ('D', '45 per cent')
           ) as v(label, option_text)
 where q.question_hash = '8c487bf6e3ed4fccdd6fad51b72c1e2e'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The 15th Finance Commission recommended:',
    'The 15th Finance Commission recommended the health grants of Rs. 20,000 crore to the states for the primary health care and it raised the share of the health in the divisible pool.',
    'hard',
    'Standard Reference',
    null,
    '1501b90269ab4d6617716e81ce52e095'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '1501b90269ab4d6617716e81ce52e095'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'it did not recommend the health grants'),
            ('B', 'the health grants of Rs. 1 lakh crore'),
            ('C', 'the health grants of Rs. 20,000 crore to the states'),
            ('D', 'the health grants of Rs. 2,000 crore')
           ) as v(label, option_text)
 where q.question_hash = '1501b90269ab4d6617716e81ce52e095'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'Petroleum products are:',
    'The petroleum products have been kept outside the GST and they continue to be governed by the central excise, and the GST Council reviews this periodically.',
    'medium',
    'Standard Reference',
    null,
    '5ec2bee1fe5f9a5fafdcb15e686d6936'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '5ec2bee1fe5f9a5fafdcb15e686d6936'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'in the GST from the start'),
            ('B', 'included in 2022'),
            ('C', 'outside'),
            ('D', 'outside the GST')
           ) as v(label, option_text)
 where q.question_hash = '5ec2bee1fe5f9a5fafdcb15e686d6936'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The new tax regime with the lower slabs was:',
    'The Finance Act of 2020 made the new tax regime with the lower slabs and the 87A rebate the default for the individual taxpayers, and it was made available from the assessment year 2021-22.',
    'medium',
    'Standard Reference',
    2020,
    'a21bdaf56a0d97fd5e7e5e719a64b687'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a21bdaf56a0d97fd5e7e5e719a64b687'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'withdrawn in 2022'),
            ('B', 'made the default for the taxpayers opting for the new regime'),
            ('C', 'made compulsory for all'),
            ('D', 'only for the corporates')
           ) as v(label, option_text)
 where q.question_hash = 'a21bdaf56a0d97fd5e7e5e719a64b687'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The merchandise exports of India were:',
    'The merchandise exports of India crossed the $400 billion mark for the first time in 2021-22, and the total exports of the goods and the services were over $680 billion.',
    'medium',
    'Standard Reference',
    2022,
    '9e69222ed96c1ea5002d65eb612d508d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '9e69222ed96c1ea5002d65eb612d508d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'over $400 billion in 2021-22'),
            ('B', 'over $100 billion'),
            ('C', 'over $800 billion'),
            ('D', 'over $1 trillion')
           ) as v(label, option_text)
 where q.question_hash = '9e69222ed96c1ea5002d65eb612d508d'
on conflict (question_id, label) do nothing;

commit;
