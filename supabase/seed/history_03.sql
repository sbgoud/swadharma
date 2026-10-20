-- =============================================================================
-- history_03.sql — history question pack, part 03
-- 250 questions. Applied after supabase/migrations/004_reference_data.sql
-- =============================================================================

begin;

-- history | british-raj | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'british-raj'),
    'The ''Indian Councils Act of 1909'' is known as the:',
    'The Indian Councils Act of 1909 is known as the Morley-Minto Reforms, which introduced separate electorates for Muslims and the principle of dyarchy in the provinces.',
    'easy',
    'Standard Reference',
    null,
    '7c394d127fc2f500d3d531c30ac4bff4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '7c394d127fc2f500d3d531c30ac4bff4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Morley-Minto Reforms'),
            ('B', 'Montagu-Chelmsford Reforms'),
            ('C', 'Simon Commission Reforms'),
            ('D', 'Rowlatt Act')
           ) as v(label, option_text)
 where q.question_hash = '7c394d127fc2f500d3d531c30ac4bff4'
on conflict (question_id, label) do nothing;

-- history | british-raj | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'british-raj'),
    'The ''Montagu-Chelmsford Reforms'' of 1919 provided for:',
    'The Government of India Act of 1919 introduced dyarchy in the provinces and separated central and provincial subjects for legislative purposes.',
    'medium',
    'Standard Reference',
    null,
    '18c7ad08eda7a099b9701e408ecae365'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '18c7ad08eda7a099b9701e408ecae365'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The partition of Bengal'),
            ('B', 'Provincial autonomy'),
            ('C', 'Separate electorates for Muslims'),
            ('D', 'The introduction of dyarchy in the provinces and the Act of 1919')
           ) as v(label, option_text)
 where q.question_hash = '18c7ad08eda7a099b9701e408ecae365'
on conflict (question_id, label) do nothing;

-- history | british-raj | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'british-raj'),
    'The ''Rowlatt Act'' of 1919 was:',
    'The Rowlatt Act gave the government extraordinary powers to deal with revolutionary activities and permitted detention without trial, and it was the immediate cause of the Rowlatt Satyagraha.',
    'easy',
    'Standard Reference',
    null,
    '4654fb0cc4b865061c2ec5e4c3d135f3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '4654fb0cc4b865061c2ec5e4c3d135f3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A step towards responsible government'),
            ('B', 'An extraordinary measure to deal with revolutionary and anti-British activities'),
            ('C', 'A law on the press'),
            ('D', 'A tariff legislation')
           ) as v(label, option_text)
 where q.question_hash = '4654fb0cc4b865061c2ec5e4c3d135f3'
on conflict (question_id, label) do nothing;

-- history | british-raj | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'british-raj'),
    'The ''Simon Commission'' was appointed in:',
    'The Simon Commission, or the Indian Statutory Commission, was appointed in 1927 under the chairmanship of Sir John Simon to review the working of the reforms.',
    'medium',
    'Standard Reference',
    null,
    '791350724410aaa8f7edd3b80a003a74'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '791350724410aaa8f7edd3b80a003a74'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1935'),
            ('B', '1942'),
            ('C', '1927'),
            ('D', '1930')
           ) as v(label, option_text)
 where q.question_hash = '791350724410aaa8f7edd3b80a003a74'
on conflict (question_id, label) do nothing;

-- history | british-raj | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'british-raj'),
    'The ''Government of India Act of 1935'' provided for:',
    'The Government of India Act of 1935 provided for an all-India federation and provincial autonomy, and it was the framework for the Government of India Act of 1935.',
    'medium',
    'Standard Reference',
    null,
    'a91d3bc24c83426297cb938a3a477174'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a91d3bc24c83426297cb938a3a477174'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Complete independence'),
            ('B', 'The partition of India'),
            ('C', 'The abolition of the Legislative Council'),
            ('D', 'Provincial autonomy and a federal structure')
           ) as v(label, option_text)
 where q.question_hash = 'a91d3bc24c83426297cb938a3a477174'
on conflict (question_id, label) do nothing;

-- history | british-raj | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'british-raj'),
    'The ''Poona Pact'' of 1932 was between:',
    'The Poona Pact of 1932 between Mahatma Gandhi and Dr. B.R. Ambedkar secured the reservation of seats for the Depressed Classes in the provincial and central legislative councils.',
    'medium',
    'Standard Reference',
    null,
    'a4bf46472ec2d02bf17cf1ecaa1bc9d8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a4bf46472ec2d02bf17cf1ecaa1bc9d8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Gandhi and Jawaharlal Nehru'),
            ('B', 'Gandhi and Dr. Ambedkar'),
            ('C', 'Nehru and Patel'),
            ('D', 'Gandhi and the British')
           ) as v(label, option_text)
 where q.question_hash = 'a4bf46472ec2d02bf17cf1ecaa1bc9d8'
on conflict (question_id, label) do nothing;

-- history | british-raj | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'british-raj'),
    'The ''Indian Independence Act, 1947'' provided for:',
    'The Indian Independence Act of 1947 divided British India into the dominions of India and Pakistan with effect from 15 August 1947.',
    'easy',
    'Standard Reference',
    null,
    'b060a469dfc02c7f18b99f3e39bf43e5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'b060a469dfc02c7f18b99f3e39bf43e5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The partition of India and the creation of the two dominions'),
            ('B', 'The Cabinet Mission Plan'),
            ('C', 'The Mountbatten Plan'),
            ('D', 'Provincial autonomy')
           ) as v(label, option_text)
 where q.question_hash = 'b060a469dfc02c7f18b99f3e39bf43e5'
on conflict (question_id, label) do nothing;

-- history | british-raj | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'british-raj'),
    'The ''Cabinet Mission'' was sent to India in:',
    'The Cabinet Mission, comprising Lord Pethick-Lawrence, Stafford Cripps and A.V. Alexander, arrived in March 1946 to examine the demand for a separate Pakistan.',
    'medium',
    'Standard Reference',
    null,
    'fb571eb7aa7f040bbe7da03bba314476'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'fb571eb7aa7f040bbe7da03bba314476'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1942'),
            ('B', '1944'),
            ('C', '1946'),
            ('D', '1947')
           ) as v(label, option_text)
 where q.question_hash = 'fb571eb7aa7f040bbe7da03bba314476'
on conflict (question_id, label) do nothing;

-- history | british-raj | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'british-raj'),
    'The ''Cabinet Mission Plan'' of 1946 provided for:',
    'The Cabinet Mission Plan rejected Pakistan and proposed a three-tier federal structure with grouping of provinces and a weak centre, but it failed to get the acceptance of the League and the Congress.',
    'medium',
    'Standard Reference',
    null,
    '5c90eea08f92e70e08982205473b10f2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '5c90eea08f92e70e08982205473b10f2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A three-tier federation with a weak centre'),
            ('B', 'A united India with a strong centre'),
            ('C', 'The partition of India'),
            ('D', 'Provincial autonomy only')
           ) as v(label, option_text)
 where q.question_hash = '5c90eea08f92e70e08982205473b10f2'
on conflict (question_id, label) do nothing;

-- history | british-raj | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'british-raj'),
    'The ''Mountbatten Plan'' or the ''3rd June Plan'' provided for:',
    'The Mountbatten Plan of 3 June 1947 provided for the partition of India and the lapse of paramountcy over the princely states, with the referendum clause being used by the Indian states to accede.',
    'medium',
    'Standard Reference',
    null,
    'df671e558a9356867acf729cf0ce9e60'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'df671e558a9356867acf729cf0ce9e60'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A loose federation with a strong centre'),
            ('B', 'The partition of India and the lapse of paramountcy'),
            ('C', 'Provincial autonomy'),
            ('D', 'A round table conference')
           ) as v(label, option_text)
 where q.question_hash = 'df671e558a9356867acf729cf0ce9e60'
on conflict (question_id, label) do nothing;

-- history | british-raj | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'british-raj'),
    'The ''Indian States'' acceded to India under the instrument of accession on:',
    'The instrument of accession was executed by the Maharajas of the Indian states, and they acceded to India with effect from 15 August 1947.',
    'hard',
    'Standard Reference',
    null,
    '72dcd0b41be2f9ccc3e8a1a8e213b2d2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '72dcd0b41be2f9ccc3e8a1a8e213b2d2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1 January 1948'),
            ('B', '30 July 1947'),
            ('C', '15 August 1947'),
            ('D', '26 January 1950')
           ) as v(label, option_text)
 where q.question_hash = '72dcd0b41be2f9ccc3e8a1a8e213b2d2'
on conflict (question_id, label) do nothing;

-- history | post-independence | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The ''Sardar Vallabhbhai Patel'' is credited with the integration of:',
    'As the Deputy Prime Minister and Home Minister, Patel was responsible for the integration of the 562 princely states into the Indian Union.',
    'easy',
    'Standard Reference',
    null,
    '0b2539c1921ea1049930acc2ac34bcf7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '0b2539c1921ea1049930acc2ac34bcf7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The British Indian provinces'),
            ('B', 'The Northeast frontier areas'),
            ('C', 'TheAndaman and Nicobar Islands'),
            ('D', 'The princely states of India')
           ) as v(label, option_text)
 where q.question_hash = '0b2539c1921ea1049930acc2ac34bcf7'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The ''Vallabhbhai Patel'' and the ''Junagadh'' and the ''Hyderabad'' cases:',
    'Junagadh and Hyderabad were cases of princely states that initially refused to accede, and the central forces were used in the case of Hyderabad.',
    'medium',
    'Standard Reference',
    null,
    '3fe8393f3095737962cb2d4d410d04cd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '3fe8393f3095737962cb2d4d410d04cd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Were cases of the Emergency'),
            ('B', 'Related to the land reforms'),
            ('C', 'Related to the princely states'' refusal to accede'),
            ('D', 'Were cases of the accession of the princely states')
           ) as v(label, option_text)
 where q.question_hash = '3fe8393f3095737962cb2d4d410d04cd'
on conflict (question_id, label) do nothing;

-- history | post-independence | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The ''Hyderabad'' was integrated into the Indian Union in:',
    'Operation Polo was carried out in September 1948 and Hyderabad acceded to India in the same year.',
    'hard',
    'Standard Reference',
    null,
    '9a0aac7a583295eb15a0e8adc12f1787'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '9a0aac7a583295eb15a0e8adc12f1787'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1949'),
            ('B', '1950'),
            ('C', '1947'),
            ('D', '1948')
           ) as v(label, option_text)
 where q.question_hash = '9a0aac7a583295eb15a0e8adc12f1787'
on conflict (question_id, label) do nothing;

-- history | post-independence | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The ''Junagadh'' was integrated into India in:',
    'Junagadh was integrated into the Indian Union in November 1948 after a plebiscite, though the action was contested by Pakistan.',
    'hard',
    'Standard Reference',
    null,
    '2e9b537760bb14617fe2d0d6b409f21c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '2e9b537760bb14617fe2d0d6b409f21c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1947'),
            ('B', '1948'),
            ('C', '1949'),
            ('D', '1950')
           ) as v(label, option_text)
 where q.question_hash = '2e9b537760bb14617fe2d0d6b409f21c'
on conflict (question_id, label) do nothing;

-- history | post-independence | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The ''States Reorganisation Act'' was enacted in:',
    'The States Reorganisation Act of 1956 implemented the recommendations of the Fazl Ali Commission and reorganised the states on linguistic lines.',
    'easy',
    'Standard Reference',
    null,
    'b9a79c13a3514bacf6598040ee7a04e2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'b9a79c13a3514bacf6598040ee7a04e2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1956'),
            ('B', '1963'),
            ('C', '1952'),
            ('D', '1950')
           ) as v(label, option_text)
 where q.question_hash = 'b9a79c13a3514bacf6598040ee7a04e2'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The ''Fazl Ali Commission'' was appointed in:',
    'The Fazl Ali Commission, appointed in 1953, examined the reorganisation of the states and recommended the reorganization on a linguistic basis.',
    'medium',
    'Standard Reference',
    null,
    '9d4927155fa03b7ab70dc8bc3c987dda'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '9d4927155fa03b7ab70dc8bc3c987dda'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1956'),
            ('B', '1948'),
            ('C', '1953'),
            ('D', '1955')
           ) as v(label, option_text)
 where q.question_hash = '9d4927155fa03b7ab70dc8bc3c987dda'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The state of Andhra Pradesh was created on:',
    'Andhra State was created on 1 November 1956, and the present Andhra Pradesh was formed on 1 April 1960 after the creation of Andhra Pradesh with the Telugu-speaking districts of the State of Mysore.',
    'medium',
    'Standard Reference',
    null,
    '28332d814c084dc4c5c5692452a0e3e3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '28332d814c084dc4c5c5692452a0e3e3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1 May 1960'),
            ('B', '1 October 1956'),
            ('C', '1 October 1953'),
            ('D', '1 November 1956')
           ) as v(label, option_text)
 where q.question_hash = '28332d814c084dc4c5c5692452a0e3e3'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'Gujarat and Maharashtra were formed on:',
    'The state of Bombay was divided into the states of Maharashtra and Gujarat with effect from 1 May 1960.',
    'medium',
    'Standard Reference',
    null,
    '9b9a66884e88269a7a3973771d914717'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '9b9a66884e88269a7a3973771d914717'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1 May 1960'),
            ('B', '1 November 1956'),
            ('C', '15 August 1947'),
            ('D', '1 October 1953')
           ) as v(label, option_text)
 where q.question_hash = '9b9a66884e88269a7a3973771d914717'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The state of Haryana was created on:',
    'Haryana was carved out of the erstwhile state of Punjab on 1 November 1966.',
    'medium',
    'Standard Reference',
    null,
    '2803e568dcab321bdaff42e07de316c8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '2803e568dcab321bdaff42e07de316c8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1 January 1967'),
            ('B', '1 November 1966'),
            ('C', '1 May 1960'),
            ('D', '1 October 1966')
           ) as v(label, option_text)
 where q.question_hash = '2803e568dcab321bdaff42e07de316c8'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The ''land reforms'' in India after independence mainly aimed at:',
    'The land reform programmes aimed to eliminate the intermediaries and confer ownership on the cultivator, with land ceilings and tenant protections.',
    'medium',
    'Standard Reference',
    null,
    'fef19048431657dd02dfc411dd98c8ba'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'fef19048431657dd02dfc411dd98c8ba'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Establishing large state farms'),
            ('B', 'Import of technology'),
            ('C', 'Abolishing zamindari and transferring ownership to the tillers'),
            ('D', 'Collectivisation of agriculture')
           ) as v(label, option_text)
 where q.question_hash = 'fef19048431657dd02dfc411dd98c8ba'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The ''Bhoodan'' and the ''Gramdan'' movements were associated with:',
    'Vinoba Bhave''s bhoodan and gramdan movements sought the voluntary donation of surplus land to landless labourers.',
    'medium',
    'Standard Reference',
    null,
    '26fcf046a7fc8ebdb7815b38c8001e2a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '26fcf046a7fc8ebdb7815b38c8001e2a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Vinoba Bhave'),
            ('B', 'Jawaharlal Nehru'),
            ('C', 'Ram Manohar Lohia'),
            ('D', 'C. Rajagopalachari')
           ) as v(label, option_text)
 where q.question_hash = '26fcf046a7fc8ebdb7815b38c8001e2a'
on conflict (question_id, label) do nothing;

-- history | post-independence | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The ''Green Revolution'' in India was associated with:',
    'M.S. Swaminathan, with Norman Borlaug''s high-yielding varieties, led the Green Revolution, which was first tested in Punjab and Haryana.',
    'easy',
    'Standard Reference',
    null,
    'cfc2e92c34108341b0c9f6afc8f8fe01'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'cfc2e92c34108341b0c9f6afc8f8fe01'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'B. P. Singh'),
            ('B', 'M.S. Swaminathan'),
            ('C', 'P.C. Mahalanobis'),
            ('D', 'V.K. Krishna Menon')
           ) as v(label, option_text)
 where q.question_hash = 'cfc2e92c34108341b0c9f6afc8f8fe01'
on conflict (question_id, label) do nothing;

-- history | post-independence | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The ''White Revolution'' in India was led by:',
    'Dr. Verghese Kurien, the Milkman of India, led the White Revolution through the National Dairy Development Board and made India the world''s largest milk producer.',
    'easy',
    'Standard Reference',
    null,
    '20eaed385519853f3076f40bd19abb31'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '20eaed385519853f3076f40bd19abb31'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Dr. M. S. Swaminathan'),
            ('B', 'Dr. R. H. Richharia'),
            ('C', 'Dr. A. B. Ghosh'),
            ('D', 'Dr. Verghese Kurien')
           ) as v(label, option_text)
 where q.question_hash = '20eaed385519853f3076f40bd19abb31'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The ''Operation Flood'' was the programme to:',
    'Operation Flood, the world''s largest milk production programme, was launched in 1970 with the building of dairy cooperatives on the Anand model.',
    'medium',
    'Standard Reference',
    null,
    '88b3be3d1be1a45730771ae0f0614fc6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '88b3be3d1be1a45730771ae0f0614fc6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Promote fisheries'),
            ('B', 'Increase milk production'),
            ('C', 'Distribute wheat'),
            ('D', 'Control floods')
           ) as v(label, option_text)
 where q.question_hash = '88b3be3d1be1a45730771ae0f0614fc6'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'India''s first five-year plan was based on the:',
    'The First Five Year Plan (1951-56) was based on the P.C. Mahalanobis model with a focus on agriculture, irrigation and power.',
    'medium',
    'Standard Reference',
    null,
    '17134eefd5a09650b5d5897489dbfd79'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '17134eefd5a09650b5d5897489dbfd79'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Agricultural model'),
            ('B', 'Drought model'),
            ('C', 'Heavy industry model'),
            ('D', 'P.C. Mahalanobis model')
           ) as v(label, option_text)
 where q.question_hash = '17134eefd5a09650b5d5897489dbfd79'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The ''Integrated Programme of National Development'' and the ''Garibi Hatao'' slogan belong to the:',
    'The Third Five Year Plan (1961-66) emphasised agriculture, poverty eradication and family planning under the slogan Garibi Hatao.',
    'medium',
    'Standard Reference',
    null,
    '9881c07f9696e5d81e7fe5ff2e393f06'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '9881c07f9696e5d81e7fe5ff2e393f06'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Third Five Year Plan'),
            ('B', 'Fourth Five Year Plan'),
            ('C', 'First Five Year Plan'),
            ('D', 'Second Five Year Plan')
           ) as v(label, option_text)
 where q.question_hash = '9881c07f9696e5d81e7fe5ff2e393f06'
on conflict (question_id, label) do nothing;

-- history | post-independence | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'India''s nuclear test ''Pokhran-II'' was conducted in:',
    'Pokhran-II was conducted on 11 and 13 May 1998 under PM Atal Bihari Vajpayee, and it was followed by a series of tests in 1998.',
    'easy',
    'Standard Reference',
    null,
    '76cef5fc874ba3cd7b48ecc3701eb722'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '76cef5fc874ba3cd7b48ecc3701eb722'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2001'),
            ('B', '1974'),
            ('C', '1998'),
            ('D', '1988')
           ) as v(label, option_text)
 where q.question_hash = '76cef5fc874ba3cd7b48ecc3701eb722'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'India''s first satellite ''Aryabhata'' was launched in:',
    'Aryabhata, India''s first satellite, was launched on 19 April 1975 from Kapustin Yar in the Soviet Union, though it was not in the intended orbit.',
    'medium',
    'Standard Reference',
    null,
    '7ab73fce6da9b89596c49c21c3474d0c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '7ab73fce6da9b89596c49c21c3474d0c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1972'),
            ('B', '1975'),
            ('C', '1975 by a Soviet launch vehicle'),
            ('D', '1967')
           ) as v(label, option_text)
 where q.question_hash = '7ab73fce6da9b89596c49c21c3474d0c'
on conflict (question_id, label) do nothing;

-- history | post-independence | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'India''s first indigenous launch vehicle ''SLV-3'' successfully launched Rohan in:',
    'The SLV-3, with Rohan as the payload, was launched on 22 May 1987 from Sriharikota, and India became the sixth country to put a satellite into orbit using an indigenous launcher.',
    'hard',
    'Standard Reference',
    null,
    'fc9323be4cd67d0ed64273c0e0119ab9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'fc9323be4cd67d0ed64273c0e0119ab9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1979'),
            ('B', '1984'),
            ('C', '1980'),
            ('D', '1987')
           ) as v(label, option_text)
 where q.question_hash = 'fc9323be4cd67d0ed64273c0e0119ab9'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The ''Pokhran-I'' test of 1974 was code-named:',
    'The 1974 test was code-named Smiling Buddha, while the 1998 series was Operation Shakti.',
    'medium',
    'Standard Reference',
    null,
    '22a728864f1356849747f964c7a740ec'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '22a728864f1356849747f964c7a740ec'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Smiling Buddha'),
            ('B', 'Operation Shakti'),
            ('C', 'Trinity'),
            ('D', 'Vajra')
           ) as v(label, option_text)
 where q.question_hash = '22a728864f1356849747f964c7a740ec'
on conflict (question_id, label) do nothing;

