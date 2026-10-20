-- =============================================================================
-- art_culture_02.sql — art_culture question pack, part 02
-- 250 questions. Applied after supabase/migrations/004_reference_data.sql
-- =============================================================================

begin;

-- art_culture | books-and-authors | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote the novel ''Chokher Bali'' and ''Ghare Baire''?',
    'Sarat Chandra Chattopadhyay wrote Chokher Bali, Ghare Baire, Devdas and Srikanta.',
    'easy',
    'Standard Reference',
    null,
    '1f5839b05c3c1db7db38ccfc6fca2d5b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '1f5839b05c3c1db7db38ccfc6fca2d5b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bankim Chandra Chattopadhyay'),
            ('B', 'Bibhutibhushan Bandyopadhyay'),
            ('C', 'Sarat Chandra Chattopadhyay'),
            ('D', 'Rabindranath Tagore')
           ) as v(label, option_text)
 where q.question_hash = '1f5839b05c3c1db7db38ccfc6fca2d5b'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''Chandalika'' and ''Shakuntala''?',
    'Girish Chandra Ghosh adapted Shakuntala and wrote Chandalika, plays that defined modern Bengali theatre.',
    'hard',
    'Standard Reference',
    null,
    'd2a750f3c2aca0613853896b0bf20463'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'd2a750f3c2aca0613853896b0bf20463'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Utpal Dutt'),
            ('B', 'Shankar'),
            ('C', 'Kalidasa'),
            ('D', 'Girish Chandra Ghosh')
           ) as v(label, option_text)
 where q.question_hash = 'd2a750f3c2aca0613853896b0bf20463'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''Nil Darpan'', the first Bengali play written by an Indian?',
    'Michael Madhusudan Dutt wrote Nil Darpan in 1860, the first original Bengali play, and is called the Shakespeare of Bengal.',
    'medium',
    'Standard Reference',
    null,
    'c0ac61f5ccb769f3fbf376803c13b309'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c0ac61f5ccb769f3fbf376803c13b309'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Debendranath Tagore'),
            ('B', 'Girish Chandra Ghosh'),
            ('C', 'Michael Madhusudan Dutt'),
            ('D', 'Hemchandra Bandopadhyay')
           ) as v(label, option_text)
 where q.question_hash = 'c0ac61f5ccb769f3fbf376803c13b309'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote the first collection of Bengali short stories, ''H|日本 সাহিত্য''?',
    'Rabindranath Tagore''s collection of short stories is regarded as the first collection of Bengali short stories.',
    'medium',
    'Standard Reference',
    null,
    '244be34099e4bedfdc948369d22da884'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '244be34099e4bedfdc948369d22da884'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Satyajit Ray'),
            ('B', 'Bibhutibhushan Bandyopadhyay'),
            ('C', 'Sankha Ghosh'),
            ('D', 'Rabindranath Tagore')
           ) as v(label, option_text)
 where q.question_hash = '244be34099e4bedfdc948369d22da884'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''Aap Ka Bunty'' and ''Zindagi Nama''?',
    'Amar SHAQ, the pen name of Syed Habib Tanvir, wrote Aap Ka Bunty and Zindagi Nama in Hindustani.',
    'medium',
    'Standard Reference',
    null,
    '9e99c3d3cec9496fd107f38516c48451'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '9e99c3d3cec9496fd107f38516c48451'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Amar SHAQ'),
            ('B', 'Amar Akbar'),
            ('C', 'Amar SKU'),
            ('D', 'Amar AKQ')
           ) as v(label, option_text)
 where q.question_hash = '9e99c3d3cec9496fd107f38516c48451'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''A History of Indian Music'' and ''Studies of Indian Music''?',
    'Dr. A.K. Coomaraswamy''s History of Indian Music is a classical work on Indian musicology.',
    'hard',
    'Standard Reference',
    null,
    'a5fbf8b23906d8ba5fff9e8c4d7409a6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a5fbf8b23906d8ba5fff9e8c4d7409a6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'P.K. Rajaswamy'),
            ('B', 'Dr. A.K. Coomaraswamy'),
            ('C', 'S. Radhakrishnan'),
            ('D', 'Vijay Raghavan')
           ) as v(label, option_text)
 where q.question_hash = 'a5fbf8b23906d8ba5fff9e8c4d7409a6'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''Bhavana of Kutiyattam'' and ''The Sanskrit Theatre''?',
    'Farley Richmond wrote The Sanskrit Theatre and works on Kutiyattam and the classical dance forms.',
    'hard',
    'Standard Reference',
    null,
    '52fff0f5475dc8801774308db1095da1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '52fff0f5475dc8801774308db1095da1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rukmini Devi Arundale'),
            ('B', 'Kapila Vatsyayan'),
            ('C', 'Farley Richmond'),
            ('D', 'Adya Rangacharya')
           ) as v(label, option_text)
 where q.question_hash = '52fff0f5475dc8801774308db1095da1'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''Kathakali: An Indian Classical Dance Form''?',
    'Zarrilli and K. Bharati Iyer wrote Kathakali: An Indian Classical Dance Form, a standard reference on the form.',
    'hard',
    'Standard Reference',
    null,
    'e49b1ab91e8dccae82973faebfa99454'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e49b1ab91e8dccae82973faebfa99454'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Zarrilli'),
            ('B', 'K. Bharati Iyer'),
            ('C', 'Ragini Devi'),
            ('D', 'Zarrilli and K. Bharati Iyer')
           ) as v(label, option_text)
 where q.question_hash = 'e49b1ab91e8dccae82973faebfa99454'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''Indian Classical Dance''?',
    'Margaret Walker wrote Indian Classical Dance, a comprehensive survey of the classical dance forms.',
    'hard',
    'Standard Reference',
    null,
    'a96335c97a2cb109ecd0cb501b918c00'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a96335c97a2cb109ecd0cb501b918c00'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Margaret Walker'),
            ('B', 'Kapila Vatsyayan'),
            ('C', 'Suzanne P. K. P'),
            ('D', 'K. Bharati Iyer')
           ) as v(label, option_text)
 where q.question_hash = 'a96335c97a2cb109ecd0cb501b918c00'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'The book ''The Art of Kathakali'' is associated with:',
    'Kalamandalam Sankaran Kutty, a leading exponent of Kathakali, is associated with detailed works on the form.',
    'hard',
    'Standard Reference',
    null,
    'd306a229b869f1674f4fd7177c03a330'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd306a229b869f1674f4fd7177c03a330'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kalamandalam Gopi'),
            ('B', 'Kalamandalam Sankaran Kutty'),
            ('C', 'Kapila Vatsyayan'),
            ('D', 'Kutiyattam institutions')
           ) as v(label, option_text)
 where q.question_hash = 'd306a229b869f1674f4fd7177c03a330'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''Bharatiya Nritya Kala'' and ''The Classical Dance of India''?',
    'Kapila Vatsyayan wrote Bharatiya Nritya Kala and The Classical Dance of India, both standard references.',
    'medium',
    'Standard Reference',
    null,
    'dba9aecd5a47690cdeaa9f5f99a0b90f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'dba9aecd5a47690cdeaa9f5f99a0b90f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ragini Devi'),
            ('B', 'Kapila Vatsyayan'),
            ('C', 'Rukmini Devi Arundale'),
            ('D', 'Nirmala Joshi')
           ) as v(label, option_text)
 where q.question_hash = 'dba9aecd5a47690cdeaa9f5f99a0b90f'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''The Heritage of India'' series volumes on art and culture?',
    'Rai Krishnadasa, along with N.R. Pradhan, edited the volumes of the ''The Heritage of India'' series published by the Indian Council of Cultural Relations.',
    'hard',
    'Standard Reference',
    null,
    'ce82afcc0f82b6a37375789f55c7c372'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ce82afcc0f82b6a37375789f55c7c372'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rai Krishnadasa'),
            ('B', 'N. R. Pradhan'),
            ('C', 'S. R. Sharma'),
            ('D', 'Ananda Coomaraswamy')
           ) as v(label, option_text)
 where q.question_hash = 'ce82afcc0f82b6a37375789f55c7c372'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''Cave Temples of Ajanta''?',
    'V.S. Sambamurthy wrote Cave Temples of Ajanta, a standard study of the Ajanta paintings.',
    'hard',
    'Standard Reference',
    null,
    '84adecd5c02632d7996a670e744fc3e3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '84adecd5c02632d7996a670e744fc3e3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rai Krishnadasa'),
            ('B', 'Vijay Kumar'),
            ('C', 'V. S. Sambamurthy'),
            ('D', 'S. R. Sharma')
           ) as v(label, option_text)
 where q.question_hash = '84adecd5c02632d7996a670e744fc3e3'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''Indian Sculpture: A Review''?',
    'Vasudeva S. Agrawal''s Indian Sculpture: A Review is a well known study of Indian sculpture.',
    'hard',
    'Standard Reference',
    null,
    'e7ee3fb815f46bbf7f135264004c9c85'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e7ee3fb815f46bbf7f135264004c9c85'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'P. C. Mukherji'),
            ('B', 'Rai Krishnadasa'),
            ('C', 'N. R. Pradhan'),
            ('D', 'Vasudeva S. Agrawal')
           ) as v(label, option_text)
 where q.question_hash = 'e7ee3fb815f46bbf7f135264004c9c85'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''The Grammar of Indian Art''?',
    'A.L. Basham''s The Wonder That Was India and related works remain the standard introduction to Indian art for students.',
    'medium',
    'Standard Reference',
    null,
    '3980bee7135e494ccde2b9c68d3ed956'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '3980bee7135e494ccde2b9c68d3ed956'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ernst Babel'),
            ('B', 'A.L. Basham'),
            ('C', 'Ananda K. Coomaraswamy'),
            ('D', 'Helen B. Chapple')
           ) as v(label, option_text)
 where q.question_hash = '3980bee7135e494ccde2b9c68d3ed956'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''Hindu Temples: Their Meaning and Forms''?',
    'Harold D. G. F. (often cited as H.D.H. George) wrote Hindu Temples, a study of temple architecture and symbolism.',
    'hard',
    'Standard Reference',
    null,
    '5f7f474fbe2d10e11efcd4e510923345'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '5f7f474fbe2d10e11efcd4e510923345'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Harold D. G. F. (H.D. G. F.)'),
            ('B', 'N. R. Pradhan'),
            ('C', 'R. C. Majumdar'),
            ('D', 'Rai Krishnadasa')
           ) as v(label, option_text)
 where q.question_hash = '5f7f474fbe2d10e11efcd4e510923345'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''The Temple Architecture of India''?',
    'Helen B. Chapple authored the well known book Indian Temple Architecture: Form and Transformation.',
    'hard',
    'Standard Reference',
    null,
    'bba80612e0aa5f997041e7b19649674a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'bba80612e0aa5f997041e7b19649674a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Helen B. Chapple'),
            ('B', 'Christopher S. Kopp'),
            ('C', 'Sharada Sinha'),
            ('D', 'Encyclopaedia of Indian Temple Architecture')
           ) as v(label, option_text)
 where q.question_hash = 'bba80612e0aa5f997041e7b19649674a'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''Fairs and Festivals of India''?',
    'K.C. Sen wrote Fairs and Festivals of India, a reference work on Indian fairs and festivals.',
    'hard',
    'Standard Reference',
    null,
    'de3eac7cf218a69650318d462de7293f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'de3eac7cf218a69650318d462de7293f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'K. C. Bhattacharya'),
            ('B', 'Nirmal Kumar'),
            ('C', 'K. C. Sen'),
            ('D', 'Vijay Kumar')
           ) as v(label, option_text)
 where q.question_hash = 'de3eac7cf218a69650318d462de7293f'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''India''s Ancient Past'' and ''Geography of Ancient India''?',
    'R.C. Sharma authored India''s Ancient Past and Geography of Ancient India, standard references for prelims.',
    'easy',
    'Standard Reference',
    null,
    '2f31938d11f88ed054b324df7e45d83b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '2f31938d11f88ed054b324df7e45d83b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'R.C. Majumdar'),
            ('B', 'S. Radhakrishnan'),
            ('C', 'B.B. Lal'),
            ('D', 'R.C. Sharma')
           ) as v(label, option_text)
 where q.question_hash = '2f31938d11f88ed054b324df7e45d83b'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''Themes in Indian History'' and ''Themes in Indian History Part II''?',
    'R.S. Sharma authored Themes in Indian History and Themes in Indian History Part II, used widely in prelims preparation.',
    'medium',
    'Standard Reference',
    null,
    '130f10005d45cc5ac185fdd531515536'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '130f10005d45cc5ac185fdd531515536'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'K. L. Khurana'),
            ('B', 'R.S. Sharma'),
            ('C', 'R.C. Sharma'),
            ('D', 'S. R. Sharma')
           ) as v(label, option_text)
 where q.question_hash = '130f10005d45cc5ac185fdd531515536'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''A Modern History of India''?',
    'R.C. Sharma wrote A Modern History of India, covering the period from 1707 to the present.',
    'medium',
    'Standard Reference',
    null,
    'a0dbf6d897d2b9fc6d542ae3d8f6c2f9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a0dbf6d897d2b9fc6d542ae3d8f6c2f9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'R.C. Majumdar'),
            ('B', 'R.C. Sharma'),
            ('C', 'Bipan Chandra'),
            ('D', 'S. L. Bhatia')
           ) as v(label, option_text)
 where q.question_hash = 'a0dbf6d897d2b9fc6d542ae3d8f6c2f9'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''Visions of History''?',
    'S. R. Sharma authored Visions of History, a collection of essays on modern Indian history.',
    'hard',
    'Standard Reference',
    null,
    '5d5a10633b4846cc0dad7509e8166b66'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '5d5a10633b4846cc0dad7509e8166b66'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'S. R. Sharma'),
            ('B', 'R. C. Sharma'),
            ('C', 'B. N. Sastri'),
            ('D', 'R. C. Majumdar')
           ) as v(label, option_text)
 where q.question_hash = '5d5a10633b4846cc0dad7509e8166b66'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'The ''An Introduction to Indian Art'' Part I was written by:',
    'The NCERT textbook An Introduction to Indian Art, Part I, was written by A.L. Basham.',
    'medium',
    'Standard Reference',
    null,
    'de1cf7d5102392c7720a99eeb5a89ea5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'de1cf7d5102392c7720a99eeb5a89ea5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A. L. Basham'),
            ('B', 'Nirmala Joshi'),
            ('C', 'Rukmini Devi'),
            ('D', 'Ananda Coomaraswamy')
           ) as v(label, option_text)
 where q.question_hash = 'de1cf7d5102392c7720a99eeb5a89ea5'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''India''s Cultural Heritage''?',
    'R.C. Majumdar''s India''s Cultural Heritage is a compact survey of Indian history and culture.',
    'hard',
    'Standard Reference',
    null,
    'e82611bdf32f2ede05ab64f98a629f81'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e82611bdf32f2ede05ab64f98a629f81'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'V. S. Srinivasan'),
            ('B', 'R. C. Majumdar'),
            ('C', 'S. Radhakrishnan'),
            ('D', 'N. R. Pradhan')
           ) as v(label, option_text)
 where q.question_hash = 'e82611bdf32f2ede05ab64f98a629f81'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''Fundamentals of Ancient Indian History and Civilisation''?',
    'R.C. Majumdar''s Fundamentals of Ancient Indian History and Civilisation is a classic one-volume reference.',
    'medium',
    'Standard Reference',
    null,
    '9741ea348651e474b07db2c78bc4f26e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '9741ea348651e474b07db2c78bc4f26e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'R.C. Sharma'),
            ('B', 'K.A. Nilakanta Sastri'),
            ('C', 'D.N. Jha'),
            ('D', 'R.C. Majumdar')
           ) as v(label, option_text)
 where q.question_hash = '9741ea348651e474b07db2c78bc4f26e'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''Ancient India'' (1963) in the New History of India series?',
    'Romila Thapar''s Ancient India, published in 1963, is a landmark of modern historiography.',
    'medium',
    'Standard Reference',
    null,
    'daf5209570e8c96b798be2aa09b91d6a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'daf5209570e8c96b798be2aa09b91d6a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'R.C. Majumdar'),
            ('B', 'R.C. Sharma'),
            ('C', 'Romila Thapar'),
            ('D', 'B.N. Sastri')
           ) as v(label, option_text)
 where q.question_hash = 'daf5209570e8c96b798be2aa09b91d6a'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''Sultanate Delhi'' in the New History of India series?',
    'Irfan Habib''s Sultanate Delhi (1970) was one of the earliest volumes of the New History of India series.',
    'hard',
    'Standard Reference',
    null,
    'aac4f6186744f55f160cc46667bf20c3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'aac4f6186744f55f160cc46667bf20c3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'R.S. Sharma'),
            ('B', 'Sunil Chandra'),
            ('C', 'Irfan Habib'),
            ('D', 'R.C. Sharma')
           ) as v(label, option_text)
 where q.question_hash = 'aac4f6186744f55f160cc46667bf20c3'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''Mughal India'' in the New History of India series?',
    'Irfan Habib''s Mughal India (1973) was also part of the New History of India series.',
    'medium',
    'Standard Reference',
    null,
    'cd619c72a6fd785938c216a92c28ec79'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'cd619c72a6fd785938c216a92c28ec79'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Satish Chandra'),
            ('B', 'Irfan Habib'),
            ('C', 'R.C. Sharma'),
            ('D', 'B.N. Sastri')
           ) as v(label, option_text)
 where q.question_hash = 'cd619c72a6fd785938c216a92c28ec79'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''The Rise of Modern India''?',
    'Bipan Chandra''s The Rise of Modern India, published in 1986, is a landmark modern history text.',
    'medium',
    'Standard Reference',
    null,
    '1a42c4929d32b3308f655abd25c4a086'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '1a42c4929d32b3308f655abd25c4a086'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bipan Chandra'),
            ('B', 'S. Radhakrishnan'),
            ('C', 'Bimal Mattingly'),
            ('D', 'D.utt')
           ) as v(label, option_text)
 where q.question_hash = '1a42c4929d32b3308f655abd25c4a086'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''India''s Struggle for Independence''?',
    'V.C. Joshi''s India''s Struggle for Independence, published in 2008, is a detailed account of the freedom movement.',
    'hard',
    'Standard Reference',
    null,
    '4e787c5f28ec454084b37d05ffda3809'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '4e787c5f28ec454084b37d05ffda3809'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'R. C. Sharma'),
            ('B', 'D.utt'),
            ('C', 'Bipan Chandra'),
            ('D', 'V. C. Joshi')
           ) as v(label, option_text)
 where q.question_hash = '4e787c5f28ec454084b37d05ffda3809'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''The Indian Struggle'' (1957)?',
    'V.D. Savarkar''s The Indian Struggle, published in 1957, is a narrative of the national movement from 1857 to the partition.',
    'medium',
    'Standard Reference',
    null,
    'ad3c88e02d95bc77ad4f92177babf34a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'ad3c88e02d95bc77ad4f92177babf34a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'S. C. Bose'),
            ('B', 'M. N. Roy'),
            ('C', 'B. R. Ambedkar'),
            ('D', 'V. D. Savarkar')
           ) as v(label, option_text)
 where q.question_hash = 'ad3c88e02d95bc77ad4f92177babf34a'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''Hind Swaraj'' and ''Indian Home Rule''?',
    'Mahatma Gandhi wrote Hind Swaraj in 1909 and Indian Home Rule in 1921.',
    'easy',
    'Standard Reference',
    null,
    '0bde84dcc8cd0908348f8af5e5d8b741'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '0bde84dcc8cd0908348f8af5e5d8b741'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Gopal Krishna Gokhale'),
            ('B', 'Sardar Patel'),
            ('C', 'Mahatma Gandhi'),
            ('D', 'Bal Gangadhar Tilak')
           ) as v(label, option_text)
 where q.question_hash = '0bde84dcc8cd0908348f8af5e5d8b741'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''Gandhi: An Autobiography''?',
    'Mahatma Gandhi wrote the autobiography, which was edited by Mahadev Desai and translated by C.K. Ogden.',
    'easy',
    'Standard Reference',
    null,
    '2a8570536b475365227fc40aebaed684'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '2a8570536b475365227fc40aebaed684'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Verrier Elwin'),
            ('B', 'Mahatma Gandhi'),
            ('C', 'C. F. Andrews'),
            ('D', 'S. N. Banerjea')
           ) as v(label, option_text)
 where q.question_hash = '2a8570536b475365227fc40aebaed684'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''The Story of My Deportation''?',
    'Sardar Vallabhbhai Patel wrote The Story of My Deportation, an account of his arrest and deportation in 1930.',
    'medium',
    'Standard Reference',
    null,
    'a12a6ce096e9e0f3469de7bb5ef8b63b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a12a6ce096e9e0f3469de7bb5ef8b63b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sardar Vallabhbhai Patel'),
            ('B', 'Maulana Azad'),
            ('C', 'Lala Lajpat Rai'),
            ('D', 'Jawaharlal Nehru')
           ) as v(label, option_text)
 where q.question_hash = 'a12a6ce096e9e0f3469de7bb5ef8b63b'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''Why I Am an Atheist''?',
    'Bhagat Singh wrote Why I Am an Atheist in 1930, a defence of secularism and atheism.',
    'medium',
    'Standard Reference',
    null,
    '275f4c530c33a5aa16222591ece17cdb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '275f4c530c33a5aa16222591ece17cdb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bhagat Singh'),
            ('B', 'Sachindra Nath Sanyal'),
            ('C', 'Sukhdev'),
            ('D', 'Rajgopal')
           ) as v(label, option_text)
 where q.question_hash = '275f4c530c33a5aa16222591ece17cdb'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''The Blasphemy of Islam''?',
    'Maulana Abul Kalam Azad wrote The Blasphemy of Islam, in which he used the term ''Fitna'' to describe European criticism of Islam.',
    'hard',
    'Standard Reference',
    null,
    'ea3926495720a568745afa0301b16fc3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'ea3926495720a568745afa0301b16fc3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Maulana Hasrat Mohani'),
            ('B', 'Maulana Abul Kalam Azad'),
            ('C', 'Maulana Mohammad Ali Jauhar'),
            ('D', 'Maulana Shaukat Ali')
           ) as v(label, option_text)
 where q.question_hash = 'ea3926495720a568745afa0301b16fc3'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''India Wins Freedom'' and also served as the first Prime Minister?',
    'Jawaharlal Nehru wrote India Wins Freedom and was the first Prime Minister of independent India.',
    'easy',
    'Standard Reference',
    null,
    '263dd3bd5fb639caccbae48719984d8f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '263dd3bd5fb639caccbae48719984d8f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sardar Patel'),
            ('B', 'Rajendra Prasad'),
            ('C', 'C. Rajagopalachari'),
            ('D', 'Jawaharlal Nehru')
           ) as v(label, option_text)
 where q.question_hash = '263dd3bd5fb639caccbae48719984d8f'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''The Making of a Nation'' and ''Nehru: A Contemporary''s Estimate''?',
    'Jawaharlal Nehru wrote The Making of a Nation and the essay ''A Contemporary''s Estimate'' on Mahatma Gandhi.',
    'medium',
    'Standard Reference',
    null,
    'ca6ae473e4aa02656d41f8ad6bfd1086'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'ca6ae473e4aa02656d41f8ad6bfd1086'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'K. M. Panikkar'),
            ('B', 'B. R. Ambedkar'),
            ('C', 'Jawaharlal Nehru'),
            ('D', 'M. N. Roy')
           ) as v(label, option_text)
 where q.question_hash = 'ca6ae473e4aa02656d41f8ad6bfd1086'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''Strangers from a Strange Land''?',
    'R.K. Narayan wrote Strangers from a Strange Land, his collection of short stories.',
    'hard',
    'Standard Reference',
    null,
    'e4bc6bd53cc0aa92a1fe66bd98c471b5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e4bc6bd53cc0aa92a1fe66bd98c471b5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Dhun'),
            ('B', 'R. K. Narayan'),
            ('C', 'R. K. Laxman'),
            ('D', 'Khushwant Singh')
           ) as v(label, option_text)
 where q.question_hash = 'e4bc6bd53cc0aa92a1fe66bd98c471b5'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''The Guide'' and ''The Man-Eater of Malgudi''?',
    'R.K. Narayan wrote The Guide, which was filmed by Satyajit Ray, and The Man-Eater of Malgudi.',
    'easy',
    'Standard Reference',
    null,
    '545a503ef38da974105d36480a2b9bba'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '545a503ef38da974105d36480a2b9bba'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'R.K. Laxman'),
            ('B', 'Mulk Raj Anand'),
            ('C', 'Khushwant Singh'),
            ('D', 'R.K. Narayan')
           ) as v(label, option_text)
 where q.question_hash = '545a503ef38da974105d36480a2b9bba'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''Waiting for the Mahatma'' and ''The Bachelor of Arts''?',
    'Both Waiting for the Mahatma and The Bachelor of Arts are novels by R.K. Narayan.',
    'medium',
    'Standard Reference',
    null,
    '3705afe4ea23c0b77f38730cad12c61c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '3705afe4ea23c0b77f38730cad12c61c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Mulk Raj Anand'),
            ('B', 'R.K. Raman'),
            ('C', 'R.K. Narayan'),
            ('D', 'R.K. Laxman')
           ) as v(label, option_text)
 where q.question_hash = '3705afe4ea23c0b77f38730cad12c61c'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''Train to Pakistan'' and ''Rangbhoomi''?',
    'Khushwant Singh wrote Train to Pakistan and Rangbhoomi, among his best known works.',
    'medium',
    'Standard Reference',
    null,
    '105eefca466683225a665afe6d061763'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '105eefca466683225a665afe6d061763'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Khushwant Singh'),
            ('B', 'Amrita Pritam'),
            ('C', 'Nirad C. Chaudhuri'),
            ('D', 'P. L. Deshpande')
           ) as v(label, option_text)
 where q.question_hash = '105eefca466683225a665afe6d061763'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''The Discovery of India'' and ''An Autobiography''?',
    'Both works are by Jawaharlal Nehru; the latter was compiled by Krishna Menon from his speeches and writings.',
    'medium',
    'Standard Reference',
    null,
    '465a864f4159d353b56f5f87d0eeda14'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '465a864f4159d353b56f5f87d0eeda14'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'V. K. Krishna Menon'),
            ('B', 'B. R. Ambedkar'),
            ('C', 'K. T. Shah'),
            ('D', 'Jawaharlal Nehru')
           ) as v(label, option_text)
 where q.question_hash = '465a864f4159d353b56f5f87d0eeda14'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''Prison Diary'' and ''Prisoner of Hope''?',
    'Jawaharlal Nehru wrote Prison Diary (compiled from letters written from prison) and Prisoner of Hope, his autobiography.',
    'hard',
    'Standard Reference',
    null,
    'b7cf50e8a71f9d047a889c1582d79ae8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'b7cf50e8a71f9d047a889c1582d79ae8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'C. Rajagopalachari'),
            ('B', 'K. T. Shah'),
            ('C', 'Jawaharlal Nehru'),
            ('D', 'Sardar Patel')
           ) as v(label, option_text)
 where q.question_hash = 'b7cf50e8a71f9d047a889c1582d79ae8'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''Struggle for Swaraj''?',
    'Jawaharlal Nehru''s Struggle for Swaraj is a collection of his writings from 1922 to 1929.',
    'hard',
    'Standard Reference',
    null,
    '84c56e8805cbc8ade661f16f73c9fe7a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '84c56e8805cbc8ade661f16f73c9fe7a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'B. R. Ambedkar'),
            ('B', 'Jawaharlal Nehru'),
            ('C', 'Maulana Azad'),
            ('D', 'Subhash Chandra Bose')
           ) as v(label, option_text)
 where q.question_hash = '84c56e8805cbc8ade661f16f73c9fe7a'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''Letters from a Father to His Daughter'' and ''The World I Have Lived In''?',
    'Rabindranath Tagore wrote Letters from a Father to His Daughter and The World I Have Lived In, a collection of short stories.',
    'medium',
    'Standard Reference',
    null,
    '70663b2632273ded8f42a55d18f491bc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '70663b2632273ded8f42a55d18f491bc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rabindranath Tagore'),
            ('B', 'Sarojini Naidu'),
            ('C', 'Jawaharlal Nehru'),
            ('D', 'H. G. Wells')
           ) as v(label, option_text)
 where q.question_hash = '70663b2632273ded8f42a55d18f491bc'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''Shantiniketan'' and ''The Home and the World''?',
    'Rabindranath Tagore wrote Shantiniketan and the novel The Home and the World.',
    'easy',
    'Standard Reference',
    null,
    '1cc13ccb6fc65b5276e6e15d5a69b7d7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '1cc13ccb6fc65b5276e6e15d5a69b7d7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bankim Chandra Chattopadhyay'),
            ('B', 'S. Radhakrishnan'),
            ('C', 'Rabindranath Tagore'),
            ('D', 'Sri Aurobindo')
           ) as v(label, option_text)
 where q.question_hash = '1cc13ccb6fc65b5276e6e15d5a69b7d7'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''Savitri'' and ''The Cycle of Spring''?',
    'Sri Aurobindo wrote Savitri, a poem on the life of the Mahabharata heroine, and The Cycle of Spring.',
    'medium',
    'Standard Reference',
    null,
    'b5bd904bc93d2d713eec9f87db5d10a0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b5bd904bc93d2d713eec9f87db5d10a0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bankim Chandra Chattopadhyay'),
            ('B', 'Sri Aurobindo'),
            ('C', 'Rabindranath Tagore'),
            ('D', 'S. Radhakrishnan')
           ) as v(label, option_text)
 where q.question_hash = 'b5bd904bc93d2d713eec9f87db5d10a0'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''Essays on the Bhagavad Gita'' and ''The Synthesis of Yoga''?',
    'Sri Aurobindo wrote Essays on the Bhagavad Gita and The Synthesis of Yoga, setting out his integral yoga.',
    'medium',
    'Standard Reference',
    null,
    '131dfe5a78e47687b12e4e50c60c50cb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '131dfe5a78e47687b12e4e50c60c50cb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ramakrishna'),
            ('B', 'Swami Vivekananda'),
            ('C', 'Bankim Chandra Chattopadhyay'),
            ('D', 'Sri Aurobindo')
           ) as v(label, option_text)
 where q.question_hash = '131dfe5a78e47687b12e4e50c60c50cb'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''The Essentials of Hinduism'' and ''The World''s Religions''?',
    'Swami Vivekananda wrote The Essentials of Hinduism and The World''s Religions, presenting Hinduism on the world stage.',
    'medium',
    'Standard Reference',
    null,
    'a5ac62a353cd1ad35c94be5869e001e7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a5ac62a353cd1ad35c94be5869e001e7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Swami Vivekananda'),
            ('B', 'Ramakrishna'),
            ('C', 'Sri Aurobindo'),
            ('D', 'S. Radhakrishnan')
           ) as v(label, option_text)
 where q.question_hash = 'a5ac62a353cd1ad35c94be5869e001e7'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote The Gospel of Sri Ramakrishna, the first book on Sri Ramakrishna?',
    'Mahendranath Gupta wrote The Gospel of Sri Ramakrishna (1897-98), which Swami Vivekananda used to write Life of Sri Ramakrishna.',
    'hard',
    'Standard Reference',
    null,
    '53adfb94af5ab395137fb4e95e247223'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '53adfb94af5ab395137fb4e95e247223'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Swami Vivekananda'),
            ('B', 'M. C. K'),
            ('C', 'Rabindranath Tagore'),
            ('D', 'Mahendranath Gupta')
           ) as v(label, option_text)
 where q.question_hash = '53adfb94af5ab395137fb4e95e247223'