-- history | post-independence | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The ''Guarantee to the Fundamental Rights'' and the ''Chambal Project'':',
    'The Chambal project, the first major river valley project after independence, was begun in 1952 and completed in the 1950s.',
    'hard',
    'Standard Reference',
    null,
    '1f3171c82f4054bd3a14b2e6a5d17d15'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '1f3171c82f4054bd3a14b2e6a5d17d15'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Were both in Madhya Pradesh'),
            ('B', 'Were both part of the First Five Year Plan'),
            ('C', 'Were both in the 1950s'),
            ('D', 'Were both led by Nehru')
           ) as v(label, option_text)
 where q.question_hash = '1f3171c82f4054bd3a14b2e6a5d17d15'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The ''Indian Institutes of Technology'' were established with the assistance of:',
    'The IITs were set up with the assistance of the United States under the Indo-American Programme, the first of them at Kanpur in 1956.',
    'medium',
    'Standard Reference',
    null,
    '1d2c3d72b8737863a201fca982034192'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '1d2c3d72b8737863a201fca982034192'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The World Bank'),
            ('B', 'The Soviet Union'),
            ('C', 'The United States'),
            ('D', 'The British Government')
           ) as v(label, option_text)
 where q.question_hash = '1d2c3d72b8737863a201fca982034192'
on conflict (question_id, label) do nothing;

-- history | post-independence | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The ''Atomic Energy Commission'' of India was set up in:',
    'The Atomic Energy Commission was set up in August 1948 by an executive resolution, and it became a statutory body under the Atomic Energy Act of 1962.',
    'hard',
    'Standard Reference',
    null,
    '4f91e242263d7ee4f303ea4d41e02e46'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '4f91e242263d7ee4f303ea4d41e02e46'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1947'),
            ('B', '1948'),
            ('C', '1951'),
            ('D', '1954')
           ) as v(label, option_text)
 where q.question_hash = '4f91e242263d7ee4f303ea4d41e02e46'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'Which of the following statements regarding the 1969 is correct?',
    'ISRO was founded in August 1969 and given the status of a national space agency in 1972.',
    'medium',
    'Standard Reference',
    null,
    'adea1ea254c5c7a613c0aa052e10d872'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'adea1ea254c5c7a613c0aa052e10d872'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1972'),
            ('B', '1975'),
            ('C', '1962'),
            ('D', '1969')
           ) as v(label, option_text)
 where q.question_hash = 'adea1ea254c5c7a613c0aa052e10d872'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The ''Naga Rajghat'' and the ''Narmada Valley Project'' were:',
    'The Narmada Valley Project and the Nagarjunsagar and the Bhakra projects were the major river valley projects of the second plan.',
    'medium',
    'Standard Reference',
    null,
    '0f7490a9cad32fe0ed0d1a7460c5026a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '0f7490a9cad32fe0ed0d1a7460c5026a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Two river valley projects'),
            ('B', 'Two environmental movements'),
            ('C', 'Two industrial policy resolutions'),
            ('D', 'Two of the five-year plans')
           ) as v(label, option_text)
 where q.question_hash = '0f7490a9cad32fe0ed0d1a7460c5026a'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The ''Nagaland'' and the ''North-East Frontier Agency'' were:',
    'The North-Eastern Areas (Reorganisation) Act of 1971 created the states of Meghalaya, Manipur, Tripura, Arunachal Pradesh, Mizoram and Nagaland and the union territories of Dadra and Nagar Haveli and Daman and Diu.',
    'medium',
    'Standard Reference',
    null,
    'bf9c7a95436037322bac8ff265c8f408'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'bf9c7a95436037322bac8ff265c8f408'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Created in 1987'),
            ('B', 'States of the 1956 Act'),
            ('C', 'Union territories'),
            ('D', 'Part of the North-Eastern Areas (Reorganisation) Act of 1971')
           ) as v(label, option_text)
 where q.question_hash = 'bf9c7a95436037322bac8ff265c8f408'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The ''Sikkim'' was made a state of India in:',
    'Sikkim was made a state of the Indian Union in 1975 after the referendum of 1973.',
    'medium',
    'Standard Reference',
    null,
    'afbfc0bd8d8f7f543b6e2e36fa99fa29'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'afbfc0bd8d8f7f543b6e2e36fa99fa29'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1987'),
            ('B', '1975'),
            ('C', '1974'),
            ('D', '1976')
           ) as v(label, option_text)
 where q.question_hash = 'afbfc0bd8d8f7f543b6e2e36fa99fa29'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The ''Pondicherry'' and the ''Mahe'':',
    'Puducherry, Karaikal, Mahe and Yanam are the remnants of the former French colonies in India and were integrated with India in 1954 and 1962.',
    'medium',
    'Standard Reference',
    null,
    'a8b34ae1868e1789a77562ebf8178140'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a8b34ae1868e1789a77562ebf8178140'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Are the remnants of the French presence in India'),
            ('B', 'Were Portuguese'),
            ('C', 'Were Danish'),
            ('D', 'Were part of the French East India Company')
           ) as v(label, option_text)
 where q.question_hash = 'a8b34ae1868e1789a77562ebf8178140'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'Goa was liberated from the Portuguese in:',
    'Goa was liberated on 18 December 1961 by the Indian armed forces, and the operation was code-named Vijay.',
    'medium',
    'Standard Reference',
    null,
    'efe9d24f457ac0b45e8a9f565d5fb476'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'efe9d24f457ac0b45e8a9f565d5fb476'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1967'),
            ('B', '1957'),
            ('C', '1961'),
            ('D', '1963')
           ) as v(label, option_text)
 where q.question_hash = 'efe9d24f457ac0b45e8a9f565d5fb476'
on conflict (question_id, label) do nothing;

-- history | post-independence | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The ''Operation Vijay'' of 1961 was:',
    'Operation Vijay was the military operation that led to the liberation of Goa, Daman and Diu from Portuguese rule in December 1961.',
    'easy',
    'Standard Reference',
    null,
    '495194118630e07fd61340de12f821f8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '495194118630e07fd61340de12f821f8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The annexation of Sikkim'),
            ('B', 'The liberation of Goa'),
            ('C', 'The annexation of Hyderabad'),
            ('D', 'The liberation of Junagadh')
           ) as v(label, option_text)
 where q.question_hash = '495194118630e07fd61340de12f821f8'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The ''Sardar Patel'' and the ''Hyderabad'' and the ''Junagadh'':',
    'Junagadh and Hyderabad, both Muslim-majority princely states, were integrated into India after a referendum in Junagadh and the ''Operation Polo'' in Hyderabad.',
    'medium',
    'Standard Reference',
    null,
    'f4bfe42aba1cca0015b671b75722f3df'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'f4bfe42aba1cca0015b671b75722f3df'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'States that sought a separate identity'),
            ('B', 'States that became union territories'),
            ('C', 'States that acceded to Pakistan'),
            ('D', 'States that were integrated into India')
           ) as v(label, option_text)
 where q.question_hash = 'f4bfe42aba1cca0015b671b75722f3df'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''Indian National Congress'' was founded in:',
    'The Indian National Congress was founded in December 1885 at Gokuldas Tejpal Sanskrit College in Bombay with 72 delegates.',
    'easy',
    'Standard Reference',
    null,
    'd87ce455266aad9de794265ea51ea351'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd87ce455266aad9de794265ea51ea351'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1905'),
            ('B', '1900'),
            ('C', '1885'),
            ('D', '1895')
           ) as v(label, option_text)
 where q.question_hash = 'd87ce455266aad9de794265ea51ea351'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The first President of the Indian National Congress was:',
    'W.C. Bonnerjee was the first President of the Congress at its first session in Bombay in 1885, and A.O. Hume, a retired civil servant, was the founder.',
    'medium',
    'Standard Reference',
    null,
    '816dff12372162c024feae665424287b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '816dff12372162c024feae665424287b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'W.C. Bonnerjee'),
            ('B', 'Dadabhai Naoroji'),
            ('C', 'George Yule'),
            ('D', 'A.O. Hume')
           ) as v(label, option_text)
 where q.question_hash = '816dff12372162c024feae665424287b'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''partition of Bengal'' of 1905 was announced by:',
    'Lord Curzon announced the partition of Bengal in July 1905, which triggered the Swadeshi and Boycott movement.',
    'easy',
    'Standard Reference',
    null,
    '06e4218bda8f34a80378f2ba36799660'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '06e4218bda8f34a80378f2ba36799660'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Lord Lytton'),
            ('B', 'Lord Curzon'),
            ('C', 'Lord Ripon'),
            ('D', 'Lord Hardinge')
           ) as v(label, option_text)
 where q.question_hash = '06e4218bda8f34a80378f2ba36799660'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''Swadeshi movement'' was launched in opposition to:',
    'The Swadeshi and boycott movement of 1905 was a spontaneous mass protest against the partition of Bengal, and it pioneered the use of swadeshi and boycott as methods of national struggle.',
    'medium',
    'Standard Reference',
    null,
    '20e7cc31350370b7d58abad1995652ed'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '20e7cc31350370b7d58abad1995652ed'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Simon Commission'),
            ('B', 'The Second World War'),
            ('C', 'The partition of Bengal'),
            ('D', 'The Rowlatt Act')
           ) as v(label, option_text)
 where q.question_hash = '20e7cc31350370b7d58abad1995652ed'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''Surat Split'' of 1907 led to the formation of:',
    'The split at Surat and the subsequent reunion led to the formation of the All India Muslim League in Dhaka in 1906 with the objective of safeguards for the Muslims.',
    'medium',
    'Standard Reference',
    null,
    'a59989ad3124abb407d3114f7fe68797'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a59989ad3124abb407d3114f7fe68797'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Muslim League'),
            ('B', 'The Hindu Mahasabha'),
            ('C', 'The Justice Party'),
            ('D', 'The Communist Party')
           ) as v(label, option_text)
 where q.question_hash = 'a59989ad3124abb407d3114f7fe68797'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''Lucknow Pact'' of 1916 was between:',
    'The Lucknow Pact of 1916 was an agreement between the Congress and the Muslim League to reunite and to work together for representative government.',
    'medium',
    'Standard Reference',
    null,
    'ed0dad41c90be7f151f9c05f7cbd5704'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'ed0dad41c90be7f151f9c05f7cbd5704'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Congress and the Liberals'),
            ('B', 'The League and the Depressed Classes'),
            ('C', 'The moderates and the extremists'),
            ('D', 'The Congress and the Muslim League')
           ) as v(label, option_text)
 where q.question_hash = 'ed0dad41c90be7f151f9c05f7cbd5704'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''Rowlatt Satyagraha'' was called the:',
    'The Rowlatt Satyagraha was a nationwide protest by the ''no-changers'', led jointly by Mahatma Gandhi and Shaukat Ali, and it was the first all-India political movement.',
    'hard',
    'Standard Reference',
    null,
    'de8692cd9f376644797d83a3534ed3b6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'de8692cd9f376644797d83a3534ed3b6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'No-changers'' agitation'),
            ('B', 'Satyagraha of the Rowlatt Act'),
            ('C', 'Railway strike'),
            ('D', 'Peasant agitation')
           ) as v(label, option_text)
 where q.question_hash = 'de8692cd9f376644797d83a3534ed3b6'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''Jallianwala Bagh massacre'' took place at:',
    'The Jallianwala Bagh massacre took place on 13 April 1919 in Amritsar, where General Dyer ordered his troops to fire on a peaceful crowd in the enclosed ground.',
    'easy',
    'Standard Reference',
    null,
    'aea448bbab6913c01a2427c2ec340e38'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'aea448bbab6913c01a2427c2ec340e38'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Lahore'),
            ('B', 'Delhi'),
            ('C', 'Kanpur'),
            ('D', 'Amritsar')
           ) as v(label, option_text)
 where q.question_hash = 'aea448bbab6913c01a2427c2ec340e38'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''Khilafat'' movement was launched in support of:',
    'The Khilafat movement, launched in 1919, demanded the restoration of the Ottoman Sultan-Caliph and coincided with the Non-Cooperation Movement.',
    'easy',
    'Standard Reference',
    null,
    'e8eaf203bc516e5679e61d4b5e55288d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e8eaf203bc516e5679e61d4b5e55288d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Kaiser'),
            ('B', 'The British Crown'),
            ('C', 'The Ottoman Empire and the Sultan of Turkey'),
            ('D', 'The Tsar of Russia')
           ) as v(label, option_text)
 where q.question_hash = 'e8eaf203bc516e5679e61d4b5e55288d'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''Non-Cooperation Movement'' was launched in:',
    'The Non-Cooperation Movement was formally launched in January 1921 following the visit of the Prince of Wales to India in November 1920.',
    'easy',
    'Standard Reference',
    null,
    '3f86f0646226546e56ce75aab7e71ab2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '3f86f0646226546e56ce75aab7e71ab2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1919'),
            ('B', '1920'),
            ('C', '1922'),
            ('D', '1930')
           ) as v(label, option_text)
 where q.question_hash = '3f86f0646226546e56ce75aab7e71ab2'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''Chauri Chaura'' incident led to the withdrawal of:',
    'The Chauri Chaura incident of February 1922, in which a police station was burnt, prompted Gandhi to withdraw the Non-Cooperation Movement.',
    'medium',
    'Standard Reference',
    null,
    '529a7afb6c33b1c86bb464f004ab007b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '529a7afb6c33b1c86bb464f004ab007b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Civil Disobedience Movement'),
            ('B', 'The Non-Cooperation Movement'),
            ('C', 'The Quit India Movement'),
            ('D', 'The Simon Commission boycott')
           ) as v(label, option_text)
 where q.question_hash = '529a7afb6c33b1c86bb464f004ab007b'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''Swaraj Party'' was formed in:',
    'The Swaraj Party was formed in 1923 by C.R. Das and Motilal Nehru after the withdrawal of the Non-Cooperation Movement.',
    'hard',
    'Standard Reference',
    null,
    '92ef641820c96cb58cfd0ae04b049560'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '92ef641820c96cb58cfd0ae04b049560'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1928'),
            ('B', '1930'),
            ('C', '1922'),
            ('D', '1923')
           ) as v(label, option_text)
 where q.question_hash = '92ef641820c96cb58cfd0ae04b049560'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''Simon Commission'' boycott was notable for the participation of:',
    'The boycott of the Simon Commission in 1928 saw all the political parties join hands, with Lala Lajpat Rai injured in the lathi charge at Lahore.',
    'medium',
    'Standard Reference',
    null,
    '58bac32797b86540f6adcdd633b02088'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '58bac32797b86540f6adcdd633b02088'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Only the students'),
            ('B', 'Only the Congress'),
            ('C', 'All political parties including the Communists and the Muslim League'),
            ('D', 'Only the revolutionaries')
           ) as v(label, option_text)
 where q.question_hash = '58bac32797b86540f6adcdd633b02088'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''Lahore Session'' of the Congress presided over by Jawaharlal Nehru in 1929:',
    'The Lahore session in December 1929 adopted the historic Purna Swaraj resolution, declaring the independence of India the goal of the Congress.',
    'medium',
    'Standard Reference',
    null,
    'c11efc12dcfa38cd6f27add5bda9b3c2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'c11efc12dcfa38cd6f27add5bda9b3c2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Approved the Purna Swaraj resolution'),
            ('B', 'Approved the Quit India resolution'),
            ('C', 'Approved the Cabinet Mission Plan'),
            ('D', 'Rejected the dominion status')
           ) as v(label, option_text)
 where q.question_hash = 'c11efc12dcfa38cd6f27add5bda9b3c2'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''Civil Disobedience Movement'' was launched with the:',
    'The Civil Disobedience Movement began with the Dandi March of 1930, in which Gandhi walked 240 miles from Sabarmati to the coastal town of Dandi to break the salt law.',
    'easy',
    'Standard Reference',
    null,
    'b00a554771dadbfb0481d7d9bdd84a18'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'b00a554771dadbfb0481d7d9bdd84a18'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Quit India'),
            ('B', 'No-tax campaign'),
            ('C', 'Dandi March'),
            ('D', 'Salt Satyagraha')
           ) as v(label, option_text)
 where q.question_hash = 'b00a554771dadbfb0481d7d9bdd84a18'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''Poona Pact'' was signed in 1932 between:',
    'The Poona Pact of 1932 replaced the separate electorate for the Depressed Classes with reserved seats within the general electorate.',
    'medium',
    'Standard Reference',
    null,
    'd54a9340575e752c35ef77fd614bae48'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'd54a9340575e752c35ef77fd614bae48'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Nehru and Patel'),
            ('B', 'The British and the Congress'),
            ('C', 'Gandhi and Jinnah'),
            ('D', 'Mahatma Gandhi and Dr. Ambedkar')
           ) as v(label, option_text)
 where q.question_hash = 'd54a9340575e752c35ef77fd614bae48'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''Government of India Act, 1935'' provided for provincial autonomy and the establishment of:',
    'The Government of India Act of 1935 provided for a Federal Court, which was inaugurated in 1937 and was the precursor of the Supreme Court of India.',
    'hard',
    'Standard Reference',
    null,
    '198ace55f3a85cd3fb8f89d89d8fb840'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '198ace55f3a85cd3fb8f89d89d8fb840'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A Planning Commission'),
            ('B', 'A Federal Court'),
            ('C', 'An All-India Federation'),
            ('D', 'A Reserve Bank of India')
           ) as v(label, option_text)
 where q.question_hash = '198ace55f3a85cd3fb8f89d89d8fb840'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''Poona Pact'' and the ''Federation'' never came into being because:',
    'The princely states did not accede to the Federation proposed in the Government of India Act, 1935, so it never came into being.',
    'medium',
    'Standard Reference',
    null,
    '0a9c5b5bc047062c51a70fd2612788d8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '0a9c5b5bc047062c51a70fd2612788d8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The princely states refused to accede'),
            ('B', 'The Congress boycotted the elections'),
            ('C', 'The British refused'),
            ('D', 'The Muslim League vetoed it')
           ) as v(label, option_text)
 where q.question_hash = '0a9c5b5bc047062c51a70fd2612788d8'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''Quit India Movement'' was launched in:',
    'The Quit India Movement was launched on 8 August 1942 with the ''Do or Die'' resolution adopted at the Gowalia Tank Maidan in Bombay.',
    'easy',
    'Standard Reference',
    null,
    '9554c633f95bd8804ad4275cb048306a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '9554c633f95bd8804ad4275cb048306a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1942'),
            ('B', '1944'),
            ('C', '1939'),
            ('D', '1940')
           ) as v(label, option_text)
 where q.question_hash = '9554c633f95bd8804ad4275cb048306a'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''Do or Die'' resolution was adopted at:',
    'The Quit India resolution was adopted at the Gowalia Tank Maidan in Bombay on 8 August 1942 and was moved by Jawaharlal Nehru.',
    'medium',
    'Standard Reference',
    null,
    '5ab4936a199aa9893062f3636c7c030a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '5ab4936a199aa9893062f3636c7c030a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Calcutta session'),
            ('B', 'The Gowalia Tank Maidan in Bombay'),
            ('C', 'The Lucknow session'),
            ('D', 'The Lahore session')
           ) as v(label, option_text)
 where q.question_hash = '5ab4936a199aa9893062f3636c7c030a'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''Indian National Army'' and the ''Subhas Chandra Bose'':',
    'Subhas Chandra Bose revived the INA in the Second World War with the objective of freeing India through armed struggle, and Azad Hind Hindustan was formed in Singapore in 1943.',
    'easy',
    'Standard Reference',
    null,
    '9f77379d5e686a7a56e1b01c52d66859'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '9f77379d5e686a7a56e1b01c52d66859'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Were founded by the Congress in 1920'),
            ('B', 'Were an entirely civilian organisation'),
            ('C', 'Were part of the Non-Cooperation Movement'),
            ('D', 'Were revived by Subhas Chandra Bose in the Second World War')
           ) as v(label, option_text)
 where q.question_hash = '9f77379d5e686a7a56e1b01c52d66859'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''Azad Hind Hindustan'' government was proclaimed in:',
    'The Provisional Government of Azad Hind Hindustan was proclaimed in Singapore on 21 October 1943 with Subhas Chandra Bose as its premier.',
    'medium',
    'Standard Reference',
    null,
    'e7fceb8c2e2e1e4c788a387ad2ff5cd1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e7fceb8c2e2e1e4c788a387ad2ff5cd1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1940'),
            ('B', '1942'),
            ('C', '1943'),
            ('D', '1945')
           ) as v(label, option_text)
 where q.question_hash = 'e7fceb8c2e2e1e4c788a387ad2ff5cd1'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''INA trials'' at the Red Fort in 1945-46:',
    'The INA trials at the Red Fort provoked nationwide public anger and led to the Royal Indian Navy mutiny of February 1946.',
    'medium',
    'Standard Reference',
    null,
    '58ec3c9c885ea5bf59a8b64a6c89352c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '58ec3c9c885ea5bf59a8b64a6c89352c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Had no political impact'),
            ('B', 'Were the trials of the British officers'),
            ('C', 'Created public outrage and the RIN mutiny of 1946'),
            ('D', 'Were the trials of the Congress leaders')
           ) as v(label, option_text)
 where q.question_hash = '58ec3c9c885ea5bf59a8b64a6c89352c'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''Cabinet Mission'' of 1946 and the ''Mountbatten Plan'' were:',
    'The Cabinet Mission Plan and the Mountbatten Plan were the last British attempts to resolve the demand for a separate Pakistan before the transfer of power.',
    'medium',
    'Standard Reference',
    null,
    '9863e00de592a3d685e6efa0c566cd4c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '9863e00de592a3d685e6efa0c566cd4c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Both rejected by the Congress'),
            ('B', 'The last attempts to resolve the question of Pakistan'),
            ('C', 'Both about the economy'),
            ('D', 'Both about land reforms')
           ) as v(label, option_text)
 where q.question_hash = '9863e00de592a3d685e6efa0c566cd4c'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''Indian Independence Act'' and the ''Indian States'' accession:',
    'With the lapse of paramountcy, the princely states were free to accede to India or Pakistan, and most acceded to India.',
    'medium',
    'Standard Reference',
    null,
    '23bddb5b7af47ddb081f7a5428caef10'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '23bddb5b7af47ddb081f7a5428caef10'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The states acceded to India with the lapse of paramountcy'),
            ('B', 'The states became provinces'),
            ('C', 'The states remained independent'),
            ('D', 'The states acceded to Pakistan')
           ) as v(label, option_text)
 where q.question_hash = '23bddb5b7af47ddb081f7a5428caef10'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''Gandhi-Matthieu'' and the ''Mountbatten'' plan:',
    'The Gandhi-Matthieu Plan of 1945 and the Mountbatten Plan of 1947 were successive plans for the partition of India.',
    'hard',
    'Standard Reference',
    null,
    'eb7a913920009bc2de1682887d8e07c9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'eb7a913920009bc2de1682887d8e07c9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Were economic plans'),
            ('B', 'Were about the army'),
            ('C', 'Were about the provinces'),
            ('D', 'Were plans of partition')
           ) as v(label, option_text)
 where q.question_hash = 'eb7a913920009bc2de1682887d8e07c9'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''First World War'' and the Indian economy:',
    'The First World War brought inflation, a fall in the export of goods, a rise in the imports and heavy expenditure on war, and the result was a deep depression in the Indian economy.',
    'medium',
    'Standard Reference',
    null,
    '85b2645563f8fe1f9db0cacf36f64ca5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '85b2645563f8fe1f9db0cacf36f64ca5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Led to a severe depression and the decline of the war economy in India'),
            ('B', 'Had no impact on India'),
            ('C', 'Led to the end of British rule'),
            ('D', 'Led to an economic boom in India')
           ) as v(label, option_text)
 where q.question_hash = '85b2645563f8fe1f9db0cacf36f64ca5'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''First World War'' and the ''Indian cotton boom'':',
    'The war created a cotton boom in India as the Lancashire mills were cut off from supplies, and India''s cotton exports rose sharply.',
    'medium',
    'Standard Reference',
    null,
    'd8d2a7db391cad8489c0db011df4e249'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'd8d2a7db391cad8489c0db011df4e249'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Cotton was banned'),
            ('B', 'Cotton was exported only to Britain'),
            ('C', 'Cotton prices collapsed'),
            ('D', 'Cotton prices rose and India became a major exporter')
           ) as v(label, option_text)
 where q.question_hash = 'd8d2a7db391cad8489c0db011df4e249'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Rowlatt Act'' was a response to:',
    'The Rowlatt Act of 1919 was the British response to the revolutionary activities, notably the HSRA and the bomb throwers of the 1920s.',
    'medium',
    'Standard Reference',
    null,
    '7a022d2fff720023a294032d16ce47e3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '7a022d2fff720023a294032d16ce47e3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Rowlatt Satyagraha'),
            ('B', 'The Lucknow Pact'),
            ('C', 'The revolutionary activities of Bhagat Singh and the Revolutionary Party'),
            ('D', 'The Champaran Satyagraha')
           ) as v(label, option_text)
 where q.question_hash = '7a022d2fff720023a294032d16ce47e3'