on conflict (question_id, label) do nothing;

-- art_culture | dance | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'dance'),
    'The ''Bharatanatyam'' is the classical dance of:',
    'Bharatanatyam, the oldest of the classical dance forms of India, originated in the temples of Tamil Nadu and the modern form was shaped by Rukmini Devi Arundale and E. Krishna Iyer.',
    'easy',
    'Standard Reference',
    null,
    'bdd0d34279933f712fb8e8583c569402'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'bdd0d34279933f712fb8e8583c569402'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Tamil Nadu'),
            ('B', 'Kerala'),
            ('C', 'Andhra Pradesh'),
            ('D', 'Odisha')
           ) as v(label, option_text)
 where q.question_hash = 'bdd0d34279933f712fb8e8583c569402'
on conflict (question_id, label) do nothing;

-- art_culture | dance | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'dance'),
    'The ''Kathakali'' is the classical dance-drama of:',
    'Kathakali, the classical dance-drama of Kerala, combines the dance, the music, the acting and the elaborate costume and make-up.',
    'easy',
    'Standard Reference',
    null,
    '4182950aa532b8fb47806c43b4e452c9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '4182950aa532b8fb47806c43b4e452c9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Odisha'),
            ('B', 'Andhra Pradesh'),
            ('C', 'Kerala'),
            ('D', 'Tamil Nadu')
           ) as v(label, option_text)
 where q.question_hash = '4182950aa532b8fb47806c43b4e452c9'
on conflict (question_id, label) do nothing;

-- art_culture | dance | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'dance'),
    'The ''Kathak'' is associated with the:',
    'Kathak developed in the courts of Lucknow, Jaipur and Banaras, and the Lucknow gharana, the Jaipur gharana and the Banaras gharana are the principal schools.',
    'easy',
    'Standard Reference',
    null,
    'b916219518a4392ac1fd6e6c41aff970'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b916219518a4392ac1fd6e6c41aff970'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rajasthan'),
            ('B', 'Lucknow and the other courts of north India'),
            ('C', 'Kerala'),
            ('D', 'Tamil Nadu')
           ) as v(label, option_text)
 where q.question_hash = 'b916219518a4392ac1fd6e6c41aff970'
on conflict (question_id, label) do nothing;

-- art_culture | dance | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'dance'),
    'The ''Odissi'' dance is recognised by its:',
    'Odissi is characterised by the tribhanga, the three bends of the body, and the Lasya and the Bhanga or the tandava styles, and it is the temple dance of Odisha.',
    'medium',
    'Standard Reference',
    null,
    'd826fdc2ff1cb312deff9e08bae1a378'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd826fdc2ff1cb312deff9e08bae1a378'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Tribhanga posture and the temple dance of Odisha'),
            ('B', 'Make-up of the Kathakali'),
            ('C', 'The mudras of the Bharatanatyam'),
            ('D', 'The costumes of the Kuchipudi')
           ) as v(label, option_text)
 where q.question_hash = 'd826fdc2ff1cb312deff9e08bae1a378'
on conflict (question_id, label) do nothing;

-- art_culture | dance | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'dance'),
    'The ''Kuchipudi'' is the dance-drama of:',
    'Kuchipudi of Andhra Pradesh combines the dancing with the narration and the singing, and it is recognised by the characters of the dancer who also narrates the story.',
    'easy',
    'Standard Reference',
    null,
    'd22a70ea4ad8187a1321ab74be2c74aa'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd22a70ea4ad8187a1321ab74be2c74aa'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Karnataka'),
            ('B', 'Kerala'),
            ('C', 'Andhra Pradesh'),
            ('D', 'Tamil Nadu')
           ) as v(label, option_text)
 where q.question_hash = 'd22a70ea4ad8187a1321ab74be2c74aa'
on conflict (question_id, label) do nothing;

-- art_culture | dance | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'dance'),
    'The ''Manipuri'' dance is the classical dance of:',
    'Manipuri, or the Ras Lila dance of Manipur, is one of the oldest of the classical forms and it was given the classical status in 1974.',
    'easy',
    'Standard Reference',
    null,
    '31595c502386bc95605751f6c4762e9b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '31595c502386bc95605751f6c4762e9b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Mizoram'),
            ('B', 'Nagaland'),
            ('C', 'Tripura'),
            ('D', 'Manipur')
           ) as v(label, option_text)
 where q.question_hash = '31595c502386bc95605751f6c4762e9b'
on conflict (question_id, label) do nothing;

-- art_culture | dance | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'dance'),
    'The ''Mohiniyattam'' is the classical dance of:',
    'Mohiniyattam, the dance of the enchantress, is the classical dance of Kerala and it was popularised by the legendary dancer Guru Kalyanikutti Amma.',
    'medium',
    'Standard Reference',
    null,
    '70942c46fb7ec3479c88ea26656c12d5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '70942c46fb7ec3479c88ea26656c12d5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Andhra Pradesh'),
            ('B', 'Kerala'),
            ('C', 'Tamil Nadu'),
            ('D', 'Karnataka')
           ) as v(label, option_text)
 where q.question_hash = '70942c46fb7ec3479c88ea26656c12d5'
on conflict (question_id, label) do nothing;

-- art_culture | dance | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'dance'),
    'The ''Sattriya'' dance was codified by:',
    'Sattriya, the neo-Vaishnava dance of Assam and Manipur, was codified by the poet-saint Srimanta Sankardeva in the 16th century, and it was recognised as a classical form in 2000.',
    'medium',
    'Standard Reference',
    null,
    'b2ce8a1f99064b496b22ad8a1d8030a9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'b2ce8a1f99064b496b22ad8a1d8030a9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Srimanta Sankardeva'),
            ('B', 'Shankaradeva'),
            ('C', 'Krishnadevaraya'),
            ('D', 'Rama')
           ) as v(label, option_text)
 where q.question_hash = 'b2ce8a1f99064b496b22ad8a1d8030a9'
on conflict (question_id, label) do nothing;

-- art_culture | dance | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'dance'),
    'The ''Chhau'' dance of Purulia is a:',
    'Chhau is a semi-classical dance from the Seraikella, the Purulia and the Mayurbhanj regions, and the masked form of Seraikella was given the classical status in 2010.',
    'medium',
    'Standard Reference',
    null,
    '55ec07986c886fd68a6ea2bb2a385e07'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '55ec07986c886fd68a6ea2bb2a385e07'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A classical dance of Assam'),
            ('B', 'A folk dance of Punjab'),
            ('C', 'Mask dance of the tribal communities of eastern India'),
            ('D', 'A temple dance of Kerala')
           ) as v(label, option_text)
 where q.question_hash = '55ec07986c886fd68a6ea2bb2a385e07'
on conflict (question_id, label) do nothing;

-- art_culture | dance | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'dance'),
    'The ''Gotipua'' and the ''Chhau'' of Odisha:',
    'Gotipua is a dramatic folk dance of the Mayurbhanj region of Odisha in which the dancers enact the episodes from the Puranas.',
    'hard',
    'Standard Reference',
    null,
    '6842d079e7f48337266350e6d47c7e8b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '6842d079e7f48337266350e6d47c7e8b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Gotipua is a tribal dance of Arunachal Pradesh'),
            ('B', 'Gotipua is a dramatic folk dance of the Mayurbhanj region'),
            ('C', 'Gotipua is a temple dance of Kerala'),
            ('D', 'Gotipua is a form of the martial dance of Manipur')
           ) as v(label, option_text)
 where q.question_hash = '6842d079e7f48337266350e6d47c7e8b'
on conflict (question_id, label) do nothing;

-- art_culture | dance | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'dance'),
    'The ''Kathakali'' makeup colours denote:',
    'The elaborate make-up of the Kathakali, the pacha, the chuvanna thaadi for the demonic and the kathi for the villain, denotes the character of the role.',
    'medium',
    'Standard Reference',
    null,
    '83c3c7f949c88f42cfef62c4c80b0fb9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '83c3c7f949c88f42cfef62c4c80b0fb9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The different seasons'),
            ('B', 'The different regions'),
            ('C', 'The different seasons of the dance'),
            ('D', 'The different characters of the plays')
           ) as v(label, option_text)
 where q.question_hash = '83c3c7f949c88f42cfef62c4c80b0fb9'
on conflict (question_id, label) do nothing;

-- art_culture | dance | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'dance'),
    'The ''Lasya'' and the ''Tandava'':',
    'The Odissi dance has two styles, the graceful Lasya of the temple tradition and the vigorous Tandava of the royal tradition.',
    'hard',
    'Standard Reference',
    null,
    '5e35c23d543540ec61af3f137d820a34'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '5e35c23d543540ec61af3f137d820a34'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Are the two forms of the Kathakali'),
            ('B', 'Are the two styles of the Bharatanatyam'),
            ('C', 'Are the two forms of the yakshagana'),
            ('D', 'Are the two styles of the classical dance of Odisha')
           ) as v(label, option_text)
 where q.question_hash = '5e35c23d543540ec61af3f137d820a34'
on conflict (question_id, label) do nothing;

-- art_culture | dance | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'dance'),
    'The ''Mudras'' in the classical dance are:',
    'The mudras are the hand gestures that convey the meaning of the abhinaya in the classical dance, and they are codified in the Natya Shastra.',
    'easy',
    'Standard Reference',
    null,
    '6fed091b03f13e3cb79b190e3584ba1c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '6fed091b03f13e3cb79b190e3584ba1c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The symbolic gestures of the hands'),
            ('B', 'The footwork patterns'),
            ('C', 'The costume designs'),
            ('D', 'The musical compositions')
           ) as v(label, option_text)
 where q.question_hash = '6fed091b03f13e3cb79b190e3584ba1c'
on conflict (question_id, label) do nothing;

-- art_culture | dance | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'dance'),
    'The ''Kummattikali'' is performed on the:',
    'Kummattikali is performed on the fifth day of the Malayalam month of Meenam in the temple courtyards of the villages of Kerala.',
    'hard',
    'Standard Reference',
    null,
    'd7b8acbd880e4e0bbb207184e75926c7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd7b8acbd880e4e0bbb207184e75926c7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Full moon of the Bengali month'),
            ('B', 'Fifth day of the Malayalam month of Meenam'),
            ('C', 'First day of the Malayalam calendar'),
            ('D', 'Seventh day of the Tamil month')
           ) as v(label, option_text)
 where q.question_hash = 'd7b8acbd880e4e0bbb207184e75926c7'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'The ''Yakshagana'' costumes and the ''Karnataka'' are associated with:',
    'The Yakshagana of coastal Karnataka is known for the elaborate costumes, the towering headgear, the face painting and the vigorous singing of the chorus.',
    'medium',
    'Standard Reference',
    null,
    'ad3061cc2e66b8fade12f7e82be7dd77'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'ad3061cc2e66b8fade12f7e82be7dd77'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Yakshagana of Kerala'),
            ('B', 'The Terah Tali of Punjab'),
            ('C', 'The elaborate headgear and the face painting of the coastal Karnataka theatre'),
            ('D', 'The Kuchipudi of the Andhra coast')
           ) as v(label, option_text)
 where q.question_hash = 'ad3061cc2e66b8fade12f7e82be7dd77'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'The ''Kutiyattam'' is the ancient Sanskrit theatre of:',
    'Kutiyattam, the oldest surviving Sanskrit theatre form, is practised in Kerala and was inscribed on the UNESCO list of the intangible heritage in 2001.',
    'easy',
    'Standard Reference',
    null,
    '025b34dccff811cd26f2ffcc6b334c0d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '025b34dccff811cd26f2ffcc6b334c0d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Andhra Pradesh'),
            ('B', 'Karnataka'),
            ('C', 'Kerala'),
            ('D', 'Tamil Nadu')
           ) as v(label, option_text)
 where q.question_hash = '025b34dccff811cd26f2ffcc6b334c0d'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'The ''Ramlila'' of Ramnagar in Varanasi is:',
    'The Ramlila of Ramnagar, performed with the traditional wooden masks and the folk styles, was proclaimed a Masterpiece of the Oral and Intangible Heritage by UNESCO in 2003.',
    'medium',
    'Standard Reference',
    null,
    'c7446b74a13094ef376085f38675feee'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'c7446b74a13094ef376085f38675feee'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A classical dance form'),
            ('B', 'A folk music genre'),
            ('C', 'A painted scroll tradition'),
            ('D', 'A traditional theatrical performance of the Ramayana')
           ) as v(label, option_text)
 where q.question_hash = 'c7446b74a13094ef376085f38675feee'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'The ''Nautanki'' is a folk theatre of:',
    'Nautanki, which evolved from the sung narration, is a folk theatre of northern India, particularly of the Awadh region of Uttar Pradesh.',
    'medium',
    'Standard Reference',
    null,
    '5551f1105106104d6c9bbc885b233cde'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '5551f1105106104d6c9bbc885b233cde'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bengal'),
            ('B', 'North India, especially Uttar Pradesh'),
            ('C', 'Kerala'),
            ('D', 'Tamil Nadu')
           ) as v(label, option_text)
 where q.question_hash = '5551f1105106104d6c9bbc885b233cde'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'The ''Tamasha'' and the ''Bhavai'' are the folk theatres of:',
    'Tamasha is the folk theatre of Maharashtra and Bhavai of Gujarat, and both are sung and danced forms with a strong improvisational character.',
    'medium',
    'Standard Reference',
    null,
    '77fdf0a8e0f435aa425a7037917795a8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '77fdf0a8e0f435aa425a7037917795a8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Maharashtra and Gujarat'),
            ('B', 'Bengal and Odisha'),
            ('C', 'Rajasthan and Punjab'),
            ('D', 'Kerala and Karnataka')
           ) as v(label, option_text)
 where q.question_hash = '77fdf0a8e0f435aa425a7037917795a8'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'The ''Yakshagana'' and the ''Badagutittu'':',
    'Yakshagana and the closely related Badagutittu are the folk theatre forms of the coastal Karnataka region.',
    'hard',
    'Standard Reference',
    null,
    'f49dc0b8a1929f651726a7ef78f21441'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f49dc0b8a1929f651726a7ef78f21441'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Are both the film industries'),
            ('B', 'Are both forms of the folk theatre of coastal Karnataka'),
            ('C', 'Are both classical dances'),
            ('D', 'Are both from Kerala')
           ) as v(label, option_text)
 where q.question_hash = 'f49dc0b8a1929f651726a7ef78f21441'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'The ''Bhaona'' is the Assamese form of:',
    'The Bhaona of Assam is a classical dance-drama of the Vaishnava order, and it is a traditional folk theatre of the region.',
    'medium',
    'Standard Reference',
    null,
    'a0e3b58898a9b4a461b42dfe418b43ac'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a0e3b58898a9b4a461b42dfe418b43ac'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A folk music of Punjab'),
            ('B', 'A painting of Odisha'),
            ('C', 'A martial art of Rajasthan'),
            ('D', 'An ensemble of the classical dance-drama')
           ) as v(label, option_text)
 where q.question_hash = 'a0e3b58898a9b4a461b42dfe418b43ac'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'The ''Ankiya Naat'' and the ''Borgeet'' are the Assamese:',
    'The Ankiya Naat is the folk dance-drama of Assam and the Borgeet is its traditional folk music, both with a strong Vaishnava content.',
    'hard',
    'Standard Reference',
    null,
    '4441f66bc3478ce1109e4d6e9ec80ce3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '4441f66bc3478ce1109e4d6e9ec80ce3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The folk dance-drama and the folk music traditions'),
            ('B', 'A classical dance and a painting'),
            ('C', 'A martial art and a film form'),
            ('D', 'A festival and a cuisine')
           ) as v(label, option_text)
 where q.question_hash = '4441f66bc3478ce1109e4d6e9ec80ce3'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'The ''IPTA'' was the theatre movement founded in:',
    'The Indian People''s Theatre Association, founded in Bombay in 1943, was the most significant of the progressive theatre movements of the country.',
    'hard',
    'Standard Reference',
    null,
    'e16dbf001a251cb08e001a961de2c1a8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e16dbf001a251cb08e001a961de2c1a8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1950 in Delhi'),
            ('B', '1927 in Madras'),
            ('C', '1943 in Bombay'),
            ('D', '1930 in Calcutta')
           ) as v(label, option_text)
 where q.question_hash = 'e16dbf001a251cb08e001a961de2c1a8'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'The ''Habib Tanvir'' is known for his:',
    'Habib Tanvir founded the Naya Theatre in 1959 and the Charandas, with its rustic setting, was his most celebrated production.',
    'medium',
    'Standard Reference',
    null,
    '03bd6f468eceb3143d0eabe80bb2f2ef'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '03bd6f468eceb3143d0eabe80bb2f2ef'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Rangayan and the Kalakshetra'),
            ('B', 'The Theatre Group of the Delhi'),
            ('C', 'The Naya Theatre and the street play Charandas'),
            ('D', 'The Prithvi Theatre')
           ) as v(label, option_text)
 where q.question_hash = '03bd6f468eceb3143d0eabe80bb2f2ef'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'The ''Badal Sircar'' is associated with:',
    'Badal Sircar founded the Third Theatre in Calcutta in 1970 and his street plays brought the theatre to the common people.',
    'hard',
    'Standard Reference',
    null,
    '9051a19c05a8a428efeb335a5a19d936'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '9051a19c05a8a428efeb335a5a19d936'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Third Theatre and the street theatre'),
            ('B', 'The Naya Theatre'),
            ('C', 'The Kalakshetra'),
            ('D', 'The Prithvi Theatre')
           ) as v(label, option_text)
 where q.question_hash = '9051a19c05a8a428efeb335a5a19d936'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'The ''Prithvi Theatre'' in Mumbai was founded by:',
    'The Prithvi Theatre, founded in Mumbai in 1977 by Zeenat and Naseeruddin Shah, is a famous centre of the parallel theatre movement.',
    'medium',
    'Standard Reference',
    null,
    '4cc40d1fb9d7f964b7b4187e1ea735b4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '4cc40d1fb9d7f964b7b4187e1ea735b4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Girish Karnad'),
            ('B', 'Zeenat and Naseeruddin Shah'),
            ('C', 'Habib Tanvir'),
            ('D', 'B.V. Karanth')
           ) as v(label, option_text)
 where q.question_hash = '4cc40d1fb9d7f964b7b4187e1ea735b4'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'The ''IPTA'' and the ''Bhupen Hazarika'':',
    'The IPTA staged the musical plays and the ballads of Bhupen Hazarika, the foremost Assamese musician of the movement.',
    'hard',
    'Standard Reference',
    null,
    '2677a7ca0a104198e5ba5f29140734f3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '2677a7ca0a104198e5ba5f29140734f3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bhupen Hazarika founded the IPTA'),
            ('B', 'They worked in the film industry only'),
            ('C', 'They were the rivals'),
            ('D', 'The IPTA performed the musical plays and the ballads of Bhupen Hazarika')
           ) as v(label, option_text)
 where q.question_hash = '2677a7ca0a104198e5ba5f29140734f3'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'The first Indian feature film ''Raja Harishchandra'' was made in:',
    'Dadasaheb Phalke made the first Indian feature film, Raja Harishchandra, in 1913 and is known as the father of Indian cinema.',
    'easy',
    'Standard Reference',
    null,
    'c5f382bb9ab9c9c227b4d25a4def74e3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c5f382bb9ab9c9c227b4d25a4def74e3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1920'),
            ('B', '1905'),
            ('C', '1913'),
            ('D', '1910')
           ) as v(label, option_text)
 where q.question_hash = 'c5f382bb9ab9c9c227b4d25a4def74e3'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'The first Indian talkie film was:',
    'Alam Ara, the first Indian talkie film, was released in 1931 and was directed by Ardeshir Irani.',
    'easy',
    'Standard Reference',
    null,
    '3c97d207f48cdb89dbccfe58c08238a2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '3c97d207f48cdb89dbccfe58c08238a2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Raja Harishchandra'),
            ('B', 'Pundalik'),
            ('C', 'Kisan Kanya'),
            ('D', 'Alam Ara')
           ) as v(label, option_text)
 where q.question_hash = '3c97d207f48cdb89dbccfe58c08238a2'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'The ''Kisan Kanya'' was the first Indian:',
    'Kisan Kanya, made in 1937 by the Imperial Films, was the first Indian colour film, and the first Indian film to be screened at the Cannes film festival.',
    'hard',
    'Standard Reference',
    null,
    '4aeec1b0e69cfbeedc2816f407550c2d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '4aeec1b0e69cfbeedc2816f407550c2d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Talkie film'),
            ('B', 'Colour film'),
            ('C', 'Animated film'),
            ('D', 'Documentary')
           ) as v(label, option_text)
 where q.question_hash = '4aeec1b0e69cfbeedc2816f407550c2d'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'The ''Pundalik'' of 1912 was:',
    'Pundalik, made in 1912 by thedhami Dadasaheb Phalke, is regarded as the first Indian film made by a person with a disability, and the National Film Awards introduced a special mention for it.',
    'hard',
    'Standard Reference',
    null,
    '53259ae6a84c3e91f49d58f92930a9d9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '53259ae6a84c3e91f49d58f92930a9d9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The first Indian film made by a person with a disability'),
            ('B', 'The first Indian documentary'),
            ('C', 'The first Indian animation'),
            ('D', 'The first Indian colour film')
           ) as v(label, option_text)
 where q.question_hash = '53259ae6a84c3e91f49d58f92930a9d9'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'The ''Dadasaheb Phalke Award'' is the:',
    'The Dadasaheb Phalke Award, instituted in 1969, is the highest award in Indian cinema and the Swarna Kamal is the second highest.',
    'easy',
    'Standard Reference',
    null,
    '7da46e89d21c895555e6889f50f2aae7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '7da46e89d21c895555e6889f50f2aae7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Award for the classical dance'),
            ('B', 'Highest award in Indian cinema'),
            ('C', 'Highest award in Indian sport'),
            ('D', 'National award for the agriculture')
           ) as v(label, option_text)
 where q.question_hash = '7da46e89d21c895555e6889f50f2aae7'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'The ''National Film Awards'' are presented by:',
    'The Directorate of Film Festivals, under the Ministry of Information and Broadcasting, organises the National Film Awards, which were instituted in 1954.',
    'medium',
    'Standard Reference',
    null,
    'dce7efd4a7943fcccd5f231fcde69fa2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'dce7efd4a7943fcccd5f231fcde69fa2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The National Film Development Corporation'),
            ('B', 'The Ministry of Culture'),
            ('C', 'The Film and Television Institute of India'),
            ('D', 'The Directorate of Film Festivals under the Ministry of Information and Broadcasting')
           ) as v(label, option_text)
 where q.question_hash = 'dce7efd4a7943fcccd5f231fcde69fa2'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'The ''National Film Development Corporation'' was set up in:',
    'The NFDC was set up in 1969 as a film finance corporation and it was merged with the Film Finance Corporation of India in 1972.',
    'hard',
    'Standard Reference',
    null,
    'fc8ff18fa3e7897842ba9ee600c41bb8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'fc8ff18fa3e7897842ba9ee600c41bb8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1969'),
            ('B', '1954'),
            ('C', '1972'),
            ('D', '1958')
           ) as v(label, option_text)
 where q.question_hash = 'fc8ff18fa3e7897842ba9ee600c41bb8'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'The ''Satyajit Ray'' received the first National Film Award for the best feature film for:',
    'Pather Panchali won the Best Feature Film and the Best Cinematography awards in 1956 at the inaugural National Film Awards.',
    'medium',
    'Standard Reference',
    null,
    '67ac8d129e2a9b8037eea6c17cbb0458'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '67ac8d129e2a9b8037eea6c17cbb0458'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Charulata'),
            ('B', 'The Apu Trilogy'),
            ('C', 'Pather Panchali'),
            ('D', 'Aparajito')
           ) as v(label, option_text)
 where q.question_hash = '67ac8d129e2a9b8037eea6c17cbb0458'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'The ''Pather Panchali'' was based on the novel of:',
    'Pather Panchali was based on the novel of the same name by Bibhutibhushan Bandyopadhyay, and the Apu trilogy was based on the works of the same author.',
    'medium',
    'Standard Reference',
    null,
    'f928bd7f3bc55979c1ac072de2586992'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'f928bd7f3bc55979c1ac072de2586992'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sarat Chandra Chattopadhyay'),
            ('B', 'Tarashankar Bandyopadhyay'),
            ('C', 'Bankim Chandra Chattopadhyay'),
            ('D', 'Bibhutibhushan Bandyopadhyay')
           ) as v(label, option_text)
 where q.question_hash = 'f928bd7f3bc55979c1ac072de2586992'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'The ''Bhasha'' films of Satyajit Ray were made in:',
    'The Apu trilogy, the Pratidwandi, the Charulata and the others are the Bengali films of Satyajit Ray, who later made the Hindi films.',
    'easy',
    'Standard Reference',
    null,
    '04b450ffd4a602b936df5df37d094af4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '04b450ffd4a602b936df5df37d094af4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bengali'),
            ('B', 'Hindi'),
            ('C', 'Tamil'),
            ('D', 'Malayalam')
           ) as v(label, option_text)
 where q.question_hash = '04b450ffd4a602b936df5df37d094af4'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'The ''Aadmi Aur Aurat'' was the Hindi debut of:',
    'Aadmi Aur Aurat of 1969 was the Hindi debut of Satyajit Ray, who had earlier made a Hindi documentary, The Inner Eye.',
    'hard',
    'Standard Reference',
    null,
    '3b2e2bfcc29ccb26357f741af25dfafb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '3b2e2bfcc29ccb26357f741af25dfafb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Mehboob Khan'),
            ('B', 'Bimal Roy'),
            ('C', 'Satyajit Ray'),
            ('D', 'Guru Dutt')
           ) as v(label, option_text)
 where q.question_hash = '3b2e2bfcc29ccb26357f741af25dfafb'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'The ''Guru Dutt'' and the ''Pyaasa'':',
    'Guru Dutt directed Pyaasa in 1957 and Sahib Bibi Aur Ghulam in 1960, and he was a legendary actor of the golden age of the Hindi cinema.',
    'medium',
    'Standard Reference',
    null,
    'dcbde6b02a7a7d86cb6b2e3203a56542'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'dcbde6b02a7a7d86cb6b2e3203a56542'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Guru Dutt directed the Mother India'),
            ('B', 'Guru Dutt directed Pyaasa and Sahib Bibi Aur Ghulam'),
            ('C', 'Guru Dutt directed the Mughal-e-Azam'),
            ('D', 'Guru Dutt was the actor of the Pyaasa')
           ) as v(label, option_text)
 where q.question_hash = 'dcbde6b02a7a7d86cb6b2e3203a56542'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'The ''Mother India'' and the ''Bimal Roy'':',
    'Bimal Roy directed Mother India of 1957, and he won the Best Director award for it at the Cannes film festival.',
    'medium',
    'Standard Reference',
    null,
    '181f8ef5fca9b16875d2463e02e78c93'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '181f8ef5fca9b16875d2463e02e78c93'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bimal Roy directed Pather Panchali'),
            ('B', 'Bimal Roy directed Pyaasa'),
            ('C', 'Bimal Roy was a Bengali playwright'),
            ('D', 'Bimal Roy directed Mother India and received the Best Director award for it')
           ) as v(label, option_text)
 where q.question_hash = '181f8ef5fca9b16875d2463e02e78c93'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'The ''Meghna'' and the ''Shyam Benegal'' were:',
    'Shyam Benagal''s films, including Nishant, Manthan, Suraj Ka Satvan Ghoda and Meghna, are the landmarks of the parallel cinema movement.',
    'medium',
    'Standard Reference',
    null,
    '2e804cf8c0d108cf1e8063760a96f4a3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '2e804cf8c0d108cf1e8063760a96f4a3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The documentaries of the Films Division'),
            ('B', 'Films of the parallel cinema movement'),
            ('C', 'The Hindi films of Raj Kapoor'),
            ('D', 'The films of the Dadasaheb Phalke')
           ) as v(label, option_text)
 where q.question_hash = '2e804cf8c0d108cf1e8063760a96f4a3'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'The ''Satyajit Ray'' and the ''Feluda'':',
    'Feluda, the detective created by Satyajit Ray in the children''s magazine Sandesh, became a hugely popular character of the Bengali literature and of the films.',
    'easy',
    'Standard Reference',
    null,
    '145c8c0f2b9eac472214ce1232837e56'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '145c8c0f2b9eac472214ce1232837e56'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A character of the Hindi cinema'),
            ('B', 'A folk character of the Punjab'),
            ('C', 'The detective character created by Satyajit Ray'),
            ('D', 'A character of the Bengali literature by Bibhutibhushan')
           ) as v(label, option_text)
 where q.question_hash = '145c8c0f2b9eac472214ce1232837e56'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'The ''Mughal-e-Azam'' of 1960 won the:',
    'Mughal-e-Azam, directed by K. Asif, won the Best Feature Film award at the National Film Awards, and it remains the highest grossing Indian film of all time.',
    'medium',
    'Standard Reference',
    null,
    '7957cc2cce9dd64fbbe4a54912cf538c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '7957cc2cce9dd64fbbe4a54912cf538c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Best Feature Film award at the National Film Awards'),
            ('B', 'The Oscar for the best foreign film'),
            ('C', 'The Best Actor award for Dilip Kumar'),
            ('D', 'The Cannes Grand Prix')
           ) as v(label, option_text)
 where q.question_hash = '7957cc2cce9dd64fbbe4a54912cf538c'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'The ''Lagaan'' of 2001:',
    'Lagaan, directed by Ashutosh Gowariker, won the Academy Award for the Best Foreign Language Film in 2002, the only Indian film to do so.',
    'easy',
    'Standard Reference',
    null,
    'cdcc6040b39be09dd9c7bd581dc6ff72'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'cdcc6040b39be09dd9c7bd581dc6ff72'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Won the National Award for the Best Popular Film'),
            ('B', 'Was directed by Satyajit Ray'),
            ('C', 'Won the Best Actor award for Shah Rukh Khan'),
            ('D', 'Won the Best Foreign Language Film Oscar for India')
           ) as v(label, option_text)
 where q.question_hash = 'cdcc6040b39be09dd9c7bd581dc6ff72'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'The ''RRR'' of 2022:',
    'RRR, directed by S. S. Rajamouli, won the Academy Award for the Best Original Song for Naatu Naatu in 2023, India''s first Oscar in any category.',
    'medium',
    'Standard Reference',
    null,
    'dc556e88fac2343276439e76f36232c5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'dc556e88fac2343276439e76f36232c5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was directed by S. S. Rajamouli of the Baahubali fame'),
            ('B', 'Won the Best Original Song Oscar for Naatu Naatu'),
            ('C', 'Won the Best Picture Oscar'),
            ('D', 'Won the Best Director award at Cannes')
           ) as v(label, option_text)
 where q.question_hash = 'dc556e88fac2343276439e76f36232c5'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'The ''All We Imagine as Light'' of 2024:',
    'Payal Kapadia''s All We Imagine as Light became the first Indian feature film to win the Best Feature Film award at Cannes in 2024.',
    'medium',
    'Standard Reference',
    null,
    'e12d727d0a70aa451ce430605c277754'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'e12d727d0a70aa451ce430605c277754'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was the first Indian film to win the Best Feature Film at Cannes'),
            ('B', 'Won the Best Director award at the Venice'),
            ('C', 'Won the Best Film at the National Awards'),
            ('D', 'Was directed by Satyajit Ray')
           ) as v(label, option_text)
 where q.question_hash = 'e12d727d0a70aa451ce430605c277754'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'The ''Doordarshan'' was founded in:',
    'Doordarshan, the national broadcaster, was founded in 1959 and replaced the private commercial broadcasting of the pre-independence era.',
    'medium',
    'Standard Reference',
    null,
    '38d79edda5f068993ea33f842583040e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '38d79edda5f068993ea33f842583040e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1975'),
            ('B', '1949'),
            ('C', '1959'),
            ('D', '1956')
           ) as v(label, option_text)
 where q.question_hash = '38d79edda5f068993ea33f842583040e'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'The ''All India Radio'' (Akashvani) was founded in:',
    'The Indian State Broadcasting Service, renamed Akashvani in 1957, was founded in 1936 at the initiative of Rabindranath Tagore.',
    'hard',
    'Standard Reference',
    null,
    'b52423b1b2764d3e8e8d47fe316c5050'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'b52423b1b2764d3e8e8d47fe316c5050'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1947'),
            ('B', '1939'),
            ('C', '1936'),
            ('D', '1930')
           ) as v(label, option_text)
 where q.question_hash = 'b52423b1b2764d3e8e8d47fe316c5050'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'The ''Indian People''s Theatre Association'' and the ''Bengali theatre'' of Utpal Dutt:',
    'Utpal Dutt was one of the leaders of the IPTA, and he was also a celebrated actor of the Bengali theatre and the films.',
    'medium',
    'Standard Reference',
    null,
    '5b0f01500483e5187b918d42b583e57c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '5b0f01500483e5187b918d42b583e57c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Utpal Dutt founded the Prithvi Theatre'),
            ('B', 'Utpal Dutt was a Bengali poet'),
            ('C', 'Utpal Dutt was the founder of the Naya Theatre'),
            ('D', 'Utpal Dutt was the leader of the IPTA')
           ) as v(label, option_text)
 where q.question_hash = '5b0f01500483e5187b918d42b583e57c'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'The ''Sangeet Natak Akademi'' was set up in:',
    'The Sangeet Natak Akademi was set up in 1952 by the Government of India as the apex body for the performing arts, and it grants the Akademi Awards.',
    'medium',
    'Standard Reference',
    null,
    '6ef70ea489d0c8a308482f1b26bdfe42'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '6ef70ea489d0c8a308482f1b26bdfe42'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1948'),
            ('B', '1952'),
            ('C', '1954'),
            ('D', '1956')
           ) as v(label, option_text)
 where q.question_hash = '6ef70ea489d0c8a308482f1b26bdfe42'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'The ''Lalit Kala Akademi'' was set up in:',
    'The Lalit Kala Akademi, the national academy of the visual arts, was set up in 1954 and it grants the Lalit Kala Akademi Fellowship.',
    'medium',
    'Standard Reference',
    null,
    'eeac8d06098164a0d1d60dd53b90c7d9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'eeac8d06098164a0d1d60dd53b90c7d9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1954'),
            ('B', '1952'),
            ('C', '1956'),
            ('D', '1958')
           ) as v(label, option_text)
 where q.question_hash = 'eeac8d06098164a0d1d60dd53b90c7d9'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'The ''Sahitya Akademi'' was set up in:',
    'The Sahitya Akademi was set up in 1954 as the national academy of the writers and it grants the Sahitya Akademi Award in 24 languages.',
    'easy',
    'Standard Reference',
    null,
    'bca4e4d25ccce9efa2e58be44c03c8ab'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'bca4e4d25ccce9efa2e58be44c03c8ab'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1956'),
            ('B', '1958'),
            ('C', '1954'),
            ('D', '1952')
           ) as v(label, option_text)
 where q.question_hash = 'bca4e4d25ccce9efa2e58be44c03c8ab'
on conflict (question_id, label) do nothing;

-- art_culture | music | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'music'),
    'The ''Karnataka Sangeetha Nritya Akademi'' is at:',
    'The Karnataka Sangeetha Nritya Akademi is at Bangalore and it is the premier institution for the classical music and the dance of the state.',
    'hard',
    'Standard Reference',
    null,
    '76903ff6709e92850aaadf1c602f0f94'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '76903ff6709e92850aaadf1c602f0f94'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Mysore'),
            ('B', 'Hubli'),
            ('C', 'Mangalore'),
            ('D', 'Bangalore')
           ) as v(label, option_text)
 where q.question_hash = '76903ff6709e92850aaadf1c602f0f94'
on conflict (question_id, label) do nothing;

-- art_culture | music | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'music'),
    'The ''Madras Music Academy'' was founded in:',
    'The Madras Music Academy was founded in 1928 by the leading musicians of the city, and it organised the first music conference in 1940.',
    'hard',
    'Standard Reference',
    null,
    '82e76b358b0a96efefd40ee6502a0892'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '82e76b358b0a96efefd40ee6502a0892'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1928'),
            ('B', '1910'),
            ('C', '1930'),
            ('D', '1940')
           ) as v(label, option_text)
 where q.question_hash = '82e76b358b0a96efefd40ee6502a0892'
on conflict (question_id, label) do nothing;

-- art_culture | music | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'music'),
    'The ''Gangubai Hangal'' and the ''Hindustani music'':',
    'Gangubai Hangal of the Kirana gharana was among the foremost Hindustani vocalists of the twentieth century and she received the Padma Bhushan in 2002.',
    'medium',
    'Standard Reference',
    null,
    'fe107b51248139077982633af595c9da'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'fe107b51248139077982633af595c9da'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'She was a theatre pioneer'),
            ('B', 'Gangubai Hangal was a leading Hindustani vocalist of the Kirana gharana'),
            ('C', 'She was a Carnatic musician'),
            ('D', 'She was a dancer')
           ) as v(label, option_text)
 where q.question_hash = 'fe107b51248139077982633af595c9da'
on conflict (question_id, label) do nothing;

-- art_culture | music | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'music'),
    'The ''Bhimsen Joshi'' was a:',
    'Bhimsen Joshi was a Hindustani vocalist of the Gwalior gharana and a disciple of Hafiz Ali Khan.',
    'medium',
    'Standard Reference',
    null,
    '1b6b55b444120e04bcffc5dd754ca8e0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '1b6b55b444120e04bcffc5dd754ca8e0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A violinist'),
            ('B', 'Hindustani vocalist of the Gwalior gharana'),
            ('C', 'Carnatic vocalist'),
            ('D', 'A tabla player')
           ) as v(label, option_text)
 where q.question_hash = '1b6b55b444120e04bcffc5dd754ca8e0'
on conflict (question_id, label) do nothing;