on conflict (question_id, label) do nothing;

-- history | world-history | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Treaty of Versailles'' was signed in:',
    'The Treaty of Versailles, which ended the state of war between Germany and the Allied Powers, was signed on 28 June 1919.',
    'easy',
    'Standard Reference',
    null,
    '57361fcef75c59777eec2eec6d1ddada'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '57361fcef75c59777eec2eec6d1ddada'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1918'),
            ('B', '1919'),
            ('C', '1920'),
            ('D', '1921')
           ) as v(label, option_text)
 where q.question_hash = '57361fcef75c59777eec2eec6d1ddada'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''League of Nations'' was established in:',
    'The Covenant of the League of Nations came into force on 10 January 1920, and the League was the first attempt at a world organisation for peace.',
    'medium',
    'Standard Reference',
    null,
    '20c979127f346bb9f9a7f0a21fb6484a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '20c979127f346bb9f9a7f0a21fb6484a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1920'),
            ('B', '1921'),
            ('C', '1945'),
            ('D', '1919')
           ) as v(label, option_text)
 where q.question_hash = '20c979127f346bb9f9a7f0a21fb6484a'
on conflict (question_id, label) do nothing;

-- history | world-history | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Washington Naval Conference'' of 1921-22 led to:',
    'The Washington Naval Conference produced the Five-Power Naval Treaty, which limited the tonnage of capital ships and established the ratio for the Pacific naval powers.',
    'hard',
    'Standard Reference',
    null,
    'fa124e6c1116c5ae2ae979787e4495c7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'fa124e6c1116c5ae2ae979787e4495c7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Kellogg-Briand Pact'),
            ('B', 'The Locarno Treaty'),
            ('C', 'The League of Nations'),
            ('D', 'The Five-Power Naval Treaty limiting capital ships')
           ) as v(label, option_text)
 where q.question_hash = 'fa124e6c1116c5ae2ae979787e4495c7'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Kellogg-Briand Pact'' of 1928:',
    'The Kellogg-Briand Pact of 1928, signed by 15 nations and the League of Nations, renounced war as an instrument of national policy.',
    'medium',
    'Standard Reference',
    null,
    '43fee49291f2445c53286292c1fb6e79'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '43fee49291f2445c53286292c1fb6e79'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Fixed the borders of Poland'),
            ('B', 'Settled the German reparations'),
            ('C', 'Renounced war as an instrument of national policy'),
            ('D', 'Created the United Nations')
           ) as v(label, option_text)
 where q.question_hash = '43fee49291f2445c53286292c1fb6e79'
on conflict (question_id, label) do nothing;

-- history | world-history | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Great Depression'' of 1929 affected India through:',
    'The Great Depression hit India through the collapse of agricultural prices, the fall in the exports and the withdrawal of the British capital, with the decline in the rupee''s exchange rate being an effect rather than a cause.',
    'hard',
    'Standard Reference',
    null,
    'e5974bf5cd4f887df70945ee5172cd63'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e5974bf5cd4f887df70945ee5172cd63'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The closure of the Suez Canal'),
            ('B', 'The collapse of the agricultural prices'),
            ('C', 'The withdrawal of the British capital'),
            ('D', 'The fall in the rupee exchange rate only')
           ) as v(label, option_text)
 where q.question_hash = 'e5974bf5cd4f887df70945ee5172cd63'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Second World War'' and India:',
    'The Second World War brought an economic boom to India through huge military expenditure and recruitment of about 2.5 million Indian soldiers, but it also created acute shortages and inflation.',
    'medium',
    'Standard Reference',
    null,
    '24e36867e7d864f728f659f58c51bc50'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '24e36867e7d864f728f659f58c51bc50'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was fought with Indian soldiers only in Europe'),
            ('B', 'Had no impact on India'),
            ('C', 'Created a boom in the wartime economy and a huge military recruitment'),
            ('D', 'Led to the end of the British empire')
           ) as v(label, option_text)
 where q.question_hash = '24e36867e7d864f728f659f58c51bc50'
on conflict (question_id, label) do nothing;

-- history | world-history | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Bretton Woods Conference'' of 1944 established:',
    'The Bretton Woods Conference of July 1944 in New Hampshire set up the International Monetary Fund and the International Bank for Reconstruction and Development, the predecessor of the World Bank.',
    'easy',
    'Standard Reference',
    null,
    '4f51d111d632fb961ecc95c32a99b424'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '4f51d111d632fb961ecc95c32a99b424'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The United Nations and the Security Council'),
            ('B', 'The IMF and the World Bank'),
            ('C', 'The European Union'),
            ('D', 'The League of Nations')
           ) as v(label, option_text)
 where q.question_hash = '4f51d111d632fb961ecc95c32a99b424'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''UN General Assembly'' has:',
    'The UN General Assembly comprises 193 member states, each with one vote, and it met for the first time in London in January 1946.',
    'medium',
    'Standard Reference',
    null,
    '4fa4e6fdb88d32a361e99ac28ed63392'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '4fa4e6fdb88d32a361e99ac28ed63392'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Fifty-one member states'),
            ('B', 'Thirty-five member states'),
            ('C', 'Sixteen non-permanent members'),
            ('D', 'One hundred and ninety-three member states')
           ) as v(label, option_text)
 where q.question_hash = '4fa4e6fdb88d32a361e99ac28ed63392'
on conflict (question_id, label) do nothing;

-- history | world-history | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Security Council'' of the UN has:',
    'The Security Council has five permanent members, China, France, Russia, the United Kingdom and the United States, each with a veto, and ten non-permanent members elected for two-year terms.',
    'easy',
    'Standard Reference',
    null,
    'bf7bd8a5042c992be643a6ace293c5e5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'bf7bd8a5042c992be643a6ace293c5e5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Five permanent members and ten non-permanent members'),
            ('B', 'Fifteen members'),
            ('C', 'No permanent members'),
            ('D', 'Ten non-permanent members')
           ) as v(label, option_text)
 where q.question_hash = 'bf7bd8a5042c992be643a6ace293c5e5'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''United Nations'' came into existence on:',
    'The United Nations Charter came into force on 24 October 1945, and the UN Day is observed on 14 October in India.',
    'medium',
    'Standard Reference',
    null,
    '53888790f262dfacf96db9f0207c29ea'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '53888790f262dfacf96db9f0207c29ea'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '14 October 1945'),
            ('B', '25 June 1945'),
            ('C', '1 January 1946'),
            ('D', '15 August 1945')
           ) as v(label, option_text)
 where q.question_hash = '53888790f262dfacf96db9f0207c29ea'
on conflict (question_id, label) do nothing;

-- history | world-history | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Cold War'' is characterised by:',
    'The Cold War was the geopolitical tension between the US-led and the Soviet-led blocs from 1947 to 1991, marked by proxy wars and the arms race rather than direct conflict.',
    'easy',
    'Standard Reference',
    null,
    '37ecdf29cbacc94d9a83cd0fb5afb336'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '37ecdf29cbacc94d9a83cd0fb5afb336'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The unity of the European states'),
            ('B', 'The dissolution of the USSR'),
            ('C', 'Direct war between the superpowers'),
            ('D', 'The rivalry between the two blocs without direct war')
           ) as v(label, option_text)
 where q.question_hash = '37ecdf29cbacc94d9a83cd0fb5afb336'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Truman Doctrine'' of 1947:',
    'The Truman Doctrine in March 1947 declared the policy of containment, with $400 million of aid to Greece and Turkey, and was the first formal statement of the containment policy.',
    'medium',
    'Standard Reference',
    null,
    'bac231eb65db2833de7d2c9da23ed06a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'bac231eb65db2833de7d2c9da23ed06a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ended the Second World War'),
            ('B', 'Was the basis of the Marshall Plan'),
            ('C', 'Announced the containment of communism and the aid to Greece and Turkey'),
            ('D', 'Created the SEATO')
           ) as v(label, option_text)
 where q.question_hash = 'bac231eb65db2833de7d2c9da23ed06a'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Marshall Plan'' was announced in:',
    'The Marshall Plan, or the European Recovery Program, was announced in June 1947 and provided large-scale American aid for the recovery of Europe.',
    'medium',
    'Standard Reference',
    null,
    'f4983a6223f455fe649d9f7a30faf1c5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f4983a6223f455fe649d9f7a30faf1c5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1946'),
            ('B', '1947'),
            ('C', '1948'),
            ('D', '1945')
           ) as v(label, option_text)
 where q.question_hash = 'f4983a6223f455fe649d9f7a30faf1c5'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''NATO'' was formed in:',
    'The North Atlantic Treaty Organisation was founded in April 1949 with the North Atlantic Treaty signed in 1949, creating a collective defence system.',
    'medium',
    'Standard Reference',
    null,
    '7761c654d03c654985e2cbc79a051987'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '7761c654d03c654985e2cbc79a051987'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1955'),
            ('B', '1947'),
            ('C', '1949'),
            ('D', '1951')
           ) as v(label, option_text)
 where q.question_hash = '7761c654d03c654985e2cbc79a051987'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Warsaw Pact'' was the counterpart of NATO in:',
    'The Warsaw Pact, formally the Treaty of Friendship, Co-operation and Mutual Assistance, was signed in May 1955 as a response to the integration of West Germany into NATO.',
    'medium',
    'Standard Reference',
    null,
    '8b26ffa7e950e90c968e7cc1d24183a6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '8b26ffa7e950e90c968e7cc1d24183a6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1955'),
            ('B', '1957'),
            ('C', '1949'),
            ('D', '1953')
           ) as v(label, option_text)
 where q.question_hash = '8b26ffa7e950e90c968e7cc1d24183a6'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''COMECON'' was the economic organisation of:',
    'The Council for Mutual Economic Assistance, or COMECON, was established in 1949 as the economic complement of the Warsaw Pact for the Soviet-led Eastern bloc.',
    'medium',
    'Standard Reference',
    null,
    'e72cf8a882ecd0da8633f93a53c40ed8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e72cf8a882ecd0da8633f93a53c40ed8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Non-Aligned Movement'),
            ('B', 'The Third World'),
            ('C', 'The Western bloc'),
            ('D', 'The Soviet bloc')
           ) as v(label, option_text)
 where q.question_hash = 'e72cf8a882ecd0da8633f93a53c40ed8'
on conflict (question_id, label) do nothing;

-- history | world-history | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Berlin Crisis'' of 1961 led to the building of the:',
    'The Berlin Crisis of 1961 led to the construction of the Berlin Wall, which divided the city and symbolised the Cold War division of Europe.',
    'easy',
    'Standard Reference',
    null,
    'a992d89af47aee2b5aea93d51305ad63'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a992d89af47aee2b5aea93d51305ad63'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Iron Curtain'),
            ('B', 'Berlin Wall'),
            ('C', 'Great Wall of China'),
            ('D', 'Berlin Wall of 1961 and the division of Germany')
           ) as v(label, option_text)
 where q.question_hash = 'a992d89af47aee2b5aea93d51305ad63'
on conflict (question_id, label) do nothing;

-- history | world-history | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Cuban Missile Crisis'' of 1962 was between:',
    'The Cuban Missile Crisis of October 1962, caused by the Soviet deployment of nuclear missiles in Cuba, brought the world to the brink of nuclear war.',
    'easy',
    'Standard Reference',
    null,
    'e92897579ad797239a1efbce31d870d5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e92897579ad797239a1efbce31d870d5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'China and India'),
            ('B', 'France and Germany'),
            ('C', 'India and Pakistan'),
            ('D', 'The United States and the Soviet Union')
           ) as v(label, option_text)
 where q.question_hash = 'e92897579ad797239a1efbce31d870d5'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Prague Spring'' of 1968 was the attempt of:',
    'The Prague Spring under Alexander Dubcek was the attempt to liberalise the communist system in Czechoslovakia, which was crushed by a Soviet-led invasion in August 1968.',
    'medium',
    'Standard Reference',
    null,
    '3902e4ad0b8008deaafbc9a25d6891e0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '3902e4ad0b8008deaafbc9a25d6891e0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Czechoslovakia to liberalise the communist regime'),
            ('B', 'Hungary to withdraw from the Warsaw Pact'),
            ('C', 'Nixon to end the Vietnam War'),
            ('D', 'The Soviet Union to reform Stalinism')
           ) as v(label, option_text)
 where q.question_hash = '3902e4ad0b8008deaafbc9a25d6891e0'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Nixon Doctrine'' of 1969:',
    'The Nixon Doctrine sought to reduce the American commitment in Asia while containing communism through allies, and it was the basis of the détente with Russia and China.',
    'medium',
    'Standard Reference',
    null,
    '1ed56d6778250defa6ab9ea90f50a435'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '1ed56d6778250defa6ab9ea90f50a435'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was the basis of the détente with Russia'),
            ('B', 'Was the continuation of containment with a reduced role for the US'),
            ('C', 'Ended the Vietnam War immediately'),
            ('D', 'Recognised China and normalised relations with it alone')
           ) as v(label, option_text)
 where q.question_hash = '1ed56d6778250defa6ab9ea90f50a435'
on conflict (question_id, label) do nothing;

-- history | world-history | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''SALT I'' agreement of 1972 limited:',
    'The Strategic Arms Limitation Treaty of 1972 limited the strategic offensive arms of the United States and the Soviet Union, and SALT II was signed in 1979 but was not ratified.',
    'hard',
    'Standard Reference',
    null,
    'dba33e65743d5a9b27348a9322393450'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'dba33e65743d5a9b27348a9322393450'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The conventional forces in Europe'),
            ('B', 'The nuclear tests in the Pacific'),
            ('C', 'The strategic nuclear arms of the superpowers'),
            ('D', 'The chemical weapons')
           ) as v(label, option_text)
 where q.question_hash = 'dba33e65743d5a9b27348a9322393450'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Non-Aligned Movement'' was initiated with the:',
    'The Non-Aligned Movement was formally initiated with the first conference of the heads of state at Belgrade in September 1961, following the Bandung Conference of 1955.',
    'medium',
    'Standard Reference',
    null,
    'bf4b02208666f4f8d0b9a0d8ca05f68c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'bf4b02208666f4f8d0b9a0d8ca05f68c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Conference of Belgrade of 1961'),
            ('B', 'The Panchsheel Agreement of 1954'),
            ('C', 'The Suez Crisis of 1956'),
            ('D', 'Bandung Conference of 1955')
           ) as v(label, option_text)
 where q.question_hash = 'bf4b02208666f4f8d0b9a0d8ca05f68c'
on conflict (question_id, label) do nothing;

-- history | world-history | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Bandung Conference'' of 1955 was held in:',
    'The Bandung or Afro-Asian Conference of April 1955 was held in Bandung, Indonesia, with 29 Asian and African countries participating.',
    'easy',
    'Standard Reference',
    null,
    'a122b32545540f5b336be8879a4df0f5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a122b32545540f5b336be8879a4df0f5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Jakarta'),
            ('B', 'Bandung'),
            ('C', 'Belgrade'),
            ('D', 'Cairo')
           ) as v(label, option_text)
 where q.question_hash = 'a122b32545540f5b336be8879a4df0f5'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Castro'' and the ''Cuban Revolution'' of 1959:',
    'The Cuban Revolution of 1959 brought Fidel Castro to power and gradually led to the establishment of a socialist state in Cuba.',
    'medium',
    'Standard Reference',
    null,
    '8b8a8a6303ed851a906fe7b4e2d69663'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '8b8a8a6303ed851a906fe7b4e2d69663'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Brought the US and the USSR together'),
            ('B', 'Ended the Cold War in Latin America'),
            ('C', 'Led to a socialist state in Cuba'),
            ('D', 'Was supported by the Soviet Union from the beginning')
           ) as v(label, option_text)
 where q.question_hash = '8b8a8a6303ed851a906fe7b4e2d69663'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Suez Crisis'' of 1956:',
    'The Suez Crisis arose from Egypt''s nationalisation of the Suez Canal, the withdrawal of Britain, France and Israel, and the political decline of Britain and France.',
    'medium',
    'Standard Reference',
    null,
    '6c62dc2b6271c27825c0e1b9b44e7a6e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '6c62dc2b6271c27825c0e1b9b44e7a6e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was a conflict in the Balkans'),
            ('B', 'Led to the collapse of the UN'),
            ('C', 'Resulted in the partition of Korea'),
            ('D', 'Was about the control of the Suez Canal')
           ) as v(label, option_text)
 where q.question_hash = '6c62dc2b6271c27825c0e1b9b44e7a6e'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Russo-Japanese War'' of 1904-05 led to:',
    'The Russo-Japanese War ended in a Japanese victory and was the first major defeat of a European power in the East in modern times.',
    'medium',
    'Standard Reference',
    null,
    '4288c6686f8f083729f11cce58e13b0e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '4288c6686f8f083729f11cce58e13b0e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The start of the First World War'),
            ('B', 'The Russian Revolution of 1905'),
            ('C', 'The formation of the Soviet Union'),
            ('D', 'The defeat of Russia and the emergence of Japan as a great power')
           ) as v(label, option_text)
 where q.question_hash = '4288c6686f8f083729f11cce58e13b0e'
on conflict (question_id, label) do nothing;