-- art_culture | music | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'music'),
    'The ''Musiri Subramania Iyer'' was a:',
    'Musiri Subramania Iyer, a disciple of Parur Sundaram Iyer, was among the foremost Carnatic vocalists of the twentieth century.',
    'medium',
    'Standard Reference',
    null,
    '7a85715cd1ec6d74725efb32eeb51b81'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '7a85715cd1ec6d74725efb32eeb51b81'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Carnatic vocalist'),
            ('B', 'Hindustani vocalist'),
            ('C', 'A violinist of the Ravi Shankar gharana'),
            ('D', 'A mridangam player')
           ) as v(label, option_text)
 where q.question_hash = '7a85715cd1ec6d74725efb32eeb51b81'
on conflict (question_id, label) do nothing;

-- art_culture | music | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'music'),
    'The ''Ramdas'' and the ''Khayal'' and the ''Tansen'':',
    'Tansen, a legendary musician of the court of Akbar, was the greatest exponent of the khayal and the dhrupad styles in the Hindustani tradition.',
    'easy',
    'Standard Reference',
    null,
    'c7fe9f803f164027cc7e1cb901991819'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c7fe9f803f164027cc7e1cb901991819'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Tansen was a saint of the Bhakti movement'),
            ('B', 'Tansen was a 20th-century composer'),
            ('C', 'Tansen was a legendary musician of the court of Akbar'),
            ('D', 'Tansen was a painter')
           ) as v(label, option_text)
 where q.question_hash = 'c7fe9f803f164027cc7e1cb901991819'
on conflict (question_id, label) do nothing;

-- art_culture | music | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'music'),
    'The ''Purandara Dasa'' was the:',
    'Purandara Dasa, a disciple of Vyasaraja and a follower of Vallabhacharya, is called the father of Carnatic music, and his compositions number in the thousands.',
    'easy',
    'Standard Reference',
    null,
    '4b284a96422527c1dbe2ec273cbf11b4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '4b284a96422527c1dbe2ec273cbf11b4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Father of the Hindustani music'),
            ('B', 'A playwright'),
            ('C', 'A painter'),
            ('D', 'Father of the Carnatic music')
           ) as v(label, option_text)
 where q.question_hash = '4b284a96422527c1dbe2ec273cbf11b4'
on conflict (question_id, label) do nothing;

-- art_culture | music | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'music'),
    'The ''Karnatak'' and the ''Hindustani'' and the ''Dhrupad'':',
    'Dhrupad, the oldest vocal style of the Hindustani music, is sung by the dhrupad singers of the Gwalior, the Kirana and the dhrupad traditions.',
    'medium',
    'Standard Reference',
    null,
    '7939766ad97cce6f54a7869b6952ee35'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '7939766ad97cce6f54a7869b6952ee35'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Dhrupad is a form of the sitar'),
            ('B', 'Dhrupad is the oldest vocal style of the Hindustani music'),
            ('C', 'Dhrupad is a Carnatic form'),
            ('D', 'Dhrupad is a folk song of the Punjab')
           ) as v(label, option_text)
 where q.question_hash = '7939766ad97cce6f54a7869b6952ee35'
on conflict (question_id, label) do nothing;

-- art_culture | music | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'music'),
    'The ''Varnas'' of the Carnatic music are:',
    'The twelve varnas of the Carnatic system, with their specific intonation and the melakarta scheme, are the backbone of the ragas of the system.',
    'hard',
    'Standard Reference',
    null,
    'e0229e48db17d7ee0cff0ec18490b19c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'e0229e48db17d7ee0cff0ec18490b19c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The melodic scales with the specific intonation'),
            ('B', 'The rhythmic patterns'),
            ('C', 'The percussion instruments'),
            ('D', 'The dance forms')
           ) as v(label, option_text)
 where q.question_hash = 'e0229e48db17d7ee0cff0ec18490b19c'
on conflict (question_id, label) do nothing;

-- art_culture | music | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'music'),
    'The ''tanpura'' is:',
    'The tanpura, with its four or five strings and the drone of the Pa, provides the harmonic background and the tuning of the raga in the Hindustani and the Carnatic systems.',
    'medium',
    'Standard Reference',
    null,
    'b1cf6571df063a9d115c85ac5f1fa917'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'b1cf6571df063a9d115c85ac5f1fa917'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A percussion instrument'),
            ('B', 'A reed instrument'),
            ('C', 'A bowed instrument'),
            ('D', 'A four or five stringed drone instrument used to tune and to sustain the raga')
           ) as v(label, option_text)
 where q.question_hash = 'b1cf6571df063a9d115c85ac5f1fa917'
on conflict (question_id, label) do nothing;

-- art_culture | music | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'music'),
    'The ''mridangam'' is the:',
    'The mridangam is the principal percussion instrument of the Carnatic music, and its companion instruments are the ghatam, the kanjira, the morsing and the tavil.',
    'medium',
    'Standard Reference',
    null,
    '1e7ba0e6dd10606307d55aa68c708aaf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '1e7ba0e6dd10606307d55aa68c708aaf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A string instrument'),
            ('B', 'A wind instrument'),
            ('C', 'A barrel-shaped double-headed drum of the Carnatic music'),
            ('D', 'A pair of the cymbals')
           ) as v(label, option_text)
 where q.question_hash = '1e7ba0e6dd10606307d55aa68c708aaf'
on conflict (question_id, label) do nothing;

-- art_culture | music | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'music'),
    'The ''sarangi'' is a:',
    'The sarangi, with three gut strings and a bow, is one of the principal bowed instruments of the Hindustani music, along with the sarangi, the dilruba and the violin.',
    'medium',
    'Standard Reference',
    null,
    '9c2aa6be93ab1b2798cbae0f98e977cf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '9c2aa6be93ab1b2798cbae0f98e977cf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bowed string instrument of the Hindustani music'),
            ('B', 'A percussion instrument of the Carnatic music'),
            ('C', 'A reed instrument'),
            ('D', 'A bell metal cymbal')
           ) as v(label, option_text)
 where q.question_hash = '9c2aa6be93ab1b2798cbae0f98e977cf'
on conflict (question_id, label) do nothing;

-- art_culture | music | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'music'),
    'The ''Rudra veena'' and the ''surshringar'':',
    'The Rudra veena and the sursringar are the older bowed instruments of the Hindustani music, related to the modern violin.',
    'hard',
    'Standard Reference',
    null,
    'f965339cfe60e60de7c5d59e2d722b28'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f965339cfe60e60de7c5d59e2d722b28'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Are both the string instruments of the Carnatic music'),
            ('B', 'Are both among the bowed instruments of the Hindustani music'),
            ('C', 'Are both percussion instruments'),
            ('D', 'Are both the vocal genres')
           ) as v(label, option_text)
 where q.question_hash = 'f965339cfe60e60de7c5d59e2d722b28'
on conflict (question_id, label) do nothing;

-- art_culture | music | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'music'),
    'The ''Vasant Desai'' and the ''Ranjani'' and the ''Gauhar Jaan'':',
    'Vasant Desai and V. R. Bhatkhande collected and published the old raga and the dhrupad material, and V. R. Bhatkhande wrote the Hindustani Sangeet Paddhati.',
    'hard',
    'Standard Reference',
    null,
    '9d930c0bd44f48de28622b2f7bd1f977'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '9d930c0bd44f48de28622b2f7bd1f977'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'They were the founders of the music academy'),
            ('B', 'They were the patrons of the Ustad Allauddin Khan'),
            ('C', 'Vasant Desai and V. R. Bhatkhande revived the old raga and the dhrupad traditions'),
            ('D', 'They were the film composers of the 1930s')
           ) as v(label, option_text)
 where q.question_hash = '9d930c0bd44f48de28622b2f7bd1f977'
on conflict (question_id, label) do nothing;

-- art_culture | music | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'music'),
    'The ''Bhatkhande'' and the ''Sangeet Paddhati'':',
    'Vishnu Narayan Bhatkhande''s Hindustani Sangeet Paddhati of the 1920s was the first systematic documentation of the Hindustani music.',
    'hard',
    'Standard Reference',
    null,
    '8dcf8564745c9b68b6bc3805d9924db4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '8dcf8564745c9b68b6bc3805d9924db4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was the first dictionary of the Sanskrit'),
            ('B', 'Was the first treatise of the Indian music in English'),
            ('C', 'Was the first grammar of the Carnatic music'),
            ('D', 'Was the first systematic documentation of the Hindustani music')
           ) as v(label, option_text)
 where q.question_hash = '8dcf8564745c9b68b6bc3805d9924db4'
on conflict (question_id, label) do nothing;

-- art_culture | music | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'music'),
    'The ''Gharana'' system in the Hindustani music refers to:',
    'The gharana system, the schools of the musical lineage, gives a lineage of the teachers and the distinctive style, and it was formalised in the nineteenth century.',
    'medium',
    'Standard Reference',
    null,
    '31b508635a34a9086b3c9a778b440a4e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '31b508635a34a9086b3c9a778b440a4e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The schools of the musical lineage and the style'),
            ('B', 'The musical instruments of the region'),
            ('C', 'The court rituals'),
            ('D', 'The notation systems')
           ) as v(label, option_text)
 where q.question_hash = '31b508635a34a9086b3c9a778b440a4e'
on conflict (question_id, label) do nothing;

-- art_culture | music | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'music'),
    'The ''Patiala gharana'' of the Hindustani music was founded by:',
    'The Patiala gharana was founded by Ali Baksh and Fateh Ali Khan, and it is noted for the compositions in the dhrupad and the dhamar styles.',
    'hard',
    'Standard Reference',
    null,
    '4f48078074c9e70a33e5f4b36507068d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '4f48078074c9e70a33e5f4b36507068d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Baba Allauddin Khan'),
            ('B', 'Ali Baksh and Fateh Ali Khan'),
            ('C', 'Hasan Khan'),
            ('D', 'Tansen')
           ) as v(label, option_text)
 where q.question_hash = '4f48078074c9e70a33e5f4b36507068d'
on conflict (question_id, label) do nothing;

-- art_culture | music | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'music'),
    'The ''Kirana gharana'' was founded by:',
    'Abdul Karim Khan, a court musician of the Nawab of Rampur, founded the Kirana gharana, which is the gharana of both Abdul Karim Khan and his sister Ratan Bai.',
    'hard',
    'Standard Reference',
    null,
    'c9fa44738b644e2fae7417306f068f66'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c9fa44738b644e2fae7417306f068f66'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Baba Allauddin Khan'),
            ('B', 'Ustad Faiyaz Khan'),
            ('C', 'Abdul Karim Khan'),
            ('D', 'Hasan Khan')
           ) as v(label, option_text)
 where q.question_hash = 'c9fa44738b644e2fae7417306f068f66'
on conflict (question_id, label) do nothing;

-- art_culture | music | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'music'),
    'The ''Bansuri'' is the:',
    'The bansuri, the bamboo flute, is the most common wind instrument of the Hindustani music, and the shehnai is the double-reed one.',
    'easy',
    'Standard Reference',
    null,
    '1d35e73615a5cd40e1922e9ca8401f24'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '1d35e73615a5cd40e1922e9ca8401f24'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bowed instrument'),
            ('B', 'Percussion instrument'),
            ('C', 'String instrument'),
            ('D', 'Bamboo flute')
           ) as v(label, option_text)
 where q.question_hash = '1d35e73615a5cd40e1922e9ca8401f24'
on conflict (question_id, label) do nothing;

-- art_culture | music | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'music'),
    'The ''Santoor'' and the ''Sarod'':',
    'The santoor is the hundred-stringed folk instrument of Kashmir and the sarod is the fretless string instrument popularised by Ravi Shankar.',
    'medium',
    'Standard Reference',
    null,
    'd450781a292b22fea6cbaa74f04e0b82'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd450781a292b22fea6cbaa74f04e0b82'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Both are the string instruments of the Carnatic music'),
            ('B', 'The santoor is a string instrument of Kashmir and the sarod of the Ravi Shankar gharana'),
            ('C', 'Both are the drums'),
            ('D', 'Both are the flutes')
           ) as v(label, option_text)
 where q.question_hash = 'd450781a292b22fea6cbaa74f04e0b82'
on conflict (question_id, label) do nothing;

-- art_culture | music | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'music'),
    'The ''Hindustani music'' and the ''Samagana'':',
    'The two classical systems of Indian music are the Hindustani and the Carnatic, the latter known as the Carnati Samagana in the Telugu tradition.',
    'medium',
    'Standard Reference',
    null,
    'e19c6a8a225d2934877a108b5e620281'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e19c6a8a225d2934877a108b5e620281'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Both are the temple music of the south'),
            ('B', 'Both are the film music'),
            ('C', 'The Hindustani tradition and the Carnati Samagana are the two classical systems'),
            ('D', 'Both are the folk music of the Punjab')
           ) as v(label, option_text)
 where q.question_hash = 'e19c6a8a225d2934877a108b5e620281'
on conflict (question_id, label) do nothing;

-- art_culture | music | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'music'),
    'The ''film music'' in India and the ''S.D. Burman'':',
    'S.D. Burman and his son R.D. Burman created some of the most enduring Hindi film songs and the Ghazal and the thumri styles influenced the film music.',
    'medium',
    'Standard Reference',
    null,
    'ba640b3c8ae0009392d7af441111ddd1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ba640b3c8ae0009392d7af441111ddd1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'S.D. Burman and R.D. Burman were the famous music directors of the Hindi cinema'),
            ('B', 'They were the classical musicians of Bengal'),
            ('C', 'They were the founders of the Calcutta radio'),
            ('D', 'They were the composers of the Bengali theatre')
           ) as v(label, option_text)
 where q.question_hash = 'ba640b3c8ae0009392d7af441111ddd1'
on conflict (question_id, label) do nothing;

-- art_culture | dance | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'dance'),
    'The ''Bhangra'' is the dance of:',
    'Bhangra is a Punjabi folk dance in which the dancers perform to the dhol while the dhadi and the dholi sing the boliyan.',
    'easy',
    'Standard Reference',
    null,
    'e89746dd910cdf635b9e32fa6f9ca89f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e89746dd910cdf635b9e32fa6f9ca89f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rajasthan'),
            ('B', 'Gujarat'),
            ('C', 'Uttarakhand'),
            ('D', 'Punjab')
           ) as v(label, option_text)
 where q.question_hash = 'e89746dd910cdf635b9e32fa6f9ca89f'
on conflict (question_id, label) do nothing;

-- art_culture | dance | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'dance'),
    'The ''Garba'' of Gujarat is played during:',
    'The Garba and the Dandiya are the folk dances of Gujarat played during the nine nights of Navratri.',
    'easy',
    'Standard Reference',
    null,
    '05b583e692d548ef22c2e4305a810b2a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '05b583e692d548ef22c2e4305a810b2a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Navratri'),
            ('B', 'Holi'),
            ('C', 'Diwali'),
            ('D', 'Eid')
           ) as v(label, option_text)
 where q.question_hash = '05b583e692d548ef22c2e4305a810b2a'
on conflict (question_id, label) do nothing;

-- art_culture | dance | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'dance'),
    'The ''Kalbelia'' dance of Rajasthan:',
    'The Kalbelia, with the dholak and the sarangi and the pungi, is the dance of the snake charmers of Rajasthan, and it is on the UNESCO list.',
    'medium',
    'Standard Reference',
    null,
    'f57436e040a61ed373c4bc4a07870c67'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'f57436e040a61ed373c4bc4a07870c67'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is a war dance of the Rajputs'),
            ('B', 'Is a devotional dance of the temple'),
            ('C', 'Is a dance of the Brahmin community'),
            ('D', 'Is a snake charmer''s dance of the Thar desert')
           ) as v(label, option_text)
 where q.question_hash = 'f57436e040a61ed373c4bc4a07870c67'
on conflict (question_id, label) do nothing;

-- art_culture | dance | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'dance'),
    'The ''Ghoomar'' and the ''Kalbelia'' are the folk dances of:',
    'The Ghoomar, the Kalbelia and the Churanga are the best known folk dances of Rajasthan.',
    'medium',
    'Standard Reference',
    null,
    '8e5752bbabc44f3371294acea8fb48d6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '8e5752bbabc44f3371294acea8fb48d6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Punjab'),
            ('B', 'Assam'),
            ('C', 'Rajasthan'),
            ('D', 'Gujarat')
           ) as v(label, option_text)
 where q.question_hash = '8e5752bbabc44f3371294acea8fb48d6'
on conflict (question_id, label) do nothing;

-- art_culture | dance | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'dance'),
    'The ''Theyyam'' is a ritual dance of:',
    'The Theyyam of north Kerala and the adjacent Tamil Nadu is a ritual performance in which the performer becomes the deity, and it is on the UNESCO list.',
    'medium',
    'Standard Reference',
    null,
    '4bccee27ce386d676d4d8734c34c96d6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '4bccee27ce386d676d4d8734c34c96d6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kerala'),
            ('B', 'Tamil Nadu and Kerala'),
            ('C', 'Karnataka only'),
            ('D', 'Odisha')
           ) as v(label, option_text)
 where q.question_hash = '4bccee27ce386d676d4d8734c34c96d6'
on conflict (question_id, label) do nothing;

-- art_culture | dance | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'dance'),
    'The ''Gidda'' and the ''Sambalpuri'' dances are of:',
    'The Gidda, the Dalkhai and the Sambalpuri are the folk dances of Odisha, with the Sambalpuri marked by the rhythmic use of the sticks.',
    'medium',
    'Standard Reference',
    null,
    '23a54dfebad4d86bd93896c695108015'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '23a54dfebad4d86bd93896c695108015'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kerala'),
            ('B', 'Odisha'),
            ('C', 'Punjab'),
            ('D', 'Rajasthan')
           ) as v(label, option_text)
 where q.question_hash = '23a54dfebad4d86bd93896c695108015'
on conflict (question_id, label) do nothing;

-- art_culture | dance | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'dance'),
    'The ''Lavani'' and the ''Bihu'' and the ''Ghoomar'' are the dances of:',
    'The Lavani of Maharashtra, the Bihu of Assam and the Ghoomar of Rajasthan are among the most celebrated folk dances of the country.',
    'medium',
    'Standard Reference',
    null,
    '419c8ae034106fd3ca8dedb0c41e201f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '419c8ae034106fd3ca8dedb0c41e201f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rajasthan, Assam and Kerala'),
            ('B', 'Odisha, Bihar and Punjab'),
            ('C', 'Kerala, Goa and Karnataka'),
            ('D', 'Maharashtra, Assam and Rajasthan')
           ) as v(label, option_text)
 where q.question_hash = '419c8ae034106fd3ca8dedb0c41e201f'
on conflict (question_id, label) do nothing;

-- art_culture | dance | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'dance'),
    'The ''Kathakali'' and the ''Mohiniyattam'' and the ''Kuchipudi'' and the ''Bharatanatyam'' and the ''Odissi'' and the ''Kathak'' and the ''Manipuri'' and the ''Sattriya'':',
    'The classical dances recognised by the Sangeet Natak Akademi are Bharatanatyam, Kathak, Kathakali, Kuchipudi, Manipuri, Mohiniyattam, Odissi and Sattriya.',
    'easy',
    'Standard Reference',
    null,
    '6e8421b57e896ef118bb460b2d3d3a21'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '6e8421b57e896ef118bb460b2d3d3a21'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Are the eight styles of the Kathakali'),
            ('B', 'Are the eight folk dances'),
            ('C', 'Are the eight classical dance forms of India'),
            ('D', 'Are the eight classical dances of the ancient India')
           ) as v(label, option_text)
 where q.question_hash = '6e8421b57e896ef118bb460b2d3d3a21'
on conflict (question_id, label) do nothing;

-- art_culture | dance | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'dance'),
    'The ''Sangeet Natak Akademi'' has recognised the classical dance forms of India. The number of the recognised classical dances is:',
    'The Sangeet Natak Akademi recognises eight classical dance forms, eight classical music traditions and several other folk traditions.',
    'medium',
    'Standard Reference',
    null,
    'e5dbfbaaffebd0c531aef08c46797de9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'e5dbfbaaffebd0c531aef08c46797de9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Eight'),
            ('B', 'Nine'),
            ('C', 'Seven'),
            ('D', 'Six')
           ) as v(label, option_text)
 where q.question_hash = 'e5dbfbaaffebd0c531aef08c46797de9'
on conflict (question_id, label) do nothing;

-- art_culture | dance | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'dance'),
    'The ''Sursri'' and the ''Kohinoor'' are the dance styles of:',
    'Kathak has the two principal styles, the Lucknow or Kathak and the Jaipur or the Rajasthan, and the terms sursri and kohinoor are used for the two schools.',
    'hard',
    'Standard Reference',
    null,
    '4879c78ad3b47e0a5042b924934e6f6c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '4879c78ad3b47e0a5042b924934e6f6c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kathak'),
            ('B', 'Bharatanatyam'),
            ('C', 'Kuchipudi'),
            ('D', 'Odissi')
           ) as v(label, option_text)
 where q.question_hash = '4879c78ad3b47e0a5042b924934e6f6c'
on conflict (question_id, label) do nothing;

-- art_culture | dance | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'dance'),
    'The ''Ashtami'' and the ''Guruvayur'' are:',
    'The Ashtami, the classical dance of the Bharatanatyam, and the Guruvayur temple in Thrissur are the landmarks of the cultural Kerala.',
    'hard',
    'Standard Reference',
    null,
    '2bc0213074ade4995a564734d0fd2b59'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '2bc0213074ade4995a564734d0fd2b59'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A painting and a museum'),
            ('B', 'A music school and a university'),
            ('C', 'A dance and a temple in Kerala'),
            ('D', 'A festival and a city in Tamil Nadu')
           ) as v(label, option_text)
 where q.question_hash = '2bc0213074ade4995a564734d0fd2b59'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'The ''Kutiyattam'' and the ''Koodiyattam'':',
    'Kutiyattam, also known as Koodiyattam, is the ancient Sanskrit theatre of Kerala and it was inscribed on the UNESCO list in 2001.',
    'hard',
    'Standard Reference',
    null,
    'a6e7b4e2a909213de4710eb770338a3a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a6e7b4e2a909213de4710eb770338a3a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Are two theatre forms of Karnataka'),
            ('B', 'Are the two names of the same ancient theatre form of Kerala'),
            ('C', 'Are two classical dances'),
            ('D', 'Are two music schools')
           ) as v(label, option_text)
 where q.question_hash = 'a6e7b4e2a909213de4710eb770338a3a'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'The ''Nangiar Koothu'' and the ''Kerala Kalamandalam'':',
    'The Nangiar Koothu, a solo performance of the Sanskrit theatre, was studied and documented by the Kalamandalam of Vallathol Narayana Menon and later by Kapila Vatsyayan.',
    'hard',
    'Standard Reference',
    null,
    '7ba9a3d7a9a515bbd3aa49cf8fcbee98'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '7ba9a3d7a9a515bbd3aa49cf8fcbee98'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Nangiar Koothu is a Telugu dance'),
            ('B', 'The Kalamandalam is a film school'),
            ('C', 'The Nangiar Koothu is a folk music of Punjab'),
            ('D', 'The Nangiar Koothu is a Sanskrit theatre of Kerala studied by the Kalamandalam')
           ) as v(label, option_text)
 where q.question_hash = '7ba9a3d7a9a515bbd3aa49cf8fcbee98'
on conflict (question_id, label) do nothing;