-- history | world-history | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Russian Revolution'' of 1917:',
    'The Bolshevik Revolution of November 1917 overthrew the Provisional Government and led to the formation of the Soviet Union.',
    'easy',
    'Standard Reference',
    null,
    'f61af6414d9aa8a06e24fadfa9f0abf9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f61af6414d9aa8a06e24fadfa9f0abf9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was led by the Mensheviks alone'),
            ('B', 'Ended the rule of the Tsar and led to the Soviet Union'),
            ('C', 'Was a nationalist movement against the Ottomans'),
            ('D', 'Led to the Partition of India')
           ) as v(label, option_text)
 where q.question_hash = 'f61af6414d9aa8a06e24fadfa9f0abf9'
on conflict (question_id, label) do nothing;

-- history | world-history | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Chinese Revolution'' of 1949:',
    'The Chinese Revolution of 1949 led by Mao Zedong established the People''s Republic of China on the mainland, while the Nationalists retreated to Taiwan.',
    'easy',
    'Standard Reference',
    null,
    '3e250b06d7456542903e97c4490e0aff'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '3e250b06d7456542903e97c4490e0aff'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Overthrew the Nationalist government of Chiang Kai-shek'),
            ('B', 'Brought the Kuomintang to power in Taiwan'),
            ('C', 'Established the Republic of China on the mainland'),
            ('D', 'Was a peasant movement of 1927')
           ) as v(label, option_text)
 where q.question_hash = '3e250b06d7456542903e97c4490e0aff'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Decolonisation of Africa'' was accelerated by:',
    'The Second World War weakened the European colonial powers, and the UN Charter''s affirmation of self-determination accelerated the process of African decolonisation in the 1950s and 1960s.',
    'medium',
    'Standard Reference',
    null,
    '8e910974155e0d6918328c3764c0c66e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '8e910974155e0d6918328c3764c0c66e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Marshall Plan'),
            ('B', 'The First World War'),
            ('C', 'The Second World War and the United Nations Charter'),
            ('D', 'The Cold War alone')
           ) as v(label, option_text)
 where q.question_hash = '8e910974155e0d6918328c3764c0c66e'
on conflict (question_id, label) do nothing;

-- history | world-history | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Apartheid'' policy was practised in:',
    'Apartheid, the legal racial segregation in South Africa, was abolished in the early 1990s following the negotiations that led to the 1994 elections.',
    'easy',
    'Standard Reference',
    null,
    '72edc47667b3835dde47396c34667e7e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '72edc47667b3835dde47396c34667e7e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Portugal'),
            ('B', 'South Africa'),
            ('C', 'Rhodesia only'),
            ('D', 'Algeria')
           ) as v(label, option_text)
 where q.question_hash = '72edc47667b3835dde47396c34667e7e'
on conflict (question_id, label) do nothing;

-- history | world-history | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Organisation of African Unity'' was founded in:',
    'The Organisation of African Unity was founded in May 1963 in Addis Ababa by 32 African states, and it was replaced by the African Union in 2002.',
    'hard',
    'Standard Reference',
    null,
    '51384d36fd49a50d6e799cb7d294ec3a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '51384d36fd49a50d6e799cb7d294ec3a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1960'),
            ('B', '1958'),
            ('C', '1963'),
            ('D', '1957')
           ) as v(label, option_text)
 where q.question_hash = '51384d36fd49a50d6e799cb7d294ec3a'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Suez'' and the ''Aswan Dam'' project of Nasser:',
    'The nationalisation of the Suez Canal and the Aswan High Dam project became a symbol of Arab nationalism and Egypt''s non-aligned stance under Nasser.',
    'medium',
    'Standard Reference',
    null,
    'aedb93406be6b10a86e0ef9d7f820320'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'aedb93406be6b10a86e0ef9d7f820320'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was supported by the United States'),
            ('B', 'Was a British project'),
            ('C', 'Was a Soviet project'),
            ('D', 'Was an early symbol of the Arab nationalism and non-alignment')
           ) as v(label, option_text)
 where q.question_hash = 'aedb93406be6b10a86e0ef9d7f820320'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Cuban Revolution'' and the ''Che Guevara'':',
    'Che Guevara was a Marxist revolutionary who fought in Congo and Bolivia and was killed in Bolivia in 1967.',
    'medium',
    'Standard Reference',
    null,
    '322a581115f2c4f1d8a39b02274ac585'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '322a581115f2c4f1d8a39b02274ac585'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Che Guevara was a Marxist revolutionary who led the guerrillas in Congo and Bolivia'),
            ('B', 'Che Guevara was a US diplomat'),
            ('C', 'Che Guevara was a Spanish general'),
            ('D', 'Che Guevara led the Cuban Revolution alone')
           ) as v(label, option_text)
 where q.question_hash = '322a581115f2c4f1d8a39b02274ac585'
on conflict (question_id, label) do nothing;

-- history | world-history | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Ho Chi Minh'' and the ''Vietnam'':',
    'Ho Chi Minh declared the independence of Vietnam and founded the Democratic Republic of Vietnam in 1945, and he led the country until his death in 1969.',
    'easy',
    'Standard Reference',
    null,
    'c8743e19339c0eaa63e1b9b8bdab2770'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c8743e19339c0eaa63e1b9b8bdab2770'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ho Chi Minh was the first president of the Philippines'),
            ('B', 'Ho Chi Minh was a Chinese leader'),
            ('C', 'Ho Chi Minh founded the Democratic Republic of Vietnam in 1945'),
            ('D', 'Ho Chi Minh led the French Revolution')
           ) as v(label, option_text)
 where q.question_hash = 'c8743e19339c0eaa63e1b9b8bdab2770'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Gulf War'' of 1991 was between:',
    'The Gulf War of 1990-91 was fought between a US-led coalition and Iraq after the Iraqi occupation of Kuwait, and it was the first major conflict after the Cold War.',
    'medium',
    'Standard Reference',
    null,
    '74032e29ba90875931ec6e356562ce91'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '74032e29ba90875931ec6e356562ce91'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The US-led coalition and Iraq'),
            ('B', 'India and Pakistan'),
            ('C', 'Iran and Iraq'),
            ('D', 'NATO and Russia')
           ) as v(label, option_text)
 where q.question_hash = '74032e29ba90875931ec6e356562ce91'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''End of the Cold War'' is usually dated to:',
    'The collapse of the Berlin Wall in 1989 and the dissolution of the Soviet Union in 1991 are usually taken as the end of the Cold War.',
    'medium',
    'Standard Reference',
    null,
    '3022caef6bd4e1d37d0fa7d7e186dee7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '3022caef6bd4e1d37d0fa7d7e186dee7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1991'),
            ('B', '1995'),
            ('C', '1985'),
            ('D', '1989')
           ) as v(label, option_text)
 where q.question_hash = '3022caef6bd4e1d37d0fa7d7e186dee7'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Globalisation'' of the 1990s was driven by:',
    'The end of the Cold War, the IT revolution, the WTO and the liberalisation of trade and capital flows drove the globalisation of the 1990s.',
    'medium',
    'Standard Reference',
    null,
    'fa165d2cff633817353a03c0e63b21d8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'fa165d2cff633817353a03c0e63b21d8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The colonial expansion'),
            ('B', 'The end of the Cold War, the information technology revolution and the liberalisation of trade and capital flows'),
            ('C', 'The Bretton Woods system'),
            ('D', 'The Marshall Plan')
           ) as v(label, option_text)
 where q.question_hash = 'fa165d2cff633817353a03c0e63b21d8'
on conflict (question_id, label) do nothing;

-- history | world-history | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Treaty of Versailles'' and the ''League of Nations'' were both:',
    'Both arose from the settlement of the First World War, and the League of Nations was the precursor of the United Nations.',
    'easy',
    'Standard Reference',
    null,
    '5b633b2ae5b6fd3a54857a1db8ebbaa1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '5b633b2ae5b6fd3a54857a1db8ebbaa1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Products of the First World War'),
            ('B', 'Products of the Second World War'),
            ('C', 'Signed in 1945'),
            ('D', 'The basis of the United Nations')
           ) as v(label, option_text)
 where q.question_hash = '5b633b2ae5b6fd3a54857a1db8ebbaa1'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''League of Nations'' failed mainly because:',
    'The League was weakened by the absence of the United States and by the lack of an enforcement mechanism, and it failed to act against the aggressors of the 1930s.',
    'medium',
    'Standard Reference',
    null,
    '2580358910f2a05ffb76af6d26f867eb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '2580358910f2a05ffb76af6d26f867eb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It was dissolved after the First World War'),
            ('B', 'It was replaced by NATO'),
            ('C', 'It did not include the European states'),
            ('D', 'It had no military force and the United States did not join it')
           ) as v(label, option_text)
 where q.question_hash = '2580358910f2a05ffb76af6d26f867eb'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Munich Agreement'' of 1938:',
    'The Munich Agreement of September 1938 permitted the German annexation of the Sudetenland in Czechoslovakia in the vain hope of appeasing Hitler.',
    'medium',
    'Standard Reference',
    null,
    '612f7bb280c2314c68897834cab154df'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '612f7bb280c2314c68897834cab154df'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was the partition of Poland'),
            ('B', 'Allowed the German annexation of the Sudetenland'),
            ('C', 'Established the Axis alliance'),
            ('D', 'Was the Soviet-French pact')
           ) as v(label, option_text)
 where q.question_hash = '612f7bb280c2314c68897834cab154df'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Molotov-Ribbentrop Pact'' of 1939:',
    'The Molotov-Ribbentrop Pact of August 1939 was the non-aggression pact between Nazi Germany and the Soviet Union, with secret protocols dividing Eastern Europe.',
    'medium',
    'Standard Reference',
    null,
    '4f516293fe9ab764bda5532faff2fc65'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '4f516293fe9ab764bda5532faff2fc65'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was the Polish-British alliance'),
            ('B', 'Created the Axis alliance'),
            ('C', 'Was the non-aggression pact between Germany and the Soviet Union'),
            ('D', 'Ended the Spanish Civil War')
           ) as v(label, option_text)
 where q.question_hash = '4f516293fe9ab764bda5532faff2fc65'
on conflict (question_id, label) do nothing;

-- history | world-history | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Second World War'' in Europe began with:',
    'The invasion of Poland by Germany on 1 September 1939 marked the start of the war in Europe, and Britain and France declared war on 3 September.',
    'easy',
    'Standard Reference',
    null,
    '361bac314d39845cb8b529f2f0d5f48c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '361bac314d39845cb8b529f2f0d5f48c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The entry of the United States'),
            ('B', 'The attack on Pearl Harbour'),
            ('C', 'The invasion of Poland in September 1939'),
            ('D', 'The invasion of France in 1940')
           ) as v(label, option_text)
 where q.question_hash = '361bac314d39845cb8b529f2f0d5f48c'
on conflict (question_id, label) do nothing;

-- history | world-history | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Pearl Harbour'' attack took place in:',
    'The Japanese attack on Pearl Harbour on 7 December 1941 brought the United States into the Second World War.',
    'easy',
    'Standard Reference',
    null,
    '53380b5544a8dac09e8285a22505e2fb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '53380b5544a8dac09e8285a22505e2fb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1941'),
            ('B', '1942'),
            ('C', '1939'),
            ('D', '1944')
           ) as v(label, option_text)
 where q.question_hash = '53380b5544a8dac09e8285a22505e2fb'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''United Nations Charter'' was signed on:',
    'The UN Charter was signed on 26 June 1945 in San Francisco by 50 nations and came into force on 24 October 1945.',
    'medium',
    'Standard Reference',
    null,
    '62c285c042e81552b8237c7639665bf7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '62c285c042e81552b8237c7639665bf7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1 January 1946'),
            ('B', '25 June 1945'),
            ('C', '14 October 1945'),
            ('D', '24 October 1945')
           ) as v(label, option_text)
 where q.question_hash = '62c285c042e81552b8237c7639665bf7'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''World Trade Organization'' was established on:',
    'The WTO was established on 1 January 1995 as a successor to the GATT, following the Uruguay Round and the Marrakesh Agreement of 1994.',
    'medium',
    'Standard Reference',
    null,
    '5f3799795a8b65a5583b247c60cd3cdb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '5f3799795a8b65a5583b247c60cd3cdb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '15 April 1994'),
            ('B', '23 July 1947'),
            ('C', '1 January 1996'),
            ('D', '1 January 1995')
           ) as v(label, option_text)
 where q.question_hash = '5f3799795a8b65a5583b247c60cd3cdb'
on conflict (question_id, label) do nothing;

-- history | world-history | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Dolly'' and the ''clone'' of the sheep and the ''He Jiankui'' affair:',
    'The cloning of Dolly the sheep and the 2018 He Jiankui affair of gene-edited babies both belong to the field of biotechnology and its ethics.',
    'easy',
    'Standard Reference',
    null,
    '08b375c6caa2c83ef09d839fde191e41'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '08b375c6caa2c83ef09d839fde191e41'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Were about climate modelling'),
            ('B', 'Were about biotechnology'),
            ('C', 'Were about nuclear physics'),
            ('D', 'Were about space research')
           ) as v(label, option_text)
 where q.question_hash = '08b375c6caa2c83ef09d839fde191e41'
on conflict (question_id, label) do nothing;

-- history | world-history | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Saddam Hussein'' and the ''Osama bin Laden'' and the ''War on Terror'':',
    'The United States launched the War on Terror after the terrorist attacks of 11 September 2001, which shaped world politics for the following two decades.',
    'easy',
    'Standard Reference',
    null,
    '86e92e5e4dcc9c51610de8814bcd3526'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '86e92e5e4dcc9c51610de8814bcd3526'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Began in 1991 with the Gulf War'),
            ('B', 'Were part of the Cold War'),
            ('C', 'Were triggered by the Kosovo War'),
            ('D', 'Began after 11 September 2001')
           ) as v(label, option_text)
 where q.question_hash = '86e92e5e4dcc9c51610de8814bcd3526'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''African slave trade'' to the Americas:',
    'Britain abolished the slave trade in 1807, and the Atlantic slave trade was progressively suppressed and finally ended in the mid-nineteenth century.',
    'medium',
    'Standard Reference',
    null,
    '175327fd6c2bf992d02c0c91c67b0d0e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '175327fd6c2bf992d02c0c91c67b0d0e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ended with the Abolition of the slave trade by Britain in 1807 and the slave trade across the Atlantic in the nineteenth century'),
            ('B', 'Continued till 1960'),
            ('C', 'Was carried out only by Portugal'),
            ('D', 'Was completely abolished by the British in 1807')
           ) as v(label, option_text)
 where q.question_hash = '175327fd6c2bf992d02c0c91c67b0d0e'
on conflict (question_id, label) do nothing;

-- history | world-history | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Industrial Revolution'' began in:',
    'The Industrial Revolution began in Britain in the late eighteenth century with the mechanisation of textile production and the use of steam power.',
    'easy',
    'Standard Reference',
    null,
    'e968c5279994f7d928cb91bc29274cf8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e968c5279994f7d928cb91bc29274cf8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'United States'),
            ('B', 'France'),
            ('C', 'Britain'),
            ('D', 'Germany')
           ) as v(label, option_text)
 where q.question_hash = 'e968c5279994f7d928cb91bc29274cf8'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''American Revolution'' and the ''French Revolution'' were:',
    'Both the American and the French Revolutions were bourgeois revolutions that challenged absolute monarchy and the feudal order.',
    'medium',
    'Standard Reference',
    null,
    '1fb566cd3ba0e0ae0c8b4f2d3e7eee1d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '1fb566cd3ba0e0ae0c8b4f2d3e7eee1d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Nationalist movements'),
            ('B', 'Bourgeois revolutions'),
            ('C', 'Peasant revolts'),
            ('D', 'Anti-colonial wars')
           ) as v(label, option_text)
 where q.question_hash = '1fb566cd3ba0e0ae0c8b4f2d3e7eee1d'
on conflict (question_id, label) do nothing;

-- history | world-history | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Treaty of Westphalia'' of 1648:',
    'The Peace of Westphalia in 1648 ended the Thirty Years'' War and the Eighty Years'' War and is regarded as the origin of the modern state system and of state sovereignty.',
    'hard',
    'Standard Reference',
    null,
    '8e5b5fa2f8f52cf6793ebb1f729934dc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '8e5b5fa2f8f52cf6793ebb1f729934dc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ended the Napoleonic Wars'),
            ('B', 'Established the Concert of Europe'),
            ('C', 'Ended the Thirty Years'' War and recognised the sovereignty of states'),
            ('D', 'Created the United States')
           ) as v(label, option_text)
 where q.question_hash = '8e5b5fa2f8f52cf6793ebb1f729934dc'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Congress of Vienna'' of 1815:',
    'The Congress of Vienna, held in 1814-15, reorganised Europe after the Napoleonic Wars and is known for the restoration of the balance of power.',
    'medium',
    'Standard Reference',
    null,
    'be3299edb607c39c6d0b82208cbaf89c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'be3299edb607c39c6d0b82208cbaf89c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Created the United States of Europe'),
            ('B', 'Redrew the borders of India'),
            ('C', 'Ended the Crimean War'),
            ('D', 'Restored the balance of power after the Napoleonic Wars')
           ) as v(label, option_text)
 where q.question_hash = 'be3299edb607c39c6d0b82208cbaf89c'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Crimean War'' of 1853-56:',
    'The Crimean War, in which Britain and France fought against Russia with the Ottoman Empire, ended in the Treaty of Paris of 1856 and weakened the Russian position in the Balkans.',
    'medium',
    'Standard Reference',
    null,
    'd66aef7c50431fea4b650a3e9be030b9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd66aef7c50431fea4b650a3e9be030b9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was a European war against the Ottoman Empire and Russia in which Britain and France took part'),
            ('B', 'Was fought in the Crimea only'),
            ('C', 'Led to the unification of Germany'),
            ('D', 'Resulted in the independence of India')
           ) as v(label, option_text)
 where q.question_hash = 'd66aef7c50431fea4b650a3e9be030b9'
on conflict (question_id, label) do nothing;

-- history | world-history | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Unification of Germany'' in 1871 was achieved by:',
    'Otto von Bismarck achieved German unification through three wars against Denmark, Austria and France, with the proclamation of the German Empire at Versailles in January 1871.',
    'easy',
    'Standard Reference',
    null,
    'e15638dcdbf73867182b02aa2bd583e7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e15638dcdbf73867182b02aa2bd583e7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Garibaldi'),
            ('B', 'Napoleon III'),
            ('C', 'Bismarck'),
            ('D', 'Metternich')
           ) as v(label, option_text)
 where q.question_hash = 'e15638dcdbf73867182b02aa2bd583e7'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Russo-Japanese War'' and the ''Treaty of Portsmouth'':',
    'The Treaty of Portsmouth of 1905 ended the Russo-Japanese War with a Japanese victory, and Russia accepted the loss of its influence in Manchuria and Korea.',
    'medium',
    'Standard Reference',
    null,
    '8310aa5e704e4115ee3f13468869b6c7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '8310aa5e704e4115ee3f13468869b6c7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Created the League of Nations'),
            ('B', 'Fixed the borders of Poland'),
            ('C', 'Recognised the independence of Korea'),
            ('D', 'Ended the Russo-Japanese War with Japanese victory over Russia')
           ) as v(label, option_text)
 where q.question_hash = '8310aa5e704e4115ee3f13468869b6c7'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Young Turk Revolution'' of 1908:',
    'The Young Turk Revolution of 1908 restored the Ottoman constitution and parliament and is known as the Second Constitutional Era.',
    'medium',
    'Standard Reference',
    null,
    '4acd17987bfa996ad2265773fd15373b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '4acd17987bfa996ad2265773fd15373b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Nationalised the railways'),
            ('B', 'Overthrew the Ottoman Sultan and led to the Second Constitutional Era'),
            ('C', 'Founded the Republic of Turkey in 1923'),
            ('D', 'Ended the First Balkan War')
           ) as v(label, option_text)
 where q.question_hash = '4acd17987bfa996ad2265773fd15373b'
on conflict (question_id, label) do nothing;