-- art_culture | music | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'music'),
    'The ''Khyal'' and the ''Dhrupad'' and the ''Thumri'':',
    'The khayal, the dhrupad and the thumri are the principal vocal genres of the Hindustani music, and the dhrupad is the oldest of them.',
    'medium',
    'Standard Reference',
    null,
    '2870a2bb3b5b7a1758c278409c7d6c4d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '2870a2bb3b5b7a1758c278409c7d6c4d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Are the three major vocal genres of the Hindustani music'),
            ('B', 'Are the three Carnatic genres'),
            ('C', 'Are the three percussion instruments'),
            ('D', 'Are the three classical dances')
           ) as v(label, option_text)
 where q.question_hash = '2870a2bb3b5b7a1758c278409c7d6c4d'
on conflict (question_id, label) do nothing;

-- art_culture | music | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'music'),
    'The ''Varnam'' of the Carnatic music:',
    'The Varnam precedes the main composition in a Carnatic concert and is an improvised elaboration of the raga, and the most famous is the kritis of Tyagaraja.',
    'hard',
    'Standard Reference',
    null,
    '8ccc5cc4d408494443c90acf95c205a8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '8ccc5cc4d408494443c90acf95c205a8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is a dance solo'),
            ('B', 'Is the improvised introductory composition in a raga'),
            ('C', 'Is a percussion pattern'),
            ('D', 'Is a fixed composed song')
           ) as v(label, option_text)
 where q.question_hash = '8ccc5cc4d408494443c90acf95c205a8'
on conflict (question_id, label) do nothing;

-- art_culture | music | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'music'),
    'The ''Thumri'' is:',
    'The thumri is a semi-classical genre of the Hindustani music, sung in the khamaj thaat, and it is the staple of the Uttar Pradesh and the Banaras gharana.',
    'medium',
    'Standard Reference',
    null,
    'a9999244d19311b0e587c608e4733430'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a9999244d19311b0e587c608e4733430'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A devotional genre of the Carnatic music'),
            ('B', 'A form of the tabla solo'),
            ('C', 'A type of the sitar music'),
            ('D', 'A semi-classical vocal genre of the Hindustani music with the romantic lyrics')
           ) as v(label, option_text)
 where q.question_hash = 'a9999244d19311b0e587c608e4733430'
on conflict (question_id, label) do nothing;

-- art_culture | music | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'music'),
    'The ''Kafi'' and the ''Khamaj'' are:',
    'The Hindustani system has ten thaats, of which the Khamaj, the Kafi and the Khammaj are the most important, and the Carnatic system has the melakarta scheme.',
    'hard',
    'Standard Reference',
    null,
    '0de1cd2872d2c765281d890dfa69ee31'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '0de1cd2872d2c765281d890dfa69ee31'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The percussion instruments'),
            ('B', 'The dance forms'),
            ('C', 'The thaats of the Hindustani music'),
            ('D', 'The ragas of the Carnatic music')
           ) as v(label, option_text)
 where q.question_hash = '0de1cd2872d2c765281d890dfa69ee31'
on conflict (question_id, label) do nothing;

-- art_culture | music | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'music'),
    'The ''Sarod'' was popularised by:',
    'Ravi Shankar popularised the sarod, the sitar and the flute in the West and he was the director of the All India Radio Music College at Allahabad.',
    'medium',
    'Standard Reference',
    null,
    'dda8a2bb9658a0e7b121ca52c6859172'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'dda8a2bb9658a0e7b121ca52c6859172'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ravi Shankar'),
            ('B', 'Vilayat Khan'),
            ('C', 'Hazrat Ali Khan'),
            ('D', 'Ali Akbar Khan')
           ) as v(label, option_text)
 where q.question_hash = 'dda8a2bb9658a0e7b121ca52c6859172'
on conflict (question_id, label) do nothing;

-- art_culture | music | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'music'),
    'The ''Allauddin Khan'' was the guru of:',
    'Hafiz Ali Khan, the father of Ali Akbar Khan and Vilayat Khan, was the guru of Ravi Shankar and of the great shehnai player Bismillah Khan.',
    'hard',
    'Standard Reference',
    null,
    'b9087526a542ca53e156f67304cb7fc5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b9087526a542ca53e156f67304cb7fc5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bismillah Khan and Vilayat Khan'),
            ('B', 'Ravi Shankar and Ali Akbar Khan'),
            ('C', 'Vilayat Khan and Bismillah Khan'),
            ('D', 'Zubin Mehta and Ravi Shankar')
           ) as v(label, option_text)
 where q.question_hash = 'b9087526a542ca53e156f67304cb7fc5'
on conflict (question_id, label) do nothing;

-- art_culture | music | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'music'),
    'The ''Sangeet Natak Akademi Awards'' are given for:',
    'The Akademi Awards are the highest national recognition for the practitioners of the performing arts, and they are given in more than a hundred categories.',
    'easy',
    'Standard Reference',
    null,
    '96a1e71acb924783c73d45f04c82e153'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '96a1e71acb924783c73d45f04c82e153'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The visual arts only'),
            ('B', 'The literature only'),
            ('C', 'The cinema only'),
            ('D', 'The performing arts')
           ) as v(label, option_text)
 where q.question_hash = '96a1e71acb924783c73d45f04c82e153'
on conflict (question_id, label) do nothing;

-- art_culture | music | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'music'),
    'The ''Kalamandalam'' of Kerala is an institution for:',
    'The Kalamandalam, founded in 1930 by Vallathol Narayana Menon, is the premier institution for the classical dance, the music, the drama and the related arts of Kerala.',
    'medium',
    'Standard Reference',
    null,
    '5bfa01209dfbdb2fdda8367ac52a6050'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '5bfa01209dfbdb2fdda8367ac52a6050'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The cinema'),
            ('B', 'The folk painting'),
            ('C', 'The classical dance and the music and the drama'),
            ('D', 'The visual arts')
           ) as v(label, option_text)
 where q.question_hash = '5bfa01209dfbdb2fdda8367ac52a6050'
on conflict (question_id, label) do nothing;

-- art_culture | music | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'music'),
    'The ''Kalakshetra'' at Chennai was founded by:',
    'The Kalakshetra was founded in 1936 by Rukmini Devi Arundale, and it was instrumental in the revival of the Bharatanatyam.',
    'medium',
    'Standard Reference',
    null,
    '453567223e08746dab4f925a3b5c4031'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '453567223e08746dab4f925a3b5c4031'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Mylapore Gowri Amma'),
            ('B', 'E. Krishna Iyer'),
            ('C', 'K. Balasaraswati'),
            ('D', 'Rukmini Devi Arundale')
           ) as v(label, option_text)
 where q.question_hash = '453567223e08746dab4f925a3b5c4031'
on conflict (question_id, label) do nothing;

-- art_culture | music | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'music'),
    'The ''Madras Music Academy'' and the ''Kalakshetra'' are both located in:',
    'Both the Madras Music Academy and the Kalakshetra are in Chennai, and the two institutions have been central to the Carnatic music and the Bharatanatyam.',
    'medium',
    'Standard Reference',
    null,
    '70d45b3ac4cb166eb01e8fdfcc52decd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '70d45b3ac4cb166eb01e8fdfcc52decd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Chennai'),
            ('B', 'Bangalore'),
            ('C', 'Hyderabad'),
            ('D', 'Kolkata')
           ) as v(label, option_text)
 where q.question_hash = '70d45b3ac4cb166eb01e8fdfcc52decd'
on conflict (question_id, label) do nothing;

-- art_culture | music | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'music'),
    'The ''Ustad Alauddin Khan'' and the ''Ali Akbar College of Music'':',
    'Ustad Alauddin Khan founded the Ali Akbar College of Music in Calcutta in 1943, and it later moved to the Santiniketan in 1966.',
    'hard',
    'Standard Reference',
    null,
    '605be4954929c6f58fc845686660508e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '605be4954929c6f58fc845686660508e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It was founded by Ravi Shankar'),
            ('B', 'It was founded by Bismillah Khan'),
            ('C', 'Ustad Alauddin Khan founded the college in 1943'),
            ('D', 'The college was founded by Rabindranath Tagore')
           ) as v(label, option_text)
 where q.question_hash = '605be4954929c6f58fc845686660508e'
on conflict (question_id, label) do nothing;

-- art_culture | music | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'music'),
    'The ''Rabindrasangeet'' and the ''Visva-Bharati'':',
    'Rabindranath Tagore composed the Rabindrasangeet, a collection of 2,000 songs, and he founded the Visva-Bharati at Santiniketan in 1901.',
    'easy',
    'Standard Reference',
    null,
    '964c693816d597731367c057813c0a6c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '964c693816d597731367c057813c0a6c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Tagore was the founder of the Sangeet Natak Akademi'),
            ('B', 'Tagore composed the Rabindrasangeet and founded the Visva-Bharati at Santiniketan'),
            ('C', 'Tagore founded the Kalakshetra'),
            ('D', 'Tagore composed the thumri')
           ) as v(label, option_text)
 where q.question_hash = '964c693816d597731367c057813c0a6c'
on conflict (question_id, label) do nothing;

-- art_culture | music | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'music'),
    'The ''Kirtan'' and the ''Kafi'' and the ''Thumri'' are the genres sung in the:',
    'The kirtan, the kafi, the thumri and the khayal belong to the North Indian or the Hindustani tradition, while the varnam, the kritis and the padam belong to the South.',
    'medium',
    'Standard Reference',
    null,
    '6ba4d1469a04f1dde20fef72b75298f1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '6ba4d1469a04f1dde20fef72b75298f1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'North Indian tradition'),
            ('B', 'South Indian tradition'),
            ('C', 'The tribal traditions of the east'),
            ('D', 'The folk music of Rajasthan')
           ) as v(label, option_text)
 where q.question_hash = '6ba4d1469a04f1dde20fef72b75298f1'
on conflict (question_id, label) do nothing;

-- art_culture | music | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'music'),
    'The ''Hindustani music'' and the ''situation'' of the ''Saraswati'' and the ''Veena'':',
    'The sitar and the veena are the principal plucked string instruments of the Hindustani and the Carnatic music respectively.',
    'medium',
    'Standard Reference',
    null,
    '3fd5ff691367371e92e34a7639f6bf68'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '3fd5ff691367371e92e34a7639f6bf68'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Both are the flutes'),
            ('B', 'Both are the bowed instruments'),
            ('C', 'The sitar and the veena are the plucked string instruments of the Hindustani and the Carnatic traditions'),
            ('D', 'Both are the drums')
           ) as v(label, option_text)
 where q.question_hash = '3fd5ff691367371e92e34a7639f6bf68'
on conflict (question_id, label) do nothing;

-- art_culture | music | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'music'),
    'The ''Indian music'' and the ''Gharana of the khayal'' and the ''Sangam'':',
    'The gharana system of the music lineage is a feature of the Hindustani music, and the Sangam is the corpus of the ancient Tamil poetry.',
    'hard',
    'Standard Reference',
    null,
    '3570b14d8c62344599139c8038ed706a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '3570b14d8c62344599139c8038ed706a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The gharana system is a feature of the Arabic music'),
            ('B', 'The gharana system is a feature of the Hindustani music and the Sangam the Tamil literature'),
            ('C', 'The gharana system is a feature of the Carnatic music'),
            ('D', 'The Sangam is a music school of Kerala')
           ) as v(label, option_text)
 where q.question_hash = '3570b14d8c62344599139c8038ed706a'
on conflict (question_id, label) do nothing;

-- art_culture | music | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'music'),
    'The ''Raga'' in the Indian music is:',
    'A raga is a melodic framework with a characteristic scale, the ascending and the descending pattern, the mood and the time of the day, and it is the central concept of the Indian music.',
    'easy',
    'Standard Reference',
    null,
    '7ee89ad60f81521f53479b438cf5a882'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '7ee89ad60f81521f53479b438cf5a882'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A rhythmic cycle'),
            ('B', 'A vocal ornament'),
            ('C', 'A percussion pattern'),
            ('D', 'A melodic framework with a characteristic scale and the mood')
           ) as v(label, option_text)
 where q.question_hash = '7ee89ad60f81521f53479b438cf5a882'
on conflict (question_id, label) do nothing;

-- art_culture | music | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'music'),
    'The ''tala'' in the Indian music is:',
    'A tala is the rhythmic cycle of the music with a fixed number of beats arranged in a particular pattern, and the Hindustani has the six and the eight tala families.',
    'easy',
    'Standard Reference',
    null,
    'f3ab8aca394d6af541b1550b2a0f1979'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'f3ab8aca394d6af541b1550b2a0f1979'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A ornamentation style'),
            ('B', 'A vocal form'),
            ('C', 'A rhythmic cycle with a fixed number of beats'),
            ('D', 'A melodic scale')
           ) as v(label, option_text)
 where q.question_hash = 'f3ab8aca394d6af541b1550b2a0f1979'
on conflict (question_id, label) do nothing;

-- art_culture | music | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'music'),
    'The ''Rajasthani'' and the ''Marwari'' schools of the folk music:',
    'The Rajasthani folk music has the two main schools, the Rajasthani and the Marwari, and the genres include the Dhrupad, the Dhrupad, the Caur and the Sohar.',
    'hard',
    'Standard Reference',
    null,
    '2fbe72e46e5da5e168e577c1ec0cf95c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '2fbe72e46e5da5e168e577c1ec0cf95c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Are the two classical dance forms'),
            ('B', 'Are the two folk theatre forms of Gujarat'),
            ('C', 'Are the two styles of the painting'),
            ('D', 'Are the two main schools of the Rajasthani folk music')
           ) as v(label, option_text)
 where q.question_hash = '2fbe72e46e5da5e168e577c1ec0cf95c'
on conflict (question_id, label) do nothing;

-- art_culture | music | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'music'),
    'The ''Lavani'' of Maharashtra is sung in the:',
    'The Lavani is sung in a Marathi dialect with the lavani boli, and it is a long narrative ballad of the wandering poet and the shepherd communities.',
    'medium',
    'Standard Reference',
    null,
    'eccfb948ef5cde033147253a086d0065'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'eccfb948ef5cde033147253a086d0065'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Persian only'),
            ('B', 'Dravidian language dialect with the poetic and the folk traditions'),
            ('C', 'Sanskrit'),
            ('D', 'Arabic')
           ) as v(label, option_text)
 where q.question_hash = 'eccfb948ef5cde033147253a086d0065'
on conflict (question_id, label) do nothing;

-- art_culture | music | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'music'),
    'The ''Baul'' of Bengal:',
    'The Bauls are the mystic minstrel singers of Bengal and Bangladesh, whose songs reflect a syncretic philosophy of the body, the soul and the simple life.',
    'medium',
    'Standard Reference',
    null,
    '0becb3781adc5d78fd5062c3d0a18053'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '0becb3781adc5d78fd5062c3d0a18053'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Are the mystic minstrels of Bengal and Bangladesh'),
            ('B', 'Are the classical musicians of Kerala'),
            ('C', 'Are the theatre troupes of Odisha'),
            ('D', 'Are the temple musicians of Tamil Nadu')
           ) as v(label, option_text)
 where q.question_hash = '0becb3781adc5d78fd5062c3d0a18053'
on conflict (question_id, label) do nothing;

-- art_culture | ancient-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'ancient-art'),
    'The ''Cave Temples of Ajanta'' were discovered by:',
    'The Ajanta caves were first documented in 1819 by a British army officer, and the ASI under John Marshall carried out the scientific excavation later.',
    'medium',
    'Standard Reference',
    null,
    '97714fe6a8d7cd9423dcce1a4deabfb1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '97714fe6a8d7cd9423dcce1a4deabfb1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'V. S. Sambamurthy'),
            ('B', 'John Marshall'),
            ('C', 'Alexander Cunningham'),
            ('D', 'James Burgess')
           ) as v(label, option_text)
 where q.question_hash = '97714fe6a8d7cd9423dcce1a4deabfb1'
on conflict (question_id, label) do nothing;

-- art_culture | ancient-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'ancient-art'),
    'The ''Gandhara'' and the ''Mathura'' schools of sculpture:',
    'The Gandhara school of sculpture shows the Greco-Roman influence and the Mathura school the indigenous and the abstract treatment, and both flourished in the first few centuries of the common era.',
    'medium',
    'Standard Reference',
    null,
    '12b319669f01b685f51563338eccfa3a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '12b319669f01b685f51563338eccfa3a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Gandhara shows the indigenous and Mathura the Hellenistic'),
            ('B', 'Both were the Greek colonies'),
            ('C', 'Both were the schools of the south'),
            ('D', 'Gandhara shows the Hellenistic influence and Mathura the indigenous')
           ) as v(label, option_text)
 where q.question_hash = '12b319669f01b685f51563338eccfa3a'
on conflict (question_id, label) do nothing;

-- art_culture | ancient-art | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'ancient-art'),
    'The ''Headless'' and the ''Aihole'' are:',
    'The famous headless Buddha of the Gandhara is in the Lahore Museum, and the Aihole temple of the Chalukyas in Karnataka is a key monument of the early Deccan architecture.',
    'hard',
    'Standard Reference',
    null,
    '09602395faca715db29d4d6187762b3e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '09602395faca715db29d4d6187762b3e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The headless Gautama of the Gandhara and the Chalukya temple in Karnataka'),
            ('B', 'Two forms of the dance'),
            ('C', 'Two painters'),
            ('D', 'Two rivers')
           ) as v(label, option_text)
 where q.question_hash = '09602395faca715db29d4d6187762b3e'
on conflict (question_id, label) do nothing;

-- art_culture | ancient-art | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'ancient-art'),
    'The ''Didarganj'' and the ''Harappan'':',
    'The famous polished terracotta yakshi from Didarganj near Patna, with the Art Deco treatment, belongs to the Maurya period.',
    'hard',
    'Standard Reference',
    null,
    'd085641ca349614c8050b8dd691ee070'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd085641ca349614c8050b8dd691ee070'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A stupa of the Satavahana'),
            ('B', 'The terracotta yakshi of the Maurya period'),
            ('C', 'A Buddhist site of the Kushana period'),
            ('D', 'A temple of the Vijayanagara')
           ) as v(label, option_text)
 where q.question_hash = 'd085641ca349614c8050b8dd691ee070'
on conflict (question_id, label) do nothing;

-- art_culture | ancient-art | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'ancient-art'),
    'The ''Bharhut'' and the ''Sanchi'' stupas:',
    'The Bharhut stupa of the Shunga period and the Sanchi stupa of the Satavahana period are the two great early Buddhist stupas.',
    'hard',
    'Standard Reference',
    null,
    'd6fa389296b28b8c7719d5aee4de3d10'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd6fa389296b28b8c7719d5aee4de3d10'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Both are the Buddhist stupas of the Shunga and the Satavahana periods'),
            ('B', 'Both are the Jain temples of Rajasthan'),
            ('C', 'Both are the rock-cut caves'),
            ('D', 'Both are the stupas of the Kushana period')
           ) as v(label, option_text)
 where q.question_hash = 'd6fa389296b28b8c7719d5aee4de3d10'
on conflict (question_id, label) do nothing;

-- art_culture | ancient-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'ancient-art'),
    'The ''Terracotta'' and the ''Mauryan'':',
    'The terracotta figurines of the Mauryan period, the yakshis and the toy figures, are the finest terracotta in the world, and they are a hallmark of the Mauryan art.',
    'medium',
    'Standard Reference',
    null,
    'd59db99c0b8febf888200ee0cb5641a6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'd59db99c0b8febf888200ee0cb5641a6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Mauryan terracotta is the finest in the world'),
            ('B', 'The Mauryan terracotta is the finest in India'),
            ('C', 'The Mauryan terracotta is found in the north only'),
            ('D', 'The Mauryan terracotta is the finest in the world and it is found in the Maurya period')
           ) as v(label, option_text)
 where q.question_hash = 'd59db99c0b8febf888200ee0cb5641a6'
on conflict (question_id, label) do nothing;

-- art_culture | ancient-art | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'ancient-art'),
    'The ''Amaravati'' and the ''Nagarjunakonda'' stupas:',
    'The Amaravati and the Nagarjunakonda stupas were built under the Satavahanas in the Krishna valley, and the Nagarjunakonda site was submerged by the Nagarjunsagar dam and the remains were moved to the museum.',
    'hard',
    'Standard Reference',
    null,
    '66fb5656ad89ef85748fbaece00203a3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '66fb5656ad89ef85748fbaece00203a3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Are the stupas of the Kushanas'),
            ('B', 'Are the Buddhist stupas built under the Satavahanas and the Vakatakas'),
            ('C', 'Are the Jain caves of Karnataka'),
            ('D', 'Are the rock-cut temples of the Cholas')
           ) as v(label, option_text)
 where q.question_hash = '66fb5656ad89ef85748fbaece00203a3'
on conflict (question_id, label) do nothing;

-- art_culture | ancient-art | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'ancient-art'),
    'The ''Sanchi'' and the ''Bharhut'' and the ''Mathura'':',
    'The Sanchi and the Bharhut stupas and the Mathura sculptures of the Kushana and the Gupta period show the trajectory of the Buddhist art from the Shunga period onwards.',
    'hard',
    'Standard Reference',
    null,
    '77fd3f361b1cbf74f69bb752c65a3d3b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '77fd3f361b1cbf74f69bb752c65a3d3b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The art of the Vakataka period'),
            ('B', 'The art of the Sultanate'),
            ('C', 'The art of the Shunga period'),
            ('D', 'The art of the Gupta period')
           ) as v(label, option_text)
 where q.question_hash = '77fd3f361b1cbf74f69bb752c65a3d3b'
on conflict (question_id, label) do nothing;

-- art_culture | ancient-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'ancient-art'),
    'The ''Sigiriya'' frescoes of Sri Lanka:',
    'The Sigiriya frescoes of the fifth century CE were painted during the reign of King Kashyapa I, and they depict the court life and the religious scenes.',
    'medium',
    'Standard Reference',
    null,
    '000c5ea070219d74cddc5d1228dd8228'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '000c5ea070219d74cddc5d1228dd8228'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Belong to the Chola period'),
            ('B', 'Belong to the Vijayanagara period'),
            ('C', 'Belong to the Portuguese period'),
            ('D', 'Belong to the reign of Kashyapa I of the Sigiriya dynasty')
           ) as v(label, option_text)
 where q.question_hash = '000c5ea070219d74cddc5d1228dd8228'
on conflict (question_id, label) do nothing;

-- art_culture | ancient-art | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'ancient-art'),
    'The ''Ananda Temple'' at Bagan:',
    'The Ananda Temple at Bagan in Myanmar, built in the eleventh century, is one of the masterpieces of the Burmese temple architecture and the Buddhist art.',
    'hard',
    'Standard Reference',
    null,
    'f69b67144620f3fcad84a0e619d27d05'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f69b67144620f3fcad84a0e619d27d05'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is a Sri Lankan temple'),
            ('B', 'Is a masterpiece of the Burmese temple architecture'),
            ('C', 'Is a Khmer temple'),
            ('D', 'Is a Thai temple')
           ) as v(label, option_text)
 where q.question_hash = 'f69b67144620f3fcad84a0e619d27d05'
on conflict (question_id, label) do nothing;