-- history | world-history | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Turkish Republic'' was proclaimed in:',
    'The Turkish Republic was proclaimed on 29 October 1923 by Mustafa Kemal Ataturk, who became its first president.',
    'easy',
    'Standard Reference',
    null,
    'b86328f64a6850d2e57e4312b31d7d3c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'b86328f64a6850d2e57e4312b31d7d3c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1923'),
            ('B', '1922'),
            ('C', '1928'),
            ('D', '1919')
           ) as v(label, option_text)
 where q.question_hash = 'b86328f64a6850d2e57e4312b31d7d3c'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Spanish Civil War'' of 1936-39:',
    'The Spanish Civil War was fought between the leftist Republicans and the Nationalists led by General Franco, with the involvement of Germany, Italy and the Soviet Union.',
    'medium',
    'Standard Reference',
    null,
    '9faffd5a38b36ad7274d3e7aafb6e4e0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '9faffd5a38b36ad7274d3e7aafb6e4e0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was a colonial war in Africa'),
            ('B', 'Was caused by the Treaty of Versailles'),
            ('C', 'Was fought between the Republicans and the Nationalists led by Franco'),
            ('D', 'Was a conflict between Russia and Turkey')
           ) as v(label, option_text)
 where q.question_hash = '9faffd5a38b36ad7274d3e7aafb6e4e0'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Great Emu War'' of 1932:',
    'The Great Emu War of 1932 in Western Australia was a comic military operation in which the soldiers were unable to contain the emu menace.',
    'medium',
    'Standard Reference',
    null,
    '3144dd3e2d105e51003b9c76c2605776'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '3144dd3e2d105e51003b9c76c2605776'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was the war of 1857'),
            ('B', 'Was a war in Australia in which the army was defeated by emus'),
            ('C', 'Was a conflict in Europe'),
            ('D', 'Was the Battle of the Somme')
           ) as v(label, option_text)
 where q.question_hash = '3144dd3e2d105e51003b9c76c2605776'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''World War II'' casualties of the ''Holocaust'':',
    'The Holocaust, the systematic genocide of about six million Jews by Nazi Germany, also took the lives of Roma, disabled persons, Poles, Soviet POWs and political opponents.',
    'medium',
    'Standard Reference',
    null,
    'd7d2d53f0c28a4ff90c71a73eb359b79'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'd7d2d53f0c28a4ff90c71a73eb359b79'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'About one million people died'),
            ('B', 'No one was killed'),
            ('C', 'About sixty million soldiers died'),
            ('D', 'About six million Jews and millions of other victims were killed')
           ) as v(label, option_text)
 where q.question_hash = 'd7d2d53f0c28a4ff90c71a73eb359b79'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Geneva Conventions'' of 1949 relate to:',
    'The four Geneva Conventions of 1949 and the Additional Protocols set out the international humanitarian law protecting the wounded, the prisoners of war and the civilians.',
    'medium',
    'Standard Reference',
    null,
    '0d4cdfcf940ff917670cc438f48545e3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '0d4cdfcf940ff917670cc438f48545e3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The protection of the victims of armed conflict'),
            ('B', 'The rules of nuclear proliferation'),
            ('C', 'The rules of diplomatic asylum'),
            ('D', 'The definition of the high seas')
           ) as v(label, option_text)
 where q.question_hash = '0d4cdfcf940ff917670cc438f48545e3'
on conflict (question_id, label) do nothing;

-- history | world-history | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Universal Declaration of Human Rights'' was adopted in:',
    'The UDHR was adopted by the UN General Assembly on 10 December 1948 in Paris and has been called the ''Magna Carta of humanity''.',
    'easy',
    'Standard Reference',
    null,
    '60b73c086ca9f52327bda7d5e43a9b2d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '60b73c086ca9f52327bda7d5e43a9b2d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1951'),
            ('B', '1945'),
            ('C', '1948'),
            ('D', '1949')
           ) as v(label, option_text)
 where q.question_hash = '60b73c086ca9f52327bda7d5e43a9b2d'
on conflict (question_id, label) do nothing;

-- history | world-history | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Two Blocs'' of the Cold War were led by:',
    'The Cold War divided the world into the US-led Western bloc and the Soviet-led Eastern bloc, and the Non-Aligned Movement emerged as a third group.',
    'easy',
    'Standard Reference',
    null,
    '9eeeaf375bf1a86e8cfcbd380272bca5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '9eeeaf375bf1a86e8cfcbd380272bca5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'China and the USSR'),
            ('B', 'The US and the Soviet Union'),
            ('C', 'The US and Britain'),
            ('D', 'France and Germany')
           ) as v(label, option_text)
 where q.question_hash = '9eeeaf375bf1a86e8cfcbd380272bca5'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Berlin Blockade'' of 1948-49:',
    'The Soviet blockade of the land routes to West Berlin in 1948 was answered by the Berlin Airlift, which lasted nearly a year.',
    'medium',
    'Standard Reference',
    null,
    'b168beddcd5a38aab1272ac20a4202d6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'b168beddcd5a38aab1272ac20a4202d6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Led to the formation of NATO'),
            ('B', 'Caused the end of the UN'),
            ('C', 'Was the first space race'),
            ('D', 'Led to the airlift that supplied West Berlin')
           ) as v(label, option_text)
 where q.question_hash = 'b168beddcd5a38aab1272ac20a4202d6'
on conflict (question_id, label) do nothing;

-- history | world-history | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Marshall Plan'' and the ''Plan Bleu'':',
    'The Marshall Plan and the Plan Bleu, or the Monnet Plan, were both instruments of economic reconstruction and integration in post-war Europe.',
    'hard',
    'Standard Reference',
    null,
    '5dc8f41fa9175bc0f6a0035aa2f32ba6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '5dc8f41fa9175bc0f6a0035aa2f32ba6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Were both American economic programmes'),
            ('B', 'Were both French programmes'),
            ('C', 'Were both about decolonisation'),
            ('D', 'Were both rejected by the Soviet Union without any impact')
           ) as v(label, option_text)
 where q.question_hash = '5dc8f41fa9175bc0f6a0035aa2f32ba6'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''European Union'' originated from the:',
    'The European Coal and Steel Community of 1951 was the precursor of the European Economic Community and of today''s European Union.',
    'medium',
    'Standard Reference',
    null,
    'bd5717159c3758168ec38a48fff76f8d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'bd5717159c3758168ec38a48fff76f8d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'European Coal and Steel Community of 1951'),
            ('B', 'Treaty of Rome of 1957 only'),
            ('C', 'NATO'),
            ('D', 'The Council of Europe')
           ) as v(label, option_text)
 where q.question_hash = 'bd5717159c3758168ec38a48fff76f8d'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''European Union'' currently has how many members?',
    'The European Union has 27 members after the withdrawal of the United Kingdom in 2020.',
    'medium',
    'Standard Reference',
    null,
    '3d7a09ccd3e76647dee567e2fe14db30'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '3d7a09ccd3e76647dee567e2fe14db30'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Fifteen'),
            ('B', 'Twenty-five'),
            ('C', 'Twenty-seven'),
            ('D', 'Thirty')
           ) as v(label, option_text)
 where q.question_hash = '3d7a09ccd3e76647dee567e2fe14db30'
on conflict (question_id, label) do nothing;

-- history | world-history | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Organisation for Economic Co-operation and Development'' was formed in:',
    'The OECD, which succeeded the OEEC, was established in 1961 with the aim of stimulating economic progress and world trade.',
    'hard',
    'Standard Reference',
    null,
    '2d53f9dd84c174a64c9a3fd8741502cb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '2d53f9dd84c174a64c9a3fd8741502cb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1947'),
            ('B', '1961'),
            ('C', '1944'),
            ('D', '1963')
           ) as v(label, option_text)
 where q.question_hash = '2d53f9dd84c174a64c9a3fd8741502cb'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''International Monetary Fund'' and the ''World Bank'' are known as:',
    'The IMF and the World Bank, created at Bretton Woods in 1944, are known as the Bretton Woods institutions.',
    'medium',
    'Standard Reference',
    null,
    '49b6c0e750dff67d4e2d492aad1f00f6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '49b6c0e750dff67d4e2d492aad1f00f6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Washington institutions'),
            ('B', 'The Geneva institutions'),
            ('C', 'The New York institutions'),
            ('D', 'The Bretton Woods institutions')
           ) as v(label, option_text)
 where q.question_hash = '49b6c0e750dff67d4e2d492aad1f00f6'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''International Labour Organization'' was established in:',
    'The ILO was established in 1919 as part of the Treaty of Versailles, and it became the first specialised agency of the UN in 1946.',
    'medium',
    'Standard Reference',
    null,
    '99161cf2988bd4197602eddea3294aa5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '99161cf2988bd4197602eddea3294aa5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1920'),
            ('B', '1945'),
            ('C', '1914'),
            ('D', '1919')
           ) as v(label, option_text)
 where q.question_hash = '99161cf2988bd4197602eddea3294aa5'
on conflict (question_id, label) do nothing;

-- history | world-history | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''World Health Organization'' was established in:',
    'The WHO was established on 7 April 1948 with the constitution signed by 61 states and is headquartered in Geneva.',
    'easy',
    'Standard Reference',
    null,
    'ba8f7caef9532f9a7421b370b967e7fd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ba8f7caef9532f9a7421b370b967e7fd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1948'),
            ('B', '1950'),
            ('C', '1946'),
            ('D', '1945')
           ) as v(label, option_text)
 where q.question_hash = 'ba8f7caef9532f9a7421b370b967e7fd'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Food and Agriculture Organization'' was founded in:',
    'The FAO was founded in October 1945 in Quebec City and its headquarters are now in Rome.',
    'medium',
    'Standard Reference',
    null,
    '14453fa732c1c5a2d30469e3b0ef089a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '14453fa732c1c5a2d30469e3b0ef089a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1943'),
            ('B', '1945'),
            ('C', '1948'),
            ('D', '1939')
           ) as v(label, option_text)
 where q.question_hash = '14453fa732c1c5a2d30469e3b0ef089a'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''UNESCO'' was founded in:',
    'UNESCO, the United Nations Educational, Scientific and Cultural Organization, was established on 16 November 1945 in London.',
    'medium',
    'Standard Reference',
    null,
    '3934de3753b2dcd3553415532ca955a5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '3934de3753b2dcd3553415532ca955a5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1948'),
            ('B', '1949'),
            ('C', '1945'),
            ('D', '1946')
           ) as v(label, option_text)
 where q.question_hash = '3934de3753b2dcd3553415532ca955a5'
on conflict (question_id, label) do nothing;

-- history | world-history | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''International Civil Aviation Organization'' is headquartered at:',
    'The ICAO, a specialised agency of the UN, was created by the Chicago Convention of 1944 and has its headquarters in Montreal.',
    'hard',
    'Standard Reference',
    null,
    'ca1b12773988f545a0bd95e5dd0700b0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'ca1b12773988f545a0bd95e5dd0700b0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Paris'),
            ('B', 'New York'),
            ('C', 'Geneva'),
            ('D', 'Montreal')
           ) as v(label, option_text)
 where q.question_hash = 'ca1b12773988f545a0bd95e5dd0700b0'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''General Agreement on Tariffs and Trade'' (GATT) was signed in:',
    'The GATT was signed in Geneva in 1947 and governed international trade for almost half a century before it was replaced by the WTO in 1995.',
    'medium',
    'Standard Reference',
    null,
    '10cbd498739258f7b8e31cbbbd11eed3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '10cbd498739258f7b8e31cbbbd11eed3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1947'),
            ('B', '1964'),
            ('C', '1995'),
            ('D', '1944')
           ) as v(label, option_text)
 where q.question_hash = '10cbd498739258f7b8e31cbbbd11eed3'
on conflict (question_id, label) do nothing;

-- history | world-history | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Kennedy Round'' and the ''Dillon Round'':',
    'The Dillon Round (1960-61) and the Kennedy Round (1964-67) were GATT trade rounds that reduced tariffs.',
    'hard',
    'Standard Reference',
    null,
    '94ab80f36a622c1c59f422a331577552'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '94ab80f36a622c1c59f422a331577552'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Were the disarmament talks'),
            ('B', 'Were the trade negotiation rounds of the GATT'),
            ('C', 'Were wars'),
            ('D', 'Were the rounds of the IMF quota review')
           ) as v(label, option_text)
 where q.question_hash = '94ab80f36a622c1c59f422a331577552'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Doha Development Agenda'' was launched in:',
    'The Doha Development Agenda was launched in November 2001 at the fourth WTO Ministerial Conference in Doha.',
    'medium',
    'Standard Reference',
    null,
    '25dd8e230131f459d1011947a289d4d0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '25dd8e230131f459d1011947a289d4d0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1998'),
            ('B', '2005'),
            ('C', '2001'),
            ('D', '1995')
           ) as v(label, option_text)
 where q.question_hash = '25dd8e230131f459d1011947a289d4d0'
on conflict (question_id, label) do nothing;

-- history | world-history | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Information technology revolution'' of the 1990s was driven by:',
    'The microprocessor, the personal computer and the internet transformed the world economy and the nature of work in the late twentieth century.',
    'easy',
    'Standard Reference',
    null,
    'ca277c5478e975c78be1d3e7256629f4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'ca277c5478e975c78be1d3e7256629f4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The invention of the steam engine'),
            ('B', 'The discovery of penicillin'),
            ('C', 'The construction of the railways'),
            ('D', 'The invention of the microprocessor and the spread of the personal computer and the internet')
           ) as v(label, option_text)
 where q.question_hash = 'ca277c5478e975c78be1d3e7256629f4'
on conflict (question_id, label) do nothing;

-- history | world-history | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''First World War'' and the ''Treaty of Brest-Litovsk'':',
    'The Treaty of Brest-Litovsk of March 1918 imposed heavy territorial and financial losses on Russia, which was followed by the Russian Revolution.',
    'hard',
    'Standard Reference',
    null,
    'ca98566845c785a0364a786fc7a7c482'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'ca98566845c785a0364a786fc7a7c482'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was the treaty of 1919 with Germany'),
            ('B', 'Was the treaty that ended the war'),
            ('C', 'Was the peace treaty that Russia signed with the Central Powers'),
            ('D', 'Was the treaty that created the League of Nations')
           ) as v(label, option_text)
 where q.question_hash = 'ca98566845c785a0364a786fc7a7c482'
on conflict (question_id, label) do nothing;

-- history | world-history | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Soviet Union'' was dissolved in:',
    'The Soviet Union was formally dissolved on 26 December 1991, and the Russian Federation became the successor state.',
    'easy',
    'Standard Reference',
    null,
    '2b0a1746d1e76198f8db8d10e8b85cb0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '2b0a1746d1e76198f8db8d10e8b85cb0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1989'),
            ('B', '1991'),
            ('C', '1993'),
            ('D', '1985')
           ) as v(label, option_text)
 where q.question_hash = '2b0a1746d1e76198f8db8d10e8b85cb0'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Yalta Conference'' of 1945:',
    'The Yalta Conference of February 1945 among Roosevelt, Churchill and Stalin decided the occupation of Germany, the UN and the entry of the USSR into the war against Japan.',
    'medium',
    'Standard Reference',
    null,
    '832a42eb8d46e4b887e17046072056da'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '832a42eb8d46e4b887e17046072056da'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was the meeting of Roosevelt, Churchill and Stalin that decided the post-war settlement'),
            ('B', 'Was the meeting that founded the UN'),
            ('C', 'Was the meeting that signed the Treaty of Versailles'),
            ('D', 'Was the meeting of the Non-Aligned Movement')
           ) as v(label, option_text)
 where q.question_hash = '832a42eb8d46e4b887e17046072056da'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Potsdam Conference'' of 1945:',
    'The Potsdam Conference of July-August 1945 among Truman, Stalin and Churchill dealt with the administration of Germany and the postwar settlement of Europe.',
    'medium',
    'Standard Reference',
    null,
    '7256d6791643fd521663612e02ab9cc4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '7256d6791643fd521663612e02ab9cc4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Created the European Union'),
            ('B', 'Ended the Korean War'),
            ('C', 'Set the terms of the Marshall Plan'),
            ('D', 'Dealt with the administration of Germany after the war')
           ) as v(label, option_text)
 where q.question_hash = '7256d6791643fd521663612e02ab9cc4'
on conflict (question_id, label) do nothing;

-- history | world-history | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''United Nations Security Council Resolution'' establishing the state of Israel was:',
    'UN Security Council Resolution 181 of 1947 recommended the partition of Palestine, and Resolution 194 of 1949 affirmed the right of the Jewish people to statehood.',
    'hard',
    'Standard Reference',
    null,
    'bf4d245a955a38ab1c239cbbc33d8786'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'bf4d245a955a38ab1c239cbbc33d8786'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Resolution 337'),
            ('B', 'Resolution 181'),
            ('C', 'Resolution 275'),
            ('D', 'Resolution 194')
           ) as v(label, option_text)
 where q.question_hash = 'bf4d245a955a38ab1c239cbbc33d8786'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Korean War'' of 1950-53:',
    'The Korean War was fought between the UN Command led by the United States and the forces of North Korea, China and the Soviet Union, and it ended with the division of Korea along the 38th parallel.',
    'medium',
    'Standard Reference',
    null,
    'ddef32c4afb84fa1787934b82e0f0957'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ddef32c4afb84fa1787934b82e0f0957'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was a proxy war between the UN forces and the Chinese and North Korean forces'),
            ('B', 'Was a war between the Soviet Union and the United States directly'),
            ('C', 'Led to the formation of NATO'),
            ('D', 'Resulted in the partition of Germany')
           ) as v(label, option_text)
 where q.question_hash = 'ddef32c4afb84fa1787934b82e0f0957'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Vietnam War'' and the ''Paris Peace Accords'':',
    'The Paris Peace Accords of January 1973 provided for the withdrawal of the American forces from Vietnam and the reunification of the country.',
    'medium',
    'Standard Reference',
    null,
    '7e6b73b4a4166e29e499beaa90599b11'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '7e6b73b4a4166e29e499beaa90599b11'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The accords created the NATO'),
            ('B', 'The accords recognised the independence of India'),
            ('C', 'The accords of 1973 provided for the withdrawal of US troops from Vietnam'),
            ('D', 'The accords ended the First World War')
           ) as v(label, option_text)
 where q.question_hash = '7e6b73b4a4166e29e499beaa90599b11'
on conflict (question_id, label) do nothing;

-- history | world-history | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Cuban Missile Crisis'' and the ''Hotline'' between Moscow and Washington:',
    'The direct ''hotline'' between Washington and Moscow was established in 1963 after the Cuban Missile Crisis.',
    'hard',
    'Standard Reference',
    null,
    '1556d765f5a112c01d05518b61d67f5d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '1556d765f5a112c01d05518b61d67f5d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was set up in 1963 only'),
            ('B', 'Was a military command line'),
            ('C', 'Was set up after the crisis to avoid miscalculation'),
            ('D', 'Was a commercial telephone line')
           ) as v(label, option_text)
 where q.question_hash = '1556d765f5a112c01d05518b61d67f5d'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Prague'' and the ''Havana'' and the ''Bandung'' are:',
    'Prague 1968, Havana 1962 and Bandung 1955 were significant conferences in the Cold War and the Cold War''s periphery.',
    'medium',
    'Standard Reference',
    null,
    '6c6e38e2a995494c003aec2d8cbc87b7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '6c6e38e2a995494c003aec2d8cbc87b7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sites of the first nuclear tests'),
            ('B', 'Cities that hosted conferences of significance in the Cold War'),
            ('C', 'Capitals of NATO countries'),
            ('D', 'Locations of the world''s largest economies')
           ) as v(label, option_text)
 where q.question_hash = '6c6e38e2a995494c003aec2d8cbc87b7'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Falklands War'' of 1982 was between:',
    'The Falklands War was fought between Argentina and the United Kingdom over the South Atlantic islands, and it influenced the domestic politics of both countries.',
    'medium',
    'Standard Reference',
    null,
    '601ff970f1738774276adfde23aeeb14'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '601ff970f1738774276adfde23aeeb14'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'India and Pakistan'),
            ('B', 'France and Germany'),
            ('C', 'Soviet Union and the United States'),
            ('D', 'Argentina and the United Kingdom')
           ) as v(label, option_text)
 where q.question_hash = '601ff970f1738774276adfde23aeeb14'
on conflict (question_id, label) do nothing;

-- history | world-history | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Peaceful nuclear tests'' of 1998 in Pokhran were condemned by:',
    'The nuclear tests of May 1998 drew condemnation from the United States and the other nuclear weapon states, and the sanctions that followed were lifted after the 1999 Kargil conflict.',
    'hard',
    'Standard Reference',
    null,
    '92dbf872d867bc442c9300a5aae94cf6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '92dbf872d867bc442c9300a5aae94cf6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The United States and the other nuclear weapon states'),
            ('B', 'The United Nations Security Council'),
            ('C', 'The European Union only'),
            ('D', 'The African Union')
           ) as v(label, option_text)
 where q.question_hash = '92dbf872d867bc442c9300a5aae94cf6'
on conflict (question_id, label) do nothing;

-- history | world-history | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''End of the Second World War'' in Europe is marked by:',
    'The unconditional surrender of Germany on 8 May 1945, marked by Victory in Europe Day, ended the war in Europe.',
    'easy',
    'Standard Reference',
    null,
    'ef00161c03e586a80eacbc364da0f4e8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ef00161c03e586a80eacbc364da0f4e8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The unconditional surrender of Germany on 8 May 1945'),
            ('B', 'The bombing of Hiroshima'),
            ('C', 'The signing of the UN Charter'),
            ('D', 'The surrender of Japan')
           ) as v(label, option_text)
 where q.question_hash = 'ef00161c03e586a80eacbc364da0f4e8'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''International Court of Justice'' at The Hague:',
    'The ICJ at The Hague is the principal judicial organ of the UN, while the International Criminal Court at The Hague deals with individual criminal responsibility.',
    'medium',
    'Standard Reference',
    null,
    '841649b57a5d0f593654ca81c616a3a9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '841649b57a5d0f593654ca81c616a3a9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was the court of the League of Nations'),
            ('B', 'Is the principal judicial organ of the UN'),
            ('C', 'Is the criminal court of the UN'),
            ('D', 'Was the predecessor of the International Criminal Court')
           ) as v(label, option_text)
 where q.question_hash = '841649b57a5d0f593654ca81c616a3a9'
on conflict (question_id, label) do nothing;