-- art_culture | ancient-art | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'ancient-art'),
    'The ''Polonnaruwa'' and the ''Gal Vihara'':',
    'The Gal Vihara rock monastery and the ruins of Polonnaruwa are the finest examples of the Sinhalese Buddhist art of Sri Lanka.',
    'hard',
    'Standard Reference',
    null,
    '794af15c409e233746201a622d30dc9e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '794af15c409e233746201a622d30dc9e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Are in Thailand'),
            ('B', 'Are in Cambodia'),
            ('C', 'Are the Sri Lankan sites of the Sinhalese art'),
            ('D', 'Are in Myanmar')
           ) as v(label, option_text)
 where q.question_hash = '794af15c409e233746201a622d30dc9e'
on conflict (question_id, label) do nothing;

-- art_culture | ancient-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'ancient-art'),
    'The ''Sanchi'' and the ''Bhitarkanika'':',
    'Sanchi is the great Buddhist stupa site in Madhya Pradesh and the Bhitarkanika is the famous mangrove forest of Odisha.',
    'medium',
    'Standard Reference',
    null,
    '4c80e8cefe994775601fa3443b2c501a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '4c80e8cefe994775601fa3443b2c501a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sanchi is a Buddhist site and the Bhitarkanika a mangrove forest'),
            ('B', 'Both are the Buddhist sites'),
            ('C', 'Both are the mangrove forests'),
            ('D', 'Both are the wildlife sanctuaries')
           ) as v(label, option_text)
 where q.question_hash = '4c80e8cefe994775601fa3443b2c501a'
on conflict (question_id, label) do nothing;

-- art_culture | medieval-art | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'medieval-art'),
    'The ''Kakatiya'' and the ''Warangal'':',
    'The Kakatiya dynasty of the Kakatiya and the temple of the Thousand Pillars at Warangal is the finest example of the Kakatiya architecture.',
    'hard',
    'Standard Reference',
    null,
    'c5da348951cd4ef51ece80853b09f1e5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'c5da348951cd4ef51ece80853b09f1e5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Pandyas of Madurai'),
            ('B', 'The Kakatiya dynasty of the Kakatiya and the temple of the Thousand Pillars'),
            ('C', 'The Chalukyas of Badami'),
            ('D', 'The Pallavas of Kanchipuram')
           ) as v(label, option_text)
 where q.question_hash = 'c5da348951cd4ef51ece80853b09f1e5'
on conflict (question_id, label) do nothing;

-- art_culture | medieval-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'medieval-art'),
    'The ''Hoysala'' and the ''Chennakeshava'':',
    'The Chennakeshava temple at Belur, built by the Hoysala king Vishnuvardhana, is the finest of the Hoysala monuments.',
    'medium',
    'Standard Reference',
    null,
    'e9894cacaa0e68baea65c376d474babb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e9894cacaa0e68baea65c376d474babb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Hoysala temple is at Madurai'),
            ('B', 'The Hoysala temple is dedicated to Shiva at Khajuraho'),
            ('C', 'The Hoysala temple is the Buddhist cave of Ajanta'),
            ('D', 'The Hoysala temple at Belur is dedicated to Chennakeshava')
           ) as v(label, option_text)
 where q.question_hash = 'e9894cacaa0e68baea65c376d474babb'
on conflict (question_id, label) do nothing;

-- art_culture | medieval-art | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'medieval-art'),
    'The ''Khajuraho'' and the ''Chandela'':',
    'The Chandela rulers of Bundelkhand built the temples at Khajuraho, and the erotic sculptures there are a celebration of the life and the love.',
    'easy',
    'Standard Reference',
    null,
    'e3eac597fdf1eaf40d611e59d53e8d76'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e3eac597fdf1eaf40d611e59d53e8d76'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Khajuraho temples were built by the Pandyas'),
            ('B', 'The Khajuraho temples were built by the Hoysalas'),
            ('C', 'The temples at Khajuraho were built by the Chandela rulers'),
            ('D', 'The Khajuraho temples were built by the Cholas')
           ) as v(label, option_text)
 where q.question_hash = 'e3eac597fdf1eaf40d611e59d53e8d76'
on conflict (question_id, label) do nothing;

-- art_culture | medieval-art | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'medieval-art'),
    'The ''Hoysala'' and the ''Bhadra'' and the ''Amaralinga'':',
    'The Chennakeshava temple at Belur has a circumambulatory corridor with the Bhadra and the Amaralinga, and the other Hoysala monuments are at Halebidu and Somnathpur.',
    'hard',
    'Standard Reference',
    null,
    'cd5f0d0f38dc6fd5f20ff6cc038d4d3e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'cd5f0d0f38dc6fd5f20ff6cc038d4d3e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Chennakeshava temple at Belur has the Bhadra and the Amaralinga'),
            ('B', 'The Hoysala temples are the Buddhist caves'),
            ('C', 'The Hoysala temples are the Vijayanagara monuments'),
            ('D', 'The Hoysala temples are the Jain temples of Rajasthan')
           ) as v(label, option_text)
 where q.question_hash = 'cd5f0d0f38dc6fd5f20ff6cc038d4d3e'
on conflict (question_id, label) do nothing;

-- art_culture | medieval-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'medieval-art'),
    'The ''Mughal painting'' and the ''Akbar'' and the ''Hamzanama'':',
    'The Akbar commissioned the Hamzanama with the illustrations of the adventures of the hero Amir Hamza, and it is the largest of the Mughal manuscripts, while the Jahangir preferred the portrait and the allegorical subjects.',
    'medium',
    'Standard Reference',
    null,
    'aa910ecacae37a536de3787bbdaa55c8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'aa910ecacae37a536de3787bbdaa55c8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Akbar painted the Hamzanama himself'),
            ('B', 'The Hamzanama is a Jain manuscript'),
            ('C', 'The Hamzanama is a Pahari work'),
            ('D', 'The Akbar commissioned the Hamzanama, the largest of the Mughal manuscripts')
           ) as v(label, option_text)
 where q.question_hash = 'aa910ecacae37a536de3787bbdaa55c8'
on conflict (question_id, label) do nothing;

-- art_culture | medieval-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'medieval-art'),
    'The ''Akbar Nama'' and the ''Abu''l Fazl'':',
    'Abu''l Fazl wrote the Akbar Nama, the chronicle of the reign, and the Ain-i-Akbari, the third book of which describes the mansabdari system.',
    'medium',
    'Standard Reference',
    null,
    'f3c9ba86a255bd60fbd680fa13ec6c9b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f3c9ba86a255bd60fbd680fa13ec6c9b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Abu''l Fazl wrote the Rajatarangini'),
            ('B', 'Abu''l Fazl wrote the Akbar Nama and the Ain-i-Akbari'),
            ('C', 'Abu''l Fazl wrote the Padshahnama'),
            ('D', 'Abu''l Fazl wrote the Shah Nama')
           ) as v(label, option_text)
 where q.question_hash = 'f3c9ba86a255bd60fbd680fa13ec6c9b'
on conflict (question_id, label) do nothing;

-- art_culture | medieval-art | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'medieval-art'),
    'The ''Padshahnama'' of Abdul Hamid Lahori and the ''Alamgirnama'' of Muhammad Kazim:',
    'The Padshahnama of Abdul Hamid Lahori and the Alamgirnama of Muhammad Kazim are the two principal court chronicles of the reign of Aurangzeb.',
    'hard',
    'Standard Reference',
    null,
    '1d9cb89f151b52e8126763d6a376e7f5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '1d9cb89f151b52e8126763d6a376e7f5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Both are the histories of the Mughals of the Deccan'),
            ('B', 'Both are the Persian translations of the Bible'),
            ('C', 'Both are the court chronicles of Aurangzeb''s reign'),
            ('D', 'Both are the biographies of Akbar')
           ) as v(label, option_text)
 where q.question_hash = '1d9cb89f151b52e8126763d6a376e7f5'
on conflict (question_id, label) do nothing;

-- art_culture | medieval-art | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'medieval-art'),
    'The ''Shah Jahan'' and the ''Taj Mahal'':',
    'The Taj Mahal at Agra was commissioned by Shah Jahan in 1632 as a mausoleum for his beloved wife Mumtaz Mahal, and it is a UNESCO World Heritage site.',
    'easy',
    'Standard Reference',
    null,
    '6fbfca4e7af54bc14752971c9bd7b546'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '6fbfca4e7af54bc14752971c9bd7b546'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Taj Mahal is a mausoleum built by Shah Jahan for Mumtaz Mahal'),
            ('B', 'The Taj Mahal was built by Akbar for his mother'),
            ('C', 'The Taj Mahal was built by Jahangir'),
            ('D', 'The Taj Mahal is a temple')
           ) as v(label, option_text)
 where q.question_hash = '6fbfca4e7af54bc14752971c9bd7b546'
on conflict (question_id, label) do nothing;

-- art_culture | medieval-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'medieval-art'),
    'The ''Mughal'' and the ''Peacock Throne'':',
    'The Peacock Throne, with the precious stones, was made for the Shah Jahan and it was set up in the Diwan-i-Khas of the Red Fort.',
    'medium',
    'Standard Reference',
    null,
    'f66867e602e58a7e475a3ab1a41ee76a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f66867e602e58a7e475a3ab1a41ee76a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Peacock Throne was made for the Shah Jahan'),
            ('B', 'The Peacock Throne was made for the Akbar'),
            ('C', 'The Peacock Throne was made by the French'),
            ('D', 'The Peacock Throne is a painting')
           ) as v(label, option_text)
 where q.question_hash = 'f66867e602e58a7e475a3ab1a41ee76a'
on conflict (question_id, label) do nothing;

-- art_culture | medieval-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'medieval-art'),
    'The ''Mughal'' and the ''Taj Mahal'' and the ''charbagh'':',
    'The garden of the Taj Mahal is laid out in the charbagh, the four-part Persian style, divided by the waterways on the lines of the Quranic paradise.',
    'medium',
    'Standard Reference',
    null,
    'd7318eb978ba5ffa231ce488ed053fc3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd7318eb978ba5ffa231ce488ed053fc3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The garden of the Taj Mahal is a Japanese style'),
            ('B', 'The garden of the Taj Mahal is laid out on the lines of the English landscape'),
            ('C', 'The garden of the Taj Mahal is laid out in the charbagh style of the Persian gardens'),
            ('D', 'The garden of the Taj Mahal is in the English style')
           ) as v(label, option_text)
 where q.question_hash = 'd7318eb978ba5ffa231ce488ed053fc3'
on conflict (question_id, label) do nothing;

-- art_culture | medieval-art | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'medieval-art'),
    'The ''Jahangir'' and the ''painting'' and the ''golden apple'':',
    'The Jahangir preferred the single figure portraits, the allegorical and the calligraphic compositions and the golden apple tree, in contrast to the Akbar''s narrative approach.',
    'hard',
    'Standard Reference',
    null,
    '5881dc639a610247dc397a003e491517'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '5881dc639a610247dc397a003e491517'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Jahangir was a patron of the Western art'),
            ('B', 'The Jahangir preferred the allegorical portraits and the golden apple image'),
            ('C', 'The Jahangir painted the miniatures himself'),
            ('D', 'The Jahangir only painted the portraits of the women')
           ) as v(label, option_text)
 where q.question_hash = '5881dc639a610247dc397a003e491517'
on conflict (question_id, label) do nothing;

-- art_culture | medieval-art | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'medieval-art'),
    'The ''Bichitr'' and the ''Padshahnama'':',
    'The Padshahnama of the Shah Jahan was illustrated with 116 miniatures by the Bichitr and the other painters of the atelier.',
    'hard',
    'Standard Reference',
    null,
    '1ea6570190fe348c26a3ac1c7fbd5649'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '1ea6570190fe348c26a3ac1c7fbd5649'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Bichitr painted the murals of the Ajanta'),
            ('B', 'The Bichitr was a Mughal architect'),
            ('C', 'The Bichitr painted the European portraits'),
            ('D', 'The Padshahnama of the Shah Jahan was illustrated by the Bichitr')
           ) as v(label, option_text)
 where q.question_hash = '1ea6570190fe348c26a3ac1c7fbd5649'
on conflict (question_id, label) do nothing;

-- art_culture | medieval-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'medieval-art'),
    'The ''Sultanate'' architecture of the ''Tughlaq'' and the ''Lodi'':',
    'The Delhi Sultanate architecture is divided into the four successive styles of the Mamluk or the Slave, the Khalji, the Tughlaq and the Lodi dynasties.',
    'medium',
    'Standard Reference',
    null,
    '03e5c5f156721ff499d29e7fbb41e3b3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '03e5c5f156721ff499d29e7fbb41e3b3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Tughlaq and the Lodi styles are the Mughal architecture'),
            ('B', 'The Tughlaq and the Lodi styles are the Rajput architecture'),
            ('C', 'The Tughlaq and the Lodi styles are the Vijayanagara architecture'),
            ('D', 'The Tughlaq and the Lodi styles are the two phases of the Delhi Sultanate architecture')
           ) as v(label, option_text)
 where q.question_hash = '03e5c5f156721ff499d29e7fbb41e3b3'
on conflict (question_id, label) do nothing;

-- art_culture | medieval-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'medieval-art'),
    'The ''Fatehpur Sikri'' and the ''Buland Darwaza'':',
    'The Buland Darwaza, completed in 1601, is the tallest gateway in the world, and it was built by the Akbar to commemorate the victory over the Deccan.',
    'medium',
    'Standard Reference',
    null,
    '065208419f48794d02a16b00293814b0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '065208419f48794d02a16b00293814b0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Buland Darwaza was built by the Akbar as the tallest gateway in the world at the time'),
            ('B', 'The Buland Darwaza was built by the Shah Jahan'),
            ('C', 'The Buland Darwaza is a tomb'),
            ('D', 'The Buland Darwaza is in Gujarat')
           ) as v(label, option_text)
 where q.question_hash = '065208419f48794d02a16b00293814b0'
on conflict (question_id, label) do nothing;

-- art_culture | medieval-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'medieval-art'),
    'The ''Bibi ka Maqbara'' at Aurangabad:',
    'The Bibi ka Maqbara is the tomb of Dilras Banu Begum, the wife of Aurangzeb, built in 1660 in the Mughal style, and it is called the poor man''s Taj Mahal.',
    'medium',
    'Standard Reference',
    null,
    '6b0a12ce7cbbefc24702f97e4fa997c7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '6b0a12ce7cbbefc24702f97e4fa997c7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the palace of the Nizam'),
            ('B', 'Is the tomb of Aurangzeb''s wife, built in the Mughal style'),
            ('C', 'Is the tomb of the Emperor Aurangzeb'),
            ('D', 'Is a Hindu temple')
           ) as v(label, option_text)
 where q.question_hash = '6b0a12ce7cbbefc24702f97e4fa997c7'
on conflict (question_id, label) do nothing;

-- art_culture | medieval-art | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'medieval-art'),
    'The ''Tomb of Itmad-ud-Daulah'' is at:',
    'The tomb of Itmad-ud-Daulah at Agra, built by Nur Jahan for her father, is the first Mughal monument in the white marble.',
    'easy',
    'Standard Reference',
    null,
    '916c50b87e27bb5309a6d108481225b2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '916c50b87e27bb5309a6d108481225b2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Lahore'),
            ('B', 'Fatehpur Sikri'),
            ('C', 'Agra'),
            ('D', 'Delhi')
           ) as v(label, option_text)
 where q.question_hash = '916c50b87e27bb5309a6d108481225b2'
on conflict (question_id, label) do nothing;

-- art_culture | medieval-art | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'medieval-art'),
    'The ''Deccan'' and the ''Bijapur'' and the ''Gol Gumbaz'':',
    'The Gol Gumbaz, the Golconda mosque and the Ibrahim Rauza are the monuments of the Adil Shahi dynasty of Bijapur, and the Qutb Shahi of Golconda is the other Deccan sultanate.',
    'hard',
    'Standard Reference',
    null,
    'ed9cb5a1531b81af1439c7c645ce2862'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'ed9cb5a1531b81af1439c7c645ce2862'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Are the monuments of the Nizam of Hyderabad'),
            ('B', 'Are the monuments of the Bahmani of Bidar'),
            ('C', 'Are the monuments of the Adil Shahi dynasty of Bijapur'),
            ('D', 'Are the monuments of the Qutb Shahi dynasty of Golconda')
           ) as v(label, option_text)
 where q.question_hash = 'ed9cb5a1531b81af1439c7c645ce2862'
on conflict (question_id, label) do nothing;

-- art_culture | medieval-art | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'medieval-art'),
    'The ''Qutb Shahi'' and the ''Golconda'':',
    'The Qutb Shahi dynasty ruled at Golconda near Hyderabad from 1518 and profited from the Golconda diamond mines, which produced the Koh-i-Noor.',
    'hard',
    'Standard Reference',
    null,
    '3681c1f76009539a7c3a15db63e91f16'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '3681c1f76009539a7c3a15db63e91f16'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Qutb Shahi capital was at Bijapur'),
            ('B', 'The Qutb Shahi were a Mughal clan'),
            ('C', 'The Qutb Shahi ruled at Ahmedabad'),
            ('D', 'The Qutb Shahi dynasty had its capital at Golconda with the Golconda mines')
           ) as v(label, option_text)
 where q.question_hash = '3681c1f76009539a7c3a15db63e91f16'
on conflict (question_id, label) do nothing;

-- art_culture | medieval-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'medieval-art'),
    'The ''Nizam''s'' and the ''Chowmahalla'' and the ''Charminar'':',
    'The Charminar, built by the Qutb Shahi, is the emblem of Hyderabad, and the Chowmahalla was the seat of the Nizams.',
    'medium',
    'Standard Reference',
    null,
    '8dcc2983fc7d94884e14b73d73377f9b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '8dcc2983fc7d94884e14b73d73377f9b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Charminar is the emblem of Hyderabad and the Chowmahalla the palace of the Nizams'),
            ('B', 'The Charminar is the palace of the Nizams'),
            ('C', 'The Chowmahalla is a temple'),
            ('D', 'Both are in Ahmednagar')
           ) as v(label, option_text)
 where q.question_hash = '8dcc2983fc7d94884e14b73d73377f9b'
on conflict (question_id, label) do nothing;

-- art_culture | medieval-art | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'medieval-art'),
    'The ''Safdarjung''s Tomb'' at Delhi was built by:',
    'The Safdarjung''s Tomb was built in 1739 by Safdar Jang, the Nawab of Oudh, for his father, and it was designed by the French architect Jean-Baptiste Tavernier.',
    'hard',
    'Standard Reference',
    null,
    '7e82db6c2a08f7745d46085554b84715'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '7e82db6c2a08f7745d46085554b84715'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Muhammad Shah'),
            ('B', 'Safdar Jang, the Nawab of Oudh'),
            ('C', 'Shah Jahan'),
            ('D', 'Aurangzeb')
           ) as v(label, option_text)
 where q.question_hash = '7e82db6c2a08f7745d46085554b84715'
on conflict (question_id, label) do nothing;

-- art_culture | medieval-art | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'medieval-art'),
    'The ''Ghiyath-ud-din'' and the ''Tughlaq'' and the ''Tughlaqabad'':',
    'Sultan Ghiyath-ud-din Tughlaq founded Tughlaqabad, the third and the only entirely new city built by the Delhi Sultanate, and it is a UNESCO World Heritage site.',
    'hard',
    'Standard Reference',
    null,
    '92e0491e0a36acb5ac8faefe2babb996'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '92e0491e0a36acb5ac8faefe2babb996'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Tughlaqabad was founded by Alauddin Khalji'),
            ('B', 'The Tughlaqabad is a Mughal city'),
            ('C', 'The Tughlaqabad is in Bengal'),
            ('D', 'The Tughlaqabad was founded by Ghiyath-ud-din Tughlaq and is the third and the only entirely new city built by the Delhi Sultanate')
           ) as v(label, option_text)
 where q.question_hash = '92e0491e0a36acb5ac8faefe2babb996'
on conflict (question_id, label) do nothing;

-- art_culture | medieval-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'medieval-art'),
    'The ''Lalbagh'' and the ''Krishnaraja Wodeyar'':',
    'The Lalbagh Garden in Bangalore was laid out by the Wodeyar kings in the 18th century, and the layout is said to follow the plans of the Mughal garden at Delhi.',
    'medium',
    'Standard Reference',
    null,
    '9393b9c6948554aa9ccb7b8afc4b2790'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '9393b9c6948554aa9ccb7b8afc4b2790'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Lalbagh Garden of Bangalore was laid out by the Wodeyars in the 18th century'),
            ('B', 'The Lalbagh is a Mughal garden of Delhi'),
            ('C', 'The Lalbagh is in Kerala'),
            ('D', 'The Lalbagh was built by the British')
           ) as v(label, option_text)
 where q.question_hash = '9393b9c6948554aa9ccb7b8afc4b2790'
on conflict (question_id, label) do nothing;

-- art_culture | medieval-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'medieval-art'),
    'The ''Nizam'' and the ''Purani Haveli'':',
    'The Purani Haveli was the seat of the Nizams of Hyderabad and it houses the collections of the Salar Jung Museum and the royal library.',
    'medium',
    'Standard Reference',
    null,
    '88ff104384810595e75be26eac65d80f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '88ff104384810595e75be26eac65d80f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Purani Haveli is a temple in Tamil Nadu'),
            ('B', 'The Purani Haveli is a literary work'),
            ('C', 'The Purani Haveli in Hyderabad was the seat of the Nizams'),
            ('D', 'The Purani Haveli is in Mysore')
           ) as v(label, option_text)
 where q.question_hash = '88ff104384810595e75be26eac65d80f'
on conflict (question_id, label) do nothing;

-- art_culture | medieval-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'medieval-art'),
    'The ''Krishnadevaraya'' and the ''Virupaksha'' and the ''Hampi'':',
    'The Virupaksha temple at Hampi was built by Krishnadevaraya, and it is the oldest of the monuments of the Vijayanagara capital.',
    'medium',
    'Standard Reference',
    null,
    'da1952b166efcd919b97749f0f518d44'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'da1952b166efcd919b97749f0f518d44'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Virupaksha temple was built by the Pandyas'),
            ('B', 'The Virupaksha temple at Hampi was built by Krishnadevaraya of the Vijayanagara empire'),
            ('C', 'The Virupaksha temple was built by the Cholas'),
            ('D', 'The Virupaksha temple is a Jain temple')
           ) as v(label, option_text)
 where q.question_hash = 'da1952b166efcd919b97749f0f518d44'
on conflict (question_id, label) do nothing;

-- art_culture | medieval-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'medieval-art'),
    'The ''Hampi'' and the ''Vitthala'' and the ''stone chariot'':',
    'The Vitthala temple at Hampi, with the stone chariot in its courtyard, is one of the finest of the Vijayanagara monuments.',
    'medium',
    'Standard Reference',
    null,
    '11ede6c6976cfa3d1bfe0421b267906a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '11ede6c6976cfa3d1bfe0421b267906a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The stone chariot is in Delhi'),
            ('B', 'The Vitthala temple at Hampi has the famous stone chariot'),
            ('C', 'The Vitthala temple is a Buddhist cave'),
            ('D', 'The Vitthala temple is in Kerala')
           ) as v(label, option_text)
 where q.question_hash = '11ede6c6976cfa3d1bfe0421b267906a'
on conflict (question_id, label) do nothing;

-- art_culture | painting | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'painting'),
    'The ''Rajasthani'' painting and the ''Kangra'' and the ''Amrita'':',
    'The Amritotsava or the Darshan of the Lord, painted in Kangra in the eighteenth century, is the finest of the Pahari painting school.',
    'hard',
    'Standard Reference',
    null,
    '1742dcd85d14d91555d08393d4a93c82'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '1742dcd85d14d91555d08393d4a93c82'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Kangra paintings of the Amritotsava of the Darshan of the Lord are the finest of the Pahari school'),
            ('B', 'The Amritotsava is a Pahari work of the eighteenth century'),
            ('C', 'The Amritotsava was painted by the Mughal school'),
            ('D', 'The Amritotsava is a textile')
           ) as v(label, option_text)
 where q.question_hash = '1742dcd85d14d91555d08393d4a93c82'
on conflict (question_id, label) do nothing;

-- art_culture | painting | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'painting'),
    'The ''Bundi'' and the ''Bikaner'' are:',
    'Bundi, Kota, Kishangarh, Jaipur, Mewar and the Bikaner are among the principal schools of the Rajasthani miniature painting.',
    'medium',
    'Standard Reference',
    null,
    '8f8e523204de9c69a38733d65fc205d6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '8f8e523204de9c69a38733d65fc205d6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The folk theatre forms'),
            ('B', 'The music schools'),
            ('C', 'The Rajasthani miniature painting schools'),
            ('D', 'The classical dance forms')
           ) as v(label, option_text)
 where q.question_hash = '8f8e523204de9c69a38733d65fc205d6'
on conflict (question_id, label) do nothing;

-- art_culture | painting | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'painting'),
    'The ''Mughal painting'' and the ''Mughal school'' and the ''Padshahnama'':',
    'The Mughal school is documented by the illustrated manuscripts like the Padshahnama, the Hamzanama, the Akbarnama and the Razmnama.',
    'medium',
    'Standard Reference',
    null,
    'cc59144eb2f6dfb5689b082d34abda95'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'cc59144eb2f6dfb5689b082d34abda95'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Mughal school is illustrated by the Ajanta caves'),
            ('B', 'The Mughal school is illustrated by the Rajput paintings'),
            ('C', 'The Mughal school is illustrated by the Tanjore paintings'),
            ('D', 'The Mughal school of painting is illustrated by the Padshahnama and the Hamzanama')
           ) as v(label, option_text)
 where q.question_hash = 'cc59144eb2f6dfb5689b082d34abda95'
on conflict (question_id, label) do nothing;

-- art_culture | painting | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'painting'),
    'The ''Company painting'' of India:',
    'The Company style, a hybrid of the Indian and the European techniques, was produced in the late eighteenth and the early nineteenth centuries for the European patrons.',
    'medium',
    'Standard Reference',
    null,
    '7104d6d01d314673f07b28276c5b94a5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '7104d6d01d314673f07b28276c5b94a5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is a prehistoric art'),
            ('B', 'Is a folk painting of the villagers'),
            ('C', 'Is the mural tradition of the Ajanta'),
            ('D', 'Developed in the late 18th century for the European patrons')
           ) as v(label, option_text)
 where q.question_hash = '7104d6d01d314673f07b28276c5b94a5'
on conflict (question_id, label) do nothing;

-- art_culture | painting | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'painting'),
    'The ''Kalighat'' painting developed around:',
    'The Kalighat paintings developed in the 19th century around the Kalighat temple in Calcutta, with the bold brushwork and the use of the imported colours.',
    'medium',
    'Standard Reference',
    null,
    '847a7cce8781486577f5c75ab5bccafe'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '847a7cce8781486577f5c75ab5bccafe'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Kalighat temple of the Sikhs'),
            ('B', 'The Kalighat temple in Calcutta'),
            ('C', 'The Kalighat temple in Varanasi'),
            ('D', 'The Kalighat temple in Kerala')
           ) as v(label, option_text)
 where q.question_hash = '847a7cce8781486577f5c75ab5bccafe'
on conflict (question_id, label) do nothing;

-- art_culture | painting | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'painting'),
    'The ''Gond'' painting of Madhya Pradesh:',
    'The Gond paintings of Madhya Pradesh use a bold line work and the simple colours on the mud-plastered walls, and the artists belong to the Gond tribe.',
    'medium',
    'Standard Reference',
    null,
    '4472db7a0d45705c4877e522ff83f9d7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '4472db7a0d45705c4877e522ff83f9d7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Uses the miniature of the Rajasthan'),
            ('B', 'Is the scroll painting of Odisha'),
            ('C', 'Uses a distinctive bold line work on the mud-plastered walls'),
            ('D', 'Uses the gold foil on the wood panels')
           ) as v(label, option_text)
 where q.question_hash = '4472db7a0d45705c4877e522ff83f9d7'
on conflict (question_id, label) do nothing;

-- art_culture | painting | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'painting'),
    'The ''Warli'' and the ''Chitrakala'':',
    'The Chitrakala is the mural tradition of the coastal Karnataka, the Warli of Maharashtra and the Saora of Odisha are the tribal mural traditions, and the Pattachitra of Odisha and the Bengal is the scroll painting.',
    'medium',
    'Standard Reference',
    null,
    'e03b24e397412ac0c1d42235502c8efe'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'e03b24e397412ac0c1d42235502c8efe'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Chitrakala is the mural tradition of the coastal Karnataka'),
            ('B', 'The Chitrakala is the mural tradition of the Warli of Maharashtra'),
            ('C', 'The Chitrakala is the mural tradition of the Bhils'),
            ('D', 'The Chitrakala is a miniatures of the Rajasthan')
           ) as v(label, option_text)
 where q.question_hash = 'e03b24e397412ac0c1d42235502c8efe'
on conflict (question_id, label) do nothing;

-- art_culture | painting | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'painting'),
    'The ''Sanchi'' and the ''Bharhut'' and the ''Amaravati'' are:',
    'The Sanchi, the Bharhut and the Amaravati are the three great early Buddhist stupas, and the Amaravati stupa was later enlarged under the Satavahanas.',
    'medium',
    'Standard Reference',
    null,
    'dd81ed6dda415573895cf36cf27c7f92'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'dd81ed6dda415573895cf36cf27c7f92'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The three styles of the Gandhara school'),
            ('B', 'The three Jain cave sites'),
            ('C', 'The three capitals of the Satavahanas'),
            ('D', 'The three great Buddhist stupas of the early India')
           ) as v(label, option_text)
 where q.question_hash = 'dd81ed6dda415573895cf36cf27c7f92'
on conflict (question_id, label) do nothing;

-- art_culture | painting | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'painting'),
    'The ''Karnataka'' and the ''Champa'' and the ''Hoysala'':',
    'The Karnataka temple architecture shows the culmination of the Chalukyan, the Hoysala and the Vijayanagara phases, and the Hoysala and the Vijayanagara styles are the most noted.',
    'hard',
    'Standard Reference',
    null,
    '6b124398f08d46b560811caaf07144c0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '6b124398f08d46b560811caaf07144c0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Hoysala is the style of the Cholas'),
            ('B', 'The Champa is a Buddhist cave of Odisha'),
            ('C', 'The temple architecture of Karnataka is a synthesis of the Chalukyan, the Hoysala and the Vijayanagara traditions'),
            ('D', 'The Champa is a style of the Kerala temples')
           ) as v(label, option_text)
 where q.question_hash = '6b124398f08d46b560811caaf07144c0'
on conflict (question_id, label) do nothing;

-- art_culture | medieval-art | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'medieval-art'),
    'The ''Mughal'' and the ''Akbar'' and the ''Mansabdari'':',
    'The mansabdari system of the Akbar assigned a rank, the mansab, to the officials and the military commanders, who were paid in the salaries and the jagirs.',
    'easy',
    'Standard Reference',
    null,
    '168594da898362022187250b363e79c0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '168594da898362022187250b363e79c0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Mansabdari system of the Akbar was a ranking system of the military and the revenue'),
            ('B', 'The Mansabdari system was a land settlement'),
            ('C', 'The Mansabdari system was a judicial reform'),
            ('D', 'The Mansabdari system was the tax farming')
           ) as v(label, option_text)
 where q.question_hash = '168594da898362022187250b363e79c0'
on conflict (question_id, label) do nothing;

-- art_culture | medieval-art | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'medieval-art'),
    'The ''Rang Mahal'' and the ''Lal Qila'':',
    'The Rang Mahal of the Red Fort, with its marble pumice and the gilded carvings, was the setting of the ceremonial and the diplomatic receptions of the Mughal court.',
    'hard',
    'Standard Reference',
    null,
    '692cc07f4a6db5c27eb801e054e373cc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '692cc07f4a6db5c27eb801e054e373cc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Rang Mahal is a mosque'),
            ('B', 'The Rang Mahal of the Red Fort was the place of the royal ceremonies'),
            ('C', 'The Rang Mahal is in Jaipur'),
            ('D', 'The Rang Mahal is a tomb of the Nizams')
           ) as v(label, option_text)
 where q.question_hash = '692cc07f4a6db5c27eb801e054e373cc'
on conflict (question_id, label) do nothing;

-- art_culture | medieval-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'medieval-art'),
    'The ''Hawa Mahal'' and the ''City Palace'' of Jaipur:',
    'The Hawa Mahal, with the facade of the hundreds of the jharokhas, was built by Sawai Pratap Singh in 1799, and the City Palace complex by Maharaja Jai Singh II.',
    'medium',
    'Standard Reference',
    null,
    'a6ce769602d752ce7040609a775becdf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'a6ce769602d752ce7040609a775becdf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The City Palace was built by Shah Jahan'),
            ('B', 'The Hawa Mahal is a temple'),
            ('C', 'The Hawa Mahal was built by Sawai Pratap Singh and the City Palace by Jai Singh II'),
            ('D', 'The Hawa Mahal was built by Akbar')
           ) as v(label, option_text)
 where q.question_hash = 'a6ce769602d752ce7040609a775becdf'
on conflict (question_id, label) do nothing;

-- art_culture | medieval-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'medieval-art'),
    'The ''Meenakshi'' temple and the ''Thousand pillars'':',
    'The Meenakshi temple at Madurai has the Golden Lotus tank, the Hall of a Thousand Pillars and the tall gopurams with the painted sculptures.',
    'medium',
    'Standard Reference',
    null,
    '2ace5d761a0043846a723e898f9330d0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '2ace5d761a0043846a723e898f9330d0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Thousand Pillars is a Hoysala temple'),
            ('B', 'The Thousand Pillars is a Buddhist monastery'),
            ('C', 'The Thousand Pillars is a Jain temple'),
            ('D', 'The Meenakshi temple has the Hall of a Thousand Pillars')
           ) as v(label, option_text)
 where q.question_hash = '2ace5d761a0043846a723e898f9330d0'
on conflict (question_id, label) do nothing;

-- art_culture | medieval-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'medieval-art'),
    'The ''Shore temple'' at Mahabalipuram was built by:',
    'The Shore Temple, with the pancha Rathas, was built by the Pallava king Narasimhavarman I in the early eighth century.',
    'medium',
    'Standard Reference',
    null,
    '24d675ee057362dc5be579918a0e2bb6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '24d675ee057362dc5be579918a0e2bb6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Pallava Narasimhavarman I'),
            ('B', 'The Chola Rajaraja I'),
            ('C', 'The Pandya Maravarman'),
            ('D', 'The Vijayanagara Krishnadevaraya')
           ) as v(label, option_text)
 where q.question_hash = '24d675ee057362dc5be579918a0e2bb6'
on conflict (question_id, label) do nothing;

-- art_culture | medieval-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'medieval-art'),
    'The ''Kailasa temple'' at Ellora was built by:',
    'The Kailasa temple, hewn out of a single rock in a pit, was commissioned by the Rashtrakuta king Krishna I in the eighth century.',
    'medium',
    'Standard Reference',
    null,
    'f65b40fe09faa26e004909cbe483256f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f65b40fe09faa26e004909cbe483256f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Kadamba Shastivarman'),
            ('B', 'The Rashtrakuta Krishna I'),
            ('C', 'The Chalukya Vikramaditya VI'),
            ('D', 'The Pallava Mahendravarman')
           ) as v(label, option_text)
 where q.question_hash = 'f65b40fe09faa26e004909cbe483256f'
on conflict (question_id, label) do nothing;

-- art_culture | medieval-art | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'medieval-art'),
    'The ''Dharmaraja Ratha'' at Mahabalipuram:',
    'The Dharmaraja Ratha is the largest of the five monolithic rathas at Mahabalipuram and it was excavated under Narasimhavarman I.',
    'hard',
    'Standard Reference',
    null,
    '8d1ab43487ed1edf243092c85a6a7fcf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '8d1ab43487ed1edf243092c85a6a7fcf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is a Buddhist stupa'),
            ('B', 'Is the largest of the pancha Rathas'),
            ('C', 'Is the Kailasa temple'),
            ('D', 'Is the Shore Temple')
           ) as v(label, option_text)
 where q.question_hash = '8d1ab43487ed1edf243092c85a6a7fcf'
on conflict (question_id, label) do nothing;

-- art_culture | medieval-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'medieval-art'),
    'The ''Badami'' cave and the ''Agastya'' and the ''Karnataka'':',
    'The Badami cave temples of the sixth century were excavated under the Chalukya king Pulakeshin I and are dedicated to Shiva, Vishnu and the Jina.',
    'medium',
    'Standard Reference',
    null,
    'e76958e1ce352caa8534b6d576c27f66'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e76958e1ce352caa8534b6d576c27f66'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Badami caves are a Jain site'),
            ('B', 'The Badami caves are a Buddhist site of the Gangas'),
            ('C', 'The Badami caves of the sixth century were excavated by the Chalukyas'),
            ('D', 'The Badami caves were excavated by the Pallavas')
           ) as v(label, option_text)
 where q.question_hash = 'e76958e1ce352caa8534b6d576c27f66'
on conflict (question_id, label) do nothing;

-- art_culture | medieval-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'medieval-art'),
    'The ''Chennakeshava'' and the ''Hoysala'' and the ''soapstone'':',
    'The Hoysala temples at Belur, Halebidu and Somnathpur are built of the soapstone, which is soft when quarried and hardens on exposure, allowing the intricate carving.',
    'medium',
    'Standard Reference',
    null,
    '5f970c18f710dfe810462aa1ce9fbc76'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '5f970c18f710dfe810462aa1ce9fbc76'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Hoysala temples are built of the granite and are plain'),
            ('B', 'The Hoysala temples are built of the brick and are painted'),
            ('C', 'The Hoysala temples are built of the marble'),
            ('D', 'The Hoysala temples are built of the soapstone and are intricately carved')
           ) as v(label, option_text)
 where q.question_hash = '5f970c18f710dfe810462aa1ce9fbc76'
on conflict (question_id, label) do nothing;

-- art_culture | medieval-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'medieval-art'),
    'The ''Qutb Minar'' and the ''Iron Pillar'':',
    'The Iron Pillar of the Qutb complex, with the corrosion-resistant iron, has stood for about 1,600 years and testifies to the metallurgical skill of the period.',
    'medium',
    'Standard Reference',
    null,
    '88729001228a7e9ca76ef9e8a0a05094'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '88729001228a7e9ca76ef9e8a0a05094'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Iron Pillar of Delhi is a testament to the corrosion resistance of the iron'),
            ('B', 'The Iron Pillar is a Buddhist statue'),
            ('C', 'The Iron Pillar is a royal column of the Vijayanagara'),
            ('D', 'The Iron Pillar is a modern installation')
           ) as v(label, option_text)
 where q.question_hash = '88729001228a7e9ca76ef9e8a0a05094'
on conflict (question_id, label) do nothing;

-- art_culture | medieval-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'medieval-art'),
    'The ''Khusro Bagh'' and the ''Tomb of Bibi ka Maqbara'' and the ''Tomb of Akbar'':',
    'The tomb of Akbar at Sikandra near Agra, completed by his son Jahangir, is the largest of the Mughal tombs in India.',
    'medium',
    'Standard Reference',
    null,
    'a0eb529195f9a46d29eac4eb7176dd93'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a0eb529195f9a46d29eac4eb7176dd93'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The tomb of Akbar is the largest in India and is in the Sikandra near Agra'),
            ('B', 'The tomb of Akbar is in Delhi'),
            ('C', 'The tomb of Akbar is a marble structure'),
            ('D', 'The tomb of Akbar is at Fatehpur Sikri')
           ) as v(label, option_text)
 where q.question_hash = 'a0eb529195f9a46d29eac4eb7176dd93'
on conflict (question_id, label) do nothing;

-- art_culture | medieval-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'medieval-art'),
    'The ''Bibi ka Maqbara'' and the ''Taj Mahal'' comparison:',
    'The Bibi ka Maqbara at Aurangabad, built in 1660, is popularly called the poor man''s Taj Mahal, though it is smaller and of a different style.',
    'medium',
    'Standard Reference',
    null,
    '3fc52fc28db32d2893147e783b67a090'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '3fc52fc28db32d2893147e783b67a090'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Bibi ka Maqbara is in Delhi'),
            ('B', 'The Bibi ka Maqbara is of the white marble'),
            ('C', 'The Bibi ka Maqbara is called the poor man''s Taj Mahal'),
            ('D', 'The Bibi ka Maqbara is the largest of the Mughal tombs')
           ) as v(label, option_text)
 where q.question_hash = '3fc52fc28db32d2893147e783b67a090'
on conflict (question_id, label) do nothing;

-- art_culture | medieval-art | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'medieval-art'),
    'The ''Gwalior Fort'' and the ''Man Mandir'':',
    'The Man Mandir, the four-storeyed palace of the Gwalior Fort, was built by the Maharaja Man Singh I in 1486, and the fort also has the Teli ka Mandir of the 14th century.',
    'hard',
    'Standard Reference',
    null,
    'edf6f84b98d8957faf35d140ec4f0cf0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'edf6f84b98d8957faf35d140ec4f0cf0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Man Mandir is a temple'),
            ('B', 'The Man Mandir of the Gwalior Fort was built by the Man Singh I'),
            ('C', 'The Gwalior Fort is in Rajasthan'),
            ('D', 'The Gwalior Fort was built by the Akbar')
           ) as v(label, option_text)
 where q.question_hash = 'edf6f84b98d8957faf35d140ec4f0cf0'
on conflict (question_id, label) do nothing;

-- art_culture | medieval-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'medieval-art'),
    'The ''Ranthambore'' and the ''Kumbhalgarh'':',
    'The Ranthambore, the Kumbhalgarh, the Chittorgarh, the Gagron, the Amber and the Jaisalmer are the six hill forts of Rajasthan inscribed as a World Heritage site in 2013.',
    'medium',
    'Standard Reference',
    null,
    '67b93e7147d5271ee73a4369733f1046'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '67b93e7147d5271ee73a4369733f1046'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Are the forts of the Mughals'),
            ('B', 'Are the forts of the Marathas'),
            ('C', 'Are the Buddhist monasteries'),
            ('D', 'Are the hill forts of Rajasthan')
           ) as v(label, option_text)
 where q.question_hash = '67b93e7147d5271ee73a4369733f1046'
on conflict (question_id, label) do nothing;

-- art_culture | medieval-art | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'medieval-art'),
    'The ''Agra Fort'' was built by:',
    'The Agra Fort, called the Red Fort of Agra, was built by the Akbar in 1573 and it was the seat of the Mughal court till 1648.',
    'easy',
    'Standard Reference',
    null,
    '769c741abdb98e766c79693009a22b55'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '769c741abdb98e766c79693009a22b55'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Akbar'),
            ('B', 'Shah Jahan'),
            ('C', 'Humayun'),
            ('D', 'Babur')
           ) as v(label, option_text)
 where q.question_hash = '769c741abdb98e766c79693009a22b55'
on conflict (question_id, label) do nothing;

-- art_culture | medieval-art | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'medieval-art'),
    'The ''Jama Masjid'' of Delhi was built by:',
    'The Jama Masjid was built by the Shah Jahan between 1650 and 1656 on a high plateau in Delhi, and it can accommodate about 25,000 worshippers.',
    'easy',
    'Standard Reference',
    null,
    '9684e917de61ec18f53ec1c864a2f2ce'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '9684e917de61ec18f53ec1c864a2f2ce'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Firoz Shah Tughlaq'),
            ('B', 'Shah Jahan'),
            ('C', 'Muhammad bin Tughlaq'),
            ('D', 'Alauddin Khalji')
           ) as v(label, option_text)
 where q.question_hash = '9684e917de61ec18f53ec1c864a2f2ce'
on conflict (question_id, label) do nothing;

-- art_culture | medieval-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'medieval-art'),
    'The ''Guru Gobind Singh'' and the ''Hazuri Sahib'':',
    'The fifth Sikh Guru, Guru Gobind Singh, completed the Harmandir Sahib or the Golden Temple at Amritsar in 1604, and he also founded the Khalsa in 1699.',
    'medium',
    'Standard Reference',
    null,
    '1f86bc8528910da84fbcb4d73f8acbc1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '1f86bc8528910da84fbcb4d73f8acbc1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Guru Gobind Singh built the Red Fort'),
            ('B', 'The Guru Gobind Singh built the Charminar'),
            ('C', 'The Guru Gobind Singh built the Golden Temple in Amritsar'),
            ('D', 'The Guru Gobind Singh built the Qutb Minar')
           ) as v(label, option_text)
 where q.question_hash = '1f86bc8528910da84fbcb4d73f8acbc1'
on conflict (question_id, label) do nothing;

-- art_culture | medieval-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'medieval-art'),
    'The ''Sikh shrine of the Harmandir Sahib'' is on the:',
    'The Golden Temple stands in the middle of the Amrit Sarovar, the pool constructed by the fourth Sikh Guru, Guru Ram Das.',
    'medium',
    'Standard Reference',
    null,
    '2b03a21533e7b761f042d7c73c207ed6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '2b03a21533e7b761f042d7c73c207ed6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A hilltop in the Shivaliks'),
            ('B', 'The bank of the Sutlej'),
            ('C', 'The bank of the Beas'),
            ('D', 'An island in the Amrit Sarovar')
           ) as v(label, option_text)
 where q.question_hash = '2b03a21533e7b761f042d7c73c207ed6'
on conflict (question_id, label) do nothing;

-- art_culture | medieval-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'medieval-art'),
    'The ''Mughal garden'' of the ''Shalimar'' of Lahore:',
    'The Shalimar Bagh of Lahore, laid out by the Shah Jahan, was modelled on the gardens of the Taj Mahal and it had the water flowing through the terraces.',
    'medium',
    'Standard Reference',
    null,
    '5a34bc847087afbd380f09188f2e5999'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '5a34bc847087afbd380f09188f2e5999'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was laid out by the British'),
            ('B', 'Was laid out by the Shah Jahan'),
            ('C', 'Was laid out by the Akbar'),
            ('D', 'Was laid out by the Jahangir')
           ) as v(label, option_text)
 where q.question_hash = '5a34bc847087afbd380f09188f2e5999'
on conflict (question_id, label) do nothing;