-- history | world-history | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''International Criminal Court'' was established in:',
    'The Rome Statute was adopted in 1998 and the ICC began functioning in 2002 at The Hague, with no jurisdiction over India, Pakistan and the United States.',
    'hard',
    'Standard Reference',
    null,
    '96facd374606a4c04b891fcffb283b34'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '96facd374606a4c04b891fcffb283b34'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2002'),
            ('B', '1994'),
            ('C', '1989'),
            ('D', '1998')
           ) as v(label, option_text)
 where q.question_hash = '96facd374606a4c04b891fcffb283b34'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''European Union'' and the ''Euro'':',
    'The euro was launched as a book currency in 1999 and the euro notes and coins were introduced in 2002.',
    'medium',
    'Standard Reference',
    null,
    'f5203a5ff9c041de98f42a451c6ac8ae'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'f5203a5ff9c041de98f42a451c6ac8ae'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The euro is used in the United Kingdom'),
            ('B', 'The euro was introduced in 2002 only'),
            ('C', 'The euro was introduced in 1999 as a book money and in 2002 as a currency'),
            ('D', 'The euro replaced the franc in 1990')
           ) as v(label, option_text)
 where q.question_hash = 'f5203a5ff9c041de98f42a451c6ac8ae'
on conflict (question_id, label) do nothing;

-- history | world-history | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Green Revolution'' in the world and the ''Norman Borlaug'':',
    'Norman Borlaug developed the semi-dwarf, high-yielding and disease-resistant wheat varieties and received the Nobel Peace Prize for the Green Revolution.',
    'easy',
    'Standard Reference',
    null,
    '7bda584d2e8cc712c939eb03b1784971'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '7bda584d2e8cc712c939eb03b1784971'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Borlaug was a French scientist'),
            ('B', 'Borlaug led the Indian space programme'),
            ('C', 'Borlaug was the father of the White Revolution'),
            ('D', 'Borlaug developed the semi-dwarf wheat varieties that raised yields')
           ) as v(label, option_text)
 where q.question_hash = '7bda584d2e8cc712c939eb03b1784971'
on conflict (question_id, label) do nothing;

-- history | world-history | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''UNESCO'' and the ''General History of India'':',
    'UNESCO has undertaken a General History of India project with the Indian Council of Historical Research to document the country''s history.',
    'hard',
    'Standard Reference',
    null,
    '5944604585da7f2364abbf043ae293c2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '5944604585da7f2364abbf043ae293c2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'UNESCO has a general history project of India'),
            ('B', 'UNESCO publishes the Economic Survey'),
            ('C', 'UNESCO compiles the Indian Census'),
            ('D', 'UNESCO awards the Bharat Ratna')
           ) as v(label, option_text)
 where q.question_hash = '5944604585da7f2364abbf043ae293c2'
on conflict (question_id, label) do nothing;

-- history | world-history | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Anglo-Indian'' and the ''Indo-Anglian'' historiography:',
    'Recent scholarship has preferred ''Indo-Anglian'' over ''Anglo-Indian'' for the colonial period, and the change was advocated in the Cambridge History of India volumes.',
    'hard',
    'Standard Reference',
    null,
    '0375eee5080ae9f950042dcf5aad4f59'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '0375eee5080ae9f950042dcf5aad4f59'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Both terms refer to the British army'),
            ('B', 'The term Indo-Anglian is preferred in recent scholarship'),
            ('C', 'Anglo-Indian refers to the people of mixed descent'),
            ('D', 'Indo-Anglian refers to the East India Company')
           ) as v(label, option_text)
 where q.question_hash = '0375eee5080ae9f950042dcf5aad4f59'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Revolt of 1857'' and the ''First War of Independence'':',
    'The title of First War of Independence was popularised by V.D. Savarkar and later historians to stress the national character of the revolt, which the British called the Sepoy Mutiny.',
    'medium',
    'Standard Reference',
    null,
    'ff33876bc6b620780f729c5931bc50d0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'ff33876bc6b620780f729c5931bc50d0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It was named the Great Rebellion by the British'),
            ('B', 'It was named the Mutiny by the Indian National Congress'),
            ('C', 'The title First War of Independence was used by V.D. Savarkar and others'),
            ('D', 'It was called the Sepoy Mutiny officially from the beginning')
           ) as v(label, option_text)
 where q.question_hash = 'ff33876bc6b620780f729c5931bc50d0'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Vellore Mutiny'' of 1806:',
    'The Vellore Mutiny of 1806 was an earlier sepoy revolt at the Vellore fort, before the Revolt of 1857.',
    'medium',
    'Standard Reference',
    null,
    '6e1a76c2359db02b1f3b5c4e7c20c5f8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '6e1a76c2359db02b1f3b5c4e7c20c5f8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was the mutiny of the sailors of the Royal Indian Navy'),
            ('B', 'Was a revolt by the sepoys in the Vellore fort'),
            ('C', 'Was a peasant rising in Awadh'),
            ('D', 'Was the mutiny of the Bengal army in 1857')
           ) as v(label, option_text)
 where q.question_hash = '6e1a76c2359db02b1f3b5c4e7c20c5f8'
on conflict (question_id, label) do nothing;

-- history | world-history | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Revolt of 1857'' centred on:',
    'The Revolt of 1857 broke out at Meerut on 10 May 1857, seized Delhi and Kanpur and spread to the north-western provinces, Bihar and central India.',
    'easy',
    'Standard Reference',
    null,
    '39b733fd30e7ebfd7dbef9ea28e4da0f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '39b733fd30e7ebfd7dbef9ea28e4da0f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bombay and Madras'),
            ('B', 'Bengal and Orissa'),
            ('C', 'Punjab and Sindh only'),
            ('D', 'Meerut, Delhi and Kanpur')
           ) as v(label, option_text)
 where q.question_hash = '39b733fd30e7ebfd7dbef9ea28e4da0f'
on conflict (question_id, label) do nothing;

-- history | world-history | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Rani of Jhansi'' and the ''Tantura Tope'':',
    'Rani Lakshmibai of Jhansi and Tantura Tope, along with Kunwar Singh, Begum Hazrat Mahal and Bakht Khan, were the leaders of the Revolt of 1857.',
    'easy',
    'Standard Reference',
    null,
    '8d00d13b73b3a53149796f2ce4bd312f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '8d00d13b73b3a53149796f2ce4bd312f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Both were leaders of the INA'),
            ('B', 'Both were martyrs of the Non-Cooperation Movement'),
            ('C', 'Rani Lakshmibai of Jhansi and Tantura Tope were leaders of the Revolt of 1857'),
            ('D', 'Both were leaders of the 1942 movement')
           ) as v(label, option_text)
 where q.question_hash = '8d00d13b73b3a53149796f2ce4bd312f'
on conflict (question_id, label) do nothing;

-- history | world-history | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Bahadur Shah Zafar'' was the last:',
    'Bahadur Shah Zafar, the last Mughal emperor, was captured and exiled to Rangoon after the Revolt of 1857 and wrote his memoirs as a poet in Persian.',
    'easy',
    'Standard Reference',
    null,
    '0d6f4e21acb765ee74cba3f47bcb1c7f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '0d6f4e21acb765ee74cba3f47bcb1c7f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Mughal emperor'),
            ('B', 'Sultan of the Delhi Sultanate'),
            ('C', 'Sher Shah''s successor'),
            ('D', 'Governor of Bengal')
           ) as v(label, option_text)
 where q.question_hash = '0d6f4e21acb765ee74cba3f47bcb1c7f'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Maukhly'' and the ''Mansabdari'' systems:',
    'The mansabdari system assigned mansabdars a rank in the military-cum-revenue hierarchy and the muqta was the revenue assignment, both central to the Mughal administration.',
    'medium',
    'Standard Reference',
    null,
    'cad1b8431d8f3d6078f5ed5c8ca5e31f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'cad1b8431d8f3d6078f5ed5c8ca5e31f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Mansabdari was a revenue-military ranking system of the Mughals'),
            ('B', 'Maukhly was a land revenue system of the British'),
            ('C', 'Both were systems of the Vijayanagara empire'),
            ('D', 'Both were systems of the Marathas')
           ) as v(label, option_text)
 where q.question_hash = 'cad1b8431d8f3d6078f5ed5c8ca5e31f'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Mughal'' and the ''Ain-i-Dahsala'':',
    'The Ain-i-Dahsala, the third book of Abul Fazl''s Ain-i-Akbari, describes the mansabdari system of ranking and the rules of service.',
    'medium',
    'Standard Reference',
    null,
    '7b923d68f4b4d56b2628488d8b90304e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '7b923d68f4b4d56b2628488d8b90304e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ain-i-Dahsala was written by Birbal'),
            ('B', 'It was a legal code by Aurangzeb'),
            ('C', 'It was a revenue atlas'),
            ('D', 'Ain-i-Dahsala by Abul Fazl described the mansabdari system')
           ) as v(label, option_text)
 where q.question_hash = '7b923d68f4b4d56b2628488d8b90304e'
on conflict (question_id, label) do nothing;

-- history | world-history | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Jagirdari'' system of the Mughals:',
    'The jagirdari system assigned revenue rights in exchange for military service, and the crisis of the jagirdari system contributed to the decline of the Mughals.',
    'hard',
    'Standard Reference',
    null,
    'b03c3bc803a1f787c00b80123e642e99'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'b03c3bc803a1f787c00b80123e642e99'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A system of irrigation'),
            ('B', 'A system of minting coins'),
            ('C', 'A land revenue assignment in lieu of salary with an obligation to maintain troops'),
            ('D', 'A tax-free grant to religious institutions')
           ) as v(label, option_text)
 where q.question_hash = 'b03c3bc803a1f787c00b80123e642e99'
on conflict (question_id, label) do nothing;

-- history | world-history | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Zabt'' system of land revenue:',
    'The zabt system, associated with Todar Mal''s revenue reforms in the 1580s, standardised the assessment and collection of revenue across the empire.',
    'hard',
    'Standard Reference',
    null,
    '8e21a22a4a9d411658b9ca8422d78d36'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '8e21a22a4a9d411658b9ca8422d78d36'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A system of trade tariffs'),
            ('B', 'A system of assessment and collection of land revenue at prescribed rates in the Mughal era'),
            ('C', 'A system of military recruitment'),
            ('D', 'A system of irrigation')
           ) as v(label, option_text)
 where q.question_hash = '8e21a22a4a9d411658b9ca8422d78d36'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Todar Mal'' and his ''Bandobast'':',
    'Todar Mal, a minister of Akbar, introduced the zabt system with the bandobast, a systematic measurement of land and the fixing of revenue rates.',
    'medium',
    'Standard Reference',
    null,
    '6e31c6a348c8a9c9875cab8dd7f28485'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '6e31c6a348c8a9c9875cab8dd7f28485'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Todar Mal founded the Mughal school of painting'),
            ('B', 'Todar Mal''s revenue reforms and the bandobast or land measurement'),
            ('C', 'Todar Mal was a Mughal general'),
            ('D', 'The bandobast was the jagirdari system')
           ) as v(label, option_text)
 where q.question_hash = '6e31c6a348c8a9c9875cab8dd7f28485'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Charkhal'' and the ''Dahsala'' are:',
    'The charkhal and the dahsala were alternative systems of land revenue assessment and collection in the Mughal period.',
    'medium',
    'Standard Reference',
    null,
    'a84c3cf09a5ac06567b9a82c62ce7b8a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a84c3cf09a5ac06567b9a82c62ce7b8a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Land revenue systems of the Mughal era'),
            ('B', 'Military campaigns of Aurangzeb'),
            ('C', 'Rebellions against Akbar'),
            ('D', 'Trade routes of the Marathas')
           ) as v(label, option_text)
 where q.question_hash = 'a84c3cf09a5ac06567b9a82c62ce7b8a'
on conflict (question_id, label) do nothing;

-- history | world-history | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Mughal'' and the ''Amān'' and the ''Nizamat'' systems:',
    'In Bengal the Mughal administration combined the amān system of revenue farming with the nizamat system of direct state control, with the latter eventually prevailing.',
    'hard',
    'Standard Reference',
    null,
    'f3d9fd05ec4d89cd20b687d72e817d18'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'f3d9fd05ec4d89cd20b687d72e817d18'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'They were the systems of grants to the religious endowments'),
            ('B', 'They were the naval forces of the empire'),
            ('C', 'The amān and nizamat systems were the revenue arrangements in Bengal'),
            ('D', 'They were the judicial systems of the Mughals')
           ) as v(label, option_text)
 where q.question_hash = 'f3d9fd05ec4d89cd20b687d72e817d18'
on conflict (question_id, label) do nothing;

-- history | world-history | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Subahdars'' and the ''Sarkars'' and the ''Parganas'' were:',
    'The Mughal administrative hierarchy ran from the subah or province, through the sarkar or district, to the pargana or the smaller revenue unit.',
    'easy',
    'Standard Reference',
    null,
    '052ca730218eb04fd28af9f3479570cc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '052ca730218eb04fd28af9f3479570cc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The units of the Maratha revenue system'),
            ('B', 'The revenue circles of the British'),
            ('C', 'The judicial units of the Delhi Sultanate'),
            ('D', 'The administrative divisions of the Mughal empire')
           ) as v(label, option_text)
 where q.question_hash = '052ca730218eb04fd28af9f3479570cc'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Shah Jahan'' and the ''jizya'':',
    'Shah Jahan abolished the jizya in 1655 and made the dues of the non-Muslims part of the general land revenue, while Aurangzeb reimposed it in 1679.',
    'medium',
    'Standard Reference',
    null,
    'f706a23c04449bf265b79f1919c62a31'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f706a23c04449bf265b79f1919c62a31'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Shah Jahan abolished the jizya in 1655'),
            ('B', 'Shah Jahan doubled the jizya'),
            ('C', 'Shah Jahan imposed the jizya on the Brahmins'),
            ('D', 'Shah Jahan was the last to collect it')
           ) as v(label, option_text)
 where q.question_hash = 'f706a23c04449bf265b79f1919c62a31'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Aurangzeb'' and the ''Padshahnama'':',
    'The Padshahnama, written by Abdul Hamid Lahori, is a court chronicle of Aurangzeb''s reign and one of the chief sources for the period.',
    'medium',
    'Standard Reference',
    null,
    'c30d9a60bce72baadc0401551e3e23b6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'c30d9a60bce72baadc0401551e3e23b6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a legal code of Aurangzeb'),
            ('B', 'It is an account of the Marathas'),
            ('C', 'It is a translation of the Bible'),
            ('D', 'The Padshahnama of Abdul Hamid Lahori is a court chronicle of Aurangzeb''s reign')
           ) as v(label, option_text)
 where q.question_hash = 'c30d9a60bce72baadc0401551e3e23b6'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Aurangzeb'' and his ''orders'' regarding the jizya:',
    'Aurangzeb reimposed the jizya in 1679 and his religious policies are generally held to have alienated the Rajputs and the Marathas and contributed to the empire''s decline.',
    'medium',
    'Standard Reference',
    null,
    '8f9c05e598ad6cbb884d083473b6b007'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '8f9c05e598ad6cbb884d083473b6b007'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'He never imposed it'),
            ('B', 'He collected it only from the Hindus'),
            ('C', 'He reimposed the jizya in 1679'),
            ('D', 'He abolished it in 1679')
           ) as v(label, option_text)
 where q.question_hash = '8f9c05e598ad6cbb884d083473b6b007'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Maratha Confederacy'' and the ''Peshwas'':',
    'After the death of Shivaji, the Maratha state developed into a confederacy of semi-autonomous states, with the Peshwa of Pune exercising a loose authority over them.',
    'medium',
    'Standard Reference',
    null,
    'e9685f9838647a96bd67f4b411c1d6f6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e9685f9838647a96bd67f4b411c1d6f6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Confederacy was led by the Nizam'),
            ('B', 'The Peshwas were the prime ministers of the Maratha state'),
            ('C', 'The Confederacy was a European alliance'),
            ('D', 'The Peshwas were the revenue farmers in Bengal')
           ) as v(label, option_text)
 where q.question_hash = 'e9685f9838647a96bd67f4b411c1d6f6'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Treaty of Bassein'' of 1802:',
    'The Treaty of Bassein in December 1802 made the Peshwa a subsidiary ally of the Company and paved the way for British control of the Maratha state.',
    'medium',
    'Standard Reference',
    null,
    '38585b1c872f96f54380bb03d91a77cc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '38585b1c872f96f54380bb03d91a77cc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Recognised Shivaji as the founder of the state'),
            ('B', 'Was signed with the Nizam'),
            ('C', 'Was between the Peshwa Baji Rao II and the British East India Company'),
            ('D', 'Ended the Anglo-Maratha wars')
           ) as v(label, option_text)
 where q.question_hash = '38585b1c872f96f54380bb03d91a77cc'
on conflict (question_id, label) do nothing;

-- history | world-history | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Anglo-Maratha Wars'' were fought in:',
    'The three Anglo-Maratha wars were fought between 1775 and 1818, ending with the defeat of the Maratha confederacy.',
    'hard',
    'Standard Reference',
    null,
    '1367413427a6bb97202989688d282bc3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '1367413427a6bb97202989688d282bc3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1803-1805 only'),
            ('B', '1818 only'),
            ('C', '1748-1761'),
            ('D', '1775-1818')
           ) as v(label, option_text)
 where q.question_hash = '1367413427a6bb97202989688d282bc3'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Shivaji'' and his ''Ashta Pradhan'':',
    'The Ashta Pradhan, or the council of eight ministers, was Shivaji''s inner council that assisted him in the administration of the Maratha state.',
    'medium',
    'Standard Reference',
    null,
    '305baea8f1073a6f09ed0d365d90ccac'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '305baea8f1073a6f09ed0d365d90ccac'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The eight chief ministers of the Peshwas'),
            ('B', 'The eight ministers of Shivaji''s council'),
            ('C', 'The nine battles fought by Shivaji'),
            ('D', 'The eight provinces of the Maratha state')
           ) as v(label, option_text)
 where q.question_hash = '305baea8f1073a6f09ed0d365d90ccac'
on conflict (question_id, label) do nothing;

-- history | world-history | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Swaraj'' and the ''Asthaprabhu'' and the ''Mauji'' taxation of Shivaji:',
    'Shivaji''s revenue system combined the asthaprabhu land measurement with the mauji system of assessment and collection of land revenue.',
    'hard',
    'Standard Reference',
    null,
    '4e762f3329121c4947288b268d90a227'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '4e762f3329121c4947288b268d90a227'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The measurement of land and a system of tribute in his revenue system'),
            ('B', 'A naval fleet'),
            ('C', 'A system of religious grants'),
            ('D', 'A system of judicial courts')
           ) as v(label, option_text)
 where q.question_hash = '4e762f3329121c4947288b268d90a227'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Gad'' and the ''Mandal'' and the ''Hill forts'' of Shivaji:',
    'The Maratha state had around 300 hill forts, which served as fortified strongholds, treasury and garrison stations.',
    'medium',
    'Standard Reference',
    null,
    '212de663679f795654b722849a805826'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '212de663679f795654b722849a805826'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The two revenue divisions'),
            ('B', 'The units of the Maratha navy'),
            ('C', 'The fortified hill stations of the Marathas'),
            ('D', 'The taxes levied on traders')
           ) as v(label, option_text)
 where q.question_hash = '212de663679f795654b722849a805826'
on conflict (question_id, label) do nothing;

-- history | world-history | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Kanhoji Angre'' and the ''Siddi'' of the Maratha navy:',
    'Kanhoji Angre was the admiral of the Maratha navy and the siddis were the Maratha maritime raiders who operated from the west coast ports.',
    'hard',
    'Standard Reference',
    null,
    'db101518d76731886ed11039f8d1ca9a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'db101518d76731886ed11039f8d1ca9a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The naval commander of the Marathas and the Maratha corsairs on the west coast'),
            ('B', 'The founders of the Bombay Presidency'),
            ('C', 'The commanders of the infantry'),
            ('D', 'The envoys to the Portuguese')
           ) as v(label, option_text)
 where q.question_hash = 'db101518d76731886ed11039f8d1ca9a'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Peshwa'' and the ''adoption'' of ''Peshwa Baji Rao II'' by the British:',
    'The British installed Baji Rao II as a figurehead Peshwa under the Treaty of Bassein and, after the Third Anglo-Maratha War, interned him at Bithur near Kanpur until his death in 1852.',
    'medium',
    'Standard Reference',
    null,
    '8fbb13bfbe2338cf8748e2f824c4d209'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '8fbb13bfbe2338cf8748e2f824c4d209'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The British abolished the Peshwa office in 1818'),
            ('B', 'Baji Rao II defeated the British'),
            ('C', 'The Peshwa was recognised as the ruler of the Maratha state'),
            ('D', 'The British supported Baji Rao II as a puppet and then interned him')
           ) as v(label, option_text)
 where q.question_hash = '8fbb13bfbe2338cf8748e2f824c4d209'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Regulating Act of 1773'' provided for a Governor General of:',
    'The Act designated the Governor of Bengal as the Governor General of Bengal, with the Governors of Madras and Bombay becoming subordinate to him.',
    'medium',
    'Standard Reference',
    null,
    '620b7111145aad7a4a6a24bca3c32bd3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '620b7111145aad7a4a6a24bca3c32bd3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Presidency of Fort William'),
            ('B', 'Bengal'),
            ('C', 'Madras'),
            ('D', 'Bombay')
           ) as v(label, option_text)
 where q.question_hash = '620b7111145aad7a4a6a24bca3c32bd3'
on conflict (question_id, label) do nothing;

-- history | world-history | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Sadar Board'' of revenue was introduced by:',
    'Thomas Munro, as the Governor of Madras, expanded the ryotwari system and set up the Sadar Board to supervise the revenue administration.',
    'hard',
    'Standard Reference',
    null,
    '5ed281705687df29ffeaafcbd707f5b0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '5ed281705687df29ffeaafcbd707f5b0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Warren Hastings'),
            ('B', 'Lord Wellesley'),
            ('C', 'Lord Cornwallis'),
            ('D', 'Thomas Munro')
           ) as v(label, option_text)
 where q.question_hash = '5ed281705687df29ffeaafcbd707f5b0'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Bourbon'' and the ''Habsburg'' and the ''Hohenzollern'' dynasties are European:',
    'The Bourbon, Habsburg, Hohenzollern and Romanov houses were the ruling dynasties of Europe in the nineteenth century.',
    'medium',
    'Standard Reference',
    null,
    '1328ad7eef67f70d8ad4fcd4064693c3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '1328ad7eef67f70d8ad4fcd4064693c3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Trade guilds'),
            ('B', 'Royal houses'),
            ('C', 'Trading companies'),
            ('D', 'Military alliances')
           ) as v(label, option_text)
 where q.question_hash = '1328ad7eef67f70d8ad4fcd4064693c3'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Zimmerman Telegram'' of 1917:',
    'The Zimmerman Telegram, in which Germany proposed a military alliance with Mexico against the United States, helped bring America into the First World War.',
    'medium',
    'Standard Reference',
    null,
    '512059e8685d5f59de9dd1f8f2ce5dff'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '512059e8685d5f59de9dd1f8f2ce5dff'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was the French declaration of war'),
            ('B', 'Was a peace proposal from the Pope'),
            ('C', 'Was a German proposal to Mexico for an alliance against the United States'),
            ('D', 'Was the British ultimatum to Germany')
           ) as v(label, option_text)
 where q.question_hash = '512059e8685d5f59de9dd1f8f2ce5dff'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Sinking of the Lusitania'' in 1915:',
    'The sinking of the Lusitania by a German U-boat in May 1915 killed 1,198 people, of whom 128 were Americans, and sharply increased American hostility to Germany.',
    'medium',
    'Standard Reference',
    null,
    '3cfda3ef1834da29d5c481a5943b71f2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '3cfda3ef1834da29d5c481a5943b71f2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was a British passenger liner torpedoed by a German submarine'),
            ('B', 'Was a German warship sunk by the British'),
            ('C', 'Was a French ship captured by the Ottomans'),
            ('D', 'Was an American vessel destroyed by a mine')
           ) as v(label, option_text)
 where q.question_hash = '3cfda3ef1834da29d5c481a5943b71f2'
on conflict (question_id, label) do nothing;

-- history | world-history | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Bolshevik Revolution'' of 1917 was led by:',
    'The Bolsheviks under Lenin and Trotsky seized power in Petrograd in November 1917, and the Treaty of Brest-Litovsk followed in 1918.',
    'easy',
    'Standard Reference',
    null,
    '83ca3f60ee6d2daed44ab883f31e443a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '83ca3f60ee6d2daed44ab883f31e443a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Lenin and Trotsky'),
            ('B', 'Stalin'),
            ('C', 'Nicholas II'),
            ('D', 'Kerensky')
           ) as v(label, option_text)
 where q.question_hash = '83ca3f60ee6d2daed44ab883f31e443a'
on conflict (question_id, label) do nothing;

-- history | world-history | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Treaty of Rapallo'' of 1922 was between:',
    'The Treaty of Rapallo between Germany and the Soviet Union recognised the Soviet state and led to the secret German-Soviet military cooperation of the interwar period.',
    'hard',
    'Standard Reference',
    null,
    '68724f1c6a0eafb683c57982b6f9dbed'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '68724f1c6a0eafb683c57982b6f9dbed'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'France and Germany'),
            ('B', 'Italy and Yugoslavia'),
            ('C', 'Germany and the Soviet Union'),
            ('D', 'Germany and Poland')
           ) as v(label, option_text)
 where q.question_hash = '68724f1c6a0eafb683c57982b6f9dbed'
on conflict (question_id, label) do nothing;

-- history | world-history | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Treaty of Aix-la-Chapelle'' of 1815:',
    'The Treaty of Aix-la-Chapelle of November 1815 ended the War of the Sixth Coalition, the Second Treaty of Paris, and it marked the beginning of the Concert of Europe.',
    'hard',
    'Standard Reference',
    null,
    'ecd1bb30c3fe396048a342bce051087d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'ecd1bb30c3fe396048a342bce051087d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ended the Napoleonic Wars in 1815'),
            ('B', 'Was the treaty of the Second World War'),
            ('C', 'Was the treaty of the Crimean War'),
            ('D', 'Ended the War of the Sixth Coalition and the Congress of Vienna')
           ) as v(label, option_text)
 where q.question_hash = 'ecd1bb30c3fe396048a342bce051087d'
on conflict (question_id, label) do nothing;

-- history | world-history | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Holy Alliance'' of 1815 was formed by:',
    'The Holy Alliance of 1815 was formed by the Tsar Alexander I, the Emperor Francis I and the King Frederick William III to uphold the Christian principles and to restore the monarchies.',
    'hard',
    'Standard Reference',
    null,
    '9d7faa7836673dd52bb832aa09bdd28d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '9d7faa7836673dd52bb832aa09bdd28d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Britain and the Prussia alone'),
            ('B', 'The Tsar Alexander I of Russia, the Emperor Francis I of Austria and the King Frederick William III of Prussia'),
            ('C', 'Napoleon and the Pope'),
            ('D', 'Britain and the France')
           ) as v(label, option_text)
 where q.question_hash = '9d7faa7836673dd52bb832aa09bdd28d'
on conflict (question_id, label) do nothing;

-- history | world-history | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Quadruple Alliance'' of 1815 consisted of:',
    'The Quadruple Alliance of 20 November 1815 between Britain, Russia, Austria and Prussia was the basis of the Concert of Europe of the Vienna settlement.',
    'hard',
    'Standard Reference',
    null,
    'afef3fbc6be680a0130e3c23bcce7853'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'afef3fbc6be680a0130e3c23bcce7853'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Britain, France, Spain and Italy'),
            ('B', 'Russia, Austria, France and Spain'),
            ('C', 'Britain, Prussia, Sweden and Denmark'),
            ('D', 'Britain, Russia, Austria and Prussia')
           ) as v(label, option_text)
 where q.question_hash = 'afef3fbc6be680a0130e3c23bcce7853'
on conflict (question_id, label) do nothing;

-- history | world-history | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Concert of Europe'' referred to:',
    'The Concert of Europe was the system of the collective cooperation of the European powers after the Congress of Vienna to maintain the status quo and to settle the disputes by the congresses.',
    'hard',
    'Standard Reference',
    null,
    'f5841330174c58cb7ce0e2427ab6be95'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f5841330174c58cb7ce0e2427ab6be95'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The cooperation of the European powers after 1815 to maintain the status quo'),
            ('B', 'The alliance against the Ottoman Empire'),
            ('C', 'The trade of the European powers'),
            ('D', 'The colonial conferences')
           ) as v(label, option_text)
 where q.question_hash = 'f5841330174c58cb7ce0e2427ab6be95'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Congress of Vienna'' of 1815 was chaired by:',
    'Prince Metternich, the Austrian chancellor, was the real architect and the chairman of the Congress of Vienna, which redrew the map of Europe and restored the old dynasties.',
    'medium',
    'Standard Reference',
    null,
    '057eeae85725763ca35acdb0d8d8b07d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '057eeae85725763ca35acdb0d8d8b07d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Alexander I'),
            ('B', 'Hardenberg'),
            ('C', 'Prince Metternich'),
            ('D', 'Talleyrand')
           ) as v(label, option_text)
 where q.question_hash = '057eeae85725763ca35acdb0d8d8b07d'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Hundred Days'' of Napoleon:',
    'The Hundred Days were the period between the escape of Napoleon from Elba in March 1815 and his final defeat at Waterloo in June 1815.',
    'medium',
    'Standard Reference',
    null,
    'a60dfc40fa9c9e7e1c4d1cd4b32b3b3b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a60dfc40fa9c9e7e1c4d1cd4b32b3b3b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Were the period of the Consulate'),
            ('B', 'Were the period between the escape from Elba and the defeat at Waterloo in 1815'),
            ('C', 'Were the period of the retreat from Moscow'),
            ('D', 'Were the period of the Egypt campaign')
           ) as v(label, option_text)
 where q.question_hash = 'a60dfc40fa9c9e7e1c4d1cd4b32b3b3b'
on conflict (question_id, label) do nothing;

-- history | world-history | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Battle of Waterloo'' was fought in:',
    'The Battle of Waterloo was fought on 18 June 1815 and it ended the Napoleonic Wars and the Hundred Days.',
    'easy',
    'Standard Reference',
    null,
    'eb44175cc2ee8f09e20ed3203bab547d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'eb44175cc2ee8f09e20ed3203bab547d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1799'),
            ('B', '1815'),
            ('C', '1812'),
            ('D', '1805')
           ) as v(label, option_text)
 where q.question_hash = 'eb44175cc2ee8f09e20ed3203bab547d'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Continental System'' of Napoleon:',
    'The Continental System was the blockade of the British goods in Europe and it was an economic weapon that failed to bring Britain to its knees and caused great hardship in the German states.',
    'medium',
    'Standard Reference',
    null,
    'dae94f232e3c0ddc5582aebab3dc76ac'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'dae94f232e3c0ddc5582aebab3dc76ac'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was the French taxation system'),
            ('B', 'Was the code of the Napoleonic laws'),
            ('C', 'Was the conscription system'),
            ('D', 'Was the blockade of the British trade with Europe')
           ) as v(label, option_text)
 where q.question_hash = 'dae94f232e3c0ddc5582aebab3dc76ac'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Napoleonic Code'' of 1804:',
    'The Napoleonic Code of 1804 was the model for the civil law of many countries and it introduced the equality before the law, the abolition of the feudal privileges and the protection of the property.',
    'medium',
    'Standard Reference',
    null,
    'f62f870cfa2502429db534af3c89708e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f62f870cfa2502429db534af3c89708e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was the civil code that introduced the equality before the law and the abolition of the feudal privileges'),
            ('B', 'Was the penal code of 1810'),
            ('C', 'Was the constitution of 1799'),
            ('D', 'Was the civil code of the Revolution of 1789')
           ) as v(label, option_text)
 where q.question_hash = 'f62f870cfa2502429db534af3c89708e'
on conflict (question_id, label) do nothing;

-- history | world-history | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Treaty of Tilsit'' of 1807:',
    'The Treaty of Tilsit of 1807 was the agreement between Napoleon and the Tsar Alexander I and it was the summit of the French power in Europe.',
    'hard',
    'Standard Reference',
    null,
    '7bed7998a9e2bdcfa249f761ac9447df'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '7bed7998a9e2bdcfa249f761ac9447df'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was the treaty of Vienna'),
            ('B', 'Was the treaty of the Rhine'),
            ('C', 'Was the treaty between Napoleon and the Tsar Alexander I'),
            ('D', 'Was the treaty that ended the Crimean War')
           ) as v(label, option_text)
 where q.question_hash = '7bed7998a9e2bdcfa249f761ac9447df'
on conflict (question_id, label) do nothing;

-- history | world-history | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Rhineland'' of 1806:',
    'The Confederation of the Rhine was created in 1806 as a satellite of the French Empire with the buffer states on the French border.',
    'hard',
    'Standard Reference',
    null,
    'e5f1a344e4d09dce8a7458e60ab3268a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e5f1a344e4d09dce8a7458e60ab3268a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was a French department'),
            ('B', 'Was a Russian province'),
            ('C', 'Was an Italian kingdom'),
            ('D', 'Was the confederation of the German states under the French influence')
           ) as v(label, option_text)
 where q.question_hash = 'e5f1a344e4d09dce8a7458e60ab3268a'
on conflict (question_id, label) do nothing;

-- history | world-history | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Unam干涉'' - The ''July Revolution'' of 1830 in France:',
    'The July Revolution of 1830 overthrew the Bourbon Charles X and the July monarchy of Louis-Philippe was established, and it was the inspiration for the European revolutions of 1848.',
    'hard',
    'Standard Reference',
    null,
    '81d710581418b31a424c61662cf93679'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '81d710581418b31a424c61662cf93679'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was the coup of 18 Brumaire'),
            ('B', 'Overthrew the Bourbon king Charles X and brought Louis-Philippe to the power'),
            ('C', 'Restored Napoleon'),
            ('D', 'Established the Empire')
           ) as v(label, option_text)
 where q.question_hash = '81d710581418b31a424c61662cf93679'
on conflict (question_id, label) do nothing;

-- history | world-history | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''July Monarchy'' of France:',
    'The July Monarchy of Louis-Philippe lasted from 1830 to 1848 and it was described by Guizot as a monarchy of the middle class.',
    'hard',
    'Standard Reference',
    null,
    'fab3565ca6e58dc63ede15312a0bde9a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'fab3565ca6e58dc63ede15312a0bde9a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was the First Republic'),
            ('B', 'Was the rule of the Bourbons after 1815'),
            ('C', 'Was the regime of Louis-Philippe from 1830 to 1848'),
            ('D', 'Was the rule of Napoleon III')
           ) as v(label, option_text)
 where q.question_hash = 'fab3565ca6e58dc63ede15312a0bde9a'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Revolutions of 1848'' in Europe were known as the:',
    'The revolutions of 1848 were called the Spring of Nations and they began in Sicily and Paris and spread across Europe.',
    'medium',
    'Standard Reference',
    null,
    'b4f9ba448e37c7eee963ae3dea1cc7e4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'b4f9ba448e37c7eee963ae3dea1cc7e4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Spring of Nations'),
            ('B', 'The Great Fire'),
            ('C', 'The Hundred Days'),
            ('D', 'The Restoration')
           ) as v(label, option_text)
 where q.question_hash = 'b4f9ba448e37c7eee963ae3dea1cc7e4'
on conflict (question_id, label) do nothing;

-- history | world-history | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Chartism'' of 1836-48 in Britain:',
    'The Chartism with the six points of the universal suffrage was the first mass working class political movement of Britain and it failed but it led to the reforms of 1867.',
    'hard',
    'Standard Reference',
    null,
    '62dc3a0fe24247c7146caba80acec505'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '62dc3a0fe24247c7146caba80acec505'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was the Corn Law agitation'),
            ('B', 'Was the repeal of the combination laws'),
            ('C', 'Was the Irish famine relief'),
            ('D', 'Was the working class movement for the political reform and the universal suffrage')
           ) as v(label, option_text)
 where q.question_hash = '62dc3a0fe24247c7146caba80acec505'
on conflict (question_id, label) do nothing;

-- history | world-history | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Corn Laws'' of Britain:',
    'The Corn Laws protected the British agriculture with the import tariffs and their repeal in 1846 with the Irish famine was a landmark of the free trade.',
    'hard',
    'Standard Reference',
    null,
    '7f3f2c068d9873386f338b66bd9046c7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '7f3f2c068d9873386f338b66bd9046c7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Regulated the wages'),
            ('B', 'Imposed the tariffs on the imported grain and were repealed in 1846'),
            ('C', 'Taxed the wool'),
            ('D', 'Banned the imports of the sugar')
           ) as v(label, option_text)
 where q.question_hash = '7f3f2c068d9873386f338b66bd9046c7'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Great Famine of Ireland'' of 1845-49:',
    'The Great Famine of Ireland was caused by the potato blight and the British policy of the export of the food while about a million people died and a million emigrated.',
    'medium',
    'Standard Reference',
    null,
    '39733342f1243865aeada76655dcad40'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '39733342f1243865aeada76655dcad40'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was caused by the potato blight and the British policy'),
            ('B', 'Was caused by the cholera in Bengal'),
            ('C', 'Was caused by the war with the France'),
            ('D', 'Was caused by the volcanic eruption')
           ) as v(label, option_text)
 where q.question_hash = '39733342f1243865aeada76655dcad40'
on conflict (question_id, label) do nothing;

-- history | world-history | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Peterloo Massacre'' of 1819 in Britain:',
    'The Peterloo Massacre of 1819 in Manchester saw the Yeomanry and the soldiers kill the crowd that gathered for the reform and it is remembered as Peterloo.',
    'hard',
    'Standard Reference',
    null,
    '716b7016b66f7d7d5de68b8a705e47c6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '716b7016b66f7d7d5de68b8a705e47c6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was the Boston Massacre'),
            ('B', 'Was the Amritsar massacre'),
            ('C', 'Was the killing of the reformist crowd at St Peter''s field in Manchester'),
            ('D', 'Was the massacre of the Paris students')
           ) as v(label, option_text)
 where q.question_hash = '716b7016b66f7d7d5de68b8a705e47c6'
on conflict (question_id, label) do nothing;

-- history | world-history | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'Which of the following statements is/are correct in relation to the Victoria became?',
    'Queen Victoria, who came to the throne in 1837, saw the Reform Acts of 1867 and 1884, the rise of the trade unions and the imperial expansion in the Victorian era.',
    'easy',
    'Standard Reference',
    null,
    '165d265b8f79a09525a42d93ffa1cd8a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '165d265b8f79a09525a42d93ffa1cd8a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'She became the queen in 1858'),
            ('B', 'She became the queen in 1901'),
            ('C', 'Victoria became the queen in 1837 and her reign saw the industrialisation and the imperial expansion'),
            ('D', 'She became the queen in 1815')
           ) as v(label, option_text)
 where q.question_hash = '165d265b8f79a09525a42d93ffa1cd8a'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Opium Wars'' of 1839-42 and 1856-60:',
    'The First Opium War of 1839-42 and the Second of 1856-60 were fought by Britain against the Qing China over the opium trade, and the Treaty of Nanking ceded Hong Kong.',
    'medium',
    'Standard Reference',
    null,
    'd9676d6bd8e57f29e94992847fe7de97'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'd9676d6bd8e57f29e94992847fe7de97'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Were the wars of the Italian unification'),
            ('B', 'Were the Balkan wars'),
            ('C', 'Were the Russo-Turkish wars'),
            ('D', 'Were the wars between Britain and China over the trade and the opium')
           ) as v(label, option_text)
 where q.question_hash = 'd9676d6bd8e57f29e94992847fe7de97'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Treaty of Nanking'' of 1842:',
    'The Treaty of Nanking of 1842 ended the First Opium War and ceded Hong Kong to the Britain and opened the five treaty ports.',
    'medium',
    'Standard Reference',
    null,
    '605284f046d06a5ae2ad7ba26daba92c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '605284f046d06a5ae2ad7ba26daba92c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Recognised the independence of the USA'),
            ('B', 'Ended the First Opium War and ceded Hong Kong to the Britain'),
            ('C', 'Ended the Crimean War'),
            ('D', 'Ended the Russo-Turkish War')
           ) as v(label, option_text)
 where q.question_hash = '605284f046d06a5ae2ad7ba26daba92c'
on conflict (question_id, label) do nothing;

-- history | world-history | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Taiping Rebellion'' of 1850-64:',
    'The Taiping Rebellion, the greatest peasant revolt of the nineteenth century, was led by Hong Xiuquan and it devastated China before it was suppressed with the help of the British and the French.',
    'hard',
    'Standard Reference',
    null,
    '581d80cbe0c061d82e49f02047f154a7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '581d80cbe0c061d82e49f02047f154a7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was the massive peasant revolt in China led by Hong Xiuquan'),
            ('B', 'Was the revolt in India of 1857'),
            ('C', 'Was the Nihonmatsu uprising in Japan'),
            ('D', 'Was the Boxer Rebellion')
           ) as v(label, option_text)
 where q.question_hash = '581d80cbe0c061d82e49f02047f154a7'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Meiji Restoration'' of 1868 in Japan:',
    'The Meiji Restoration of 1868 restored the imperial power under the Emperor Meiji and it began the modernisation and the industrialisation of Japan, the model for the Asian response to the West.',
    'medium',
    'Standard Reference',
    null,
    '2be9121478101c73a34a246feba0ccd6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '2be9121478101c73a34a246feba0ccd6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was the Chinese restoration'),
            ('B', 'Restored the imperial rule and began the rapid industrialisation of Japan'),
            ('C', 'Was the restoration of the Tokugawa'),
            ('D', 'Was the constitutional restoration of the British')
           ) as v(label, option_text)
 where q.question_hash = '2be9121478101c73a34a246feba0ccd6'
on conflict (question_id, label) do nothing;