-- art_culture | medieval-art | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'medieval-art'),
    'The ''Mughal painting'' and the ''Falaknuma'' and the ''Padshahnama'':',
    'The Falaknuma, a manuscript of the Akbar''s reign, was illustrated by the Bichitr and the other painters of the atelier.',
    'hard',
    'Standard Reference',
    null,
    'a4b4ef2b3d314498d1c7590f07199668'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a4b4ef2b3d314498d1c7590f07199668'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Falaknuma is a Persian classic'),
            ('B', 'The Falaknuma is a type of the carpet'),
            ('C', 'The Falaknuma is a temple'),
            ('D', 'The Falaknuma is a manuscript of the Akbar''s reign')
           ) as v(label, option_text)
 where q.question_hash = 'a4b4ef2b3d314498d1c7590f07199668'
on conflict (question_id, label) do nothing;

-- art_culture | ancient-art | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'ancient-art'),
    'The ''Indian'' and the ''Buddhist'' and the ''Bodhisattva'':',
    'In India the Bodhisattva Avalokiteshvara was transformed into the Padmapani, the lotus borne, and he was depicted with a distinctively Indian dress and ornamentation.',
    'hard',
    'Standard Reference',
    null,
    'a74221bfd81ac090630ad83681c046d1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'a74221bfd81ac090630ad83681c046d1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Bodhisattva is a Hindu god of the war'),
            ('B', 'The Bodhisattva is the teacher of the Buddha'),
            ('C', 'The Bodhisattva Avalokiteshvara became the Padmapani of the Indian art'),
            ('D', 'The Bodhisattva is the Jain concept')
           ) as v(label, option_text)
 where q.question_hash = 'a74221bfd81ac090630ad83681c046d1'
on conflict (question_id, label) do nothing;

-- art_culture | ancient-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'ancient-art'),
    'The ''Gandhara'' and the ''Greco-Buddhist'':',
    'The Gandhara school of the Kushana period is often described as the Greco-Buddhist school because of the naturalistic and the Hellenistic treatment of the drapery and the facial features.',
    'medium',
    'Standard Reference',
    null,
    'ea24363aca85c2a97f74074a8eaf47e7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ea24363aca85c2a97f74074a8eaf47e7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Gandhara art shows the Greco-Buddhist style of the Kushana period'),
            ('B', 'The Gandhara art is a Jain style'),
            ('C', 'The Gandhara art is the style of the Mauryan period'),
            ('D', 'The Gandhara art is a style of the Vijayanagara')
           ) as v(label, option_text)
 where q.question_hash = 'ea24363aca85c2a97f74074a8eaf47e7'
on conflict (question_id, label) do nothing;

-- art_culture | ancient-art | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'ancient-art'),
    'The ''Ravana'' and the ''Chola bronzes'':',
    'The Chola bronzes, including the images of Ravana, Subrahmanya and the Dancing Shiva, are in the sanctum of the Nataraja temple at Chidambaram.',
    'hard',
    'Standard Reference',
    null,
    '4f21560f86a245ad2a5df03b7e89c364'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '4f21560f86a245ad2a5df03b7e89c364'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Chola bronzes of the Ravana and the other figures were in the Chidambaram temple'),
            ('B', 'The Chola bronzes are in the Thanjavur temple'),
            ('C', 'The Chola bronzes are in the Khajuraho temples'),
            ('D', 'The Chola bronzes are in the Ellora caves')
           ) as v(label, option_text)
 where q.question_hash = '4f21560f86a245ad2a5df03b7e89c364'
on conflict (question_id, label) do nothing;

-- art_culture | ancient-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'ancient-art'),
    'The ''Nataraja'' of Chidambaram is a:',
    'The Nataraja, the dancing Shiva, is the central image of the Chidambaram temple and it embodies the cosmic dance of creation and destruction.',
    'medium',
    'Standard Reference',
    null,
    'fe21b09e8ab33ecf86c91447a162bbfa'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'fe21b09e8ab33ecf86c91447a162bbfa'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A Vaishnava image of Vishnu'),
            ('B', 'Dancing form of Shiva as the Lord of the dance'),
            ('C', 'Seated Buddha of the Gandhara'),
            ('D', 'A Jain tirthankara')
           ) as v(label, option_text)
 where q.question_hash = 'fe21b09e8ab33ecf86c91447a162bbfa'
on conflict (question_id, label) do nothing;

-- art_culture | ancient-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'ancient-art'),
    'The ''Sanchi'' and the ''Bharhut'' and the ''Amaravati'' and the ''Nagarjunakonda'' are:',
    'The Sanchi, the Bharhut, the Amaravati and the Nagarjunakonda are the four great Buddhist stupa sites, and the Sanchi and the Amaravati are the World Heritage sites.',
    'medium',
    'Standard Reference',
    null,
    '8aabdcac32b59886f711f3c8dfd43086'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '8aabdcac32b59886f711f3c8dfd43086'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The four forts of the Deccan'),
            ('B', 'The four universities of the ancient India'),
            ('C', 'The four great Buddhist stupa sites of India'),
            ('D', 'The four cave sites of the Deccan')
           ) as v(label, option_text)
 where q.question_hash = '8aabdcac32b59886f711f3c8dfd43086'
on conflict (question_id, label) do nothing;

-- art_culture | ancient-art | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'ancient-art'),
    'The ''Lomas Rishi'' and the ''Sanchi'':',
    'The Lomas Rishi, the brick stupa of the Sanchi, of the Maurya period with the lion capital on the top, is the earliest known stupa in India.',
    'hard',
    'Standard Reference',
    null,
    'df27edffe92233b8535764f6fd336ea5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'df27edffe92233b8535764f6fd336ea5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Lomas Rishi is a stupa of the Kushana period'),
            ('B', 'The Lomas Rishi is a cave of the Ajanta'),
            ('C', 'The Lomas Rishi is a Jain temple of Rajasthan'),
            ('D', 'The Lomas Rishi stupa of the Sanchi is the earliest known stupa of the Maurya period')
           ) as v(label, option_text)
 where q.question_hash = 'df27edffe92233b8535764f6fd336ea5'
on conflict (question_id, label) do nothing;

-- art_culture | ancient-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'ancient-art'),
    'The ''Nalanda'' and the ''Nalanda Mahavihara'':',
    'The Nalanda Mahavihara, excavated under the Gupta ruler Kumaragupta I, was the great monastic university where the Xuanzang studied for several years.',
    'medium',
    'Standard Reference',
    null,
    '3c07b9283af10187044f741c0c4eb947'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '3c07b9283af10187044f741c0c4eb947'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Nalanda Mahavihara was built by the Harishchandra'),
            ('B', 'The Nalanda Mahavihara was a fort'),
            ('C', 'The Nalanda Mahavihara was a Jain university'),
            ('D', 'The Nalanda Mahavihara was excavated by the Kumaragupta I and Xuanzang studied there')
           ) as v(label, option_text)
 where q.question_hash = '3c07b9283af10187044f741c0c4eb947'
on conflict (question_id, label) do nothing;

-- art_culture | ancient-art | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'ancient-art'),
    'The ''Ajanta'' and the ''Vaghoda'' and the ''Padmapani'':',
    'The Vaghoda panel of the Cave 1 of the Ajanta, with the graceful Padmapani Bodhisattva, is the finest of the Indian murals.',
    'hard',
    'Standard Reference',
    null,
    '9450505c0143803e564cb9a8f0856dce'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '9450505c0143803e564cb9a8f0856dce'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Vaghoda panel of the Ajanta Cave 1 shows the Padmapani Bodhisattva'),
            ('B', 'The Vaghoda panel shows the Buddha preaching'),
            ('C', 'The Vaghoda panel is in the Ajanta Cave 26'),
            ('D', 'The Vaghoda panel is a Jain panel of the Ellora')
           ) as v(label, option_text)
 where q.question_hash = '9450505c0143803e564cb9a8f0856dce'
on conflict (question_id, label) do nothing;

-- art_culture | ancient-art | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'ancient-art'),
    'The ''Ajanta'' and the ''Cave 17'':',
    'Cave 17 of the Ajanta contains the Simhala Avadana panel, the death of the Buddha, and Cave 1 has the Padmapani, while the Hinayana caves are the earlier ones.',
    'hard',
    'Standard Reference',
    null,
    'eaa0fca5d403f00ff8a4f0109e9850da'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'eaa0fca5d403f00ff8a4f0109e9850da'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Cave 17 is the Buddhist temple of the Ellora'),
            ('B', 'Cave 17 has the Nataraja painting'),
            ('C', 'Cave 17 of the Ajanta has the famous painting of the Simhala Avadana'),
            ('D', 'Cave 17 is the oldest of the Ajanta')
           ) as v(label, option_text)
 where q.question_hash = 'eaa0fca5d403f00ff8a4f0109e9850da'
on conflict (question_id, label) do nothing;

-- art_culture | ancient-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'ancient-art'),
    'The ''Nalanda'' and the ''Vikramashila'':',
    'Nalanda and Vikramashila were the great monastic universities of the Pala period, and Vikramashila was founded by Dharmapala and later destroyed by the Turks.',
    'medium',
    'Standard Reference',
    null,
    'db34e830150deaa75c5d31f4a6b89def'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'db34e830150deaa75c5d31f4a6b89def'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Both were the capitals of the Guptas'),
            ('B', 'Both were the monastic universities of the Pala period'),
            ('C', 'Both were the centres of the Islamic learning'),
            ('D', 'Both were the centres of the Vedic learning')
           ) as v(label, option_text)
 where q.question_hash = 'db34e830150deaa75c5d31f4a6b89def'
on conflict (question_id, label) do nothing;

-- art_culture | ancient-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'ancient-art'),
    'The ''Gupta'' and the ''Ajanta'' and the ''Nalanda'':',
    'The fifth-century murals of the Ajanta and the Nalanda Mahavihara are the monuments of the Gupta age, and the Gupta period is called the golden age of the Indian art.',
    'medium',
    'Standard Reference',
    null,
    'ef0881cfbd9032b9c83c5638da337aae'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ef0881cfbd9032b9c83c5638da337aae'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Ajanta Cave 17 and the Nalanda are the monuments of the Gupta age'),
            ('B', 'The Ajanta and the Nalanda are the monuments of the Kushana period'),
            ('C', 'The Ajanta and the Nalanda are the monuments of the Sultanate'),
            ('D', 'The Ajanta and the Nalanda are the monuments of the Vijayanagara')
           ) as v(label, option_text)
 where q.question_hash = 'ef0881cfbd9032b9c83c5638da337aae'
on conflict (question_id, label) do nothing;

-- art_culture | ancient-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'ancient-art'),
    'The ''Kanishka'' and the ''Gandhara'' and the ''Bagram'':',
    'Kanishka, the Kushana ruler, patronised the Gandhara art and the Bagram ivories, and he convened the fourth Buddhist council in Kashmir.',
    'medium',
    'Standard Reference',
    null,
    '23ca345fd4baf40f76a65ce6c29483e1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '23ca345fd4baf40f76a65ce6c29483e1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Kanishka was the Satavahana ruler'),
            ('B', 'The Kanishka is the Kushana ruler who patronised the Gandhara art and the Bagram ivories'),
            ('C', 'The Kanishka was the Mauryan ruler'),
            ('D', 'The Kanishka was the Gupta ruler')
           ) as v(label, option_text)
 where q.question_hash = '23ca345fd4baf40f76a65ce6c29483e1'
on conflict (question_id, label) do nothing;

-- art_culture | ancient-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'ancient-art'),
    'The ''Harappan'' and the ''Dholavira'':',
    'Dholavira in Kutch, Gujarat, is a large Harappan site famous for its sophisticated reservoir and the water conservation system and the signboard, and it is a World Heritage site.',
    'medium',
    'Standard Reference',
    null,
    '545e4a9569a377a03d9816eb1a3eda97'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '545e4a9569a377a03d9816eb1a3eda97'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Dholavira is a megalithic site in Kerala'),
            ('B', 'Dholavira is a cave in Odisha'),
            ('C', 'Dholavira is a Harappan site in Gujarat with a sophisticated water management system'),
            ('D', 'Dholavira is a Buddhist site in Bihar')
           ) as v(label, option_text)
 where q.question_hash = '545e4a9569a377a03d9816eb1a3eda97'
on conflict (question_id, label) do nothing;

-- art_culture | ancient-art | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'ancient-art'),
    'The ''Lothal'' and the ''dockyard'':',
    'Lothal in Gujarat was a Harappan port with a tidal dockyard, the warehouse complex and the circular kiln, and the dockyard is on the Gulf of Kutch.',
    'easy',
    'Standard Reference',
    null,
    '79211be4e2a0e2a0b89b0e86e23260de'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '79211be4e2a0e2a0b89b0e86e23260de'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Lothal is a Buddhist site in Bihar'),
            ('B', 'Lothal is a Gupta temple'),
            ('C', 'Lothal is a megalithic site in Karnataka'),
            ('D', 'Lothal is a Harappan port with a tidal dockyard')
           ) as v(label, option_text)
 where q.question_hash = '79211be4e2a0e2a0b89b0e86e23260de'
on conflict (question_id, label) do nothing;

-- art_culture | ancient-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'ancient-art'),
    'The ''Mohenjo-daro'' and the ''Great Bath'':',
    'The Great Bath at Mohenjo-daro, with the watertight layer of bitumen and the side drains, is the finest example of the Harappan sanitation and the public bath.',
    'medium',
    'Standard Reference',
    null,
    'a4e08a0ba3b8af13240ae5a1ca7bc1bc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'a4e08a0ba3b8af13240ae5a1ca7bc1bc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Great Bath is a temple of the Indus Valley'),
            ('B', 'The Great Bath is a reservoir of the Vedic period'),
            ('C', 'The Great Bath is the largest public bathing structure of the Harappan civilisation'),
            ('D', 'The Great Bath is a Buddhist monastery')
           ) as v(label, option_text)
 where q.question_hash = 'a4e08a0ba3b8af13240ae5a1ca7bc1bc'
on conflict (question_id, label) do nothing;

-- art_culture | ancient-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'ancient-art'),
    'The ''Harappan'' and the ''script'':',
    'The Harappan script with about 400 signs is undeciphered, and the short inscriptions are read from right to left while the longer ones run boustrophedon.',
    'medium',
    'Standard Reference',
    null,
    'bcff231076eeeb9129bf4750e0374003'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'bcff231076eeeb9129bf4750e0374003'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Harappan script was the Avestan'),
            ('B', 'The Harappan script remains undeciphered and is a logo-syllabic script'),
            ('C', 'The Harappan script was deciphered in 1920'),
            ('D', 'The Harappan script was the Brahmi')
           ) as v(label, option_text)
 where q.question_hash = 'bcff231076eeeb9129bf4750e0374003'
on conflict (question_id, label) do nothing;

-- art_culture | ancient-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'ancient-art'),
    'The ''Seals'' of the Harappan civilisation:',
    'Most of the Harappan seals are of the steatite, a soapstone, and the unicorn, the swastika and the figures of the deities and the animals are the common motifs.',
    'medium',
    'Standard Reference',
    null,
    '90cdbb3ddf275af76ee33f67192d0fa9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '90cdbb3ddf275af76ee33f67192d0fa9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Most of them are of steatite and bear the short inscriptions'),
            ('B', 'Most of them are of gold and are of the Vedic period'),
            ('C', 'Most of them are of copper and are of the Kushana period'),
            ('D', 'Most of them are of terracotta and are of the medieval period')
           ) as v(label, option_text)
 where q.question_hash = '90cdbb3ddf275af76ee33f67192d0fa9'
on conflict (question_id, label) do nothing;

-- art_culture | ancient-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'ancient-art'),
    'The ''Harpur'' and the ''Kot Diji'':',
    'Kot Diji in Sindh and Harpur in the Kutch are among the Harappan sites, along with Kalibangan, Banawali, Lothal, Surkotada and Dholavira.',
    'medium',
    'Standard Reference',
    null,
    'e72a47aaaf7152909385a25ae8670100'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e72a47aaaf7152909385a25ae8670100'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Both are the sites of the Vedic period'),
            ('B', 'Both are the Buddhist sites of the Gangas'),
            ('C', 'Both are the medieval forts of Rajasthan'),
            ('D', 'Kot Diji is a Harappan site in Sindh and Harpur is one in the Kutch')
           ) as v(label, option_text)
 where q.question_hash = 'e72a47aaaf7152909385a25ae8670100'
on conflict (question_id, label) do nothing;

-- art_culture | ancient-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'ancient-art'),
    'The ''Sanchi'' and the ''donation'' of the Jataka tales:',
    'The four gateways of the Sanchi stupa depict the Jataka tales and the contemporary life of the period, and they are the earliest known representations of the narrative art of the Indian tradition.',
    'medium',
    'Standard Reference',
    null,
    '2598215537229c5e0cd79ff067767518'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '2598215537229c5e0cd79ff067767518'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Sanchi gateways depict the Christian stories'),
            ('B', 'The Sanchi gateways depict the Ramayana only'),
            ('C', 'The Sanchi gateways depict the Greek myths'),
            ('D', 'The Sanchi gateways depict the Jataka tales and the contemporary life')
           ) as v(label, option_text)
 where q.question_hash = '2598215537229c5e0cd79ff067767518'
on conflict (question_id, label) do nothing;

-- art_culture | ancient-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'ancient-art'),
    'The ''Ashokan'' and the ''edicts'':',
    'The Ashokan edicts are inscribed at about 33 places, mostly on the pillars and the rocks, in the Prakrit and the Sanskrit and the Greek and the Aramaic, and the Major Rock Edicts are at Sanchi and Dhauli and Jaugada.',
    'medium',
    'Standard Reference',
    null,
    'a4d7fe1d6726560f0bb830cba6db5a34'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a4d7fe1d6726560f0bb830cba6db5a34'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Ashokan edicts were written in Persian only'),
            ('B', 'The Ashokan edicts are inscribed on the pillars and the rocks in about 33 places'),
            ('C', 'The Ashokan edicts are inscribed only at Sanchi'),
            ('D', 'The Ashokan edicts are all in Sanskrit')
           ) as v(label, option_text)
 where q.question_hash = 'a4d7fe1d6726560f0bb830cba6db5a34'
on conflict (question_id, label) do nothing;

-- art_culture | ancient-art | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'ancient-art'),
    'The ''Lion Capital'' of Sarnati and the ''Sarnath'':',
    'The Lion Capital of Ashoka was erected at Sarnath, and the four lions back to back surmount an abacus of the dharma chakras.',
    'easy',
    'Standard Reference',
    null,
    'bb932dc1f624ed9df493435e23300270'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'bb932dc1f624ed9df493435e23300270'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Lion Capital of Ashoka was originally erected at Sarnath'),
            ('B', 'The Lion Capital is at Sanchi'),
            ('C', 'The Lion Capital is in Delhi'),
            ('D', 'The Lion Capital is of the Kushana period')
           ) as v(label, option_text)
 where q.question_hash = 'bb932dc1f624ed9df493435e23300270'
on conflict (question_id, label) do nothing;

-- art_culture | ancient-art | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'ancient-art'),
    'The ''Pillar of Ashoka'' and the ''Sarnath'':',
    'The Ashokan pillar at Sarnath is the best preserved of the Ashokan pillars, with the lion capital, the deer and the dharma chakra intact.',
    'hard',
    'Standard Reference',
    null,
    '3c1395293d5da70fe3147bf35f974ae6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '3c1395293d5da70fe3147bf35f974ae6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Ashokan pillars are all broken'),
            ('B', 'The Ashokan pillars are of the Gupta period'),
            ('C', 'The Ashokan pillar at Sarnath is the best preserved of the Delhi and the Sarnath pillars'),
            ('D', 'The Ashokan pillar of Delhi is the best preserved')
           ) as v(label, option_text)
 where q.question_hash = '3c1395293d5da70fe3147bf35f974ae6'
on conflict (question_id, label) do nothing;

-- art_culture | ancient-art | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'ancient-art'),
    'The ''Chandraketugarh'' and the ''Mauryan'':',
    'The Chandraketugarh pillar with the abacus of the symbols, discovered in the Nainital district, is a fine example of the Mauryan period sculpture.',
    'hard',
    'Standard Reference',
    null,
    '0c7c12efa01c7e68c602edf86d381862'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '0c7c12efa01c7e68c602edf86d381862'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Chandraketugarh pillar is a Hindu temple of the Gupta period'),
            ('B', 'The Chandraketugarh pillar is a Buddhist stupa of the Kushana period'),
            ('C', 'The Chandraketugarh pillar is in the Red Fort'),
            ('D', 'The Chandraketugarh pillar of the Mauryan period is in the museum of Kolkata')
           ) as v(label, option_text)
 where q.question_hash = '0c7c12efa01c7e68c602edf86d381862'
on conflict (question_id, label) do nothing;

-- art_culture | ancient-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'ancient-art'),
    'The ''Terracotta'' and the ''Maurya'':',
    'The Mauryan terracotta figures, the yakshis and the toys, are the finest terracotta in the world and they were widely distributed, and they reflect a keen observation of the everyday life.',
    'medium',
    'Standard Reference',
    null,
    '43f37182ea1f2347456fee5d6d5a911f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '43f37182ea1f2347456fee5d6d5a911f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Mauryan terracotta is of the Gupta period'),
            ('B', 'The Mauryan terracotta is the finest in the world'),
            ('C', 'The Mauryan terracotta is the finest of the Buddhist art of the Gandhara'),
            ('D', 'The Mauryan terracotta is only of the toys for the children')
           ) as v(label, option_text)
 where q.question_hash = '43f37182ea1f2347456fee5d6d5a911f'
on conflict (question_id, label) do nothing;

-- art_culture | ancient-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'ancient-art'),
    'The ''Greek'' influence and the ''Gandhara'' and the ''Mediterranean'':',
    'The Gandhara school shows a clear Mediterranean influence in the naturalistic drapery, the muscular figures and the wavy hair, which shows the Indo-Greek trade and the patronage of the Kushanas.',
    'medium',
    'Standard Reference',
    null,
    'c6626a4dbdf5b3b8d8b2eb5b1246f326'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'c6626a4dbdf5b3b8d8b2eb5b1246f326'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Gandhara art shows the influence of the Greco-Roman art of the Mediterranean'),
            ('B', 'The Gandhara art shows the influence of the Chinese art'),
            ('C', 'The Gandhara art shows no foreign influence'),
            ('D', 'The Gandhara art is the only Indian school without any influence')
           ) as v(label, option_text)
 where q.question_hash = 'c6626a4dbdf5b3b8d8b2eb5b1246f326'
on conflict (question_id, label) do nothing;

-- art_culture | ancient-art | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'ancient-art'),
    'The ''Sanchi'' and the '' Amaravati'' and the ''Bharhut'' and the ''Kausambi'':',
    'The stupa of Kausambi is among the early Buddhist stupas of the Maurya period, and it was the scene of the debate between the Buddha and the fire-worshipping Ajatashatru.',
    'hard',
    'Standard Reference',
    null,
    'df057f07e41fcea14625188aaa797ab6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'df057f07e41fcea14625188aaa797ab6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The stupa of Kausambi is a Jain temple'),
            ('B', 'The stupa of Kausambi is a stupa of the Sindhu Valley'),
            ('C', 'The stupa of Kausambi is of the Mauryan period'),
            ('D', 'The stupa of Kausambi is of the Gupta period')
           ) as v(label, option_text)
 where q.question_hash = 'df057f07e41fcea14625188aaa797ab6'
on conflict (question_id, label) do nothing;

commit;