-- history | world-history | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Boshin War'' of 1868 in Japan:',
    'The Boshin War of 1868-69 pitted the forces of the Tokugawa shogunate against the restorationist forces and it ended the shogunate.',
    'hard',
    'Standard Reference',
    null,
    '55badbbded0eb099ad2ec7fe2de314ca'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '55badbbded0eb099ad2ec7fe2de314ca'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was the civil war between the supporters of the Tokugawa and the imperial forces'),
            ('B', 'Was the war of the Franco-Prussian'),
            ('C', 'Was the war of the Crimea'),
            ('D', 'Was the Sino-Japanese war')
           ) as v(label, option_text)
 where q.question_hash = '55badbbded0eb099ad2ec7fe2de314ca'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The ''Sino-Japanese War'' of 1894-95:',
    'The Sino-Japanese War of 1894-95 ended with the Japanese victory and the Treaty of Shimonoseki, which gave Taiwan to Japan and marked the beginning of the Japanese imperial expansion.',
    'medium',
    'Standard Reference',
    null,
    'ef8e839440dcbbe105e26602e3c58f9d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'ef8e839440dcbbe105e26602e3c58f9d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was the war of the Italian unification'),
            ('B', 'Was the war of the Balkans'),
            ('C', 'Was the Russo-Turkish war'),
            ('D', 'Ended with the Japanese victory over China and the Treaty of Shimonoseki')
           ) as v(label, option_text)
 where q.question_hash = 'ef8e839440dcbbe105e26602e3c58f9d'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The Treaty of Portsmouth of 1905 ended:',
    'The Treaty of Portsmouth of 1905 ended the Russo-Japanese War and it confirmed Japan''s victory over Russia, the first time a European power was defeated in the East.',
    'medium',
    'Standard Reference',
    null,
    '9f33990a5a4ff2a051af5125d78a89da'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '9f33990a5a4ff2a051af5125d78a89da'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It was the treaty of the Balkan wars'),
            ('B', 'It ended the Crimean War'),
            ('C', 'The Treaty of Portsmouth of 1905 ended the war with the Japanese victory'),
            ('D', 'The Treaty of Portsmouth was of 1875')
           ) as v(label, option_text)
 where q.question_hash = '9f33990a5a4ff2a051af5125d78a89da'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''Gandhi and the Champaran'' of 1917:',
    'The Champaran Satyagraha of 1917, the first satyagraha of Gandhi in India, was against the indigo planters and it led to the Champaran Agrarian Act of 1918.',
    'medium',
    'Standard Reference',
    null,
    'af25e7a93d50fc13c1ae3136044d89f2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'af25e7a93d50fc13c1ae3136044d89f2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was the Rowlatt Satyagraha'),
            ('B', 'Was the Ahmedabad Mill strike'),
            ('C', 'Was the Kheda Satyagraha'),
            ('D', 'Was the first satyagraha of Gandhi in India against the indigo planters')
           ) as v(label, option_text)
 where q.question_hash = 'af25e7a93d50fc13c1ae3136044d89f2'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''Ahmedabad Mill Strike'' of 1918:',
    'The Ahmedabad Mill Strike of 1918 was Gandhi''s first hunger strike in India and it was for the workers'' right to the 35 per cent wage increase.',
    'medium',
    'Standard Reference',
    null,
    '2079d361495fdf96fa0de2df52a7a499'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '2079d361495fdf96fa0de2df52a7a499'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was the Champaran Satyagraha'),
            ('B', 'Was the Bardoli Satyagraha'),
            ('C', 'Was Gandhi''s first hunger strike in India'),
            ('D', 'Was the Rowlatt Satyagraha')
           ) as v(label, option_text)
 where q.question_hash = '2079d361495fdf96fa0de2df52a7a499'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''Kheda Satyagraha'' of 1918:',
    'The Kheda Satyagraha of 1918 was the first mass satyagraha in India and it was for the remission of the land revenue after the crop failure and the plague.',
    'hard',
    'Standard Reference',
    null,
    '184cf2704eca7356f8a1b920bd1dda01'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '184cf2704eca7356f8a1b920bd1dda01'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was the Ahmedabad strike'),
            ('B', 'Was the satyagraha of the peasants of the Gujarat for the remission of the revenue after the crop failure'),
            ('C', 'Was the Bardoli Satyagraha'),
            ('D', 'Was the Champaran Satyagraha')
           ) as v(label, option_text)
 where q.question_hash = '184cf2704eca7356f8a1b920bd1dda01'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''Bardoli Satyagraha'' of 1928:',
    'The Bardoli Satyagraha of 1928 was the peasant satyagraha of the Bardoli in the Gujarat against the 22 per cent increase in the land revenue and it was called the `Tamm tra'' and it earned Sarojini Naidu the title of the `Bardoli Bailiff''.',
    'hard',
    'Standard Reference',
    null,
    'b9ce3f5b5a44ef1e42dda8a42dca8098'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'b9ce3f5b5a44ef1e42dda8a42dca8098'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was the peasant satyagraha of the Gujarat against the 22 per cent increase in the land revenue'),
            ('B', 'Was the Champaran Satyagraha'),
            ('C', 'Was the Rowlatt Satyagraha'),
            ('D', 'Was the Civil Disobedience in the Peshawar')
           ) as v(label, option_text)
 where q.question_hash = 'b9ce3f5b5a44ef1e42dda8a42dca8098'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''Champaran Satyagraha'' and the Rajendra Prasad'':',
    'Mahatma Gandhi and the Rajendra Prasad went to the Champaran in 1917 to investigate the plight of the indigo cultivators and it was the first satyagraha of Gandhi in India.',
    'hard',
    'Standard Reference',
    null,
    '945f55797e62e8c19b81b26bf3a37c8f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '945f55797e62e8c19b81b26bf3a37c8f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Rajendra Prasad led the Bardoli'),
            ('B', 'Mahatma Gandhi and the Rajendra Prasad went to the Champaran in 1917'),
            ('C', 'The Rajendra Prasad led the Kheda'),
            ('D', 'The Rajendra Prasad led the Ahmedabad')
           ) as v(label, option_text)
 where q.question_hash = '945f55797e62e8c19b81b26bf3a37c8f'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''Nagpur Flag'' and the 1922:',
    'The Congress at its Nagpur session in December 1921 hoisted the Swaraj Flag, and the design was the charkha with the words `Swaraj'' and `Satyameva Jayate''.',
    'hard',
    'Standard Reference',
    null,
    '702dd5fd0ed460cfc5632f2151d5a9d6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '702dd5fd0ed460cfc5632f2151d5a9d6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It was the flag of the Soviet Union'),
            ('B', 'It was the flag of the 1905 Bengal'),
            ('C', 'Was the flag hoisted at the Nagpur session of the Congress in December 1921'),
            ('D', 'It was the flag of the INA')
           ) as v(label, option_text)
 where q.question_hash = '702dd5fd0ed460cfc5632f2151d5a9d6'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''Vande Mataram'' was first published in:',
    'The Vande Mataram was first published in 1876 in the novel Anandamath by the Bankim Chandra Chattopadhyay, in the pages of the Bangadarsh.',
    'medium',
    'Standard Reference',
    null,
    '3714da5f5aad3a772107fe7e94767ee2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '3714da5f5aad3a772107fe7e94767ee2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1876 in Bankim Chandra Chattopadhyay''s novel Anandamath'),
            ('B', '1885 in the newspaper'),
            ('C', '1901 in the Bengal quarterly'),
            ('D', '1921 at the Nagpur session')
           ) as v(label, option_text)
 where q.question_hash = '3714da5f5aad3a772107fe7e94767ee2'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'Which of the following statements regarding the Swadeshi movement after the partition of Bengal is correct?',
    'The Swadeshi and the boycott of the foreign goods after the partition of Bengal in 1905 was the first mass movement of the Indian nationalism and it pioneered the use of the swadeshi and the boycott.',
    'medium',
    'Standard Reference',
    null,
    'c37301cf2d68216f5adbfc31667e8c15'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'c37301cf2d68216f5adbfc31667e8c15'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It was the movement of the 1857'),
            ('B', 'It was the movement of the 1920'),
            ('C', 'It was the movement of the 1942'),
            ('D', 'The Swadeshi movement after the partition of Bengal was the first mass movement of the Indian nationalism')
           ) as v(label, option_text)
 where q.question_hash = 'c37301cf2d68216f5adbfc31667e8c15'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''Surat Split'' of 1907:',
    'The Surat session of 1907 saw the split of the Congress and the factions reunited at the Calcutta session of December 1906 that formed the All India Muslim League with the objective of the safeguards for the Muslims.',
    'hard',
    'Standard Reference',
    null,
    '2509cc555922f8b8bcfbfaf2430ba19b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '2509cc555922f8b8bcfbfaf2430ba19b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Led to the split of the Communist Party'),
            ('B', 'Led to the partition of Bengal'),
            ('C', 'Led to the formation of the Muslim League in 1906'),
            ('D', 'Led to the split of the Congress in 1916')
           ) as v(label, option_text)
 where q.question_hash = '2509cc555922f8b8bcfbfaf2430ba19b'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''Morley-Minto Reforms'' of 1909:',
    'The Indian Councils Act of 1909, the Morley-Minto Reforms, introduced the separate electorates for the Muslims and it enlarged the legislative councils and it also provided for the separate electorates for the Sikhs, the Christians and the Anglo-Indians in some cases.',
    'medium',
    'Standard Reference',
    null,
    'c3d49f68af1fef891a371c879d6b2822'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'c3d49f68af1fef891a371c879d6b2822'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Introduced the dyarchy'),
            ('B', 'Introduced the provincial autonomy'),
            ('C', 'Introduced the franchise for the women'),
            ('D', 'Introduced the separate electorates for the Muslims')
           ) as v(label, option_text)
 where q.question_hash = 'c3d49f68af1fef891a371c879d6b2822'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''Lucknow Pact'' of 1916:',
    'The Lucknow Pact of 1916 was the agreement between the Congress and the Muslim League to reunite and to work together for the representative government, and it was a landmark of the Hindu-Muslim unity.',
    'medium',
    'Standard Reference',
    null,
    'c1ad208f10de5275e7756d45328f2f0b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'c1ad208f10de5275e7756d45328f2f0b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was the agreement between the Congress and the Muslim League for the representative government'),
            ('B', 'Was the agreement of the Second World War'),
            ('C', 'Was the pact of the Non-Cooperation'),
            ('D', 'Was the pact of the 1905')
           ) as v(label, option_text)
 where q.question_hash = 'c1ad208f10de5275e7756d45328f2f0b'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'Which of the following statements is/are correct in relation to the Champaran Agrarian Act of 1918?',
    'The Champaran Agrarian Act of 1918 created the provision for the permanent settlement of the land and it was the first law passed by the British in India in the interests of the peasants.',
    'hard',
    'Standard Reference',
    null,
    'de2b19bc9a170a9bb6611ae60b9a07a4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'de2b19bc9a170a9bb6611ae60b9a07a4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It was of 1935'),
            ('B', 'The Champaran Agrarian Act of 1918 created the provision for the permanent settlement of the land'),
            ('C', 'It was of 1893'),
            ('D', 'It was of 1920')
           ) as v(label, option_text)
 where q.question_hash = 'de2b19bc9a170a9bb6611ae60b9a07a4'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'Rowlatt Act gave:',
    'The Rowlatt Act, the Anarchical and Revolutionary Crimes Act of 1919, gave the government the extraordinary powers of the preventive detention and the trial without a jury and it was the immediate cause of the Rowlatt Satyagraha.',
    'medium',
    'Standard Reference',
    null,
    '3555b3cb42542b506ecc72e8a3ca3bb0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '3555b3cb42542b506ecc72e8a3ca3bb0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Gave the dyarchy'),
            ('B', 'Gave the provincial autonomy'),
            ('C', 'Introduced the franchise'),
            ('D', 'Gave extraordinary powers to the government to deal with the revolutionaries')
           ) as v(label, option_text)
 where q.question_hash = '3555b3cb42542b506ecc72e8a3ca3bb0'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''Jallianwala Bagh'' and the Hunter Commission:',
    'The Hunter Commission of 1919-20 was the British inquiry into the Jallianwala Bagh massacre and it justified the actions of General Dyer and the government withdrew the offer of the knighthood to the general.',
    'medium',
    'Standard Reference',
    null,
    '03bc6d68c8dfe51eea76184ac029f99d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '03bc6d68c8dfe51eea76184ac029f99d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It was the inquiry of the 1930'),
            ('B', 'The Hunter Commission was the British inquiry into the Jallianwala Bagh'),
            ('C', 'The Hunter Commission was the inquiry of the 1905'),
            ('D', 'It was the inquiry of the 1857')
           ) as v(label, option_text)
 where q.question_hash = '03bc6d68c8dfe51eea76184ac029f99d'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''Khilafat'' and the Ali brothers:',
    'The Ali brothers, the Shaukat and the Muhammad Ali, were the leaders of the Khilafat agitation and they were the first Muslim political leaders of the national scale in India.',
    'hard',
    'Standard Reference',
    null,
    '64cc6fa81027608e9c69c945ea7c7e89'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '64cc6fa81027608e9c69c945ea7c7e89'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Ali brothers of the Khilafat Committee were the leaders of the agitation'),
            ('B', 'They were the leaders of the Bardoli'),
            ('C', 'They were the leaders of the 1857'),
            ('D', 'They were the leaders of the Non-Cooperation in the south')
           ) as v(label, option_text)
 where q.question_hash = '64cc6fa81027608e9c69c945ea7c7e89'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''Non-Cooperation Movement'' was withdrawn in:',
    'The Non-Cooperation Movement was withdrawn in February 1922 after the violence at the Chauri Chaura, and the withdrawal was a decision of the Congress Working Committee in the Bardoli meeting of the Sarojini Naidu.',
    'medium',
    'Standard Reference',
    null,
    'a9aaccdb76debf255102dbcc99729b5f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'a9aaccdb76debf255102dbcc99729b5f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1930 after the Civil Disobedience'),
            ('B', '1942 after the Quit India'),
            ('C', 'February 1922 after the Chauri Chaura'),
            ('D', '1924 after the Kakori')
           ) as v(label, option_text)
 where q.question_hash = 'a9aaccdb76debf255102dbcc99729b5f'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''Chauri Chaura'' incident of 1922:',
    'The Chauri Chaura incident of 5 February 1922, in the Gorakhpur district, saw a police station burnt by the protesters and it led to the withdrawal of the Non-Cooperation Movement.',
    'medium',
    'Standard Reference',
    null,
    'be2cf1def3715abb7637abb60aa7f708'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'be2cf1def3715abb7637abb60aa7f708'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was the mutiny of the navy'),
            ('B', 'Was the strike of the Chauri Chaura mill'),
            ('C', 'Was the burning of a police station by the protesters in the Gorakhpur district'),
            ('D', 'Was the massacre of the Jallianwala Bagh')
           ) as v(label, option_text)
 where q.question_hash = 'be2cf1def3715abb7637abb60aa7f708'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''Swaraj Party'' of 1923:',
    'The Swaraj Party was formed in 1923 by the C.R. Das and the Motilal Nehru and it was the first party in the national politics to contest the council elections.',
    'medium',
    'Standard Reference',
    null,
    '20b21489324ab233bb2da650059509fd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '20b21489324ab233bb2da650059509fd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was formed by the C.R. Das and the Motilal Nehru after the withdrawal of the Non-Cooperation'),
            ('B', 'It was the communist party'),
            ('C', 'It was the Muslim League'),
            ('D', 'It was the Swarajya Party of the Telugu regions')
           ) as v(label, option_text)
 where q.question_hash = '20b21489324ab233bb2da650059509fd'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''Simon Commission'' of 1928:',
    'The Simon Commission of 1928 had seven British members and no Indian and it was boycotted by all the political parties at the Lumumba Maidan.',
    'medium',
    'Standard Reference',
    null,
    'e11de8a8160ab0246c4d85481dac6ada'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e11de8a8160ab0246c4d85481dac6ada'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Had the Motilal Nehru as a member'),
            ('B', 'Was chaired by an Indian'),
            ('C', 'Was accepted by the Congress'),
            ('D', 'Had no Indian member and was boycotted by all the parties')
           ) as v(label, option_text)
 where q.question_hash = 'e11de8a8160ab0246c4d85481dac6ada'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''Lahore Session'' of 1929:',
    'The Lahore session of December 1929, presided over by the Jawaharlal Nehru, adopted the Purna Swaraj resolution and it authorised the lawful and the non-violent struggle for the independence.',
    'easy',
    'Standard Reference',
    null,
    'f820089247facc51721a5b5595f17a85'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f820089247facc51721a5b5595f17a85'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Adopted the Non-Cooperation'),
            ('B', 'Adopted the Purna Swaraj resolution'),
            ('C', 'Adopted the Quit India resolution'),
            ('D', 'Adopted the Cabinet Mission Plan')
           ) as v(label, option_text)
 where q.question_hash = 'f820089247facc51721a5b5595f17a85'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''Dandi March'' of 1930:',
    'The Dandi March of 1930, in which the Gandhi walked about 240 miles from the Sabarmati to the Dandi, was the inauguration of the Civil Disobedience Movement and the breaking of the salt law.',
    'easy',
    'Standard Reference',
    null,
    '04a955a34d688bebbf46c40f32a8e27f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '04a955a34d688bebbf46c40f32a8e27f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was the march of the Bhagat Singh'),
            ('B', 'Was the 240 mile walk of the Gandhi to break the salt law'),
            ('C', 'Was the march of the INA'),
            ('D', 'Was the march of the 1857')
           ) as v(label, option_text)
 where q.question_hash = '04a955a34d688bebbf46c40f32a8e27f'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''Civil Disobedience Movement'' was accompanied by:',
    'The Civil Disobedience Movement combined the breaking of the salt law with the no-tax campaign, the hoisting of the flag and the boycott of the foreign goods and the picketing.',
    'medium',
    'Standard Reference',
    null,
    'adeb6713bbe05724ca7d88eb8cd5cd85'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'adeb6713bbe05724ca7d88eb8cd5cd85'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The violent revolt'),
            ('B', 'The armed uprising'),
            ('C', 'The participation in the war'),
            ('D', 'The hoisting of the flag and the boycott of the foreign goods and the no-tax campaign')
           ) as v(label, option_text)
 where q.question_hash = 'adeb6713bbe05724ca7d88eb8cd5cd85'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''Gandhi-Irwin Pact'' of 1931:',
    'The Gandhi-Irwin Pact of March 1931 provided for the suspension of the Civil Disobedience and the release of the political prisoners in return for the participation of the Congress in the Round Table Conference.',
    'medium',
    'Standard Reference',
    null,
    'dee43a59a98a72c4aa4dd4f66661ca17'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'dee43a59a98a72c4aa4dd4f66661ca17'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was the agreement between the Gandhi and the Viceroy on the Civil Disobedience'),
            ('B', 'It was a pact with the Muslim League'),
            ('C', 'It was about the Second World War'),
            ('D', 'It was the pact of the 1942')
           ) as v(label, option_text)
 where q.question_hash = 'dee43a59a98a72c4aa4dd4f66661ca17'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''Poona Pact'' of 1932 and the ''Ambedkar'':',
    'The Poona Pact of 24 September 1932 between the Ambedkar and the Gandhi replaced the separate electorate for the Depressed Classes with the reserved seats within the general electorate.',
    'medium',
    'Standard Reference',
    null,
    'bd7e4fd8263f6da70df2bf41b8462dbb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'bd7e4fd8263f6da70df2bf41b8462dbb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It was about the partition of Bengal'),
            ('B', 'It was about the land reforms'),
            ('C', 'The Ambedkar and the Gandhi agreed to the reserved seats for the Depressed Classes in the general electorate'),
            ('D', 'It was the agreement of the Second World War')
           ) as v(label, option_text)
 where q.question_hash = 'bd7e4fd8263f6da70df2bf41b8462dbb'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''Government of India Act of 1935'' and the ''Federal Court'':',
    'The Government of India Act of 1935 provided for the establishment of the Federal Court, which was inaugurated in 1937 and which was the predecessor of the Supreme Court of India.',
    'medium',
    'Standard Reference',
    null,
    '336554f1c086e34b08759d3b36a0f85a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '336554f1c086e34b08759d3b36a0f85a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Provided for the Supreme Court in 1950'),
            ('B', 'Provided for the High Courts'),
            ('C', 'Provided for the district courts'),
            ('D', 'Provided for the establishment of the Federal Court in 1937')
           ) as v(label, option_text)
 where q.question_hash = '336554f1c086e34b08759d3b36a0f85a'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''Quit India Resolution'' of 1942 was moved by:',
    'The Quit India resolution of 8 August 1942 was moved by the Mahatma Gandhi at the Gowalia Tank Maidan in Bombay and the ''Do or Die'' resolution was also adopted.',
    'easy',
    'Standard Reference',
    null,
    '7c2168f830c0e9fc622b505178876868'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '7c2168f830c0e9fc622b505178876868'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Mahatma Gandhi'),
            ('B', 'B.R. Ambedkar'),
            ('C', 'V.D. Savarkar'),
            ('D', 'Jawaharlal Nehru')
           ) as v(label, option_text)
 where q.question_hash = '7c2168f830c0e9fc622b505178876868'
on conflict (question_id, label) do nothing;

commit;
