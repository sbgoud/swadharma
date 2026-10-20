-- =============================================================================
-- history_02.sql — history question pack, part 02
-- 250 questions. Applied after supabase/migrations/004_reference_data.sql
-- =============================================================================

begin;

-- history | medieval-south | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-south'),
    'The great temple complex of Chidambaram, with its sacred tank and the Chidambareswarar shrine, is associated with which Chola ruler''s donation inscriptions?',
    'Rajaraja I''s inscriptions at Chidambaram record his gifts to the temple, and the site remained a centre of Shaiva worship and later of the Nayanars.',
    'medium',
    'Standard Reference',
    null,
    '3f6a6673b43293bf43f3934206086faa'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '3f6a6673b43293bf43f3934206086faa'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Parantaka I'),
            ('B', 'Kulottunga Chola III'),
            ('C', 'Rajaraja Chola I'),
            ('D', 'Aditya Chola I')
           ) as v(label, option_text)
 where q.question_hash = '3f6a6673b43293bf43f3934206086faa'
on conflict (question_id, label) do nothing;

-- history | medieval-south | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-south'),
    'The Kailasanatha temple at Kanchipuram and the Shore Temple at Mahabalipuram were built by',
    'Rajasimha II, also called Narasimhavarman II, was the greatest of the Pallava builders and created both the Kailasanatha temple and the Shore Temple.',
    'medium',
    'Standard Reference',
    null,
    '1be7a50d19fe18369fe2d275844250d8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '1be7a50d19fe18369fe2d275844250d8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Avani Rajendra Pulakeshin II'),
            ('B', 'Rajasimha II'),
            ('C', 'Narasimhavarman I'),
            ('D', 'Mahendravarman I')
           ) as v(label, option_text)
 where q.question_hash = '1be7a50d19fe18369fe2d275844250d8'
on conflict (question_id, label) do nothing;

-- history | medieval-south | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-south'),
    'The monolithic rathas cut at Mahabalipuram are usually attributed to which Pallava ruler?',
    'The elegant monolithic rathas at Mahabalipuram, showing the evolution of the Dravidian shrine form, are usually attributed to Mamalla of the seventh century CE.',
    'hard',
    'Standard Reference',
    null,
    '6fd65372ecc398222ac3882591195e86'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '6fd65372ecc398222ac3882591195e86'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rajasimha II'),
            ('B', 'Simhavishnu'),
            ('C', 'Narasimhavarman I Mamalla'),
            ('D', 'Mahendravarman I')
           ) as v(label, option_text)
 where q.question_hash = '6fd65372ecc398222ac3882591195e86'
on conflict (question_id, label) do nothing;

-- history | medieval-south | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-south'),
    'The Pallava ruler who defeated the Kalabhras and extended the kingdom of Kanchi was',
    'Simhavishnu is credited with ending the Kalabhra rule in the Tamil country and restoring the Pallava ascendancy in the Kaveri delta.',
    'hard',
    'Standard Reference',
    null,
    'f49e7323ff0d532d32466275c7651b74'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'f49e7323ff0d532d32466275c7651b74'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Mahendravarman I'),
            ('B', 'Narasimhavarman I'),
            ('C', 'Nandivarman II'),
            ('D', 'Simhavishnu')
           ) as v(label, option_text)
 where q.question_hash = 'f49e7323ff0d532d32466275c7651b74'
on conflict (question_id, label) do nothing;

-- history | medieval-south | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-south'),
    'The Kanchipuram temple of the goddess Kamakshi was built by which Pallava ruler?',
    'Mamalla built the Kamakshi Amman temple at Kanchipuram in the seventh century CE, and it was later extensively enlarged under the Vijayanagara rulers.',
    'hard',
    'Standard Reference',
    null,
    'e6d9ddeb67cb6580230a05bc3b41a911'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e6d9ddeb67cb6580230a05bc3b41a911'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Avani Rajendra Pulakeshin II'),
            ('B', 'Narasimhavarman I Mamalla'),
            ('C', 'Mahendravarman I'),
            ('D', 'Rajasimha II')
           ) as v(label, option_text)
 where q.question_hash = 'e6d9ddeb67cb6580230a05bc3b41a911'
on conflict (question_id, label) do nothing;

-- history | medieval-south | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-south'),
    'The Aihole inscription of Pulakeshin II was written by',
    'Ravikirti, a court poet of Pulakeshin II, composed the Aihole inscription, a major source for Chalukya history and for the history of the Deccan.',
    'medium',
    'Standard Reference',
    null,
    'e9d98dfa5c2695421c67b95ea5c3cc98'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'e9d98dfa5c2695421c67b95ea5c3cc98'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ravikirti'),
            ('B', 'Basavanna'),
            ('C', 'Adikavi Pujapari'),
            ('D', 'Pampa')
           ) as v(label, option_text)
 where q.question_hash = 'e9d98dfa5c2695421c67b95ea5c3cc98'
on conflict (question_id, label) do nothing;

-- history | medieval-south | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-south'),
    'Which Chalukya ruler is credited with the construction of the Kailasa temple at Ellora?',
    'The Rashtrakuta Krishna I commissioned the Kailasa temple at Ellora in the eighth century CE, excavating it top down from a single mass of rock.',
    'medium',
    'Standard Reference',
    null,
    'd9080850e89e9333e26a67592145d1a6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd9080850e89e9333e26a67592145d1a6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Govinda III'),
            ('B', 'Amoghavarsha I'),
            ('C', 'Krishna I'),
            ('D', 'Dantidurga')
           ) as v(label, option_text)
 where q.question_hash = 'd9080850e89e9333e26a67592145d1a6'
on conflict (question_id, label) do nothing;

-- history | medieval-south | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-south'),
    'The Rashtrakuta ruler who wrote the Kavirajamarga and patronised the Dakhshina Ramayana was',
    'Amoghavarsha I, who reigned in the early ninth century CE, was a great patron of learning and wrote the Kavirajamarga himself.',
    'medium',
    'Standard Reference',
    null,
    '50a224216903ef91697380695285c6c4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '50a224216903ef91697380695285c6c4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Dantidurga'),
            ('B', 'Amoghavarsha I'),
            ('C', 'Govinda III'),
            ('D', 'Krishna I')
           ) as v(label, option_text)
 where q.question_hash = '50a224216903ef91697380695285c6c4'
on conflict (question_id, label) do nothing;

-- history | medieval-south | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-south'),
    'Which Rashtrakuta ruler defeated the Pallavas and is praised for reviving the fortunes of his family?',
    'Dantidurga, who became rashtrapati in about 735 CE, crushed the Pallavas of Kanchi and re-established Rashtrakuta power in the Deccan.',
    'medium',
    'Standard Reference',
    null,
    'ba9a5c04981f0de84ee58c298b62b503'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'ba9a5c04981f0de84ee58c298b62b503'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Govinda III'),
            ('B', 'Amoghavarsha I'),
            ('C', 'Krishna I'),
            ('D', 'Dantidurga')
           ) as v(label, option_text)
 where q.question_hash = 'ba9a5c04981f0de84ee58c298b62b503'
on conflict (question_id, label) do nothing;

-- history | medieval-south | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-south'),
    'The Rashtrakuta ruler who invaded the Pallava kingdom and whose dohali inscription marks his accession was',
    'Govinda III, who reigned from about 848 to 867 CE, restored Rashtrakuta power over the eastern Deccan and is praised in his dohali inscription.',
    'hard',
    'Standard Reference',
    null,
    '8c6772b9b5845bb0f9e33ac87b4f42fc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '8c6772b9b5845bb0f9e33ac87b4f42fc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Govinda III'),
            ('B', 'Dantidurga'),
            ('C', 'Amoghavarsha I'),
            ('D', 'Krishna I')
           ) as v(label, option_text)
 where q.question_hash = '8c6772b9b5845bb0f9e33ac87b4f42fc'
on conflict (question_id, label) do nothing;

-- history | medieval-south | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-south'),
    'The Pandyan ruler credited with reviving Pandyan power after the Kalabhra interregnum by defeating the Cholas was',
    'Kadungon, in the late ninth century CE, defeated the Cholas and the Pandyas he took were restored to their ancient Madurai seat.',
    'hard',
    'Standard Reference',
    null,
    'bd2c48ff0a2f199965698d75b39baa08'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'bd2c48ff0a2f199965698d75b39baa08'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Veeraraghavan'),
            ('B', 'Kadungon'),
            ('C', 'Maravarman Maravakudiyar'),
            ('D', 'Rajaraja I')
           ) as v(label, option_text)
 where q.question_hash = 'bd2c48ff0a2f199965698d75b39baa08'
on conflict (question_id, label) do nothing;

-- history | medieval-south | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-south'),
    'The Pandyan ruler who defeated the Cholas at the Battle of Takkolam and took them captive was',
    'Maravarman Maravakudiyar''s victory over the Cholas at Takkolam around 831 CE, followed by the seizure of the Chola king, was the turning point in the Pandyan rise.',
    'hard',
    'Standard Reference',
    null,
    '4d2066c091f6bffe5c59afe4938676e0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '4d2066c091f6bffe5c59afe4938676e0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kadungon'),
            ('B', 'Rajaraja Chola I'),
            ('C', 'Sundara Pandyan'),
            ('D', 'Maravarman Maravakudiyar')
           ) as v(label, option_text)
 where q.question_hash = '4d2066c091f6bffe5c59afe4938676e0'
on conflict (question_id, label) do nothing;

-- history | medieval-south | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-south'),
    'Which Pandyan ruler is said to have defeated the Chola king at the Battle of Venni and to have seized his ancestral Chola territory?',
    'The Pandyan Parantaka I defeated Aditya Chola I at Venni in the tenth century CE, a victory commemorated in inscriptions, though later Chola tradition reverses the result.',
    'hard',
    'Standard Reference',
    null,
    'b4806f9fd2feb1eeacf7b85cac97e244'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'b4806f9fd2feb1eeacf7b85cac97e244'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Parantaka I'),
            ('B', 'Aditya Chola I'),
            ('C', 'Rajaraja I'),
            ('D', 'Kulottunga Chola III')
           ) as v(label, option_text)
 where q.question_hash = 'b4806f9fd2feb1eeacf7b85cac97e244'
on conflict (question_id, label) do nothing;

-- history | medieval-south | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-south'),
    'The Chola ruler who captured the ruler of Ceylon and took the Chola crown to the land of the Sinhalese was',
    'Rajaraja I''s Chola inscription records his campaign against the rulers of Lanka and the bringing of the Anuradhapura emblem to the Chola country.',
    'medium',
    'Standard Reference',
    null,
    '8a0389eb01ab1b1a93b05ad37d37f439'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '8a0389eb01ab1b1a93b05ad37d37f439'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Aditya Chola I'),
            ('B', 'Parantaka I'),
            ('C', 'Rajaraja Chola I'),
            ('D', 'Rajendra Chola I')
           ) as v(label, option_text)
 where q.question_hash = '8a0389eb01ab1b1a93b05ad37d37f439'
on conflict (question_id, label) do nothing;

-- history | medieval-south | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-south'),
    'The Rashtrakuta ruler who invaded Lanka and made the Chola ruler Rajendra accept the Rashtrakuta overlordship was',
    'Govinda III''s invasion of Sri Lanka around 875 CE forced the Chola ruler to accept the Rashtrakuta overlordship, and a Chola inscription lists his conquests.',
    'hard',
    'Standard Reference',
    null,
    '1ae185e41d1ced3da510a545524064d7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '1ae185e41d1ced3da510a545524064d7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Amoghavarsha I'),
            ('B', 'Krishna I'),
            ('C', 'Dantidurga'),
            ('D', 'Govinda III')
           ) as v(label, option_text)
 where q.question_hash = '1ae185e41d1ced3da510a545524064d7'
on conflict (question_id, label) do nothing;

-- history | medieval-south | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-south'),
    'The Hoysala ruler who built the Chennakeshava temple at Belur was',
    'Hoysala king Vishnuvardhana commissioned the Chennakeshava temple at Belur in 1117 CE, and his son Veera Ballala II added the Dalal Deva temple.',
    'medium',
    'Standard Reference',
    null,
    '4928b123d8644a7993c2b232c53708f6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '4928b123d8644a7993c2b232c53708f6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Vishnuvardhana'),
            ('B', 'Veera Ballala II'),
            ('C', 'Ballala I'),
            ('D', 'Harshavardhana')
           ) as v(label, option_text)
 where q.question_hash = '4928b123d8644a7993c2b232c53708f6'
on conflict (question_id, label) do nothing;

-- history | medieval-south | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-south'),
    'The Hoysala temple complex at Halebidu was built by which ruler?',
    'The Hoysala capital of Halebidu was developed under Veera Ballala II, whose twin temples of Hoysaleswara and Kedareshwara remain among the finest examples of the style.',
    'hard',
    'Standard Reference',
    null,
    'e151d6c2a82b82bd1c6343da200bc2f6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e151d6c2a82b82bd1c6343da200bc2f6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Harshavardhana'),
            ('B', 'Veera Ballala II'),
            ('C', 'Vishnuvardhana'),
            ('D', 'Ballala II')
           ) as v(label, option_text)
 where q.question_hash = 'e151d6c2a82b82bd1c6343da200bc2f6'
on conflict (question_id, label) do nothing;

-- history | medieval-south | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-south'),
    'The Vijayanagara rulers called themselves',
    'The Vijayanagara monarchs styled themselves the Raos of Vidyanagara, and their subordinate chiefs in the Tamil country were known as Nayakas.',
    'medium',
    'Standard Reference',
    null,
    'b3e8555d125744c7b8c3d2d7516e1a51'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'b3e8555d125744c7b8c3d2d7516e1a51'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rajas of the Eastern Chalukyas'),
            ('B', 'Kings of the Bahmani Sultanate'),
            ('C', 'Raos of Vidyanagara'),
            ('D', 'Nayakas of Madurai')
           ) as v(label, option_text)
 where q.question_hash = 'b3e8555d125744c7b8c3d2d7516e1a51'
on conflict (question_id, label) do nothing;

-- history | medieval-south | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-south'),
    'Who founded the Vijayanagara Empire?',
    'Harihara I and his brother Bukka founded the Vijayanagara state in 1336 CE in the wake of the Delhi Sultanate''s disintegration of the Deccan.',
    'easy',
    'NCERT Class XII',
    null,
    'a434825fca4edd0d133ab47a31d2c957'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a434825fca4edd0d133ab47a31d2c957'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Krishnadevaraya'),
            ('B', 'Devaraya I'),
            ('C', 'Harihara II'),
            ('D', 'Harihara I and Bukka')
           ) as v(label, option_text)
 where q.question_hash = 'a434825fca4edd0d133ab47a31d2c957'
on conflict (question_id, label) do nothing;

-- history | medieval-south | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-south'),
    'Which Vijayanagara ruler is regarded as the greatest of the dynasty and as a patron of Telugu literature?',
    'Krishnadevaraya, who ruled 1509-1529, was a great patron of Telugu and Sanskrit learning and the author of the Amuktamalyada.',
    'easy',
    'Standard Reference',
    null,
    '5abcc9e3d2d72d08efb895097285c7f6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '5abcc9e3d2d72d08efb895097285c7f6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Saluva Narasimha'),
            ('B', 'Achyuta Devaraya'),
            ('C', 'Krishnadevaraya'),
            ('D', 'Devaraya I')
           ) as v(label, option_text)
 where q.question_hash = '5abcc9e3d2d72d08efb895097285c7f6'
on conflict (question_id, label) do nothing;

-- history | medieval-south | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-south'),
    'The Portuguese traveller Domingo Paes, who visited Vijayanagara in 1520, described the city as',
    'Paes described Vijayanagara as larger than Rome, with a great bazaar, a fine palace and a stadium, an invaluable eyewitness account of the city.',
    'medium',
    'Standard Reference',
    null,
    'a18a493e041c376c7918679c912a1641'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a18a493e041c376c7918679c912a1641'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A city rivaling Rome and containing great bazaars and a magnificent palace'),
            ('B', 'A small village of mud houses'),
            ('C', 'A walled city of only temples'),
            ('D', 'A port town without any royal court')
           ) as v(label, option_text)
 where q.question_hash = 'a18a493e041c376c7918679c912a1641'
on conflict (question_id, label) do nothing;

-- history | medieval-south | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-south'),
    'The Vijayanagara empire fought the Bahmani Sultanate at which battle in 1520?',
    'At the Battle of Raichur in 1520 Krishnadevaraya decisively defeated the combined forces of the Bahmani Sultanate, with the help of the Portuguese gunners.',
    'medium',
    'Standard Reference',
    null,
    'bc45324416b656356b8c44ea7062c9c2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'bc45324416b656356b8c44ea7062c9c2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Battle of Plassey'),
            ('B', 'The Battle of Raichur'),
            ('C', 'The Battle of Talikota'),
            ('D', 'The Battle of Khanwa')
           ) as v(label, option_text)
 where q.question_hash = 'bc45324416b656356b8c44ea7062c9c2'
on conflict (question_id, label) do nothing;

-- history | medieval-south | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-south'),
    'The 1565 defeat of Vijayanagara at the Battle of Talikota led to the sack of the city by',
    'The combined armies of the five Deccan Sultanates defeated the Vijayanagara army at Talikota (Rakkasa-Tangadi) and sacked Hampi, and the empire never recovered.',
    'easy',
    'NCERT Class XII',
    null,
    '035a22c9cdfcdc2490aa1322c18e669e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '035a22c9cdfcdc2490aa1322c18e669e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Mughals'),
            ('B', 'The Marathas'),
            ('C', 'The Deccan Sultanates of Bijapur, Golconda, Ahmadnagar and Bidar'),
            ('D', 'The Portuguese')
           ) as v(label, option_text)
 where q.question_hash = '035a22c9cdfcdc2490aa1322c18e669e'
on conflict (question_id, label) do nothing;

-- history | medieval-south | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-south'),
    'Which Vijayanagara ruler wrote the Amuktamalyada?',
    'Krishnadevaraya wrote the Amuktamalyada, a Telugu poem on the story of the courtesan Amukta and the god Raghunatha.',
    'medium',
    'Standard Reference',
    null,
    '96995de7b51e557ce72e3d635b81e5b6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '96995de7b51e557ce72e3d635b81e5b6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Krishnadevaraya'),
            ('B', 'Devaraya I'),
            ('C', 'Saluva Narasimha'),
            ('D', 'Krishna Deva Raya II')
           ) as v(label, option_text)
 where q.question_hash = '96995de7b51e557ce72e3d635b81e5b6'
on conflict (question_id, label) do nothing;

-- history | medieval-south | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-south'),
    'The Nayaka ruler of Madurai who founded the palace at Madurai and built the thousand-pillared hall was',
    'Tirumala Nayak (reigned 1623-1659) built the vast Nayak palace at Madurai with its thousand-pillared golden hall and the temple of Sri Ranganatha.',
    'medium',
    'Standard Reference',
    null,
    '84ac0d7eac3675b9addd6c8694111ad6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '84ac0d7eac3675b9addd6c8694111ad6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Raghunatha Kilimambatti Nayak'),
            ('B', 'Tirumala Nayak'),
            ('C', 'Viswanatha Nayak'),
            ('D', 'Sethupathi Nayak')
           ) as v(label, option_text)
 where q.question_hash = '84ac0d7eac3675b9addd6c8694111ad6'
on conflict (question_id, label) do nothing;

-- history | medieval-south | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-south'),
    'The Madurai Nayaka ruler who is credited with the greatest architectural works including the Setti-Thoppu and the palace was',
    'Viswanatha Nayak, who ruled from 1656 CE, is credited with much of the present form of the Madurai palace and the Setti-Thoppu of the Sri Ranganatha temple.',
    'hard',
    'Standard Reference',
    null,
    'fec9a4070cf5f48cabaa1dad9be1b75a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'fec9a4070cf5f48cabaa1dad9be1b75a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Tirumala Nayak'),
            ('B', 'Raghunatha Kilimambatti Nayak'),
            ('C', 'Maravarman Maravakudiyar'),
            ('D', 'Viswanatha Nayak')
           ) as v(label, option_text)
 where q.question_hash = 'fec9a4070cf5f48cabaa1dad9be1b75a'
on conflict (question_id, label) do nothing;

-- history | medieval-south | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-south'),
    'The Nayaka ruler of Madurai known for his huge contributions to the Sri Ranganatha temple at Srirangam was',
    'Tirumala Nayak enlarged the Srirangam temple complex and erected the thousand-pillared hall, and his golden images are still carried in the temple festival.',
    'medium',
    'Standard Reference',
    null,
    'cb67cb1eabfd672023b738ea7beddf04'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'cb67cb1eabfd672023b738ea7beddf04'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Krishnappa Nayak'),
            ('B', 'Tirumala Nayak'),
            ('C', 'Sethupathi Nayak'),
            ('D', 'Viswanatha Nayak')
           ) as v(label, option_text)
 where q.question_hash = 'cb67cb1eabfd672023b738ea7beddf04'
on conflict (question_id, label) do nothing;

-- history | medieval-south | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-south'),
    'The Sethupathi Nayak of Madurai is known for his wars against',
    'Sethupathi Nayak earned his epithet by fighting the Marathas who were then raiding the Carnatic from their bases in the north of the Tamil country.',
    'hard',
    'Standard Reference',
    null,
    '6b720d987c677a41e374c10089839165'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '6b720d987c677a41e374c10089839165'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Portuguese'),
            ('B', 'The Mughals'),
            ('C', 'The Bahmani Sultanate'),
            ('D', 'The Marathas of the Carnatic')
           ) as v(label, option_text)
 where q.question_hash = '6b720d987c677a41e374c10089839165'
on conflict (question_id, label) do nothing;

-- history | medieval-south | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-south'),
    'The Maratha ruler of Tanjore who was a contemporary of the Mughal emperor Aurangzeb was',
    'Shahaji, the father of Shivaji, was a prominent general and ruler of the Tanjore area, held in high esteem by Aurangzeb and later involved in the escape of his son from confinement.',
    'medium',
    'Standard Reference',
    null,
    '45f7090d714026577d00228eb2717d4c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '45f7090d714026577d00228eb2717d4c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Shivaji'),
            ('B', 'Rajaram'),
            ('C', 'Sambhaji'),
            ('D', 'Shahaji')
           ) as v(label, option_text)
 where q.question_hash = '45f7090d714026577d00228eb2717d4c'
on conflict (question_id, label) do nothing;

-- history | medieval-south | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-south'),
    'The Chola and Vijayanagara period saw the growth of which trading city on the Coromandel coast under European factories?',
    'Nagapattinam in the Chola and Vijayanagara periods and Pulicat in the Vijayanagara period became the seats of European trading posts on the Coromandel coast.',
    'hard',
    'Standard Reference',
    null,
    '15130725a616cb9c5f57cc17ba87f7bd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '15130725a616cb9c5f57cc17ba87f7bd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Hampi'),
            ('B', 'Kollam'),
            ('C', 'Nagapattinam and Pulicat'),
            ('D', 'Muziris')
           ) as v(label, option_text)
 where q.question_hash = '15130725a616cb9c5f57cc17ba87f7bd'
on conflict (question_id, label) do nothing;

-- history | medieval-south | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-south'),
    'The Bahmani Sultanate was founded in 1347 by',
    'Ala-ud-Din Bahman Shah, a former Delhi Sultanate governor, founded the Bahmani Sultanate at Gulbarga, which lasted until its disintegration in 1482.',
    'medium',
    'Standard Reference',
    null,
    'bfe50564cde18cae68bf39a679928383'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'bfe50564cde18cae68bf39a679928383'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Adil Shah'),
            ('B', 'Ala-ud-Din Bahman Shah'),
            ('C', 'Muhammad bin Tughlaq'),
            ('D', 'Hasan Bahman Shah')
           ) as v(label, option_text)
 where q.question_hash = 'bfe50564cde18cae68bf39a679928383'
on conflict (question_id, label) do nothing;

-- history | medieval-south | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-south'),
    'The Deccan Sultanates of Ahmadnagar, Bijapur, Golconda and Bidar emerged after',
    'The disintegration of the Bahmani Sultanate after 1482 produced these four successor Deccan sultanates, which the Mughals later conquered in the seventeenth century.',
    'medium',
    'Standard Reference',
    null,
    'e00caf3f14fb7af35a9b3e4cfbf5cb34'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e00caf3f14fb7af35a9b3e4cfbf5cb34'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Mughal conquest of the Deccan'),
            ('B', 'The collapse of the Vijayanagara Empire'),
            ('C', 'The death of Aurangzeb'),
            ('D', 'The fragmentation of the Bahmani Sultanate')
           ) as v(label, option_text)
 where q.question_hash = 'e00caf3f14fb7af35a9b3e4cfbf5cb34'
on conflict (question_id, label) do nothing;

-- history | medieval-south | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-south'),
    'The Golconda sultanate was known for its',
    'Golconda was famed for the Golconda diamonds, which came to Europe through the Portuguese and the East India Company and included the Koh-i-Noor.',
    'medium',
    'Standard Reference',
    null,
    '3e676cf958cc2143ca5794dbdb0caad0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '3e676cf958cc2143ca5794dbdb0caad0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Horse breeding in Kathiawar'),
            ('B', 'Salt production in Kutch'),
            ('C', 'Diamond mines and the Koh-i-Noor'),
            ('D', 'Coral trade with Europe')
           ) as v(label, option_text)
 where q.question_hash = '3e676cf958cc2143ca5794dbdb0caad0'
on conflict (question_id, label) do nothing;

-- history | medieval-south | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-south'),
    'The great stupa of the Buddhist Sangha at Amaravati was destroyed in which century?',
    'The Amaravati stupa was damaged in the fourth century CE and later pulled down, and much of its fine sculpture was recovered from the surrounding mounds.',
    'hard',
    'Standard Reference',
    null,
    '64492506dafc33d3cf091020a787db86'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '64492506dafc33d3cf091020a787db86'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The fourth century CE'),
            ('B', 'The first century BCE'),
            ('C', 'The seventh century CE'),
            ('D', 'The eleventh century CE')
           ) as v(label, option_text)
 where q.question_hash = '64492506dafc33d3cf091020a787db86'
on conflict (question_id, label) do nothing;

-- history | medieval-south | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-south'),
    'The Chola bronze images of Sambandar and a devotee now in the Louvre were found at',
    'The two large Chola bronzes of the saint Sambandar and his wife are traditionally said to have been fished up from the sea at Nageswaram in the twelfth century CE.',
    'hard',
    'Standard Reference',
    null,
    '120557cfe144330c9396cfbec9cc185c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '120557cfe144330c9396cfbec9cc185c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sivaganga'),
            ('B', 'Kaveripattinam'),
            ('C', 'Nageswaram, near Kalahasti'),
            ('D', 'Tanur')
           ) as v(label, option_text)
 where q.question_hash = '120557cfe144330c9396cfbec9cc185c'
on conflict (question_id, label) do nothing;

-- history | medieval-south | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-south'),
    'The Tamil bhakti saint Appar, who travelled widely singing the praises of Vishnu, and Sambandar are among the',
    'The Nayanars, the Vaishnava and Shaiva saint-poets of the Tamil country, include Appar, Sambandar, Sundarar and Periyalvar, the Alvar counterpart.',
    'medium',
    'Standard Reference',
    null,
    '721ea0d2e1bc9e942539f3bc993ee8c9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '721ea0d2e1bc9e942539f3bc993ee8c9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Alvars'),
            ('B', 'Siddhars'),
            ('C', 'Kannada poets'),
            ('D', 'Nayanars')
           ) as v(label, option_text)
 where q.question_hash = '721ea0d2e1bc9e942539f3bc993ee8c9'
on conflict (question_id, label) do nothing;

-- history | medieval-south | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-south'),
    'The Alvar saint-poets of the Tamil country were the devotees of',
    'The twelve Alvars sang devotional poems to Vishnu in Tamil, and they were the Vaishnava counterparts of the Shaiva Nayanars.',
    'easy',
    'Standard Reference',
    null,
    'be3f7f8c5ae3e0d6fc42ebea2dd63778'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'be3f7f8c5ae3e0d6fc42ebea2dd63778'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Durga'),
            ('B', 'Vishnu'),
            ('C', 'Shiva'),
            ('D', 'Ganesha')
           ) as v(label, option_text)
 where q.question_hash = 'be3f7f8c5ae3e0d6fc42ebea2dd63778'
on conflict (question_id, label) do nothing;

-- history | medieval-south | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-south'),
    'The Chola land revenue system in the Tamil country included the collection of the state''s share of produce, often one third, collected through the',
    'Chola revenue was assessed on land and harvested produce, with officials of the Nadu and Kuruntalai divisions working through village assemblies and headmen.',
    'hard',
    'Standard Reference',
    null,
    'cf3849b9d4c4882e12d2aafb97f8afad'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'cf3849b9d4c4882e12d2aafb97f8afad'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kuruntalai and Nadu officials working with the village assemblies'),
            ('B', 'Mansabdars appointed by the Sultan'),
            ('C', 'Zabt officials of the Mughal period'),
            ('D', 'Ryotwari settlement officers of the British')
           ) as v(label, option_text)
 where q.question_hash = 'cf3849b9d4c4882e12d2aafb97f8afad'
on conflict (question_id, label) do nothing;

-- history | medieval-south | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-south'),
    'The Kadamba dynasty of the Deccan was founded by',
    'Mayurasharma, a Aryan prince who defeated the Pallava Simhavishnu, is credited with founding the Kadamba line at Banavasi in about 550 CE.',
    'hard',
    'Standard Reference',
    null,
    '3f44c25128a924617b9c3a0bcc18bac2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '3f44c25128a924617b9c3a0bcc18bac2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Shashanka'),
            ('B', 'Dantidurga'),
            ('C', 'Kakusandha'),
            ('D', 'Mayurasharma')
           ) as v(label, option_text)
 where q.question_hash = '3f44c25128a924617b9c3a0bcc18bac2'
on conflict (question_id, label) do nothing;

-- history | medieval-south | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-south'),
    'The Rashtrakuta ruler who is described as having married a Chalukya princess and taken the titles Jaya Karna and Pratap Karna was',
    'Govinda III''s Chalukya alliance is reflected in the titles Jaya Karna and Pratap Karna that he assumed, signalling his challenge to the Western Chalukyas.',
    'hard',
    'Standard Reference',
    null,
    '4422aa7ab8c589daffd0db96b8815f27'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '4422aa7ab8c589daffd0db96b8815f27'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Krishna I'),
            ('B', 'Govinda III'),
            ('C', 'Amoghavarsha I'),
            ('D', 'Dantidurga')
           ) as v(label, option_text)
 where q.question_hash = '4422aa7ab8c589daffd0db96b8815f27'
on conflict (question_id, label) do nothing;

-- history | medieval-south | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-south'),
    'The Ganga ruler who supported the Rashtrakutas in their campaigns and was granted the title of Rashtrapati was',
    'The Gangas of Talakad, beginning with Dharmavardhana, gave regular military support to the Rashtrakutas and received the title of Rashtrapati.',
    'hard',
    'Standard Reference',
    null,
    'bb2d9f960b3fc1ba314c5b6495016f74'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'bb2d9f960b3fc1ba314c5b6495016f74'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Dharmavardhana'),
            ('B', 'Shakavarman'),
            ('C', 'Devaraja'),
            ('D', 'Bhagavata')
           ) as v(label, option_text)
 where q.question_hash = 'bb2d9f960b3fc1ba314c5b6495016f74'
on conflict (question_id, label) do nothing;

-- history | medieval-south | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-south'),
    'Which inscription of the Rashtrakuta era is famous for the claim that no king equalled its donor in generosity?',
    'The Sanjan copper plates of Rasaraja of the Shilahara dynasty boast of the donor''s charity in terms that claim no king had rivalled it.',
    'hard',
    'Standard Reference',
    null,
    '879b5a562d73a5eb90fbfde46da895fd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '879b5a562d73a5eb90fbfde46da895fd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Junagadh inscription'),
            ('B', 'The Allahabad pillar inscription'),
            ('C', 'The Sanjan copper plates of the Shilahara king Rasaraja'),
            ('D', 'The Aihole inscription')
           ) as v(label, option_text)
 where q.question_hash = '879b5a562d73a5eb90fbfde46da895fd'
on conflict (question_id, label) do nothing;

-- history | medieval-north | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-north'),
    'The Gurjara-Pratihara ruler of the eighth to tenth centuries was a contemporary of which dynasty in the Deccan?',
    'The Gurjara-Pratiharas of Malwa and Kannauj rose in the eighth century CE at the same time as the Rashtrakutas of the Deccan, and the two powers were long rivals.',
    'medium',
    'Standard Reference',
    null,
    'd61f5392d22286f36bf3eb6be6b7be92'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd61f5392d22286f36bf3eb6be6b7be92'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Bahmani Sultanate'),
            ('B', 'The Rashtrakutas'),
            ('C', 'The Cholas'),
            ('D', 'The Vijayanagara')
           ) as v(label, option_text)
 where q.question_hash = 'd61f5392d22286f36bf3eb6be6b7be92'
on conflict (question_id, label) do nothing;

-- history | medieval-north | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-north'),
    'The Gurjara-Pratihara ruler who fought the Palas of Bengal and is said to have caused the Ganga king to flee was',
    'Nagabhata II of the Gurjara-Pratiharas defeated the Pala king Devapala and drove the Ganga ruler away from parts of northern India in the tenth century CE.',
    'hard',
    'Standard Reference',
    null,
    '2f8cb847da0ad7e92761d10720e873d0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '2f8cb847da0ad7e92761d10720e873d0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Shashanka'),
            ('B', 'Mahipala I'),
            ('C', 'Nagabhata II'),
            ('D', 'Devapala')
           ) as v(label, option_text)
 where q.question_hash = '2f8cb847da0ad7e92761d10720e873d0'
on conflict (question_id, label) do nothing;

-- history | medieval-north | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-north'),
    'Which dynasty of Bengal, ruling from about 750 to 1150 CE, was known for the patronage of Buddhism and the Nalanda and Vikramashila monasteries?',
    'The Pala dynasty, with its capital at Pataliputra and later Murshidabad, gave Buddhism fresh life and support to Nalanda and Vikramashila under Dharmapala and Mahipala I.',
    'medium',
    'NCERT Class XII',
    null,
    '2ce5a2c3cd5f43fc604adf2029d362ee'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '2ce5a2c3cd5f43fc604adf2029d362ee'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Palas'),
            ('B', 'The Senas'),
            ('C', 'The Devas'),
            ('D', 'The Shashankas')
           ) as v(label, option_text)
 where q.question_hash = '2ce5a2c3cd5f43fc604adf2029d362ee'
on conflict (question_id, label) do nothing;

-- history | medieval-north | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-north'),
    'The Pala king Dharmapala is associated with the establishment of',
    'Dharmapala, who sent a monk to Tibet, is credited with the establishment of Vikramashila at Bihar, while Nalanda was already in existence.',
    'hard',
    'Standard Reference',
    null,
    'ad59a680112911db2b82e531be9891e2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'ad59a680112911db2b82e531be9891e2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Nalanda'),
            ('B', 'Taxila'),
            ('C', 'Nalanda and Vikramashila together'),
            ('D', 'Vikramashila')
           ) as v(label, option_text)
 where q.question_hash = 'ad59a680112911db2b82e531be9891e2'
on conflict (question_id, label) do nothing;

-- history | medieval-north | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-north'),
    'The Pala king who sent the Buddhist monk Atisha to Tibet was',
    'Mahipala I, the great supporter of Buddhism in Bengal, is associated with sending Atisha to Tibet in the eleventh century CE.',
    'hard',
    'Standard Reference',
    null,
    '81ee94101398efb807359832889368d4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '81ee94101398efb807359832889368d4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Mahipala I'),
            ('B', 'Dharmapala'),
            ('C', 'Devapala'),
            ('D', 'Narasimhadeva')
           ) as v(label, option_text)
 where q.question_hash = '81ee94101398efb807359832889368d4'
on conflict (question_id, label) do nothing;

-- history | medieval-north | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-north'),
    'The Sena dynasty of Bengal was founded by',
    'Samanta Sena, described as a Kshatriya, founded the Sena dynasty in Bengal and was succeeded by his son Hemanta Sena and later by Vikramasena.',
    'hard',
    'Standard Reference',
    null,
    '0cdb0b20310171633a5f5b24c7765b1e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '0cdb0b20310171633a5f5b24c7765b1e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Hemanta Sena'),
            ('B', 'Vikramasena'),
            ('C', 'Ballala Sena'),
            ('D', 'Samanta Sena')
           ) as v(label, option_text)
 where q.question_hash = '0cdb0b20310171633a5f5b24c7765b1e'
on conflict (question_id, label) do nothing;

-- history | medieval-north | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-north'),
    'The Paramara ruler of Malwa who was a great patron of Sanskrit learning and is credited with the Sarasvatichiitra was',
    'Bhoja, the Paramara king of Malwa, was a celebrated scholar and author of the Sarasvatichiitra and was also the patron of the great temple at Bhojpur.',
    'medium',
    'Standard Reference',
    null,
    '5db9c4ac7fc2e2290d008fcc46dd73b3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '5db9c4ac7fc2e2290d008fcc46dd73b3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Udayaditya'),
            ('B', 'Karka I'),
            ('C', 'Bhoja'),
            ('D', 'Yasovarman')
           ) as v(label, option_text)
 where q.question_hash = '5db9c4ac7fc2e2290d008fcc46dd73b3'
on conflict (question_id, label) do nothing;

-- history | medieval-north | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-north'),
    'The Paramaras of Malwa were destroyed in the battle fought in 1141 against which Muslim power?',
    'The Paramara kingdom of Malwa was crushed in 1141 by Mahmud of Ghazni assisted by the Ghurid ruler Ala-ud-Din Bahman Shah.',
    'medium',
    'Standard Reference',
    null,
    'a229a5ac1b220ceddbdae8687305259f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a229a5ac1b220ceddbdae8687305259f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Ottomans of Anatolia'),
            ('B', 'The Turks of the Ghaznavid and Ghurid states'),
            ('C', 'The Delhi Sultanate of the Mughals'),
            ('D', 'The Mamluks of Egypt')
           ) as v(label, option_text)
 where q.question_hash = 'a229a5ac1b220ceddbdae8687305259f'
on conflict (question_id, label) do nothing;

-- history | medieval-north | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-north'),
    'The Chandela ruler who is credited with the construction of the Khajuraho group of temples was',
    'The great temples at Khajuraho were built over several generations by the Chandela rulers, with the Kandariya Mahadeva under Jayasimha and the Lakshmana temple following.',
    'medium',
    'Standard Reference',
    null,
    '8d01f39f08ae89a69c24ad4fea195879'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '8d01f39f08ae89a69c24ad4fea195879'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Prithviraj Chauhan'),
            ('B', 'Jayasimha Siddharaja'),
            ('C', 'Karkota king Durlabhavardhana'),
            ('D', 'Chandela kings in general')
           ) as v(label, option_text)
 where q.question_hash = '8d01f39f08ae89a69c24ad4fea195879'
on conflict (question_id, label) do nothing;

-- history | medieval-north | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-north'),
    'Which Chandela ruler is credited with the Kandariya Mahadeva temple at Khajuraho?',
    'The Kandariya Mahadeva temple at Khajuraho was built by the Chandela king Jayasimha Siddharaja, and the Lakshmana temple was his son Vishvanatha''s contribution.',
    'hard',
    'Standard Reference',
    null,
    'b11a151796fc4e8bce0509b7227d2156'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'b11a151796fc4e8bce0509b7227d2156'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Jayasimha Siddharaja'),
            ('B', 'Vishvanatha'),
            ('C', 'Shilpaditya'),
            ('D', 'Bhoja')
           ) as v(label, option_text)
 where q.question_hash = 'b11a151796fc4e8bce0509b7227d2156'
on conflict (question_id, label) do nothing;

-- history | medieval-north | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-north'),
    'The Gahadavalas ruled mainly in which region of northern India?',
    'The Gahadavalas, who traced their ancestry to the Gurjara-Pratiharas, held the Ganga valley and Rohilkhand and built the impressive Dashavatara temple at Deogarh.',
    'hard',
    'Standard Reference',
    null,
    'a9fb1c7056d2094c2e3a78b94b1c132f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a9fb1c7056d2094c2e3a78b94b1c132f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Kangra valley'),
            ('B', 'The Ganga valley and Rohilkhand'),
            ('C', 'The Konkan'),
            ('D', 'The Carnatic')
           ) as v(label, option_text)
 where q.question_hash = 'a9fb1c7056d2094c2e3a78b94b1c132f'
on conflict (question_id, label) do nothing;

-- history | medieval-north | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-north'),
    'The Tomar dynasty of Delhi and Kannauj was founded by',
    'Anangpal Tomar founded the Tomar line at Delhi in the twelfth century CE, and his descendants ruled at Tomar''s nagar, modern Tughlaqabad.',
    'hard',
    'Standard Reference',
    null,
    '014ff102cc0c57dcc8aa0be979984de8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '014ff102cc0c57dcc8aa0be979984de8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Chahamana ruler Prithviraj'),
            ('B', 'Satyavarsha'),
            ('C', 'Anangpal Tomar'),
            ('D', 'Prithviraj')
           ) as v(label, option_text)
 where q.question_hash = '014ff102cc0c57dcc8aa0be979984de8'
on conflict (question_id, label) do nothing;

-- history | medieval-north | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-north'),
    'The Chauhan ruler who is celebrated in the Prithviraj Raso as the ideal king and who defeated the Ghurids at the Tarain battle was',
    'Prithviraj Chauhan, the last great Chauhan king of Ajmer, is the hero of the Prithviraj Raso and fought Muhammad of Ghor at Tarain in 1191-92 CE.',
    'medium',
    'Standard Reference',
    null,
    'cb77cd981852f417680ea5b7a4dfd27c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'cb77cd981852f417680ea5b7a4dfd27c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Anangpal Tomar'),
            ('B', 'Jayasimha Siddharaja'),
            ('C', 'Samanta Sena'),
            ('D', 'Prithviraj Chauhan')
           ) as v(label, option_text)
 where q.question_hash = 'cb77cd981852f417680ea5b7a4dfd27c'
on conflict (question_id, label) do nothing;

-- history | medieval-north | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-north'),
    'The Karkota dynasty of Kashmir, which revived the patronage of temples after the Muslim sultans, was founded by',
    'Durlabhavardhana founded the Karkota line in Kashmir in the ninth century CE, and his successor Durlabhin is remembered for restoring Hindu temples.',
    'hard',
    'Standard Reference',
    null,
    'ee99ab5bf0c82557e127cc4871e635de'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'ee99ab5bf0c82557e127cc4871e635de'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sultan Zain-ul-Abidin'),
            ('B', 'Durlabhavardhana'),
            ('C', 'Durlabhavardhana''s successor Durlabhin'),
            ('D', 'Samarata Khan')
           ) as v(label, option_text)
 where q.question_hash = 'ee99ab5bf0c82557e127cc4871e635de'
on conflict (question_id, label) do nothing;

-- history | medieval-north | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-north'),
    'The Ahom kingdom of Assam was founded by',
    'The Ahom state was founded in 1228 CE by Chauka Nangalaliasu, and it resisted Mughal expansion for several centuries.',
    'medium',
    'Standard Reference',
    null,
    'b0fac0cf81357c3ff4462bd0e9e53981'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'b0fac0cf81357c3ff4462bd0e9e53981'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Udayaditya Singha'),
            ('B', 'Sikri Shah'),
            ('C', 'Chauka Nangalaliasu'),
            ('D', 'Suhungmung')
           ) as v(label, option_text)
 where q.question_hash = 'b0fac0cf81357c3ff4462bd0e9e53981'
on conflict (question_id, label) do nothing;

-- history | medieval-north | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-north'),
    'The Ahom ruler who is credited with the expansion of the kingdom into the Brahmaputra valley was',
    'Suhungmung, the third Ahom ruler, extended Ahom control into the Brahmaputra valley and is credited with introducing the system of the Maternal Clan or Hoo-Kham.',
    'hard',
    'Standard Reference',
    null,
    'dedca7dc71fcf2ce21e7ae7e0fec337e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'dedca7dc71fcf2ce21e7ae7e0fec337e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Suhungmung'),
            ('B', 'Udayaditya Singha'),
            ('C', 'Radhakrishna Singha'),
            ('D', 'Jayadhwaj Singha')
           ) as v(label, option_text)
 where q.question_hash = 'dedca7dc71fcf2ce21e7ae7e0fec337e'
on conflict (question_id, label) do nothing;

-- history | medieval-north | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-north'),
    'The Battle of Saraighat of 1671, in which the Ahoms defeated the Mughals, was fought on the',
    'The Battle of Saraighat was fought on the Brahmaputra in 1671 and the Ahom general Lachit Bora turned back the Mughal invasion of Assam.',
    'medium',
    'Static GK',
    null,
    'f2e882af64cde2efd1238ea589a11b60'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f2e882af64cde2efd1238ea589a11b60'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Tista river'),
            ('B', 'Brahmaputra river'),
            ('C', 'Dhwara river'),
            ('D', 'Ganga river')
           ) as v(label, option_text)
 where q.question_hash = 'f2e882af64cde2efd1238ea589a11b60'
on conflict (question_id, label) do nothing;

-- history | medieval-north | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-north'),
    'The Ahom general who led the Ahom forces at the Battle of Saraighat was',
    'Lachit Bora commanded the Ahom army at Saraighat and is remembered as one of the great military leaders of Assam.',
    'medium',
    'Static GK',
    null,
    '268416099b7bd95dde72d6ba037cc4b2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '268416099b7bd95dde72d6ba037cc4b2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Radhakrishna Singha'),
            ('B', 'Jayadhwaj Singha'),
            ('C', 'Lachit Bora'),
            ('D', 'Chandivarman')
           ) as v(label, option_text)
 where q.question_hash = '268416099b7bd95dde72d6ba037cc4b2'
on conflict (question_id, label) do nothing;

-- history | medieval-north | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-north'),
    'The last ruler of the Ahom dynasty, who surrendered to the British after the Burmese invasion of Assam, was',
    'Jayadhwaj Singha, the last Ahom king, signed the treaty with the British in 1826 after the Burmese invasion shattered the kingdom.',
    'hard',
    'Standard Reference',
    null,
    '8578250fefb26268846f095ebbe0a721'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '8578250fefb26268846f095ebbe0a721'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Jayadhwaj Singha'),
            ('B', 'Udayaditya Singha'),
            ('C', 'Radhakrishna Singha'),
            ('D', 'Chandivarman')
           ) as v(label, option_text)
 where q.question_hash = '8578250fefb26268846f095ebbe0a721'
on conflict (question_id, label) do nothing;

-- history | medieval-north | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-north'),
    'The Hoysala ruler who is credited with the composition of the Vaddaradhane, a collection of old Kannada poems, was',
    'The Vaddaradhane, a collection of old Kannada poems, was written under the patronage of the Hoysala king Veera Ballala II.',
    'hard',
    'Standard Reference',
    null,
    '3c97f56d2021fa24d05710b4c5c4bf5e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '3c97f56d2021fa24d05710b4c5c4bf5e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Vishnuvardhana'),
            ('B', 'Ballala I'),
            ('C', 'Harshavardhana'),
            ('D', 'Veera Ballala II')
           ) as v(label, option_text)
 where q.question_hash = '3c97f56d2021fa24d05710b4c5c4bf5e'
on conflict (question_id, label) do nothing;

-- history | medieval-north | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-north'),
    'The Kalachuri dynasty of Tripuri, which was a contemporary power in central India during the eleventh and twelfth centuries, was founded by',
    'Shankaragana founded the Kalachuri line at Tripuri in the tenth century CE, and the dynasty became famous for its patronage of temples and literature.',
    'hard',
    'Standard Reference',
    null,
    'd12c0f4ed89f735ae36c71e8643b0921'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd12c0f4ed89f735ae36c71e8643b0921'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Yashodharman'),
            ('B', 'Shankaragana'),
            ('C', 'Karnataka'),
            ('D', 'Shantivarman')
           ) as v(label, option_text)
 where q.question_hash = 'd12c0f4ed89f735ae36c71e8643b0921'
on conflict (question_id, label) do nothing;

-- history | medieval-north | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-north'),
    'The Bhimbetka cave paintings, which depict scenes from the Mesolithic and later periods, are located in',
    'The Bhimbetka rock shelters near Bhopal in Madhya Pradesh contain paintings from the Mesolithic period onwards and were recognised as a World Heritage site.',
    'easy',
    'Static GK',
    null,
    '62138c9dcc99139ba76463f6ec7be18b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '62138c9dcc99139ba76463f6ec7be18b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rajasthan'),
            ('B', 'Uttar Pradesh'),
            ('C', 'Madhya Pradesh'),
            ('D', 'Karnataka')
           ) as v(label, option_text)
 where q.question_hash = '62138c9dcc99139ba76463f6ec7be18b'
on conflict (question_id, label) do nothing;

-- history | medieval-north | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-north'),
    'The Jaintia, Ahom and other tribes of the north-east formed the medieval polity known as',
    'Kamarupa, roughly the present Assam region, was ruled at different times by the Varmans, the Kachari and the Ahoms, and it was a major power in medieval north-east India.',
    'medium',
    'Standard Reference',
    null,
    '0275bfce9b5f050f50c3fe46dd479bb3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '0275bfce9b5f050f50c3fe46dd479bb3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kamarupa'),
            ('B', 'Kalinga'),
            ('C', 'Vanga'),
            ('D', 'Suvarnabhumi')
           ) as v(label, option_text)
 where q.question_hash = '0275bfce9b5f050f50c3fe46dd479bb3'
on conflict (question_id, label) do nothing;

-- history | medieval-north | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-north'),
    'The Varman ruler of Kamarupa who is credited with the construction of the temple of Udayaditya at Sibsagar was',
    'Udayaditya Singha, the first ruler of the Ahom dynasty, built the Udayaditya temple at Sibsagar, the earliest surviving stone temple of the region.',
    'hard',
    'Standard Reference',
    null,
    'c5336f26c773b2ef84d78d2aa1dc2252'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'c5336f26c773b2ef84d78d2aa1dc2252'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Shahastra Singha'),
            ('B', 'Suhungmung'),
            ('C', 'Jayadhwaj Singha'),
            ('D', 'Udayaditya Singha')
           ) as v(label, option_text)
 where q.question_hash = 'c5336f26c773b2ef84d78d2aa1dc2252'
on conflict (question_id, label) do nothing;

-- history | medieval-north | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-north'),
    'The Khangar dynasty of the Doab and the Tomars and Chauhans of the Ganga plain were',
    'The Gahadavalas, Khangars, Tomars, Chauhans and Chandelas were regional Rajput and related clans that ruled northern India before the Delhi Sultanate replaced them.',
    'medium',
    'Standard Reference',
    null,
    '3a4bc8443ac2985f314e4ef0c3e18802'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '3a4bc8443ac2985f314e4ef0c3e18802'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Turkic-origin dynasties of the Ghurid type'),
            ('B', 'Kshatriya lineages of the Pallava type'),
            ('C', 'Trading guilds of the Chenapatnaik type'),
            ('D', 'Rajput and related clans that dominated northern India before the Sultanate consolidated power')
           ) as v(label, option_text)
 where q.question_hash = '3a4bc8443ac2985f314e4ef0c3e18802'
on conflict (question_id, label) do nothing;

-- history | medieval-north | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-north'),
    'The Rajput ruler who built the Chittorgarh fort and is remembered for the famous vow of the jauhar was',
    'Ratan Singh, a Rajput ruler of the Chauhan family, built the fort at Chittor in the twelfth century and is the hero of the vow of the jauhar described in the legends of Mewar.',
    'medium',
    'Standard Reference',
    null,
    '438eebecc457f5596ce3a7cc8e5b26ea'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '438eebecc457f5596ce3a7cc8e5b26ea'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Prithviraj'),
            ('B', 'Jayasimha Siddharaja'),
            ('C', 'Ratan Singh'),
            ('D', 'Sisodia ruler of Mewar')
           ) as v(label, option_text)
 where q.question_hash = '438eebecc457f5596ce3a7cc8e5b26ea'
on conflict (question_id, label) do nothing;

-- history | medieval-north | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-north'),
    'The Paramara ruler Yashovarman is credited with the construction of the temple at',
    'Yashovarman of the Paramara line of Malwa built the famous Bhojeshwara temple at Bhojpur, a masterpiece of late Nagara architecture.',
    'hard',
    'Standard Reference',
    null,
    '6b4905613e6eb395f54785a7721f9660'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '6b4905613e6eb395f54785a7721f9660'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ellora'),
            ('B', 'Bhojpur'),
            ('C', 'Khajuraho'),
            ('D', 'Udayagiri')
           ) as v(label, option_text)
 where q.question_hash = '6b4905613e6eb395f54785a7721f9660'
on conflict (question_id, label) do nothing;

-- history | medieval-north | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-north'),
    'The Sind ruler who adopted the title of Rajaraja and was a contemporary of the Ghurids was',
    'Kirthar of the Samma dynasty of Sind adopted the title Rajaraja and minted coins in the style of the Hindu sovereigns of the era.',
    'hard',
    'Standard Reference',
    null,
    'ea92c4456f910d4532e8938bff067137'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ea92c4456f910d4532e8938bff067137'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kirthar'),
            ('B', 'Shams ud-Din Tamam al-Din'),
            ('C', 'Arjun'),
            ('D', 'Rai Bihari Mal')
           ) as v(label, option_text)
 where q.question_hash = 'ea92c4456f910d4532e8938bff067137'
on conflict (question_id, label) do nothing;

-- history | medieval-north | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-north'),
    'The Jaiswal merchant family of Gujarat, who were patrons of the Dwarka temple, were also known by the name',
    'The Jaiswal Seths of Porbandar and Dwarka were prominent Shaiva and Vaishnava patrons under the Solankis and the Vaghelas, and their inscriptions are plentiful.',
    'hard',
    'Standard Reference',
    null,
    'c299ec3fa5d76210e8a2d3758c1b3778'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'c299ec3fa5d76210e8a2d3758c1b3778'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Modis of Surat'),
            ('B', 'Seths of Porbandar'),
            ('C', 'Khatris of Mathura'),
            ('D', 'Bohras of Gujarat')
           ) as v(label, option_text)
 where q.question_hash = 'c299ec3fa5d76210e8a2d3758c1b3778'
on conflict (question_id, label) do nothing;

-- history | medieval-north | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-north'),
    'The Solanki ruler of Gujarat who built the Sun Temple at Modhera was',
    'Bhima I of the Chaulukya or Solanki line of Gujarat built the Sun Temple at Modhera in the eleventh century CE.',
    'medium',
    'Standard Reference',
    null,
    '6a41ece298ade975c83f85124f3a9834'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '6a41ece298ade975c83f85124f3a9834'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Durlabhin'),
            ('B', 'Jayasimha'),
            ('C', 'Bhima I'),
            ('D', 'Udayaditya')
           ) as v(label, option_text)
 where q.question_hash = '6a41ece298ade975c83f85124f3a9834'
on conflict (question_id, label) do nothing;

-- history | medieval-north | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-north'),
    'The Chaulukya ruler of Gujarat who captured the fortress of Anhimal was',
    'Bhima I of the Solanki line captured the Chauhan fort of Anhimal in 1027-28, an event commemorated in his famous Ganeshwar inscription.',
    'hard',
    'Standard Reference',
    null,
    'abb9abe75d483b754a4d359a94ba258f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'abb9abe75d483b754a4d359a94ba258f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bhima I'),
            ('B', 'Karna'),
            ('C', 'Udayaditya'),
            ('D', 'Durgadasa')
           ) as v(label, option_text)
 where q.question_hash = 'abb9abe75d483b754a4d359a94ba258f'
on conflict (question_id, label) do nothing;

-- history | medieval-north | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-north'),
    'The Ganeshwar inscription of 1027-28 CE is an important record of which dynasty?',
    'The Ganeshwar inscription, issued by the Chaulukya king Bhima I, celebrates his campaigns against the Chalukyas of Vatapi and the capture of Anhimal.',
    'hard',
    'Standard Reference',
    null,
    'ea73dfdc20c89d9852cbf8b58983626f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'ea73dfdc20c89d9852cbf8b58983626f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Pala dynasty'),
            ('B', 'The Paramara dynasty'),
            ('C', 'The Karkota dynasty'),
            ('D', 'The Chaulukya or Solanki dynasty of Gujarat')
           ) as v(label, option_text)
 where q.question_hash = 'ea73dfdc20c89d9852cbf8b58983626f'
on conflict (question_id, label) do nothing;

-- history | medieval-north | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-north'),
    'The Vikramashila and Nalanda monasteries were plundered and destroyed during the campaigns of',
    'The Bakhtiyar Khalji''s campaigns against the monasteries of Bihar, including Nalanda and Vikramashila, are described in the later chronicles and in Minhaj-us-Saliban''s Tabqat-i-Nasiri.',
    'medium',
    'NCERT Class XII',
    null,
    '1b1db0bf5ec5a8b489c52b2d7ba5a3a7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '1b1db0bf5ec5a8b489c52b2d7ba5a3a7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Timur'),
            ('B', 'Alauddin Khalji'),
            ('C', 'Muhammad bin Tughlaq'),
            ('D', 'Bakhtiyar Khalji')
           ) as v(label, option_text)
 where q.question_hash = '1b1db0bf5ec5a8b489c52b2d7ba5a3a7'
on conflict (question_id, label) do nothing;

-- history | delhi-sultanate | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'delhi-sultanate'),
    'The Khilji dynasty of the Delhi Sultanate is also known by the name of',
    'The Khaljis were a Turko-Afghan tribe from Central Asia, and the dynasty''s founder Jalal ud-Din is distinguished from his son and successor Alauddin.',
    'medium',
    'NCERT Class XII',
    null,
    '7b8e90a3fcf0c9a9a142e806709f5e7f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '7b8e90a3fcf0c9a9a142e806709f5e7f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Jalal ud-Din line of Turk origin'),
            ('B', 'The Khalji dynasty'),
            ('C', 'The Tughlaq dynasty'),
            ('D', 'The Lodi dynasty')
           ) as v(label, option_text)
 where q.question_hash = '7b8e90a3fcf0c9a9a142e806709f5e7f'
on conflict (question_id, label) do nothing;

-- history | delhi-sultanate | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'delhi-sultanate'),
    'Who was the founder of the Mamluk or Slave dynasty of Delhi?',
    'Qutb ud-Din Aibak, a former slave of Muhammad Ghor, was appointed governor of Delhi and Badakhshan and established the Mamluk dynasty in 1206 CE.',
    'easy',
    'NCERT Class XII',
    null,
    '773ca84a88799a91b3731638c969a457'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '773ca84a88799a91b3731638c969a457'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Alauddin Khalji'),
            ('B', 'Qutb ud-Din Aibak'),
            ('C', 'Iltutmish'),
            ('D', 'Balban')
           ) as v(label, option_text)
 where q.question_hash = '773ca84a88799a91b3731638c969a457'
on conflict (question_id, label) do nothing;

-- history | delhi-sultanate | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'delhi-sultanate'),
    'The Qutb Minar was begun by Qutb ud-Din Aibak and completed by',
    'Aibak built only the first storey of the Qutb Minar and Iltutmish added three more storeys in red sandstone, giving the monument its present height.',
    'easy',
    'NCERT Class XII',
    null,
    '1884b9323337e67abe841c5aa937db3d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '1884b9323337e67abe841c5aa937db3d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Firoz Shah Tughlaq'),
            ('B', 'Jalal ud-Din Khilji'),
            ('C', 'Iltutmish'),
            ('D', 'Alauddin Khalji')
           ) as v(label, option_text)
 where q.question_hash = '1884b9323337e67abe841c5aa937db3d'
on conflict (question_id, label) do nothing;

-- history | delhi-sultanate | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'delhi-sultanate'),
    'Which Delhi Sultanate ruler built the Alai Darwaza and the Alai Minar?',
    'Alauddin Khalji commissioned the Alai Darwaza and the Alai Minar, of which only the Alai Minar''s first storey was completed.',
    'easy',
    'NCERT Class XII',
    null,
    '472e2835f25706c6ca018bcb57206181'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '472e2835f25706c6ca018bcb57206181'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Firoz Shah Tughlaq'),
            ('B', 'Alauddin Khalji'),
            ('C', 'Jalal ud-Din Khilji'),
            ('D', 'Muhammad bin Tughlaq')
           ) as v(label, option_text)
 where q.question_hash = '472e2835f25706c6ca018bcb57206181'
on conflict (question_id, label) do nothing;

-- history | delhi-sultanate | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'delhi-sultanate'),
    'The tomb of Iltutmish at Delhi is located in which complex?',
    'Iltutmish''s tomb, built by his wife Shah Turkan, stands within the Qutb complex and is one of the earliest surviving examples of Islamic domed architecture in India.',
    'medium',
    'NCERT Class XII',
    null,
    'd5f04d992023383da7ce9967522527f5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd5f04d992023383da7ce9967522527f5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Qutb complex'),
            ('B', 'The Tughlaqabad complex'),
            ('C', 'The Lodi Gardens'),
            ('D', 'The Humayun''s Tomb complex')
           ) as v(label, option_text)
 where q.question_hash = 'd5f04d992023383da7ce9967522527f5'
on conflict (question_id, label) do nothing;

-- history | delhi-sultanate | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'delhi-sultanate'),
    'Razia Sultan, the only woman to rule the Delhi Sultanate, was killed in 1240 by',
    'Razia was killed by rebel Jats while returning from the Punjab frontier in 1240, an event chronicled in the Minhaj-us-Saliban''s Tabqat-i-Nasiri.',
    'medium',
    'NCERT Class XII',
    null,
    'b4a36ace149176fcb8761c02a63d283a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'b4a36ace149176fcb8761c02a63d283a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Her own vizier'),
            ('B', 'The rival ruler of Bengal'),
            ('C', 'The Jats of the Punjab frontier'),
            ('D', 'The Mongol leader Chengiz Khan')
           ) as v(label, option_text)
 where q.question_hash = 'b4a36ace149176fcb8761c02a63d283a'
on conflict (question_id, label) do nothing;

-- history | delhi-sultanate | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'delhi-sultanate'),
    'Which Delhi Sultanate ruler was assassinated by the Mongols in 1241?',
    'Iltutmish died in 1241 at Tabas in Transoxiana while campaigning against the Mongols, and his body was later brought back to Delhi.',
    'medium',
    'NCERT Class XII',
    null,
    'a849061ed64e853b21aac965ac98c082'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a849061ed64e853b21aac965ac98c082'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Qutb ud-Din Aibak'),
            ('B', 'Balban'),
            ('C', 'Nasiruddin Mahmud'),
            ('D', 'Iltutmish')
           ) as v(label, option_text)
 where q.question_hash = 'a849061ed64e853b21aac965ac98c082'
on conflict (question_id, label) do nothing;

-- history | delhi-sultanate | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'delhi-sultanate'),
    'The Delhi Sultanate ruler Ghiyas ud-Din Balban was the first to',
    'Balban made a clear break with the slave dynasty''s practice of governing in the name of the Caliph and set up a court of the Forty, the Forty-Five and the Fifty.',
    'hard',
    'NCERT Class XII',
    null,
    '327b531ca4eaed089555be5efc05eade'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '327b531ca4eaed089555be5efc05eade'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Declare a sovereign sultanate and to hold a formal court of the Forty and the Five'),
            ('B', 'Conquer the Deccan'),
            ('C', 'Build the Qutb Minar'),
            ('D', 'Introduce the mansabdari system')
           ) as v(label, option_text)
 where q.question_hash = '327b531ca4eaed089555be5efc05eade'
on conflict (question_id, label) do nothing;

-- history | delhi-sultanate | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'delhi-sultanate'),
    'Balban is remembered in history for suppressing which rebellion?',
    'Balban crushed the revolt of the Tughlaq family at Dipalpur and the rebellion of the nobles of the Punjab, strengthening the central authority of the Sultanate.',
    'medium',
    'NCERT Class XII',
    null,
    'e27599dba2194d4eeba20063e3ec0044'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e27599dba2194d4eeba20063e3ec0044'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The revolt of Jats in the Punjab'),
            ('B', 'The revolt of the Hindu zamindars in Bengal'),
            ('C', 'The revolt of the Syrian Christians'),
            ('D', 'The revolt of the nobles in the Punjab and the Tughlaq family in Dipalpur')
           ) as v(label, option_text)
 where q.question_hash = 'e27599dba2194d4eeba20063e3ec0044'
on conflict (question_id, label) do nothing;

-- history | delhi-sultanate | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'delhi-sultanate'),
    'The Mongol invasions of the Delhi Sultanate in 1267 and 1287-89 were led by',
    'The incursions of 1267 and 1287-89 under the Mongols of Kublai Khan forced the Delhi Sultanate to pay large tribute and to maintain a large standing army.',
    'medium',
    'NCERT Class XII',
    null,
    'f329959a0222e95385594fdf839e60af'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'f329959a0222e95385594fdf839e60af'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Genghis Khan'),
            ('B', 'Chengiz Khan''s sons only'),
            ('C', 'Kublai Khan and the Mongol commanders'),
            ('D', 'Timur')
           ) as v(label, option_text)
 where q.question_hash = 'f329959a0222e95385594fdf839e60af'
on conflict (question_id, label) do nothing;

-- history | delhi-sultanate | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'delhi-sultanate'),
    'Which Khalji ruler was assassinated by his own vizier in 1296?',
    'Jalal ud-Din Khilji was murdered by his ambitious vizier Alauddin at the instance of Malik Kafur, opening the way for the Khalji usurpation.',
    'medium',
    'NCERT Class XII',
    null,
    '1157f715b06764d51adff117b4cfeec0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '1157f715b06764d51adff117b4cfeec0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Barbak'),
            ('B', 'Jalal ud-Din Khilji'),
            ('C', 'Alauddin Khalji'),
            ('D', 'Kafur')
           ) as v(label, option_text)
 where q.question_hash = '1157f715b06764d51adff117b4cfeec0'
on conflict (question_id, label) do nothing;

-- history | delhi-sultanate | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'delhi-sultanate'),
    'Malik Kafur, the general of Alauddin Khalji, led campaigns in the south against',
    'Between 1299 and 1311 Malik Kafur led the southern expeditions of Alauddin Khalji, plundering Devagiri, Warangal, Madurai and the Chalukya capital of Vatapi.',
    'medium',
    'NCERT Class XII',
    null,
    '5cb35c83074f91468b55b7964185a642'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '5cb35c83074f91468b55b7964185a642'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kalinga and Tamralipti'),
            ('B', 'Kashmir and Ladakh'),
            ('C', 'Devagiri, Warangal, Madurai and the Chalukyas of Vatapi'),
            ('D', 'Kosala and Magadha')
           ) as v(label, option_text)
 where q.question_hash = '5cb35c83074f91468b55b7964185a642'
on conflict (question_id, label) do nothing;

-- history | delhi-sultanate | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'delhi-sultanate'),
    'Alauddin Khalji''s market reforms included',
    'Alauddin Khalji appointed market officials (muhtasib and shahna), fixed prices, ran state shops to break the traders'' combines and organised an intelligence service on prices.',
    'medium',
    'NCERT Class XII',
    null,
    '71b696cd21b1a8350d362ae999bd331d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '71b696cd21b1a8350d362ae999bd331d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Abolition of all taxation'),
            ('B', 'Free trade with no price control'),
            ('C', 'A fixed rate of exchange for gold and silver only'),
            ('D', 'Fixing the prices of goods and establishing state shops and a market intelligence service')
           ) as v(label, option_text)
 where q.question_hash = '71b696cd21b1a8350d362ae999bd331d'
on conflict (question_id, label) do nothing;

-- history | delhi-sultanate | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'delhi-sultanate'),
    'Alauddin Khalji''s chain of justice was a system of',
    'The chain of justice tied every cloth and garment to a licensed broker, while the merchants and artisans were collectively responsible for the conduct of their guilds.',
    'hard',
    'NCERT Class XII',
    null,
    '9ce73865958da40c3c4b061578f079a8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '9ce73865958da40c3c4b061578f079a8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Court procedure in the royal court'),
            ('B', 'Brand marks on clothes and a system of identification and collective responsibility of merchants and artisans'),
            ('C', 'Land grants to the nobility'),
            ('D', 'Tax-free grants to religious endowments')
           ) as v(label, option_text)
 where q.question_hash = '9ce73865958da40c3c4b061578f079a8'
on conflict (question_id, label) do nothing;

-- history | delhi-sultanate | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'delhi-sultanate'),
    'The token currency of copper coins introduced by Alauddin Khalji was intended to',
    'Alauddin''s copper token currency was meant to draw silver bullion into circulation and so prevent its hoarding and check the rise of prices.',
    'medium',
    'NCERT Class XII',
    null,
    '7744b074df2e8e7c055e28ff23019aa1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '7744b074df2e8e7c055e28ff23019aa1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Control the price of silver and prevent hoarding of bullion'),
            ('B', 'Pay the army''s salaries in gold'),
            ('C', 'Replace the kharaj tax'),
            ('D', 'Fund the construction of canals')
           ) as v(label, option_text)
 where q.question_hash = '7744b074df2e8e7c055e28ff23019aa1'
on conflict (question_id, label) do nothing;

-- history | delhi-sultanate | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'delhi-sultanate'),
    'Which ruler of the Delhi Sultanate introduced the token currency of copper and the system of the provincial governor''s periodic reporting?',
    'Alauddin Khalji introduced the copper token currency in 1330 and made the governors report to the centre by the ''sar-i-nazar'' system.',
    'medium',
    'NCERT Class XII',
    null,
    'aba1dfca31a9c0c2d6eca86e70a4729e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'aba1dfca31a9c0c2d6eca86e70a4729e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Alauddin Khalji'),
            ('B', 'Muhammad bin Tughlaq'),
            ('C', 'Iltutmish'),
            ('D', 'Firoz Shah Tughlaq')
           ) as v(label, option_text)
 where q.question_hash = 'aba1dfca31a9c0c2d6eca86e70a4729e'
on conflict (question_id, label) do nothing;

-- history | delhi-sultanate | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'delhi-sultanate'),
    'The system of separate provincial armies and the appointment of the governor''s son or brother as the successor was introduced by',
    'Alauddin Khalji made each governor responsible for the defence of his province with its own provincial army and tried to hereditary the office in the provincial households.',
    'hard',
    'Standard Reference',
    null,
    '40d93da01bb694f230df3ed22067c46b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '40d93da01bb694f230df3ed22067c46b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Balban'),
            ('B', 'Jalal ud-Din Khilji'),
            ('C', 'Qutb ud-Din Aibak'),
            ('D', 'Alauddin Khalji')
           ) as v(label, option_text)
 where q.question_hash = '40d93da01bb694f230df3ed22067c46b'
on conflict (question_id, label) do nothing;

-- history | delhi-sultanate | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'delhi-sultanate'),
    'The Delhi Sultanate ruler who is credited with the siege of Chittor in 1303 was',
    'Alauddin''s siege of Chittor in 1303 was followed by the siege of Devagiri in 1308, both of which were entrusted to his general Malik Kafur.',
    'medium',
    'NCERT Class XII',
    null,
    '442b9fb407b3bbaa48eb918409b07fc3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '442b9fb407b3bbaa48eb918409b07fc3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Muhammad bin Tughlaq'),
            ('B', 'Balban'),
            ('C', 'Alauddin Khalji'),
            ('D', 'Jalal ud-Din Khilji')
           ) as v(label, option_text)
 where q.question_hash = '442b9fb407b3bbaa48eb918409b07fc3'
on conflict (question_id, label) do nothing;

-- history | delhi-sultanate | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'delhi-sultanate'),
    'The Bengal ruler who fled to Assam after Alauddin Khalji''s expedition to Devagiri was',
    'Raja Ganesha of Bengal, defeated and driven away by the Khalji expedition, is said to have founded the Sena dynasty in Bengal.',
    'hard',
    'Standard Reference',
    null,
    'c119613b3ef6826b670df88f84549e5d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'c119613b3ef6826b670df88f84549e5d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Deva Raya'),
            ('B', 'Raja Ganesha'),
            ('C', 'Raja Danujmardana'),
            ('D', 'Shishunaga')
           ) as v(label, option_text)
 where q.question_hash = 'c119613b3ef6826b670df88f84549e5d'
on conflict (question_id, label) do nothing;

-- history | delhi-sultanate | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'delhi-sultanate'),
    'The founder of the Tughlaq dynasty of the Delhi Sultanate was',
    'Ghiyas ud-Din Tughlaq, a governor of the Punjab of Turkic origin, seized the throne in 1320 and founded the Tughlaq dynasty.',
    'easy',
    'NCERT Class XII',
    null,
    '969883a880d8952ff0d1f15a5e52dff8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '969883a880d8952ff0d1f15a5e52dff8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ghiyas ud-Din Tughlaq'),
            ('B', 'Muhammad bin Tughlaq'),
            ('C', 'Firoz Shah Tughlaq'),
            ('D', 'Nasiruddin Khusrau Shah')
           ) as v(label, option_text)
 where q.question_hash = '969883a880d8952ff0d1f15a5e52dff8'
on conflict (question_id, label) do nothing;

-- history | delhi-sultanate | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'delhi-sultanate'),
    'The Tughlaq ruler who moved the capital from Delhi to Daulatabad in 1335 was',
    'Muhammad bin Tughlaq shifted the capital to Daulatabad in the Deccan in 1335, but the move was abandoned within a decade because of the terrible heat and the hostility of the people.',
    'medium',
    'NCERT Class XII',
    null,
    'f0e6acecfabc22a219f14e0399c63b56'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'f0e6acecfabc22a219f14e0399c63b56'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ghiyas ud-Din Tughlaq'),
            ('B', 'Firoz Shah Tughlaq'),
            ('C', 'Alauddin Khalji'),
            ('D', 'Muhammad bin Tughlaq')
           ) as v(label, option_text)
 where q.question_hash = 'f0e6acecfabc22a219f14e0399c63b56'
on conflict (question_id, label) do nothing;

-- history | delhi-sultanate | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'delhi-sultanate'),
    'Muhammad bin Tughlaq''s policy of transferring the population from the Doab to the Deccan was intended to',
    'The transfers of the Doab population to the Deccan and the extension of the khalisa lands were meant to populate and secure the new capital, though they caused great suffering.',
    'medium',
    'NCERT Class XII',
    null,
    '6500824f720d216f0f8c03a90cd277c9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '6500824f720d216f0f8c03a90cd277c9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'To collect revenue from the peasantry'),
            ('B', 'To found a new religious order'),
            ('C', 'To make the new capital at Daulatabad prosperous and to control the frontier'),
            ('D', 'To punish the people of the Doab')
           ) as v(label, option_text)
 where q.question_hash = '6500824f720d216f0f8c03a90cd277c9'
on conflict (question_id, label) do nothing;

-- history | delhi-sultanate | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'delhi-sultanate'),
    'The peasants of the Doab and the Punjab rebelled against Muhammad bin Tughlaq in 1330-32. Who led the peasant rising?',
    'The revolt of 1330 was led by Qutbuddin Madani, a Shaikh of the Barwan tribe, and it spread across the Doab and the Punjab.',
    'hard',
    'NCERT Class XII',
    null,
    '1c8cd4dad0967e253eadbbb9b2989ae3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '1c8cd4dad0967e253eadbbb9b2989ae3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Makhdoom-i-Mulk'),
            ('B', 'Qutbuddin Madani'),
            ('C', 'Shaikh Mubarak'),
            ('D', 'Haibat Khan')
           ) as v(label, option_text)
 where q.question_hash = '1c8cd4dad0967e253eadbbb9b2989ae3'
on conflict (question_id, label) do nothing;

-- history | delhi-sultanate | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'delhi-sultanate'),
    'The revolts in the Deccan against Muhammad bin Tughlaq in 1332-33 were led by',
    'Mangal and Madhura, brothers of Barar and therefore rebels against the Sultan, led the peasant revolt in the Deccan, which had to be suppressed by an expedition led by Ayn al-Din.',
    'hard',
    'Standard Reference',
    null,
    '7e69499c577662fa4993c7bff4ee9782'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '7e69499c577662fa4993c7bff4ee9782'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ayn al-Din'),
            ('B', 'Haibat Khan'),
            ('C', 'Mangal and Madhura'),
            ('D', 'Qutbuddin Madani')
           ) as v(label, option_text)
 where q.question_hash = '7e69499c577662fa4993c7bff4ee9782'
on conflict (question_id, label) do nothing;

-- history | delhi-sultanate | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'delhi-sultanate'),
    'Muhammad bin Tughlaq''s madrasas were established at',
    'Muhammad bin Tughlaq established madrasas at four towns of the Doab and one at Bidar, where graduates were to be given honorary positions in the Sultanate.',
    'hard',
    'NCERT Class XII',
    null,
    '24335fbb4cd3742520312f39fb1dd27f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '24335fbb4cd3742520312f39fb1dd27f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'At all provincial capitals'),
            ('B', 'Four towns of the Doab and at Bidar in the Deccan'),
            ('C', 'Only at Delhi'),
            ('D', 'Only in the Punjab')
           ) as v(label, option_text)
 where q.question_hash = '24335fbb4cd3742520312f39fb1dd27f'
on conflict (question_id, label) do nothing;

-- history | delhi-sultanate | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'delhi-sultanate'),
    'The famine that struck the Delhi Sultanate during Muhammad bin Tughlaq''s reign occurred in which year?',
    'The terrible famine of 1340-41 hit the country between Delhi and the Deccan and is described with vivid detail in the chronicle of Ziauddin Barani.',
    'medium',
    'NCERT Class XII',
    null,
    '09a0688236723152c8415dab44ce31c5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '09a0688236723152c8415dab44ce31c5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1340-41'),
            ('B', '1320'),
            ('C', '1350'),
            ('D', '1365')
           ) as v(label, option_text)
 where q.question_hash = '09a0688236723152c8415dab44ce31c5'
on conflict (question_id, label) do nothing;

-- history | delhi-sultanate | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'delhi-sultanate'),
    'Firoz Shah Tughlaq is known for the construction of which canal system in Haryana?',
    'Firoz Shah dug the Western Canal from the Yamuna through Haryana to the Hisar region and extended other canals, reviving irrigation in the north.',
    'medium',
    'NCERT Class XII',
    null,
    'a89e8f30162ad200cdc952cd7a2e8a96'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a89e8f30162ad200cdc952cd7a2e8a96'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The East Canal from the Ganga to the Son'),
            ('B', 'The Firoz Shah Canal from the Sutlej to Delhi'),
            ('C', 'The Periyar irrigation channel'),
            ('D', 'The Western Canal from the Yamuna to the Hisar region')
           ) as v(label, option_text)
 where q.question_hash = 'a89e8f30162ad200cdc952cd7a2e8a96'
on conflict (question_id, label) do nothing;

-- history | delhi-sultanate | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'delhi-sultanate'),
    'Firoz Shah Tughlaq founded the cities of',
    'Firoz Shah founded the towns of Firozabad and Hisar in Haryana as new administrative centres for the restored canal colonies.',
    'medium',
    'NCERT Class XII',
    null,
    'd3ecb3132e7c3b77b47585f34931846b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd3ecb3132e7c3b77b47585f34931846b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Jaunpur and Champaner'),
            ('B', 'Vijaynagar and Warangal'),
            ('C', 'Firozabad and Hisar'),
            ('D', 'Daulatabad and Fatehabad')
           ) as v(label, option_text)
 where q.question_hash = 'd3ecb3132e7c3b77b47585f34931846b'
on conflict (question_id, label) do nothing;

-- history | delhi-sultanate | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'delhi-sultanate'),
    'Firoz Shah Tughlaq''s policy of forcibly converting the people of the zamin of the Sayyids and the Shahna was',
    'Historian Ziauddin Barani records that the conversion of the descendants of the Prophet and of the Sayyids was a blunder that turned the ulema against the Sultan.',
    'hard',
    'NCERT Class XII',
    null,
    '2f78c714da6958c570a6cd289229e178'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '2f78c714da6958c570a6cd289229e178'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Aimed at ending the jizya in the whole empire'),
            ('B', 'Condemned by the theologians and an obvious blunder that alienated the ulema'),
            ('C', 'Welcomed by the ulema as a religious duty'),
            ('D', 'The basis of his revenue reforms')
           ) as v(label, option_text)
 where q.question_hash = '2f78c714da6958c570a6cd289229e178'
on conflict (question_id, label) do nothing;

-- history | delhi-sultanate | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'delhi-sultanate'),
    'Firoz Shah Tughlaq''s revenue reforms included the abolition of several taxes and the introduction of the',
    'Firoz Shah abolished many small taxes and substituted a single land revenue of kharaj to be paid in cash, though the system was oppressive and not always collected.',
    'hard',
    'NCERT Class XII',
    null,
    '0869ec088094d78b440e9bee10ae0708'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '0869ec088094d78b440e9bee10ae0708'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kharaj and the collection of revenue in cash'),
            ('B', 'Jizya and the sale of offices'),
            ('C', 'Zabt and the sale of offices'),
            ('D', 'Mansdari')
           ) as v(label, option_text)
 where q.question_hash = '0869ec088094d78b440e9bee10ae0708'
on conflict (question_id, label) do nothing;

-- history | delhi-sultanate | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'delhi-sultanate'),
    'The Firuz Shah Kotla in Delhi was built by',
    'Firoz Shah Kotla, with the Ashokan pillar reused in its courtyard, was built by Firoz Shah Tughlaq on the site of Lal Kot, the earlier capital of the Tughlaqs.',
    'easy',
    'NCERT Class XII',
    null,
    '93300af122b43717ce45b7b4d288098b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '93300af122b43717ce45b7b4d288098b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Alauddin Khalji'),
            ('B', 'Muhammad bin Tughlaq'),
            ('C', 'Sikandar Lodi'),
            ('D', 'Firoz Shah Tughlaq')
           ) as v(label, option_text)
 where q.question_hash = '93300af122b43717ce45b7b4d288098b'
on conflict (question_id, label) do nothing;

-- history | delhi-sultanate | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'delhi-sultanate'),
    'The Tughlaqabad fort, with its sloping walls and numerous bastions, was built by',
    'Ghiyas ud-Din Tughlaq built the massive Tughlaqabad fort, which commands a wide view of the Delhi plain and served as the new capital.',
    'medium',
    'NCERT Class XII',
    null,
    '026624a5b55a4e997e5e3f89dffd5a6b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '026624a5b55a4e997e5e3f89dffd5a6b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Firoz Shah Tughlaq'),
            ('B', 'Jalal ud-Din Khilji'),
            ('C', 'Ghiyas ud-Din Tughlaq'),
            ('D', 'Muhammad bin Tughlaq')
           ) as v(label, option_text)
 where q.question_hash = '026624a5b55a4e997e5e3f89dffd5a6b'
on conflict (question_id, label) do nothing;

-- history | delhi-sultanate | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'delhi-sultanate'),
    'The founder of the Sayyid dynasty of the Delhi Sultanate was',
    'Khizr Khan, the viceroy appointed by Timur after his invasion, became independent ruler of Delhi in 1414 and founded the Sayyid dynasty.',
    'medium',
    'NCERT Class XII',
    null,
    '36a4aa5f314f9a33fdc1eb06abc212ee'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '36a4aa5f314f9a33fdc1eb06abc212ee'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Khizr Khan'),
            ('B', 'Alauddin Khalji'),
            ('C', 'Bahlul Lodi'),
            ('D', 'Sikandar Lodi')
           ) as v(label, option_text)
 where q.question_hash = '36a4aa5f314f9a33fdc1eb06abc212ee'
on conflict (question_id, label) do nothing;

-- history | delhi-sultanate | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'delhi-sultanate'),
    'The Sayyid ruler of Delhi who was killed in a mosque while being prayed upon was',
    'Alam Shah was killed in the mosque of the Sayyid family in 1439 and was succeeded by his son Bhlil or Khalilullah Shah.',
    'hard',
    'Standard Reference',
    null,
    'c8c7e4191c054f630e50d6a61e248722'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'c8c7e4191c054f630e50d6a61e248722'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Khalilullah Shah'),
            ('B', 'Khizr Khan'),
            ('C', 'Muzaffar Shah'),
            ('D', 'Alam Shah')
           ) as v(label, option_text)
 where q.question_hash = 'c8c7e4191c054f630e50d6a61e248722'
on conflict (question_id, label) do nothing;

-- history | delhi-sultanate | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'delhi-sultanate'),
    'The last Sayyid ruler of Delhi, whose authority was challenged by the governor of Punjab Jagat Singh, was',
    'Muzaffar Shah, the last Sayyid of Delhi, faced the challenge of Bahlul Lodi, the governor of Punjab, and was finally displaced in 1446.',
    'hard',
    'Standard Reference',
    null,
    'e0d81ce57e1573e9c3d3a8dba6d05968'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e0d81ce57e1573e9c3d3a8dba6d05968'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Khalilullah Shah'),
            ('B', 'Muzaffar Shah'),
            ('C', 'Alam Shah'),
            ('D', 'Khizr Khan')
           ) as v(label, option_text)
 where q.question_hash = 'e0d81ce57e1573e9c3d3a8dba6d05968'
on conflict (question_id, label) do nothing;

-- history | delhi-sultanate | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'delhi-sultanate'),
    'The founder of the Lodi dynasty of the Delhi Sultanate was',
    'Bahlul Lodi, a Pashtun chief of the Lodi tribe from Afghanistan, founded the Lodi dynasty at Delhi in 1451.',
    'easy',
    'NCERT Class XII',
    null,
    '683ed3c42a8ee6175e6956b57f7ab626'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '683ed3c42a8ee6175e6956b57f7ab626'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sikandar Lodi'),
            ('B', 'Ibrahim Lodi'),
            ('C', 'Alauddin Khalji'),
            ('D', 'Bahlul Lodi')
           ) as v(label, option_text)
 where q.question_hash = '683ed3c42a8ee6175e6956b57f7ab626'
on conflict (question_id, label) do nothing;

-- history | delhi-sultanate | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'delhi-sultanate'),
    'Sikandar Lodi''s most significant administrative measure was the introduction of the',
    'Sikandar Lodi organised the administration into sarkars, parganas and villages, and the sibhai system made the town officials directly responsible to the Sultan.',
    'medium',
    'NCERT Class XII',
    null,
    'f121a6a0f022f1ec785ad5ff862176c8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f121a6a0f022f1ec785ad5ff862176c8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sibhai system and the appointment of a governor (wali) in every town'),
            ('B', 'Zabt system of revenue assessment'),
            ('C', 'Mansabdari ranks'),
            ('D', 'Token currency of copper')
           ) as v(label, option_text)
 where q.question_hash = 'f121a6a0f022f1ec785ad5ff862176c8'
on conflict (question_id, label) do nothing;

-- history | delhi-sultanate | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'delhi-sultanate'),
    'The last ruler of the Delhi Sultanate, who died at the First Battle of Panipat in 1526, was',
    'Ibrahim Lodi, the last Sultan of Delhi, was defeated and killed at the First Battle of Panipat in 1526 by Babur, ending the Delhi Sultanate.',
    'easy',
    'NCERT Class XII',
    null,
    '54b70688f6305a4b8e9a7ed902fe6c51'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '54b70688f6305a4b8e9a7ed902fe6c51'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Nasiruddin Khusrau Shah'),
            ('B', 'Ibrahim Lodi'),
            ('C', 'Sikandar Lodi'),
            ('D', 'Bahlul Lodi')
           ) as v(label, option_text)
 where q.question_hash = '54b70688f6305a4b8e9a7ed902fe6c51'
on conflict (question_id, label) do nothing;

-- history | delhi-sultanate | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'delhi-sultanate'),
    'The first battle between the Mughals and the Delhi Sultanate took place at Panipat in which year?',
    'The First Battle of Panipat of 1526, fought with the help of gunpowder artillery, ended the Delhi Sultanate and established Mughal rule in northern India.',
    'easy',
    'NCERT Class XII',
    null,
    '053080b74fd94323bf6ec2d963889d28'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '053080b74fd94323bf6ec2d963889d28'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1527'),
            ('B', '1529'),
            ('C', '1526'),
            ('D', '1556')
           ) as v(label, option_text)
 where q.question_hash = '053080b74fd94323bf6ec2d963889d28'
on conflict (question_id, label) do nothing;

-- history | delhi-sultanate | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'delhi-sultanate'),
    'The Alai Darwaza at the Qutb complex was built by Alauddin Khalji to commemorate his victories in which region?',
    'The Alai Darwaza was built to commemorate the conquest of the Deccan, and the inscription at its entrance attributes the victory to the sword of the Sultan and the blade of his nobles.',
    'medium',
    'Standard Reference',
    null,
    '4c969114ac2b0f176e8a63ecd27d0026'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '4c969114ac2b0f176e8a63ecd27d0026'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kashmir'),
            ('B', 'The Deccan'),
            ('C', 'Bengal'),
            ('D', 'Gujarat')
           ) as v(label, option_text)
 where q.question_hash = '4c969114ac2b0f176e8a63ecd27d0026'
on conflict (question_id, label) do nothing;

-- history | delhi-sultanate | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'delhi-sultanate'),
    'Ibn Battuta, the Moroccan traveller who visited the Delhi Sultanate, is best known in Indian history for',
    'Ibn Battuta''s Rihla, written after his return, describes the court, the towns, the food, the dress and the taxes of the Sultanate and is a rich social document.',
    'medium',
    'NCERT Class XII',
    null,
    'c85a3dfb22fd654600679b659bbd813e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c85a3dfb22fd654600679b659bbd813e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The writing of the Tughlaq Nama'),
            ('B', 'The translation of the Arthashastra'),
            ('C', 'His detailed description of the society and economy of the Sultanate'),
            ('D', 'The composition of the Kitab-ul-Hind')
           ) as v(label, option_text)
 where q.question_hash = 'c85a3dfb22fd654600679b659bbd813e'
on conflict (question_id, label) do nothing;

-- history | delhi-sultanate | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'delhi-sultanate'),
    'The Kitab-ul-Hind, the famous work of Al-Biruni, deals with',
    'Al-Biruni''s Kitab-ul-Hind, written after his stay at Mahmud of Ghazni''s court, describes the geography, history, beliefs and customs of India from a critical standpoint.',
    'medium',
    'NCERT Class XII',
    null,
    '28e349dda8222e9d77f4b0e986c1b4ab'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '28e349dda8222e9d77f4b0e986c1b4ab'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The teachings of the Sufi orders'),
            ('B', 'The revenue system of the Sultanate'),
            ('C', 'The laws of the Hanafi school'),
            ('D', 'The geography, history, culture and religion of India')
           ) as v(label, option_text)
 where q.question_hash = '28e349dda8222e9d77f4b0e986c1b4ab'
on conflict (question_id, label) do nothing;

-- history | delhi-sultanate | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'delhi-sultanate'),
    'Amir Khusrau, the celebrated poet of the Delhi Sultanate, lived during the reigns of',
    'Amir Khusrau (1253-1325) lived through the reigns of the Khaljis, the Tughlaqs and the Sayyids and is the author of the Khazain-ul-Futuh and the Tuhfat-ul-Hind.',
    'medium',
    'NCERT Class XII',
    null,
    'eb4d2155e053ca2df95d78ea215c35ec'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'eb4d2155e053ca2df95d78ea215c35ec'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Tughlaqs and the Sayyids, and the Khalji ruler Alauddin'),
            ('B', 'Only the Mughals'),
            ('C', 'Only the British'),
            ('D', 'The Vijayanagara rulers only')
           ) as v(label, option_text)
 where q.question_hash = 'eb4d2155e053ca2df95d78ea215c35ec'
on conflict (question_id, label) do nothing;

-- history | delhi-sultanate | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'delhi-sultanate'),
    'Ziauddin Barani is best known in history for his writings on',
    'Barani wrote the Fatawa-i-Jahandari and the Tarikh-i-Firoz Shahi, giving invaluable accounts of the policies of the Khalji and Tughlaq rulers.',
    'medium',
    'NCERT Class XII',
    null,
    'cafee5cf75f61cebb94cac55c32320f3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'cafee5cf75f61cebb94cac55c32320f3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The British administration'),
            ('B', 'The Vijayanagara empire'),
            ('C', 'The Delhi Sultanate and its society under the Khaljis and the Tughlaqs'),
            ('D', 'The Mughal empire only')
           ) as v(label, option_text)
 where q.question_hash = 'cafee5cf75f61cebb94cac55c32320f3'
on conflict (question_id, label) do nothing;

-- history | delhi-sultanate | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'delhi-sultanate'),
    'Minhaj-i-Siraj, the chronicler of the Delhi Sultanate, wrote the',
    'Minhaj-i-Siraj''s Tabqat-i-Nasiri covers the history of the Muslim rulers of India from the Ghurids to the Tughlaqs.',
    'medium',
    'Standard Reference',
    null,
    '83de0a6122c019a12144e8ff7bec6853'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '83de0a6122c019a12144e8ff7bec6853'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Tarikh-i-Firoz Shahi'),
            ('B', 'Rihla'),
            ('C', 'Khazain-ul-Futuh'),
            ('D', 'Tabqat-i-Nasiri')
           ) as v(label, option_text)
 where q.question_hash = '83de0a6122c019a12144e8ff7bec6853'
on conflict (question_id, label) do nothing;

-- history | delhi-sultanate | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'delhi-sultanate'),
    'The royal household and court service of the Delhi Sultanate included the office of the',
    'The chibdar was an officer of the royal hunt and the palace service, and the other three were later offices of the market and kitchen administration.',
    'hard',
    'Standard Reference',
    null,
    'a221f4c7622ed9c4e875a4e9d93d92cf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a221f4c7622ed9c4e875a4e9d93d92cf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Chibdar, who supervised the royal hunt'),
            ('B', 'Shahna of the city market'),
            ('C', 'Muhtasib of prices'),
            ('D', 'Bakshi of the royal kitchen')
           ) as v(label, option_text)
 where q.question_hash = 'a221f4c7622ed9c4e875a4e9d93d92cf'
on conflict (question_id, label) do nothing;

-- history | delhi-sultanate | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'delhi-sultanate'),
    'The ruler who first imposed the jizya in India was',
    'Iltutmish imposed the jizya on the non-Muslims in 1231 at the request of the ulema, though it was not rigorously enforced until Alauddin Khalji''s time.',
    'hard',
    'Standard Reference',
    null,
    '85061ea26beea57569c4ac8d51e49be2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '85061ea26beea57569c4ac8d51e49be2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Balban'),
            ('B', 'Iltutmish'),
            ('C', 'Qutb ud-Din Aibak'),
            ('D', 'Alauddin Khalji')
           ) as v(label, option_text)
 where q.question_hash = '85061ea26beea57569c4ac8d51e49be2'
on conflict (question_id, label) do nothing;

-- history | delhi-sultanate | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'delhi-sultanate'),
    'Alauddin Bahman Shah, the founder of the Bahmani Sultanate of the Deccan, had earlier been a governor under',
    'Bahman Shah served as a governor under Firoz Shah Tughlaq and, after the collapse of the Delhi Sultanate''s authority in the Deccan, declared independence at Gulbarga in 1347.',
    'hard',
    'Standard Reference',
    null,
    '61b1d345de783491f58625602c83290b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '61b1d345de783491f58625602c83290b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Jalal ud-Din Khilji'),
            ('B', 'Firoz Shah Tughlaq'),
            ('C', 'Alauddin Khalji'),
            ('D', 'Muhammad bin Tughlaq')
           ) as v(label, option_text)
 where q.question_hash = '61b1d345de783491f58625602c83290b'
on conflict (question_id, label) do nothing;

-- history | delhi-sultanate | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'delhi-sultanate'),
    'In the judicial hierarchy of the Delhi Sultanate, the chief judge of the empire was the',
    'The qazi-ul-quzat was the chief justice of the empire, with the sultan above him as the highest court of appeal, deciding cases that were referred to him.',
    'medium',
    'Standard Reference',
    null,
    '7f6f74811e565d6ab1e970eb35ac40eb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '7f6f74811e565d6ab1e970eb35ac40eb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Chief Sadr'),
            ('B', 'Kotwal'),
            ('C', 'Qazi-ul-quzat'),
            ('D', 'Mufti')
           ) as v(label, option_text)
 where q.question_hash = '7f6f74811e565d6ab1e970eb35ac40eb'
on conflict (question_id, label) do nothing;

-- history | medieval-north | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-north'),
    'The Kabul Shahi kingdom of the Hindu rulers of Swat and Kabul was finally destroyed by',
    'The Shahi rulers of Kabul and Swat resisted Mahmud of Ghazni for about two decades and the kingdom was finally crushed in the early eleventh century CE.',
    'hard',
    'Standard Reference',
    null,
    '68e5ef3788c8c36ad8e3d371020a209c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '68e5ef3788c8c36ad8e3d371020a209c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Alauddin Khalji'),
            ('B', 'Muhammad bin Tughlaq'),
            ('C', 'Babur'),
            ('D', 'Mahmud of Ghazni')
           ) as v(label, option_text)
 where q.question_hash = '68e5ef3788c8c36ad8e3d371020a209c'
on conflict (question_id, label) do nothing;

-- history | medieval-north | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-north'),
    'The tradition of the Agnikula claims that the Gurjara-Pratiharas arose from',
    'The Agnikula legend of the Prabandin and the later chronicles says the fire of Janamejaya''s yupa sacrifice at Thanesar produced four Brahmana clans who became the Gurjara-Pratiharas.',
    'hard',
    'Standard Reference',
    null,
    'ef0d610908d360164edd1a1b40151a13'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ef0d610908d360164edd1a1b40151a13'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The sacrificial fire of the yupa of Janamejaya at Thanesar'),
            ('B', 'The ashes of the Pandava war'),
            ('C', 'The flight of the Sutras from the sacrificial pit'),
            ('D', 'The gift of land by the Pallava king')
           ) as v(label, option_text)
 where q.question_hash = 'ef0d610908d360164edd1a1b40151a13'
on conflict (question_id, label) do nothing;

-- history | medieval-north | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-north'),
    'The Sisodia dynasty of Mewar was founded in 1352 by',
    'Bappa Rawal, taking advantage of the disintegration of the Delhi Sultanate''s control over Mewar, established the Sisodia line at Chittor in 1352.',
    'hard',
    'Standard Reference',
    null,
    '3189a0fdbed43c9711b6582c434ea650'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '3189a0fdbed43c9711b6582c434ea650'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ratan Singh'),
            ('B', 'Mokal'),
            ('C', 'Karnavati'),
            ('D', 'Bappa Rawal')
           ) as v(label, option_text)
 where q.question_hash = '3189a0fdbed43c9711b6582c434ea650'
on conflict (question_id, label) do nothing;

-- history | medieval-north | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-north'),
    'The Kachwaha ruler of Amber who led the Mughal side at the Battle of Haldighati in 1576 was',
    'Man Singh I, the Kachwaha ruler of Amber, fought against Maharana Pratap at Haldighati, and his alliance with the Mughals is a well-known episode in Rajput history.',
    'medium',
    'Standard Reference',
    null,
    '4d599a662a6c4c65a41649b74b9a76f6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '4d599a662a6c4c65a41649b74b9a76f6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Raja Bhagwant Das'),
            ('B', 'Suraj Mal'),
            ('C', 'Man Singh I'),
            ('D', 'Prithviraj Kachwaha')
           ) as v(label, option_text)
 where q.question_hash = '4d599a662a6c4c65a41649b74b9a76f6'
on conflict (question_id, label) do nothing;

-- history | medieval-north | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-north'),
    'The Lohara dynasty of Kashmir, which succeeded the Karkotas, was founded by',
    'Harsha, a Lohara, founded the Lohara dynasty of Kashmir in the twelfth century CE, and his descendants ruled until the fourteenth century.',
    'hard',
    'Standard Reference',
    null,
    '0fc221edbcf4687c8e33ebbb88dda49f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '0fc221edbcf4687c8e33ebbb88dda49f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Harsha'),
            ('B', 'Durlabhavardhana'),
            ('C', 'Samarata Khan'),
            ('D', 'Sultan Zain-ul-Abidin')
           ) as v(label, option_text)
 where q.question_hash = '0fc221edbcf4687c8e33ebbb88dda49f'
on conflict (question_id, label) do nothing;

-- history | medieval-north | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-north'),
    'Zain-ul-Abidin, the Sultan of Kashmir, is remembered for',
    'Zain-ul-Abidin, called the Bud Shah, was a great patron of art, literature and new settlements, and he settled the artisans of the conquered kingdoms in Kashmir.',
    'medium',
    'Standard Reference',
    null,
    'f6bf0a889e9c8163f6d3a5bc44f58fce'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f6bf0a889e9c8163f6d3a5bc44f58fce'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'His conversion to Hinduism'),
            ('B', 'Patronage of learning and the building of new towns and the promotion of Kashmir handicrafts'),
            ('C', 'Conquest of the Punjab'),
            ('D', 'The abolition of the zamindari')
           ) as v(label, option_text)
 where q.question_hash = 'f6bf0a889e9c8163f6d3a5bc44f58fce'
on conflict (question_id, label) do nothing;

-- history | medieval-north | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-north'),
    'The three dynasties that ruled the Nepal valley before the unification of Nepal were the',
    'The Licchavis, the Mallas and the Shahs ruled the Nepal valley in turn, and the Shah and Rana houses led the campaign that unified the valley under Prithvi Narayan Shah.',
    'hard',
    'Standard Reference',
    null,
    '7ad952fb239cec1256863bd2ebee0f23'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '7ad952fb239cec1256863bd2ebee0f23'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Shah, Malla and Rana'),
            ('B', 'Licchavi, Malla and Shah'),
            ('C', 'Shah, Rana and Prithvi'),
            ('D', 'Malla, Rana and Thapa')
           ) as v(label, option_text)
 where q.question_hash = '7ad952fb239cec1256863bd2ebee0f23'
on conflict (question_id, label) do nothing;

-- history | medieval-north | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-north'),
    'The Namgyal dynasty, which ruled Ladakh and later Sikkim, is associated with',
    'The Namgyal house ruled Ladakh and then Sikkim and was a patron of Tibetan Buddhism, building monasteries and supporting the hierarchs of the faith.',
    'hard',
    'Standard Reference',
    null,
    '96b7ac6665bfdeb097a251257bf46e16'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '96b7ac6665bfdeb097a251257bf46e16'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Mughal mansabdari'),
            ('B', 'The Vijayanagara Nayaka system'),
            ('C', 'The patronage of Tibetan Buddhism and the building of monasteries'),
            ('D', 'The conquest of the Punjab')
           ) as v(label, option_text)
 where q.question_hash = '96b7ac6665bfdeb097a251257bf46e16'
on conflict (question_id, label) do nothing;

-- history | medieval-north | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-north'),
    'The Somavamsi or Eastern Chalukya dynasty ruled mainly in which region?',
    'The Somavamsi line of the Eastern Chalukyas ruled Dakshina Kosala and the Bastar region and are known for their extensive copper plate grants.',
    'hard',
    'Standard Reference',
    null,
    'ace781c672be514f908b4a5cfb14bc24'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'ace781c672be514f908b4a5cfb14bc24'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kashmir'),
            ('B', 'Kalinga'),
            ('C', 'Tamilakam'),
            ('D', 'Dakshina Kosala and Basti in central India')
           ) as v(label, option_text)
 where q.question_hash = 'ace781c672be514f908b4a5cfb14bc24'
on conflict (question_id, label) do nothing;

-- history | medieval-north | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-north'),
    'The Khangar dynasty was a clan that ruled parts of the Ganga valley and the Doab in the medieval period, especially in the region of',
    'The Khangars held the upper Ganga valley around Meerut and parts of the Doab, and they fought the Tomars and the Gahadavalas for control of the region.',
    'hard',
    'Standard Reference',
    null,
    '3087efcf1f66c02375db26e3dbb315b4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '3087efcf1f66c02375db26e3dbb315b4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Meerut and the upper Ganga valley'),
            ('B', 'Kashmir'),
            ('C', 'Tamilakam'),
            ('D', 'Kalinga')
           ) as v(label, option_text)
 where q.question_hash = '3087efcf1f66c02375db26e3dbb315b4'
on conflict (question_id, label) do nothing;

-- history | maratha-empire | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maratha-empire'),
    'Which Maratha ruler is credited with the composition of the Sabhasad Bakhar, an important contemporary source of the period?',
    'The Sabhasad Bakhar was written by a poet of the Sabhasad family at the court of Shivaji and narrates the early career and campaigns of the Maratha king.',
    'hard',
    'Standard Reference',
    null,
    '2b18ddf953091b0afbf08487721312b1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '2b18ddf953091b0afbf08487721312b1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Mukundraj'),
            ('B', 'Sabhasad'),
            ('C', 'Kavi Kalash'),
            ('D', 'Tukaram')
           ) as v(label, option_text)
 where q.question_hash = '2b18ddf953091b0afbf08487721312b1'
on conflict (question_id, label) do nothing;

-- history | maratha-empire | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maratha-empire'),
    'The Maratha general who led the Maratha army at the Second Battle of Panipat in 1761 was',
    'Sadashivrao Bhau commanded the Maratha forces at Panipat in 1761 and was killed in the battle, though his wife Ahilyabai Holkar rallied the troops to protect the young Peshwa.',
    'medium',
    'Standard Reference',
    null,
    '25358d6c6c5e76d27d6e28682a5f9543'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '25358d6c6c5e76d27d6e28682a5f9543'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Shivaji'),
            ('B', 'Baji Rao I'),
            ('C', 'Sadashivrao Bhau'),
            ('D', 'Nanasaheb Peshwa')
           ) as v(label, option_text)
 where q.question_hash = '25358d6c6c5e76d27d6e28682a5f9543'
on conflict (question_id, label) do nothing;

-- history | maratha-empire | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maratha-empire'),
    'The Maratha capital at which the Peshwas resided was',
    'Pune, near the Shivneri hills, became the seat of the Peshwas and the administrative centre of the Maratha Confederacy in the eighteenth century.',
    'easy',
    'Standard Reference',
    null,
    '6c8ac560bd157922e577ab5a5440ed4c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '6c8ac560bd157922e577ab5a5440ed4c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Nashik'),
            ('B', 'Surat'),
            ('C', 'Kolhapur'),
            ('D', 'Pune')
           ) as v(label, option_text)
 where q.question_hash = '6c8ac560bd157922e577ab5a5440ed4c'
on conflict (question_id, label) do nothing;

-- history | maratha-empire | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maratha-empire'),
    'The Treaty of Bassein of 1802 was signed between the British and',
    'The Treaty of Bassein of 31 December 1802 made the Peshwa Baji Rao II a subsidiary ally of the Company, providing for the disarming of the Marathas and stationing British troops.',
    'medium',
    'Standard Reference',
    null,
    'ab9c15ed27e07fbc3354f7376ee71fd5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ab9c15ed27e07fbc3354f7376ee71fd5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Baji Rao II'),
            ('B', 'Shivaji'),
            ('C', 'Raghunath Rao'),
            ('D', 'Sindhia')
           ) as v(label, option_text)
 where q.question_hash = 'ab9c15ed27e07fbc3354f7376ee71fd5'
on conflict (question_id, label) do nothing;

-- history | maratha-empire | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maratha-empire'),
    'Shivaji was crowned at Raigad in 1674. The title he assumed at the coronation was',
    'At the coronation at Raigad in 1674 Shivaji was anointed as Chhatrapati, and the formal title Chhatrapati appears in his own seals and in his edicts.',
    'easy',
    'Standard Reference',
    null,
    'e1aabfcd0a99b78e86336831787ac9c6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e1aabfcd0a99b78e86336831787ac9c6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Maharaja'),
            ('B', 'Samrat'),
            ('C', 'Sultan'),
            ('D', 'Chhatrapati')
           ) as v(label, option_text)
 where q.question_hash = 'e1aabfcd0a99b78e86336831787ac9c6'
on conflict (question_id, label) do nothing;

-- history | maratha-empire | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maratha-empire'),
    'The battle in which Shivaji personally killed the Mughal general Afzal Khan was fought at',
    'Afzal Khan was killed by Shivaji at the Battle of Pratapgad in 1659, and the encounter is described in detail in the Sabhasad Bakhar.',
    'medium',
    'Standard Reference',
    null,
    'e29ba7f6ac570bcd193e00b38e64192e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e29ba7f6ac570bcd193e00b38e64192e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bhekirji'),
            ('B', 'Mangi-Tungi'),
            ('C', 'Pratapgad'),
            ('D', 'Wadi-Karji')
           ) as v(label, option_text)
 where q.question_hash = 'e29ba7f6ac570bcd193e00b38e64192e'
on conflict (question_id, label) do nothing;

-- history | maratha-empire | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maratha-empire'),
    'Shivaji''s escape from the captivity imposed by Aurangzeb in 1666 was made possible by his',
    'Shivaji was taken to Delhi in 1666 but escaped in the disguise of a Shaikh and a masal with the help of a woman of the royal household, and reached his own territory in 1667.',
    'hard',
    'Standard Reference',
    null,
    '1134d4cb198f0e5940a1e041a9631455'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '1134d4cb198f0e5940a1e041a9631455'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The intercession of the Sultan of Golconda'),
            ('B', 'Masal and the disguises arranged by the lady of the harem of the palace'),
            ('C', 'Nawab of Bijapur'),
            ('D', 'The intercession of the Portuguese')
           ) as v(label, option_text)
 where q.question_hash = '1134d4cb198f0e5940a1e041a9631455'
on conflict (question_id, label) do nothing;

-- history | maratha-empire | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maratha-empire'),
    'The Maratha ruler who continued the struggle against the Mughals after Shivaji''s death and was captured in 1689 was',
    'Sambhaji, Shivaji''s son and successor, was captured at Sangamner in 1689 and killed by Aurangzeb''s orders, and his death weakened the Maratha resistance.',
    'medium',
    'Standard Reference',
    null,
    '8884c5a1a5a5715c9229ae63a168f076'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '8884c5a1a5a5715c9229ae63a168f076'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sambhaji'),
            ('B', 'Shahaji'),
            ('C', 'Tarabai'),
            ('D', 'Rajaram')
           ) as v(label, option_text)
 where q.question_hash = '8884c5a1a5a5715c9229ae63a168f076'
on conflict (question_id, label) do nothing;

-- history | maratha-empire | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maratha-empire'),
    'The Maratha ruler who continued the war in the east and whose period is called the period of the Maratha raid was',
    'Rajaram, the second son of Shivaji, kept the Maratha cause alive from 1689 to 1700 and his reign is known as the period of the Maratha raid.',
    'hard',
    'Standard Reference',
    null,
    'cb0864fceb911fa5cf6e9d49edadf353'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'cb0864fceb911fa5cf6e9d49edadf353'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sambhaji'),
            ('B', 'Shivaji'),
            ('C', 'Tarabai'),
            ('D', 'Rajaram')
           ) as v(label, option_text)
 where q.question_hash = 'cb0864fceb911fa5cf6e9d49edadf353'
on conflict (question_id, label) do nothing;

-- history | maratha-empire | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maratha-empire'),
    'The Treaty of Purandhar of 1772, which marked a British retreat after the First Anglo-Maratha War, was signed between',
    'The Treaty of Purandhar of 1772 ended the Company''s involvement in the internal Maratha conflict and recognised Madhoji Scindia as the ruler of the Scindia house.',
    'medium',
    'Standard Reference',
    null,
    '5964899ef50969b88a11676c51c025d4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '5964899ef50969b88a11676c51c025d4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The British and the Nawab of Arcot'),
            ('B', 'The British and the King of Tanjore'),
            ('C', 'The British and the Marathas'),
            ('D', 'The British and the Marathas at the instance of the Portuguese')
           ) as v(label, option_text)
 where q.question_hash = '5964899ef50969b88a11676c51c025d4'
on conflict (question_id, label) do nothing;

-- history | maratha-empire | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maratha-empire'),
    'The cause of the First Anglo-Maratha War was',
    'The Company''s support for Raghunath Rao, the claimant to the Peshwa''s office, in the Maratha succession dispute after the death of Balaji Baji Rao led directly to the first war.',
    'medium',
    'Standard Reference',
    null,
    '0fe1b979be3d916383948bddcc3148f6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '0fe1b979be3d916383948bddcc3148f6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The refusal of the Marathas to pay the subsidiary alliance'),
            ('B', 'The Company''s attempt to intervene in the Maratha succession dispute and its support for Raghunath Rao'),
            ('C', 'A Maratha invasion of Bengal'),
            ('D', 'The Portuguese alliance of the Marathas')
           ) as v(label, option_text)
 where q.question_hash = '0fe1b979be3d916383948bddcc3148f6'
on conflict (question_id, label) do nothing;

-- history | maratha-empire | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maratha-empire'),
    'The Third Anglo-Maratha War ended with the Treaty of',
    'The Treaty of Deogaon of 1803 between Baji Rao II and the Company, following the victories of Wellesley and Lake, marked the beginning of the end of Maratha power.',
    'medium',
    'Standard Reference',
    null,
    '0c8f68417bfd96462ac390ec06365490'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '0c8f68417bfd96462ac390ec06365490'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Deogaon'),
            ('B', 'Surji-Anjangaon'),
            ('C', 'Amritsar'),
            ('D', 'Bassein')
           ) as v(label, option_text)
 where q.question_hash = '0c8f68417bfd96462ac390ec06365490'
on conflict (question_id, label) do nothing;

-- history | maratha-empire | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maratha-empire'),
    'The Maratha family that became the leading house of the Confederacy after the death of the last Peshwa was',
    'The Holkars of Indore rose to prominence under Ahilyabai Holkar and Yashwantrao Holkar, and after the defeat at Panipat in 1761 they effectively led the Confederacy.',
    'hard',
    'Standard Reference',
    null,
    '2ed037ba8724a9cfdc3fddf723f9f17f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '2ed037ba8724a9cfdc3fddf723f9f17f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Gaikwads'),
            ('B', 'The Bhonsles'),
            ('C', 'The Holkars'),
            ('D', 'The Scindias')
           ) as v(label, option_text)
 where q.question_hash = '2ed037ba8724a9cfdc3fddf723f9f17f'
on conflict (question_id, label) do nothing;

-- history | maratha-empire | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maratha-empire'),
    'The Maratha ruler of the Holkar house who was a woman and who established her authority at Indore was',
    'Ahilyabai Holkar, the widow of Malhar Rao, took command of the Holkar territories, defeated the enemy at the Battle of Loni in 1761 and developed the city of Indore.',
    'medium',
    'Standard Reference',
    null,
    '570187a9ec65db370517dace1a4b3bee'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '570187a9ec65db370517dace1a4b3bee'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ahilyabai Holkar'),
            ('B', 'Yashwantrao Holkar'),
            ('C', 'Tukoji Rao Holkar'),
            ('D', 'Malhar Rao Holkar')
           ) as v(label, option_text)
 where q.question_hash = '570187a9ec65db370517dace1a4b3bee'
on conflict (question_id, label) do nothing;

-- history | maratha-empire | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maratha-empire'),
    'The founder of the Scindia house of the Maratha Confederacy was',
    'Ranoji Scindia, who served in the armies of the Peshwa and later of the Delhi Sultanate, founded the Scindia house with his base at Ujjain and later Gwalior.',
    'hard',
    'Standard Reference',
    null,
    '93cd7bc2eab807656328c54db228ad52'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '93cd7bc2eab807656328c54db228ad52'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Jankoji Scindia'),
            ('B', 'Madhoji Scindia'),
            ('C', 'Daulat Rao Scindia'),
            ('D', 'Ranoji Scindia')
           ) as v(label, option_text)
 where q.question_hash = '93cd7bc2eab807656328c54db228ad52'
on conflict (question_id, label) do nothing;

-- history | maratha-empire | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maratha-empire'),
    'Which Maratha ruler took up the cause of the Mughal emperor Humayun and secured the release of the captured emperor?',
    'Shahaji, in the service of the Nawab of Bijapur, met Humayun at the court of Akbar and used his influence to secure the captive emperor''s release and his passage home.',
    'hard',
    'Standard Reference',
    null,
    '351398c14f6fea0e19d0c3fc61b48206'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '351398c14f6fea0e19d0c3fc61b48206'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Baji Rao I'),
            ('B', 'Shivaji'),
            ('C', 'Shahaji'),
            ('D', 'Sambhaji')
           ) as v(label, option_text)
 where q.question_hash = '351398c14f6fea0e19d0c3fc61b48206'
on conflict (question_id, label) do nothing;

-- history | maratha-empire | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maratha-empire'),
    'The founder of the Maratha state at Shivneri, the birthplace of Shivaji, was',
    'Shahaji, a feudal noble of the Nawab of Bijapur, held the jagir of Shivneri, where his son Shivaji was born in 1630.',
    'medium',
    'Standard Reference',
    null,
    '71910557d41b9e0c3fee3e0da84bdfff'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '71910557d41b9e0c3fee3e0da84bdfff'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Malhar Rao Holkar'),
            ('B', 'Ranoji Scindia'),
            ('C', 'Balaji Bajirao'),
            ('D', 'Shahaji')
           ) as v(label, option_text)
 where q.question_hash = '71910557d41b9e0c3fee3e0da84bdfff'
on conflict (question_id, label) do nothing;

-- history | maratha-empire | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maratha-empire'),
    'The Battle of Mangi-Tungi, in which the Marathas defeated the Mughal forces in the north, was fought in',
    'The Battle of Mangi-Tungi in 1667 ended Mughal attempts to recover the western Maratha territories and was a significant Maratha victory.',
    'hard',
    'Standard Reference',
    null,
    '7402738b4c682507c772cdf12e39dec1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '7402738b4c682507c772cdf12e39dec1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1689'),
            ('B', '1667'),
            ('C', '1659'),
            ('D', '1674')
           ) as v(label, option_text)
 where q.question_hash = '7402738b4c682507c772cdf12e39dec1'
on conflict (question_id, label) do nothing;

-- history | mughal-empire | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'mughal-empire'),
    'The Mughal court chronicler who wrote the Padshahnama, the official history of Shah Jahan, was',
    'Abdul Hamid Lahori''s Padshahnama, written at the imperial court, gives a detailed and largely favourable account of Shah Jahan''s reign and of the events of his time.',
    'medium',
    'Standard Reference',
    null,
    '6d653e9469aae6ea5663dc15105eb677'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '6d653e9469aae6ea5663dc15105eb677'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Abdul Hamid Lahori'),
            ('B', 'Khafi Khan'),
            ('C', 'Muhammad Qasim'),
            ('D', 'Nizamuddin Ahmad')
           ) as v(label, option_text)
 where q.question_hash = '6d653e9469aae6ea5663dc15105eb677'
on conflict (question_id, label) do nothing;

-- history | mughal-empire | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'mughal-empire'),
    'The Akbarnama, the official chronicle of Akbar''s reign, was written by',
    'Abul Fazl, a son of the poet Faizi and a close friend of Akbar, wrote the Akbarnama as part of the larger project of the Ain-i-Akbari.',
    'easy',
    'NCERT Class XII',
    null,
    'f503e2fc9434c3ea9bac5b8b5febf593'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'f503e2fc9434c3ea9bac5b8b5febf593'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Abdul Hamid Lahori'),
            ('B', 'Todar Mal'),
            ('C', 'Abul Fazl'),
            ('D', 'Birbal')
           ) as v(label, option_text)
 where q.question_hash = 'f503e2fc9434c3ea9bac5b8b5febf593'
on conflict (question_id, label) do nothing;

-- history | mughal-empire | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'mughal-empire'),
    'The Ain-i-Akbari, the third part of Abul Fazl''s work, deals mainly with',
    'The Ain-i-Akbiri, translated by Dr Blochmann and later by Jarrett, describes the mansabdari and jagirdari systems, the land revenue, the law and the customs of the empire.',
    'medium',
    'NCERT Class XII',
    null,
    '1aa583f9769e1d1f2cb1b150bcbfc967'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '1aa583f9769e1d1f2cb1b150bcbfc967'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The succession of the Peshwas'),
            ('B', 'Administration, revenue, laws and customs'),
            ('C', 'Military campaigns only'),
            ('D', 'The life of the Prophet')
           ) as v(label, option_text)
 where q.question_hash = '1aa583f9769e1d1f2cb1b150bcbfc967'
on conflict (question_id, label) do nothing;

-- history | mughal-empire | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'mughal-empire'),
    'Babur''s memoirs in the Chagatai Turkic language are known as the',
    'The Baburnama, translated by John Leyden and later by Beveridge, is Babur''s own account of his life and campaigns and is one of the most valuable sources for the period.',
    'medium',
    'Standard Reference',
    null,
    '93883aa3ccdc63f16fe253d5d7cfa435'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '93883aa3ccdc63f16fe253d5d7cfa435'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Humayunnama'),
            ('B', 'Akbarnama'),
            ('C', 'Tuzuk-i-Baburi'),
            ('D', 'Baburnama')
           ) as v(label, option_text)
 where q.question_hash = '93883aa3ccdc63f16fe253d5d7cfa435'
on conflict (question_id, label) do nothing;

-- history | mughal-empire | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'mughal-empire'),
    'The Tuzuk-i-Jahangiri is the autobiography of',
    'Jahangir dictated the Tuzuk-i-Jahangiri, which gives a revealing account of his relations with his father, his brothers and his subjects.',
    'medium',
    'Standard Reference',
    null,
    'e57566f55748efa21c900a8f852a2142'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'e57566f55748efa21c900a8f852a2142'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Jahangir'),
            ('B', 'Akbar'),
            ('C', 'Aurangzeb'),
            ('D', 'Shah Jahan')
           ) as v(label, option_text)
 where q.question_hash = 'e57566f55748efa21c900a8f852a2142'
on conflict (question_id, label) do nothing;

-- history | mughal-empire | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'mughal-empire'),
    'Babur''s first campaign in India in 1526 included the defeat of',
    'Babur''s victory over Ibrahim Lodi at Panipat in 1526 was followed by the capture of Delhi and Agra and the occupation of the Ganga valley.',
    'easy',
    'NCERT Class XII',
    null,
    '4c52133e26621dea7e8c636bc4cb42d2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '4c52133e26621dea7e8c636bc4cb42d2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Hemoo at the Second Battle of Panipat'),
            ('B', 'Sher Shah Suri at Machhiwara'),
            ('C', 'Ibrahim Lodi at the First Battle of Panipat'),
            ('D', 'Rana Sanga at Khanwa')
           ) as v(label, option_text)
 where q.question_hash = '4c52133e26621dea7e8c636bc4cb42d2'
on conflict (question_id, label) do nothing;

-- history | mughal-empire | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'mughal-empire'),
    'Babur''s victory at the Battle of Khanwa in 1527 was over',
    'At Khanwa Babur defeated the combined army of Rana Sanga and the Rajputs; the young Sher Shah Suri was then in Rana Sanga''s camp and first came to Babur''s notice in that battle.',
    'medium',
    'NCERT Class XII',
    null,
    'f39383b8a5730bd646782d908db67da0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f39383b8a5730bd646782d908db67da0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rana Sanga of Mewar'),
            ('B', 'Ibrahim Lodi'),
            ('C', 'Malik Kafur'),
            ('D', 'Yusuf Khan of Ghazni')
           ) as v(label, option_text)
 where q.question_hash = 'f39383b8a5730bd646782d908db67da0'
on conflict (question_id, label) do nothing;

-- history | mughal-empire | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'mughal-empire'),
    'The ruler of the Lodi Sultanate of Bengal, who was killed in the Battle of Ghaghra in 1527, was',
    'Sikandar Shah of Bengal crossed the Ghaghra with the help of Afghan allies but was defeated and killed by Babur''s forces, and his son Alauddin Husain Shah became a vassal of the Mughals.',
    'hard',
    'Standard Reference',
    null,
    '257f8cd8d2f494656d307ce44582d22f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '257f8cd8d2f494656d307ce44582d22f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ghiyasuddin Mahmud Shah'),
            ('B', 'Nasiruddin Nasrat Shah'),
            ('C', 'Sikandar Shah'),
            ('D', 'Alauddin Husain Shah')
           ) as v(label, option_text)
 where q.question_hash = '257f8cd8d2f494656d307ce44582d22f'
on conflict (question_id, label) do nothing;

-- history | mughal-empire | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'mughal-empire'),
    'The Mughal emperor who lost his empire to Sher Shah Suri and was restored to the throne with Persian help was',
    'Humayun was defeated by Sher Shah Suri in 1540 and wandered in exile until the Safavid Shah Tahmasp restored him to the throne in 1555.',
    'easy',
    'NCERT Class XII',
    null,
    '5471e90150a5567ddf24b61936e43c8d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '5471e90150a5567ddf24b61936e43c8d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Akbar'),
            ('B', 'Babur'),
            ('C', 'Jahangir'),
            ('D', 'Humayun')
           ) as v(label, option_text)
 where q.question_hash = '5471e90150a5567ddf24b61936e43c8d'
on conflict (question_id, label) do nothing;

-- history | mughal-empire | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'mughal-empire'),
    'Sher Shah Suri is chiefly remembered for',
    'Sher Shah rebuilt the Grand Trunk Road, laid out sarais along it, standardised the silver rupia and reorganised the land revenue, and all these measures were taken up by Akbar.',
    'medium',
    'NCERT Class XII',
    null,
    '44a2c68942db574bfbde3337b127954c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '44a2c68942db574bfbde3337b127954c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The founding of the Portuguese at Colombo'),
            ('B', 'The Grand Trunk Road and a sound revenue and currency system'),
            ('C', 'The construction of the Taj Mahal'),
            ('D', 'The extension of the temple at Kedareshwar')
           ) as v(label, option_text)
 where q.question_hash = '44a2c68942db574bfbde3337b127954c'
on conflict (question_id, label) do nothing;

-- history | mughal-empire | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'mughal-empire'),
    'The ruler who was defeated by Akbar at the Second Battle of Panipat in 1556 was',
    'Hemoo, the commander of the breakaway forces of Adil Shah Suri, was defeated by Akbar at Panipat in 1556 and his victory ended the last challenge to Akbar''s authority.',
    'medium',
    'NCERT Class XII',
    null,
    '8c813ab8a9754d34177a92e56517b443'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '8c813ab8a9754d34177a92e56517b443'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ibrahim Lodi'),
            ('B', 'Rana Sanga'),
            ('C', 'Darya Khan'),
            ('D', 'Hemu')
           ) as v(label, option_text)
 where q.question_hash = '8c813ab8a9754d34177a92e56517b443'
on conflict (question_id, label) do nothing;

-- history | mughal-empire | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'mughal-empire'),
    'The Battle of Machhiwara, in which Akbar defeated Hemu in 1556, was fought near',
    'Hemoo was defeated at Machhiwara near Jalandhar in 1556 before Akbar marched to Panipat, and the battle is described in the Akbarnama.',
    'hard',
    'Standard Reference',
    null,
    '45f0ab729c0479d64add5225696c439d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '45f0ab729c0479d64add5225696c439d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Talikota'),
            ('B', 'Jalandhar in Punjab'),
            ('C', 'Khanwa near Ajmer'),
            ('D', 'Panipat')
           ) as v(label, option_text)
 where q.question_hash = '45f0ab729c0479d64add5225696c439d'
on conflict (question_id, label) do nothing;

-- history | mughal-empire | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'mughal-empire'),
    'The regent of Akbar who was murdered at the orders of the sixteen-year-old emperor was',
    'Bairam Khan governed as regent during Akbar''s minority and was killed at Delhi in 1561 on Akbar''s orders, and his son Abd-ur-Rahim Khan was later sent to Mewar.',
    'medium',
    'NCERT Class XII',
    null,
    'a37755181505e66565a912cf2f2d2c57'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a37755181505e66565a912cf2f2d2c57'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bairam Khan'),
            ('B', 'Ataga Khan'),
            ('C', 'Munim Khan'),
            ('D', 'Todar Mal')
           ) as v(label, option_text)
 where q.question_hash = 'a37755181505e66565a912cf2f2d2c57'
on conflict (question_id, label) do nothing;

-- history | mughal-empire | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'mughal-empire'),
    'The ruler of Mewar who defied Akbar for years and who met him at the Battle of Haldighati was',
    'Maharana Pratap of Mewar rejected Akbar''s suzerainty, fought the imperial army at Haldighati in 1576 and continued the struggle from his base in the Aravalli hills.',
    'easy',
    'NCERT Class XII',
    null,
    '81a5a38158b7cb32cc0a36e44e4c450a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '81a5a38158b7cb32cc0a36e44e4c450a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Vikramaditya'),
            ('B', 'Maldev'),
            ('C', 'Maharana Pratap'),
            ('D', 'Rana Sanga')
           ) as v(label, option_text)
 where q.question_hash = '81a5a38158b7cb32cc0a36e44e4c450a'
on conflict (question_id, label) do nothing;

-- history | mughal-empire | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'mughal-empire'),
    'Akbar''s conquest of the kingdom of Gujarat in 1573 was marked by the important siege of',
    'The siege of Surat in 1572-73 by the Mughal general Khan-i-Jahan Tilangani was followed by the annexation of Gujarat in 1573, which the Portuguese and the English traders found threatening.',
    'medium',
    'NCERT Class XII',
    null,
    '445667bf0515322e8610605571574411'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '445667bf0515322e8610605571574411'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ahmedabad'),
            ('B', 'Cambay'),
            ('C', 'Dholka'),
            ('D', 'Surat')
           ) as v(label, option_text)
 where q.question_hash = '445667bf0515322e8610605571574411'
on conflict (question_id, label) do nothing;

-- history | mughal-empire | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'mughal-empire'),
    'The Mughal emperor who annexed the fortress of Kalinjar in 1569 was',
    'Kalinjar was taken in 1569 after a siege in which the garrison, led by Hemu and defended by the local zamindar, was destroyed, and the frontier was thereby secured.',
    'medium',
    'NCERT Class XII',
    null,
    '756324a7122cdf2c02790af81eff18e2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '756324a7122cdf2c02790af81eff18e2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Shah Jahan'),
            ('B', 'Akbar'),
            ('C', 'Jahangir'),
            ('D', 'Humayun')
           ) as v(label, option_text)
 where q.question_hash = '756324a7122cdf2c02790af81eff18e2'
on conflict (question_id, label) do nothing;

-- history | mughal-empire | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'mughal-empire'),
    'The fort of Asirgarh in the Deccan was taken by Akbar in',
    'Asirgarh, the stronghold of the Khandesh descent, was besieged and taken in 1591, and the Khandesh ruler Shahzadi Rupabai is remembered for her resistance.',
    'hard',
    'NCERT Class XII',
    null,
    'c31fc854d173f7f94cb8a4437344b13f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'c31fc854d173f7f94cb8a4437344b13f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1591'),
            ('B', '1563'),
            ('C', '1576'),
            ('D', '1600')
           ) as v(label, option_text)
 where q.question_hash = 'c31fc854d173f7f94cb8a4437344b13f'
on conflict (question_id, label) do nothing;

-- history | mughal-empire | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'mughal-empire'),
    'The Gondwana ruler who refused to submit to the Mughals and who died in 1564 was',
    'Rani Durgavati of Garha-Mandla held the fort of Chauragarh against the Mughal forces and died in 1564 rather than submit, and her example became a symbol of resistance to the Mughals.',
    'medium',
    'NCERT Class XII',
    null,
    '084a8b27c2d3073287bc3f0789ca5416'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '084a8b27c2d3073287bc3f0789ca5416'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Jijabai'),
            ('B', 'Mirabai'),
            ('C', 'Rani Durgavati'),
            ('D', 'Rani Rudrama Devi')
           ) as v(label, option_text)
 where q.question_hash = '084a8b27c2d3073287bc3f0789ca5416'
on conflict (question_id, label) do nothing;

-- history | mughal-empire | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'mughal-empire'),
    'The Mughal emperor who conquered Bengal after the defeat of Daud Khan Karrani was',
    'Akbar''s annexation of Bengal followed the Battle of Tukaroi in 1574 and the defeat of Daud Khan Karrani at the Battle of Machhiwar in 1576.',
    'medium',
    'NCERT Class XII',
    null,
    '86016c2a156b13e80d4394ad2959f3ab'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '86016c2a156b13e80d4394ad2959f3ab'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Shah Jahan'),
            ('B', 'Humayun'),
            ('C', 'Akbar'),
            ('D', 'Jahangir')
           ) as v(label, option_text)
 where q.question_hash = '86016c2a156b13e80d4394ad2959f3ab'
on conflict (question_id, label) do nothing;

-- history | mughal-empire | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'mughal-empire'),
    'The system of assigning a mansab to an officer and a jagir to support that mansab was introduced by',
    'Akbar introduced mansabdari, by which an officer was given a mansab and a jagir whose revenue was expected to meet the cost of the troops he maintained.',
    'easy',
    'NCERT Class XII',
    null,
    '6ff2df277c81430df42e4e18842407e1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '6ff2df277c81430df42e4e18842407e1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Shah Jahan'),
            ('B', 'Akbar'),
            ('C', 'Jahangir'),
            ('D', 'Aurangzeb')
           ) as v(label, option_text)
 where q.question_hash = '6ff2df277c81430df42e4e18842407e1'
on conflict (question_id, label) do nothing;

-- history | mughal-empire | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'mughal-empire'),
    'The term jama in Mughal revenue administration referred to',
    'The jama was the assessed revenue demand, and the dasht was the record of the actual collection, and Akbar''s instructions to his officials stressed that the jama should be realistic.',
    'medium',
    'NCERT Class XII',
    null,
    '54b41dc78a5dbab22052ea8c73a952f0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '54b41dc78a5dbab22052ea8c73a952f0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The total revenue demand of a territory, which was compared with the actual collection'),
            ('B', 'The land revenue of a single village'),
            ('C', 'The tax on merchants'),
            ('D', 'The pay of the soldiers')
           ) as v(label, option_text)
 where q.question_hash = '54b41dc78a5dbab22052ea8c73a952f0'
on conflict (question_id, label) do nothing;

-- history | mughal-empire | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'mughal-empire'),
    'The Mughal emperor who introduced the Zabt system of land revenue was',
    'Akbar introduced the Zabt in 1564 on the basis of Todar Mal''s ten-year survey, in which revenue was assessed on the actual produce of each plot as recorded by the patwari.',
    'easy',
    'NCERT Class XII',
    null,
    'f6db832bf8d5f6bc11d7f03aa57d1bdd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'f6db832bf8d5f6bc11d7f03aa57d1bdd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Jahangir'),
            ('B', 'Shah Jahan'),
            ('C', 'Aurangzeb'),
            ('D', 'Akbar')
           ) as v(label, option_text)
 where q.question_hash = 'f6db832bf8d5f6bc11d7f03aa57d1bdd'
on conflict (question_id, label) do nothing;

-- history | mughal-empire | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'mughal-empire'),
    'The land revenue system devised by Akbar''s minister Todar Mal was based on a survey of ten years completed in',
    'Todar Mal''s revenue survey, begun in 1564 and completed after ten years in 1580, produced the dast or record of rights that became the basis of the Zabt assessment.',
    'hard',
    'NCERT Class XII',
    null,
    '0bf1a6b66f10f99944f1199b67c512e0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '0bf1a6b66f10f99944f1199b67c512e0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1575'),
            ('B', '1600'),
            ('C', '1580'),
            ('D', '1564')
           ) as v(label, option_text)
 where q.question_hash = '0bf1a6b66f10f99944f1199b67c512e0'
on conflict (question_id, label) do nothing;

-- history | mughal-empire | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'mughal-empire'),
    'The dast in Mughal revenue administration was',
    'The dast, prepared on the basis of Todar Mal''s survey, recorded the rights of each cultivator and the productive potential of each field, and the Zabt was then calculated from it.',
    'medium',
    'NCERT Class XII',
    null,
    '46abadc8cf6a6ac8975e6abbec0addea'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '46abadc8cf6a6ac8975e6abbec0addea'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A record of rights based on a detailed measurement and survey of land'),
            ('B', 'A register of soldiers and their mansabs'),
            ('C', 'A list of the tribute paid by the zamindars'),
            ('D', 'An account of the daily court proceedings')
           ) as v(label, option_text)
 where q.question_hash = '46abadc8cf6a6ac8975e6abbec0addea'
on conflict (question_id, label) do nothing;

-- history | mughal-empire | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'mughal-empire'),
    'Akbar''s religious debates were held at the Ibadat Khana in',
    'The Ibadat Khana at Fatehpur Sikri, where Akbar constructed a house of worship for debates among scholars of different faiths, was closed in 1582 after the discussions became acrimonious.',
    'medium',
    'NCERT Class XII',
    null,
    '420ad3d094b738c8495efd2a0825deb4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '420ad3d094b738c8495efd2a0825deb4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Agra'),
            ('B', 'Lahore'),
            ('C', 'Delhi'),
            ('D', 'Fatehpur Sikri')
           ) as v(label, option_text)
 where q.question_hash = '420ad3d094b738c8495efd2a0825deb4'
on conflict (question_id, label) do nothing;

-- history | mughal-empire | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'mughal-empire'),
    'The religious order founded by Akbar in 1582 was called the',
    'The Din-i Ilahi, with its initiation ceremony of the sultan''s salutation, was short-lived because of its exclusivist ritual and the opposition of the Muslim divines.',
    'easy',
    'NCERT Class XII',
    null,
    'd67f2bfd92b883ac8a80d0d054392512'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd67f2bfd92b883ac8a80d0d054392512'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Suhail order'),
            ('B', 'Din-i Ilahi'),
            ('C', 'Suhrawardi order'),
            ('D', 'Chishti order')
           ) as v(label, option_text)
 where q.question_hash = 'd67f2bfd92b883ac8a80d0d054392512'
on conflict (question_id, label) do nothing;

-- history | mughal-empire | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'mughal-empire'),
    'The policy of religious tolerance followed by Akbar is described as',
    'Akbar''s sulh-i kul meant the absence of religious interference in the affairs of others and was expressed in his tax concessions, his dialogues and his welcome to Jesuit missionaries.',
    'medium',
    'NCERT Class XII',
    null,
    'eba46cf669ebe2a0e3685bb5cd8755fe'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'eba46cf669ebe2a0e3685bb5cd8755fe'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A policy of restoring the authority of the ulema'),
            ('B', 'Sulh-i kul, a universal tolerance that accorded respect to all faiths'),
            ('C', 'A policy of forcible conversion of the Muslims'),
            ('D', 'The separation of religion from statecraft')
           ) as v(label, option_text)
 where q.question_hash = 'eba46cf669ebe2a0e3685bb5cd8755fe'
on conflict (question_id, label) do nothing;

-- history | mughal-empire | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'mughal-empire'),
    'The tax on non-Muslims that Akbar abolished was the',
    'Akbar abolished the jizya in 1584-87 and substituted a nominal tribute payable by all, which was seen as a step towards religious equality in the empire.',
    'easy',
    'NCERT Class XII',
    null,
    'be3214963356965283565abd649bf69b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'be3214963356965283565abd649bf69b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Jizya'),
            ('B', 'Kharaj'),
            ('C', 'Zabt'),
            ('D', 'Peshkash')
           ) as v(label, option_text)
 where q.question_hash = 'be3214963356965283565abd649bf69b'
on conflict (question_id, label) do nothing;

-- history | mughal-empire | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'mughal-empire'),
    'The Mughal emperor who gave a hearing to the Jesuit missionaries at Agra and permitted them to preach was',
    'Jahangir allowed the Jesuits to preach at Agra in 1620 and wrote in his memoir that the true God was one though the forms of worship differed.',
    'medium',
    'NCERT Class XII',
    null,
    '036786e748c5b67d3894f09bb944459b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '036786e748c5b67d3894f09bb944459b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Akbar'),
            ('B', 'Shah Jahan'),
            ('C', 'Aurangzeb'),
            ('D', 'Jahangir')
           ) as v(label, option_text)
 where q.question_hash = '036786e748c5b67d3894f09bb944459b'
on conflict (question_id, label) do nothing;

-- history | mughal-empire | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'mughal-empire'),
    'The Buland Darwaza at Fatehpur Sikri was built by Akbar to commemorate',
    'The Buland Darwaza, 1575, was erected to mark the victory over Gujarat, and the tomb of Salim Chishti nearby honours the Sufi saint whose intercession Akbar claimed to have sought.',
    'medium',
    'NCERT Class XII',
    null,
    '38b00eacf4b4b67d4fbf84704c81feb7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '38b00eacf4b4b67d4fbf84704c81feb7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The annexation of Bengal'),
            ('B', 'The defeat of the Huna king'),
            ('C', 'His victory in Gujarat'),
            ('D', 'The conquest of Mewar')
           ) as v(label, option_text)
 where q.question_hash = '38b00eacf4b4b67d4fbf84704c81feb7'
on conflict (question_id, label) do nothing;

-- history | mughal-empire | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'mughal-empire'),
    'The tomb at Fatehpur Sikri built by Akbar for the Sufi saint of the Chishti order was the tomb of',
    'The tomb of the Sufi Salim Chishti, Akbar''s spiritual guide and the son of Shaikh Salim Chishti, was built by Akbar at Fatehpur Sikri between 1572 and 1574.',
    'medium',
    'NCERT Class XII',
    null,
    '53821f27d260e67f5d76e7434298c19e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '53821f27d260e67f5d76e7434298c19e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Nizamuddin Auliya'),
            ('B', 'Amir Khusrau'),
            ('C', 'Salim Chishti'),
            ('D', 'Khwaja Moinuddin Chishti')
           ) as v(label, option_text)
 where q.question_hash = '53821f27d260e67f5d76e7434298c19e'
on conflict (question_id, label) do nothing;

-- history | mughal-empire | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'mughal-empire'),
    'The Mughal ruler who annexed the Kangra fort in 1620 was',
    'Jahangir took the Kangra fort after a long siege in 1620 and had the Koh-i-Noor and the Timur ruby set in the Peacock Throne which he had made for his wife Nur Jahan.',
    'hard',
    'NCERT Class XII',
    null,
    '4bf8fe63ade2e723ea510abe666a9734'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '4bf8fe63ade2e723ea510abe666a9734'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Aurangzeb'),
            ('B', 'Jahangir'),
            ('C', 'Akbar'),
            ('D', 'Shah Jahan')
           ) as v(label, option_text)
 where q.question_hash = '4bf8fe63ade2e723ea510abe666a9734'
on conflict (question_id, label) do nothing;

-- history | mughal-empire | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'mughal-empire'),
    'The Peacock Throne was completed by Jahangir for',
    'Jahangir had the famous Peacock Throne made for Nur Jahan, and the jewels set in it included the Timur ruby and the Koh-i-Noor taken from the Kangra treasury.',
    'medium',
    'NCERT Class XII',
    null,
    'f3b4da95f8af8b83b8311bbf63678c67'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f3b4da95f8af8b83b8311bbf63678c67'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Nur Jahan'),
            ('B', 'Salim Chishti'),
            ('C', 'Jahangir''s father Akbar'),
            ('D', 'Asaf Khan')
           ) as v(label, option_text)
 where q.question_hash = 'f3b4da95f8af8b83b8311bbf63678c67'
on conflict (question_id, label) do nothing;

-- history | mughal-empire | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'mughal-empire'),
    'The Tomb of Itmad-ud-Daulah at Agra was built by',
    'Nur Jahan built the tomb of Itmad-ud-Daulah, her father, at Agra, and it is the first Mughal monument to be built entirely of white marble.',
    'medium',
    'NCERT Class XII',
    null,
    '210fd5284aa05b725cea522eebf66765'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '210fd5284aa05b725cea522eebf66765'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Jahangir'),
            ('B', 'Shah Jahan'),
            ('C', 'Akbar'),
            ('D', 'Nur Jahan for her father')
           ) as v(label, option_text)
 where q.question_hash = '210fd5284aa05b725cea522eebf66765'
on conflict (question_id, label) do nothing;

-- history | mughal-empire | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'mughal-empire'),
    'The chain of justice set up by Jahangir in his court consisted of',
    'Jahangir''s chain of justice had bells that rang when a poor person pulled it, and the emperor himself investigated the complaints that followed.',
    'hard',
    'NCERT Class XII',
    null,
    '89626765503649ef188068c8fd663742'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '89626765503649ef188068c8fd663742'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A ring worn by the emperor as a symbol of oath'),
            ('B', 'A metal staff carried by the qazi'),
            ('C', 'A chain of bells with a petition box for the redress of the wrongs of the poor'),
            ('D', 'A chain hung at the gate of the royal palace')
           ) as v(label, option_text)
 where q.question_hash = '89626765503649ef188068c8fd663742'
on conflict (question_id, label) do nothing;

-- history | mughal-empire | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'mughal-empire'),
    'Shah Jahan''s war of succession was fought between him and his brothers',
    'The war of 1657-59 was fought against Dara Shikoh, the eldest and favourite son, and the intervention of Shah Shuja in the Deccan decided the contest in favour of Aurangzeb.',
    'medium',
    'NCERT Class XII',
    null,
    '24b227ad60dad49f33215edd13901c35'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '24b227ad60dad49f33215edd13901c35'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Dara Shikoh and Aurangzeb'),
            ('B', 'Murad and Shah Shuja'),
            ('C', 'Shah Shuja and Aurangzeb'),
            ('D', 'Dara Shikoh and Murad only')
           ) as v(label, option_text)
 where q.question_hash = '24b227ad60dad49f33215edd13901c35'
on conflict (question_id, label) do nothing;

-- history | mughal-empire | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'mughal-empire'),
    'The Mughal ruler who appointed Aurangzeb as his viceroy of the Deccan and built the Red Fort at Delhi was',
    'Shah Jahan built the Red Fort and the Jama Masjid in his new capital Shahjahanabad, and he sent his son Aurangzeb to the Deccan to subdue the Bijapur and Golconda rulers.',
    'easy',
    'NCERT Class XII',
    null,
    '8059cac19655f6eb3edde55b6a206f17'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '8059cac19655f6eb3edde55b6a206f17'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Aurangzeb'),
            ('B', 'Shah Jahan'),
            ('C', 'Akbar'),
            ('D', 'Jahangir')
           ) as v(label, option_text)
 where q.question_hash = '8059cac19655f6eb3edde55b6a206f17'
on conflict (question_id, label) do nothing;

-- history | mughal-empire | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'mughal-empire'),
    'The Taj Mahal at Agra was built by Shah Jahan as a tomb for',
    'Shah Jahan built the Taj Mahal between 1632 and 1653 for his wife Mumtaz Mahal, who died in 1631 during a journey to the Deccan.',
    'easy',
    'NCERT Class XII',
    null,
    '62daa7768cb15105650911dde3558870'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '62daa7768cb15105650911dde3558870'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Shah Jahan''s wife Kandahari Begum'),
            ('B', 'Aurangzeb''s wife Dilras Banu Begum'),
            ('C', 'Jahangir''s wife Nur Jahan'),
            ('D', 'Mumtaz Mahal')
           ) as v(label, option_text)
 where q.question_hash = '62daa7768cb15105650911dde3558870'
on conflict (question_id, label) do nothing;

-- history | mughal-empire | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'mughal-empire'),
    'The Mughal emperor whose reign saw the abolition of the jizya was',
    'Aurangzeb reimposed the jizya in 1679, reversing Akbar''s policy, and the measure inflamed opposition among the Hindu nobles and the religious divines.',
    'easy',
    'NCERT Class XII',
    null,
    '59418e7f5ee85fc077f7f8e32e33cb80'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '59418e7f5ee85fc077f7f8e32e33cb80'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Shah Jahan'),
            ('B', 'Aurangzeb'),
            ('C', 'Akbar'),
            ('D', 'Jahangir')
           ) as v(label, option_text)
 where q.question_hash = '59418e7f5ee85fc077f7f8e32e33cb80'
on conflict (question_id, label) do nothing;

-- history | mughal-empire | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'mughal-empire'),
    'The Mughal emperor who was killed in the Battle of Samugarh in 1658 was',
    'Dara Shikoh was defeated and killed at the Battle of Samugarh near Agra in 1658 by the combined forces of Aurangzeb and Jaswant Singh of Marwar.',
    'medium',
    'NCERT Class XII',
    null,
    '4626f7383890068782db2ac572b05379'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '4626f7383890068782db2ac572b05379'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Shah Shuja'),
            ('B', 'Murad Baksh'),
            ('C', 'Jaswant Singh'),
            ('D', 'Dara Shikoh')
           ) as v(label, option_text)
 where q.question_hash = '4626f7383890068782db2ac572b05379'
on conflict (question_id, label) do nothing;

-- history | mughal-empire | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'mughal-empire'),
    'The only religious tax collected by the Mughal state throughout its existence was the',
    'The jizya, first levied on non-Muslims by the Delhi Sultanate and briefly abolished by Akbar, was the only religious tax of the Mughal state, and Aurangzeb''s reimposition of it in 1679 caused grave discontent.',
    'medium',
    'NCERT Class XII',
    null,
    '2068ba9cc1c87bc577cf2611d8ae20b8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '2068ba9cc1c87bc577cf2611d8ae20b8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Jizya'),
            ('B', 'Kharaj'),
            ('C', 'Zabt'),
            ('D', 'Khamsa')
           ) as v(label, option_text)
 where q.question_hash = '2068ba9cc1c87bc577cf2611d8ae20b8'
on conflict (question_id, label) do nothing;

-- history | mughal-empire | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'mughal-empire'),
    'Aurangzeb''s conflict with the Sikhs began when he',
    'Aurangzeb''s execution of Guru Tegh Bahadur in 1675 and his persecution of the Sikhs led Guru Gobind Singh to establish the Khalsa order in 1699.',
    'medium',
    'NCERT Class XII',
    null,
    '7f749980c2a7b3ea4e2d17656df553a9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '7f749980c2a7b3ea4e2d17656df553a9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Banned the wearing of the turban'),
            ('B', 'Taxed the Sikh peasants of Punjab'),
            ('C', 'Executed the ninth Sikh Guru, Tegh Bahadur'),
            ('D', 'Took over the Sikh shrine at Amritsar')
           ) as v(label, option_text)
 where q.question_hash = '7f749980c2a7b3ea4e2d17656df553a9'
on conflict (question_id, label) do nothing;

-- history | mughal-empire | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'mughal-empire'),
    'The Mughal emperor who conquered Golconda in 1687 was',
    'Aurangzeb took Golconda in 1687 and Bijapur in 1686, and the annexation of the Deccan sultanates completed his conquest of the southern peninsula but exhausted his treasury.',
    'medium',
    'NCERT Class XII',
    null,
    'f638c6da13e29bfa31238069386a80c0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f638c6da13e29bfa31238069386a80c0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Akbar'),
            ('B', 'Aurangzeb'),
            ('C', 'Shah Jahan'),
            ('D', 'Jahangir')
           ) as v(label, option_text)
 where q.question_hash = 'f638c6da13e29bfa31238069386a80c0'
on conflict (question_id, label) do nothing;

-- history | mughal-empire | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'mughal-empire'),
    'The Mughal emperor who died at Aurangabad in 1707 after nearly three decades of continuous warfare was',
    'Aurangzeb died at Aurangabad in 1707, and his sons fought over his body before taking it to the Ganges, a scene described in the Khulasat-i-Akbari.',
    'easy',
    'NCERT Class XII',
    null,
    '4106ffbb1507b19308911398fc594a4d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '4106ffbb1507b19308911398fc594a4d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Shah Jahan'),
            ('B', 'Jahangir'),
            ('C', 'Humayun'),
            ('D', 'Aurangzeb')
           ) as v(label, option_text)
 where q.question_hash = '4106ffbb1507b19308911398fc594a4d'
on conflict (question_id, label) do nothing;

-- history | mughal-empire | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'mughal-empire'),
    'Aurangzeb''s policy towards the Marathas included',
    'Aurangzeb refused to recognise the Maratha state, sent Bahlul Khan against Shivaji, had Sambhaji killed in 1689 and excluded Rajaram from any place at the Mughal court.',
    'medium',
    'NCERT Class XII',
    null,
    '1f9add8f3da14110edd7eddfc3359782'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '1f9add8f3da14110edd7eddfc3359782'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sending an expedition under Bahlul Khan, the killing of Sambhaji and the denial of the Mughal throne to Rajaram'),
            ('B', 'Recognising Shivaji as an independent ruler of the Deccan'),
            ('C', 'Granting the Marathas the governorship of Gujarat'),
            ('D', 'An agreement with the Peshwa at Surat')
           ) as v(label, option_text)
 where q.question_hash = '1f9add8f3da14110edd7eddfc3359782'
on conflict (question_id, label) do nothing;

-- history | mughal-empire | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'mughal-empire'),
    'The historian who wrote the History of Aurangzib and the History of the Marathas is',
    'Jadunath Sarkar wrote the History of Aurangzib and the three-volume History of the Marathas, and his interpretations, such as the characterisation of Aurangzeb as a bigot, have been much debated.',
    'medium',
    'Standard Reference',
    null,
    'fc53a5708a8bf957d1f45069a53f8b84'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'fc53a5708a8bf957d1f45069a53f8b84'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A. L. Basham'),
            ('B', 'R. C. Majumdar'),
            ('C', 'Jadunath Sarkar'),
            ('D', 'K. R. Sharma')
           ) as v(label, option_text)
 where q.question_hash = 'fc53a5708a8bf957d1f45069a53f8b84'
on conflict (question_id, label) do nothing;

-- history | mughal-empire | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'mughal-empire'),
    'The historian who wrote the History of the Delhi Sultanate and is a major authority on the Tughlaq period was',
    'R. C. Majumdar''s History of the Delhi Sultanate remains a standard work, and Irfan Habib and Satish Chandra later revised many of its interpretations with fresh evidence.',
    'medium',
    'Standard Reference',
    null,
    '7586f1ea6fe8b7bd510bb61494daf8a9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '7586f1ea6fe8b7bd510bb61494daf8a9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'R. C. Majumdar'),
            ('B', 'Irfan Habib'),
            ('C', 'Satish Chandra'),
            ('D', 'R. S. Sharma')
           ) as v(label, option_text)
 where q.question_hash = '7586f1ea6fe8b7bd510bb61494daf8a9'
on conflict (question_id, label) do nothing;

-- history | mughal-empire | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'mughal-empire'),
    'The work Medieval India: The Study of a Civilization by Irfan Habib is a major study of which period?',
    'Irfan Habib''s Medieval India is a reinterpretation of the Delhi Sultanate and Mughal centuries, arguing that the ''medieval'' period in India was essentially an age of peasant production and hydraulic expansion.',
    'medium',
    'Standard Reference',
    null,
    '0a4c7570e72ec1a1008e61d916df683f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '0a4c7570e72ec1a1008e61d916df683f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The colonial period'),
            ('B', 'The Sangam age'),
            ('C', 'The Delhi Sultanate and the Mughal periods'),
            ('D', 'The Vedic period')
           ) as v(label, option_text)
 where q.question_hash = '0a4c7570e72ec1a1008e61d916df683f'
on conflict (question_id, label) do nothing;

-- history | mughal-empire | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'mughal-empire'),
    'The author of the classic work The Wonder That Was India, which presents a wide-ranging view of Indian civilisation, was',
    'A. L. Basham''s The Wonder That Was India, first published in 1954, remains widely read for its synthesis of the political, social and cultural history of the subcontinent.',
    'medium',
    'Standard Reference',
    null,
    'af5f288e731d760b8f971ee1f2b0f769'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'af5f288e731d760b8f971ee1f2b0f769'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'K. A. Nilakanta Sastri'),
            ('B', 'A. L. Basham'),
            ('C', 'R. C. Majumdar'),
            ('D', 'R. S. Sharma')
           ) as v(label, option_text)
 where q.question_hash = 'af5f288e731d760b8f971ee1f2b0f769'
on conflict (question_id, label) do nothing;

-- history | mughal-empire | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'mughal-empire'),
    'The founder of the modern study of Indian history and author of the Introduction to the Study of Indian History was',
    'D. D. Kosambi''s Introduction to the Study of Indian History with a Marxist approach exercised great influence on a generation of Indian historians.',
    'hard',
    'Standard Reference',
    null,
    'b1b4bca23d0b1a16a0b89fe4791fb4b1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'b1b4bca23d0b1a16a0b89fe4791fb4b1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Jadunath Sarkar'),
            ('B', 'A. L. Basham'),
            ('C', 'R. S. Sharma'),
            ('D', 'D. D. Kosambi')
           ) as v(label, option_text)
 where q.question_hash = 'b1b4bca23d0b1a16a0b89fe4791fb4b1'
on conflict (question_id, label) do nothing;

-- history | medieval-north | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-north'),
    'The Rajatarangini, the celebrated chronicle of the history of Kashmir, was written by',
    'Kalhana, a Kashmiri Brahmin poet, wrote the Rajatarangini in 1148 CE, and his later Rajataranginis continued the chronicle of Kashmir''s rulers.',
    'medium',
    'Standard Reference',
    null,
    'f86eccda754f50d7bb1839851ed0d123'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f86eccda754f50d7bb1839851ed0d123'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kalhana'),
            ('B', 'Jonaraja'),
            ('C', 'Sultan Zain-ul-Abidin'),
            ('D', 'Niranjan')
           ) as v(label, option_text)
 where q.question_hash = 'f86eccda754f50d7bb1839851ed0d123'
on conflict (question_id, label) do nothing;

-- history | medieval-north | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-north'),
    'The Gond kingdom of Chanda in central India was ruled in the fifteenth century by',
    'The Gond kingdom of Chanda flourished under Bhima Ballal and Bakht Buland in the fifteenth century CE and its rulers patronised the Bastar region and the local art traditions.',
    'hard',
    'Standard Reference',
    null,
    'e6aba5ddecf17530f411c79c4672d7c6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e6aba5ddecf17530f411c79c4672d7c6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bakhtiyar Khalji'),
            ('B', 'Bhima Ballal and Bakht Buland'),
            ('C', 'Raja Ram'),
            ('D', 'Rana Pratap')
           ) as v(label, option_text)
 where q.question_hash = 'e6aba5ddecf17530f411c79c4672d7c6'
on conflict (question_id, label) do nothing;

-- history | delhi-sultanate | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'delhi-sultanate'),
    'The Mongol invasion of 1290 was defeated by the Delhi Sultanate under',
    'Jalal ud-Din Khalji, taking advantage of the succession dispute among the Mongols, routed the Mongol invasion of 1290, a rare victory over the Mongols in the Delhi Sultanate.',
    'medium',
    'Standard Reference',
    null,
    '4b391b5ede93411d07747110a9160667'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '4b391b5ede93411d07747110a9160667'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Balban'),
            ('B', 'Nasiruddin Mahmud'),
            ('C', 'Jalal ud-Din Khilji'),
            ('D', 'Alauddin Khalji')
           ) as v(label, option_text)
 where q.question_hash = '4b391b5ede93411d07747110a9160667'
on conflict (question_id, label) do nothing;

-- history | bhakti-sufi-movement | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'bhakti-sufi-movement'),
    'Kabir, the most influential of the medieval Bhakti poets, is best described as',
    'Kabir, a weaver by caste, preached in the nirguna manner that the divine is formless and nameless, and his dohas condemned caste and ritual and attacked both Hindu and Muslim formalism.',
    'easy',
    'NCERT Class XII',
    null,
    'addee3f777e648d0884dec8d0caa6392'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'addee3f777e648d0884dec8d0caa6392'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A Vaishnava courtier of the Vijayanagara period'),
            ('B', 'A Sufi saint of the Chishti order'),
            ('C', 'A Jain monk of the Digambara sect'),
            ('D', 'A weaver-poet of the nirguna tradition who preached devotion without distinction of caste or creed')
           ) as v(label, option_text)
 where q.question_hash = 'addee3f777e648d0884dec8d0caa6392'
on conflict (question_id, label) do nothing;

-- history | bhakti-sufi-movement | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'bhakti-sufi-movement'),
    'The poet-saint whose abhangs and the Wari temple are associated with the popular devotional cult of Pandhari are',
    'Tukaram, a temple servant of Pandhari in the Ahmednagar region, sang the abhangs that became the devotional music of the Maharashtra, and his shrine at Wari is a place of pilgrimage.',
    'medium',
    'Standard Reference',
    null,
    '73ddca69b91090b4cfc534c02583c91d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '73ddca69b91090b4cfc534c02583c91d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Tukaram'),
            ('B', 'Kabir'),
            ('C', 'Namdev'),
            ('D', 'Tulsidas')
           ) as v(label, option_text)
 where q.question_hash = '73ddca69b91090b4cfc534c02583c91d'
on conflict (question_id, label) do nothing;

-- history | bhakti-sufi-movement | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'bhakti-sufi-movement'),
    'The medieval poet who adapted the Ramayana story in the Awadhi language and is known as the Tulsi Granthivadhu was',
    'Tulsidas wrote the Ramcharitmanas in Awadhi in the sixteenth century, and its rendering of the Ramayana in the vernacular became the most widely read version in north India.',
    'easy',
    'Standard Reference',
    null,
    '16021186737bb4223a78d154b4bd7eb4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '16021186737bb4223a78d154b4bd7eb4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Surdas'),
            ('B', 'Ramdas'),
            ('C', 'Mirabai'),
            ('D', 'Tulsidas')
           ) as v(label, option_text)
 where q.question_hash = '16021186737bb4223a78d154b4bd7eb4'
on conflict (question_id, label) do nothing;

-- history | bhakti-sufi-movement | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'bhakti-sufi-movement'),
    'The Sursagar, the collection of Krishna poems in Braj Bhasha, was written by',
    'Surdas, whose home was at Surshar or Sorasur, wrote the Sursagar describing the childhood of Krishna, and his bhajans were sung with the raga and the classical music of the court.',
    'medium',
    'Standard Reference',
    null,
    '28423a8da2149f933fceffa5bfd9afbc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '28423a8da2149f933fceffa5bfd9afbc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Nandidas'),
            ('B', 'Surdas'),
            ('C', 'Tulsidas'),
            ('D', 'Hit Harivansh')
           ) as v(label, option_text)
 where q.question_hash = '28423a8da2149f933fceffa5bfd9afbc'
on conflict (question_id, label) do nothing;

-- history | bhakti-sufi-movement | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'bhakti-sufi-movement'),
    'Mirabai, the Rajput princess-poet of the Bhakti movement, is remembered for her',
    'Mirabai, a widow of the Mewar ruler, devoted her life to Krishna, composed famous bhajans such as the Payoji, and lived out her last years at the Girnar temple in Gujarat.',
    'easy',
    'NCERT Class XII',
    null,
    'af9c8127744f70423f694ca1d5168a18'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'af9c8127744f70423f694ca1d5168a18'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The composition of the Sursagar'),
            ('B', 'A treatise on the Sufi orders'),
            ('C', 'Devotional bhajans to Krishna and her life of devotion at the Girnar temple'),
            ('D', 'A commentary on the Bhagavad Gita for rulers')
           ) as v(label, option_text)
 where q.question_hash = 'af9c8127744f70423f694ca1d5168a18'
on conflict (question_id, label) do nothing;

-- history | bhakti-sufi-movement | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'bhakti-sufi-movement'),
    'Chaitanya Mahaprabhu, the great Vaishnava reformer of the sixteenth century, is remembered for',
    'Chaitanya Mahaprabhu (1486-1533) introduced the sankirtana as a form of communal worship and led a movement of Vaishnava revival in Bengal, Odisha and Varanasi.',
    'medium',
    'Standard Reference',
    null,
    '96d96a0c1f3da508c569d59f9257c5ce'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '96d96a0c1f3da508c569d59f9257c5ce'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The sankirtana or congregational singing of the names of God and the revival of Vaishnava worship at Puri'),
            ('B', 'The compilation of the Ramcharitmanas'),
            ('C', 'The founding of the lingayat sect'),
            ('D', 'The composition of the Sursagar')
           ) as v(label, option_text)
 where q.question_hash = '96d96a0c1f3da508c569d59f9257c5ce'
on conflict (question_id, label) do nothing;

-- history | bhakti-sufi-movement | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'bhakti-sufi-movement'),
    'The twelve Vaishnava sampradayas, the principal sectarian divisions of Vaishnavism, trace their lineage to',
    'Each of the four Vaishnava sampradayas traces its lineage to one of the twelve Alvars of the Tamil country, the foremost of whom was Nammalvar.',
    'hard',
    'Standard Reference',
    null,
    '468127e177b55fe78b2ecbfc3fd55c2c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '468127e177b55fe78b2ecbfc3fd55c2c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The twelve chapters of the Bhagavata Purana'),
            ('B', 'The twelve Alvars and their disciples'),
            ('C', 'The twelve Buddhist councils'),
            ('D', 'The twelve Maharashtrian saints')
           ) as v(label, option_text)
 where q.question_hash = '468127e177b55fe78b2ecbfc3fd55c2c'
on conflict (question_id, label) do nothing;

-- history | bhakti-sufi-movement | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'bhakti-sufi-movement'),
    'Ramanuja, the philosopher of the Sri Vaishnava sampradaya, is known for his doctrine of',
    'Ramanuja''s Vishishtadvaita teaches that Brahman is the sole independent reality and that souls and matter are real but entirely dependent on him.',
    'medium',
    'Standard Reference',
    null,
    '7ca9aea137e277585aac8289ea0ede94'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '7ca9aea137e277585aac8289ea0ede94'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Shuddhadvaita, the doctrine of pure non-dualism'),
            ('B', 'Madhyamaka, the doctrine of emptiness'),
            ('C', 'Vishishtadvaita, which holds that the individual soul and matter are real but dependent on the supreme being'),
            ('D', 'Dwaitadvaita, the doctrine of dualism')
           ) as v(label, option_text)
 where q.question_hash = '7ca9aea137e277585aac8289ea0ede94'
on conflict (question_id, label) do nothing;

-- history | bhakti-sufi-movement | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'bhakti-sufi-movement'),
    'Madhva, the philosopher of the Udupi matha in Karnataka, propounded',
    'Madhva (1238-1317) taught Dwaitadvaita, that God and souls are essentially different and that the Vedas are eternal and infallible.',
    'medium',
    'Standard Reference',
    null,
    'b105fa08d6104d2298b5eab6a26a13a2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'b105fa08d6104d2298b5eab6a26a13a2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Vishishtadvaita'),
            ('B', 'Shuddhadvaita'),
            ('C', 'Acintya Bhedabheda'),
            ('D', 'Dwaitadvaita, the doctrine of the dualism of God and the soul')
           ) as v(label, option_text)
 where q.question_hash = 'b105fa08d6104d2298b5eab6a26a13a2'
on conflict (question_id, label) do nothing;

-- history | bhakti-sufi-movement | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'bhakti-sufi-movement'),
    'Vallabhacharya, the founder of the Pushti or Shuddhadvaita sampradaya, was a contemporary of',
    'Vallabhacharya (1479-1531) of Gujarat founded the Pushtiimarg, and his followers, including Harivansh Mahaprabhu, played a major role in the eighteenth-century Punjab under Guru Gobind Singh.',
    'hard',
    'Standard Reference',
    null,
    '5e6ea2b423a3be83ae0b03447f68a38d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '5e6ea2b423a3be83ae0b03447f68a38d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ramanuja'),
            ('B', 'Kabir'),
            ('C', 'Guru Gobind Singh and Chaitanya Mahaprabhu'),
            ('D', 'Basavanna')
           ) as v(label, option_text)
 where q.question_hash = '5e6ea2b423a3be83ae0b03447f68a38d'
on conflict (question_id, label) do nothing;

-- history | bhakti-sufi-movement | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'bhakti-sufi-movement'),
    'Basavanna, the Kannada poet-saint of the Lingayat movement, was a contemporary and minister of',
    'Basavanna was the minister of the Western Chalukya king Kakusandha and composed the Vachana poems in Kannada, which became the scripture of the Lingayat or Vachana movement.',
    'hard',
    'Standard Reference',
    null,
    '65c0402e65469ad62546e592946d776f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '65c0402e65469ad62546e592946d776f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Amoghavarsha I'),
            ('B', 'Pulakeshin II'),
            ('C', 'Krishna Deva Raya'),
            ('D', 'Kakusandha, the Western Chalukya king of Kalyani')
           ) as v(label, option_text)
 where q.question_hash = '65c0402e65469ad62546e592946d776f'
on conflict (question_id, label) do nothing;

-- history | bhakti-sufi-movement | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'bhakti-sufi-movement'),
    'Akka Mahadevi, the wife of Basavanna, is celebrated as',
    'Akka Mahadevi composed the Kannada vachanas in a strikingly modern idiom and is remembered as the earliest woman poet-saint of the Karnataka.',
    'medium',
    'Standard Reference',
    null,
    '2cea5d7722a78ecbedce08f4642212c6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '2cea5d7722a78ecbedce08f4642212c6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'One of the first women saints of the Kannada-speaking land'),
            ('B', 'The founder of the Vijayanagara dynasty'),
            ('C', 'The author of the Lilavati'),
            ('D', 'The queen of the Chola king Rajaraja')
           ) as v(label, option_text)
 where q.question_hash = '2cea5d7722a78ecbedce08f4642212c6'
on conflict (question_id, label) do nothing;

-- history | bhakti-sufi-movement | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'bhakti-sufi-movement'),
    'Guru Nanak, the founder of Sikhism, preached a message that combined',
    'Guru Nanak''s teaching, expressed in the Guru Granth Sahib, grew out of the Punjabi Bhakti and Sufi traditions and rejected both Hindu ritual and Muslim formalism.',
    'medium',
    'NCERT Class XII',
    null,
    '17e06d1c60d5fbaa1e1ba97ed1e0252e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '17e06d1c60d5fbaa1e1ba97ed1e0252e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Buddhist doctrine of emptiness with the Jain principle of ahimsa'),
            ('B', 'The Bhakti devotion to a formless God with the Sufi ideal of the search for the true Name'),
            ('C', 'The Vedic sacrificial ritual with the Vaishnava lore'),
            ('D', 'The Buddhist monastic discipline with the Shaiva asceticism')
           ) as v(label, option_text)
 where q.question_hash = '17e06d1c60d5fbaa1e1ba97ed1e0252e'
on conflict (question_id, label) do nothing;

-- history | bhakti-sufi-movement | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'bhakti-sufi-movement'),
    'The tenth Sikh Guru who founded the Khalsa order in 1699 was',
    'Guru Gobind Singh founded the Khalsa at Anandpur Sahib in 1699 and also wrote the Zafarnama, his letter to Emperor Aurangzeb.',
    'easy',
    'NCERT Class XII',
    null,
    '42be5ea53760f779cc5c0c4648f68789'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '42be5ea53760f779cc5c0c4648f68789'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Guru Arjan'),
            ('B', 'Guru Hargobind'),
            ('C', 'Guru Gobind Singh'),
            ('D', 'Guru Tegh Bahadur')
           ) as v(label, option_text)
 where q.question_hash = '42be5ea53760f779cc5c0c4648f68789'
on conflict (question_id, label) do nothing;

-- history | bhakti-sufi-movement | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'bhakti-sufi-movement'),
    'The fifth Sikh Guru, who compiled the Adi Granth and was executed at Lahore in 1606, was',
    'Guru Arjan compiled the Adi Granth, completed the Harimandir at Amritsar and was executed on the orders of Emperor Akbar at Lahore in 1606.',
    'medium',
    'NCERT Class XII',
    null,
    '9ee31fabe552f3ad916ca254ef66a54c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '9ee31fabe552f3ad916ca254ef66a54c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Guru Hargobind'),
            ('B', 'Guru Arjan'),
            ('C', 'Guru Ram Das'),
            ('D', 'Guru Nanak')
           ) as v(label, option_text)
 where q.question_hash = '9ee31fabe552f3ad916ca254ef66a54c'
on conflict (question_id, label) do nothing;

-- history | bhakti-sufi-movement | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'bhakti-sufi-movement'),
    'The sixth Sikh Guru, who established the system of the Misl or the cavalry units, was',
    'Guru Hargobind, who succeeded his father in 1606, raised the Khalsa army and founded the Misls and the seat of the Guru at Kiratpur.',
    'medium',
    'Standard Reference',
    null,
    'eabe6abd65a8fd01bd0b86adfbf4dedc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'eabe6abd65a8fd01bd0b86adfbf4dedc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Guru Gobind Singh'),
            ('B', 'Guru Arjan'),
            ('C', 'Guru Nanak'),
            ('D', 'Guru Hargobind')
           ) as v(label, option_text)
 where q.question_hash = 'eabe6abd65a8fd01bd0b86adfbf4dedc'
on conflict (question_id, label) do nothing;

-- history | bhakti-sufi-movement | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'bhakti-sufi-movement'),
    'The founder of the Chishti order of Sufism was',
    'Khwaja Moinuddin Chishti (1236-1269) was the principal master of the Chishti order and his dargah at Ajmer became one of the most important centres of Sufi pilgrimage in India.',
    'easy',
    'NCERT Class XII',
    null,
    'f6bb9414adc8c583d84fbd07dc27c80f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f6bb9414adc8c583d84fbd07dc27c80f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Khwaja Moinuddin Chishti'),
            ('B', 'Khwaja Qutbuddin Bakhtiar Kaki'),
            ('C', 'Nizamuddin Auliya'),
            ('D', 'Mian Mir')
           ) as v(label, option_text)
 where q.question_hash = 'f6bb9414adc8c583d84fbd07dc27c80f'
on conflict (question_id, label) do nothing;

-- history | bhakti-sufi-movement | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'bhakti-sufi-movement'),
    'The Sufi saint of the Chishti order whose dargah at Delhi attracted pilgrims from all over India was',
    'Bakhtiyar Kaki, a disciple of Moinuddin Chishti, settled in Delhi and his dargah, built near the Qutb complex, became a great centre of Sufi pilgrimage.',
    'medium',
    'NCERT Class XII',
    null,
    '573f48c5009fd322be5c4dccc76916ec'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '573f48c5009fd322be5c4dccc76916ec'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Khwaja Moinuddin Chishti'),
            ('B', 'Nizamuddin Auliya'),
            ('C', 'Baba Farid'),
            ('D', 'Khwaja Qutbuddin Bakhtiar Kaki')
           ) as v(label, option_text)
 where q.question_hash = '573f48c5009fd322be5c4dccc76916ec'
on conflict (question_id, label) do nothing;

-- history | bhakti-sufi-movement | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'bhakti-sufi-movement'),
    'The Sufi saint of the Suhrawardi order at Delhi, who died in 1358 and whose shrine is near the Nizamuddin station, was',
    'Shaikh Nizamuddin Auliya of the Suhrawardi order was the most influential Sufi of the Delhi region and his teachings and khanqah shaped the cultural life of the city.',
    'medium',
    'NCERT Class XII',
    null,
    'e1e47c7bb8fd51f609701e353eea1448'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e1e47c7bb8fd51f609701e353eea1448'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Khwaja Moinuddin Chishti'),
            ('B', 'Sheikh Nizamuddin'),
            ('C', 'Nizamuddin Auliya'),
            ('D', 'Khwaja Qutbuddin Bakhtiar Kaki')
           ) as v(label, option_text)
 where q.question_hash = 'e1e47c7bb8fd51f609701e353eea1448'
on conflict (question_id, label) do nothing;

-- history | bhakti-sufi-movement | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'bhakti-sufi-movement'),
    'Amir Khusrau, the poet-musician of the Delhi Sultanate, was closely associated with the Sufi saint',
    'Amir Khusrau was a disciple and a close associate of Nizamuddin Auliya and expressed his devotion in the qawwali, the sama and the lyrics he composed for the Sufi khanqah.',
    'medium',
    'NCERT Class XII',
    null,
    'cc253a597e8cb0d4d1997bd368d600f1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'cc253a597e8cb0d4d1997bd368d600f1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Nizamuddin Auliya'),
            ('B', 'Khwaja Moinuddin Chishti'),
            ('C', 'Baba Farid'),
            ('D', 'Mian Mir')
           ) as v(label, option_text)
 where q.question_hash = 'cc253a597e8cb0d4d1997bd368d600f1'
on conflict (question_id, label) do nothing;

-- history | bhakti-sufi-movement | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'bhakti-sufi-movement'),
    'The Sufi musical form of devotional singing developed in the khanqah and popularised by Amir Khusrau is the',
    'The qawwali grew out of the sama of the Sufi orders and was given its literary and musical form by Amir Khusrau in the Delhi Sultanate.',
    'easy',
    'Standard Reference',
    null,
    'dc56d3ed93a36c772e345e6a2a089add'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'dc56d3ed93a36c772e345e6a2a089add'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Dhrupad'),
            ('B', 'Qawwali'),
            ('C', 'Khyal'),
            ('D', 'Thumri')
           ) as v(label, option_text)
 where q.question_hash = 'dc56d3ed93a36c772e345e6a2a089add'
on conflict (question_id, label) do nothing;

-- history | bhakti-sufi-movement | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'bhakti-sufi-movement'),
    'The chief Indian Sufi orders included the Chishti, the Suhrawardi, the Qadiri, the Naqshbandi and the',
    'The five principal Sufi orders in the Indian subcontinent were the Chishti, the Suhrawardi, the Qadiri, the Naqshbandi and the Sabiri.',
    'medium',
    'Standard Reference',
    null,
    '962576da6496e38038fd029e334eeb62'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '962576da6496e38038fd029e334eeb62'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Suhail'),
            ('B', 'Khalwati'),
            ('C', 'Rifa''i order'),
            ('D', 'Sabiri')
           ) as v(label, option_text)
 where q.question_hash = '962576da6496e38038fd029e334eeb62'
on conflict (question_id, label) do nothing;

-- history | bhakti-sufi-movement | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'bhakti-sufi-movement'),
    'The Sufi order established in the Punjab by Mian Mir and later revitalised by Sheikh Ahmad Sirhindi was the',
    'The Naqshbandi order was introduced to the Punjab by Mian Mir in the seventeenth century and was revitalised by Sheikh Ahmad Sirhindi, the Mujaddid Alf-i-Sani.',
    'medium',
    'Standard Reference',
    null,
    '9b709d8e672d0abd16d20b9188284dae'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '9b709d8e672d0abd16d20b9188284dae'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Suhrawardi'),
            ('B', 'Naqshbandi'),
            ('C', 'Chishti'),
            ('D', 'Qadiri')
           ) as v(label, option_text)
 where q.question_hash = '9b709d8e672d0abd16d20b9188284dae'
on conflict (question_id, label) do nothing;

-- history | bhakti-sufi-movement | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'bhakti-sufi-movement'),
    'Sheikh Ahmad Sirhindi, known as the Mujaddid Alf-i-Sani, is remembered for',
    'Ahmad Sirhindi criticised the Hindu and Muslim elements that had mingled in the Guru Granth Sahib and led a reform movement that influenced Guru Gobind Singh''s circle.',
    'hard',
    'Standard Reference',
    null,
    '362790cf7002cf363da853db66c3c3f6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '362790cf7002cf363da853db66c3c3f6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The composition of the Sursagar'),
            ('B', 'The translation of the Arthashastra'),
            ('C', 'Reviving the Naqshbandi order and checking the syncretic practices that had crept into Sikhism'),
            ('D', 'Founding the Chishti order')
           ) as v(label, option_text)
 where q.question_hash = '362790cf7002cf363da853db66c3c3f6'
on conflict (question_id, label) do nothing;

-- history | bhakti-sufi-movement | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'bhakti-sufi-movement'),
    'The Sufi institution in medieval India that combined a place of worship, a lodging for the faqis and a centre of instruction was the',
    'The khanqah served as the Sufi lodge and centre of learning, while the imara was the soup kitchen that fed the poor and the travellers.',
    'medium',
    'Standard Reference',
    null,
    '5096cc4cb9cfab6303501e8e0c00d24e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '5096cc4cb9cfab6303501e8e0c00d24e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Khanqah'),
            ('B', 'Imara'),
            ('C', 'Darul Uloom'),
            ('D', 'Idgah')
           ) as v(label, option_text)
 where q.question_hash = '5096cc4cb9cfab6303501e8e0c00d24e'
on conflict (question_id, label) do nothing;

-- history | bhakti-sufi-movement | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'bhakti-sufi-movement'),
    'Baba Farid, the great Punjabi Sufi poet and the fountain-head of the Chishti order in the Punjab, is regarded as the spiritual preceptor of',
    'Baba Farid, whose dohas in Punjabi deeply influenced the early Sikh literature, is regarded by many historians as the spiritual preceptor of Guru Nanak.',
    'medium',
    'Standard Reference',
    null,
    '1936f808e2c422023cfb37021abf2755'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '1936f808e2c422023cfb37021abf2755'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Guru Nanak'),
            ('B', 'Kabir'),
            ('C', 'Tukaram'),
            ('D', 'Basavanna')
           ) as v(label, option_text)
 where q.question_hash = '1936f808e2c422023cfb37021abf2755'
on conflict (question_id, label) do nothing;

-- history | bhakti-sufi-movement | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'bhakti-sufi-movement'),
    'Andal, the Tamil Vaishnava saint-poet, is famous for her',
    'Andal''s Tiruppavai is sung in every Vaishnava household during the month of Margazhi, and she is the only woman among the twelve Alvars.',
    'medium',
    'Standard Reference',
    null,
    '6a417ce9c4ca09c90d507c4d906f32a2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '6a417ce9c4ca09c90d507c4d906f32a2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Tirukkural'),
            ('B', 'The Tiruppavai, a set of songs in praise of Krishna sung in the month of Margazhi'),
            ('C', 'The Vachana poems'),
            ('D', 'The Sursagar')
           ) as v(label, option_text)
 where q.question_hash = '6a417ce9c4ca09c90d507c4d906f32a2'
on conflict (question_id, label) do nothing;

-- history | bhakti-sufi-movement | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'bhakti-sufi-movement'),
    'Namdev, the medieval painter-saint of the Bhakti movement, is famous for',
    'Namdev composed the Hirdayaman in Braj and his painting of the Gita Govinda at Nandgaon in Maharashtra became a famous devotional image.',
    'hard',
    'Standard Reference',
    null,
    'c5572349ac41a388c602523126b195ed'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'c5572349ac41a388c602523126b195ed'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Sursagar'),
            ('B', 'The Ramcharitmanas'),
            ('C', 'The Vachana of the Lingayats'),
            ('D', 'The Hirdayaman, a collection of his devotional lyrics, and his painting of the Gita Govinda at Nandgaon')
           ) as v(label, option_text)
 where q.question_hash = 'c5572349ac41a388c602523126b195ed'
on conflict (question_id, label) do nothing;

-- history | bhakti-sufi-movement | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'bhakti-sufi-movement'),
    'The Bhakti and Sufi movements of medieval India are significant for India because',
    'The movements made devotion accessible to the common people through vernacular composition, questioned ritual exclusiveness and caste hierarchy, and deeply influenced later religious traditions including Sikhism.',
    'medium',
    'NCERT Class XII',
    null,
    'a8fd47cb65760c87d84f4640f836d5d4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'a8fd47cb65760c87d84f4640f836d5d4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'They created the modern bureaucratic state'),
            ('B', 'They replaced the Vedic and Puranic traditions entirely'),
            ('C', 'They carried popular religious ideas in the regional languages and weakened the hold of caste and ritual orthodoxy'),
            ('D', 'They established the doctrine of the divine kingship')
           ) as v(label, option_text)
 where q.question_hash = 'a8fd47cb65760c87d84f4640f836d5d4'
on conflict (question_id, label) do nothing;

-- history | bhakti-sufi-movement | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'bhakti-sufi-movement'),
    'The Bhakti poet-saint Ramdas, who founded the Ramdas sect and the temple at Wari, was the guru of',
    'Ramdas, the author of the Dasavara, was the spiritual preceptor of Shivaji and installed him as the sovereign of the Maratha state, and his shrine at Wari became a centre of the Ramdas sect.',
    'medium',
    'Standard Reference',
    null,
    '870a08b1cda734a27b29216e514fb979'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '870a08b1cda734a27b29216e514fb979'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Chaitanya Mahaprabhu'),
            ('B', 'Ramanuja'),
            ('C', 'Shivaji'),
            ('D', 'Guru Gobind Singh')
           ) as v(label, option_text)
 where q.question_hash = '870a08b1cda734a27b29216e514fb979'
on conflict (question_id, label) do nothing;

-- history | bhakti-sufi-movement | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'bhakti-sufi-movement'),
    'The Sufi saint who is said to have built the Gwalior fort for the local ruler and whose shrine at Ajmer attracts pilgrims was',
    'The Gwalior fort legend holds that Moinuddin Chishti built the fort for the Raja and asked for nothing but the fees of the Sufi institutions, and his dargah at Ajmer is a centre of pilgrimage.',
    'medium',
    'Standard Reference',
    null,
    '7dca1fc54bd5bde9c7918eb1f61d695d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '7dca1fc54bd5bde9c7918eb1f61d695d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Baba Farid'),
            ('B', 'Khwaja Moinuddin Chishti'),
            ('C', 'Bakhtiyar Kaki'),
            ('D', 'Nizamuddin Auliya')
           ) as v(label, option_text)
 where q.question_hash = '7dca1fc54bd5bde9c7918eb1f61d695d'
on conflict (question_id, label) do nothing;

-- history | british-raj | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'british-raj'),
    'The Regulating Act of 1773 was passed by:',
    'The Regulating Act of 1773 was the first Act of the British Parliament to control and regulate the East India Company, and it designated Bengal as the seat of the Company.',
    'easy',
    'Standard Reference',
    null,
    '15d04d3799dc76a703fb47465359a195'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '15d04d3799dc76a703fb47465359a195'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The British Parliament'),
            ('B', 'The East India Company'),
            ('C', 'The Mughal Emperor'),
            ('D', 'The Governor-General in India')
           ) as v(label, option_text)
 where q.question_hash = '15d04d3799dc76a703fb47465359a195'
on conflict (question_id, label) do nothing;

-- history | british-raj | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'british-raj'),
    'The Pitts India Act was passed in:',
    'The Pitt''s India Act of 1773 renamed the Company as the Governor General of Bengal, created a Supreme Court at Calcutta and separated the commercial and administrative functions.',
    'medium',
    'Standard Reference',
    null,
    '1a4128e3eeb1d981b00fbbef57f29870'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '1a4128e3eeb1d981b00fbbef57f29870'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1784'),
            ('B', '1793'),
            ('C', '1765'),
            ('D', '1773')
           ) as v(label, option_text)
 where q.question_hash = '1a4128e3eeb1d981b00fbbef57f29870'
on conflict (question_id, label) do nothing;

-- history | british-raj | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'british-raj'),
    'The Charter Act of 1813 abolished the:',
    'The Charter Act of 1813 ended the monopoly of the Company over trade with India, though the monopoly over trade with China and the tea trade continued.',
    'hard',
    'Standard Reference',
    null,
    'da6660f5a0d11b054c4d1055245c76ad'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'da6660f5a0d11b054c4d1055245c76ad'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The monopoly of saltpetre'),
            ('B', 'The Calcutta High Court'),
            ('C', 'Trade of the Company with India'),
            ('D', 'Trade of the Company with China')
           ) as v(label, option_text)
 where q.question_hash = 'da6660f5a0d11b054c4d1055245c76ad'
on conflict (question_id, label) do nothing;

-- history | british-raj | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'british-raj'),
    'The ''Doctrine of Lapse'' was associated with:',
    'Lord Dalhousie, as Governor-General from 1848 to 1856, annexed princely states whose rulers failed to naturalise their heirs, under the doctrine of lapse.',
    'easy',
    'Standard Reference',
    null,
    'c42fdda01008388f3867a5c4ef8a372e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c42fdda01008388f3867a5c4ef8a372e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Lord Ripon'),
            ('B', 'Lord Wellesley'),
            ('C', 'Lord Dalhousie'),
            ('D', 'Lord Canning')
           ) as v(label, option_text)
 where q.question_hash = 'c42fdda01008388f3867a5c4ef8a372e'
on conflict (question_id, label) do nothing;

-- history | british-raj | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'british-raj'),
    'The Permanent Settlement of 1793 was introduced by:',
    'Lord Cornwallis introduced the Permanent Settlement in Bengal, fixing the revenue demand permanently and recognising the zamindars as proprietors.',
    'medium',
    'Standard Reference',
    null,
    'e78e125eda1c63db5280a0f04c68257c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e78e125eda1c63db5280a0f04c68257c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Lord Ripon'),
            ('B', 'Lord Cornwallis'),
            ('C', 'Lord Wellesley'),
            ('D', 'Lord Dalhousie')
           ) as v(label, option_text)
 where q.question_hash = 'e78e125eda1c63db5280a0f04c68257c'
on conflict (question_id, label) do nothing;

-- history | british-raj | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'british-raj'),
    'The Ryotwari settlement was introduced in:',
    'The Ryotwari system, introduced in the Madras and Bombay Presidencies, assessed revenue directly on the cultivator, while the Mahalwari system was applied in the north-western provinces.',
    'medium',
    'Standard Reference',
    null,
    'a615c55a6c589c5b85b08cfe97ef84cb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a615c55a6c589c5b85b08cfe97ef84cb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Madras and Bombay'),
            ('B', 'The Punjab'),
            ('C', 'Bengal and Bihar'),
            ('D', 'Bengal')
           ) as v(label, option_text)
 where q.question_hash = 'a615c55a6c589c5b85b08cfe97ef84cb'
on conflict (question_id, label) do nothing;

-- history | british-raj | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'british-raj'),
    'The ''Mahalwari'' system of land revenue was introduced in the:',
    'The Mahalwari system, introduced by Holt Mackenzie in the North Western Provinces, collected revenue from the village or mahal as a unit, with a periodic revision.',
    'hard',
    'Standard Reference',
    null,
    '78a583829178ebb270ab3ed899c71e50'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '78a583829178ebb270ab3ed899c71e50'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Madras'),
            ('B', 'The North Western Provinces'),
            ('C', 'Bombay'),
            ('D', 'Bengal')
           ) as v(label, option_text)
 where q.question_hash = '78a583829178ebb270ab3ed899c71e50'
on conflict (question_id, label) do nothing;

-- history | british-raj | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'british-raj'),
    'The ''Permanent Settlement'' was the outcome of the:',
    'Lord Cornwallis''s Permanent Settlement of 1793 in Bengal recognised zamindars as proprietors and fixed the revenue demand in perpetuity.',
    'medium',
    'Standard Reference',
    null,
    'a1f08877c3da07ba966ac175989515b4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a1f08877c3da07ba966ac175989515b4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Regulating Act'),
            ('B', 'Charters of 1833 and 1853'),
            ('C', 'Wood''s Despatch'),
            ('D', 'Cornwallis''s settlement')
           ) as v(label, option_text)
 where q.question_hash = 'a1f08877c3da07ba966ac175989515b4'
on conflict (question_id, label) do nothing;

-- history | british-raj | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'british-raj'),
    'The ''Ryot'' in the Ryotwari system of land revenue is:',
    'The ryot is the individual cultivator, and the ryotwari system settled the revenue demand directly with him.',
    'easy',
    'Standard Reference',
    null,
    '701a0d37deab6bf865f32b481a5c4b6f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '701a0d37deab6bf865f32b481a5c4b6f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'An individual cultivator or peasant'),
            ('B', 'A village headman'),
            ('C', 'A tenant of the zamindar'),
            ('D', 'A zamindar')
           ) as v(label, option_text)
 where q.question_hash = '701a0d37deab6bf865f32b481a5c4b6f'
on conflict (question_id, label) do nothing;

-- history | british-raj | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'british-raj'),
    'The ''drain of wealth'' theory was propounded by:',
    'Dadabhai Naoroji''s Poverty and Un-British Rule in India and R.C. Dutt''s Economic History of India argued that British rule drained India''s wealth.',
    'easy',
    'Standard Reference',
    null,
    'ff3c261835644b621259244e55ff1535'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'ff3c261835644b621259244e55ff1535'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Raja Rammohan Roy'),
            ('B', 'Gokhale'),
            ('C', 'R.C. Dutt and Dadabhai Naoroji'),
            ('D', 'Adam Smith')
           ) as v(label, option_text)
 where q.question_hash = 'ff3c261835644b621259244e55ff1535'
on conflict (question_id, label) do nothing;

-- history | british-raj | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'british-raj'),
    'The ''dearth of Indian textiles'' in the 19th century was a result of:',
    'Deindustrialisation was a consequence of the colonial policy of free trade, the destruction of village industries and the making of India a supplier of raw materials and an absorber of British manufactures.',
    'medium',
    'Standard Reference',
    null,
    'f42fe763e6aaebe40be38b57a10704d5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'f42fe763e6aaebe40be38b57a10704d5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The failure of the monsoon'),
            ('B', 'The abolition of the guilds'),
            ('C', 'The decline of the Mughal empire'),
            ('D', 'The British policy of making India a supplier of raw materials and a market for manufactures')
           ) as v(label, option_text)
 where q.question_hash = 'f42fe763e6aaebe40be38b57a10704d5'
on conflict (question_id, label) do nothing;

-- history | british-raj | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'british-raj'),
    'The ''Blue Rebellion'' of Bengal was associated with:',
    'The Ryots'' or Blue Rebellion of 1859 against the indigo planters in Bengal was an early peasant uprising, though indigo was revived with compensation.',
    'hard',
    'Standard Reference',
    null,
    'd28ab82ce297669b3dee1ae34e3a1222'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd28ab82ce297669b3dee1ae34e3a1222'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The indigo revolt of 1859'),
            ('B', 'The Sanyasi rebellion'),
            ('C', 'The Wahabi revolt'),
            ('D', 'The Santhal rebellion')
           ) as v(label, option_text)
 where q.question_hash = 'd28ab82ce297669b3dee1ae34e3a1222'
on conflict (question_id, label) do nothing;

-- history | british-raj | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'british-raj'),
    'The ''Indian Councils Act of 1861'' provided for:',
    'The Indian Councils Act of 1861 decentralised administration, restored the legislative powers of the Indian princes to a limited extent and introduced the portfolio system of government.',
    'medium',
    'Standard Reference',
    null,
    'f32e5372f0d1c877bf471d4a5cecac30'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f32e5372f0d1c877bf471d4a5cecac30'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sezwar'),
            ('B', 'The decentralisation of administration with the restoration of the princes'' powers'),
            ('C', 'The creation of the Legislative Council'),
            ('D', 'The transfer of power')
           ) as v(label, option_text)
 where q.question_hash = 'f32e5372f0d1c877bf471d4a5cecac30'
on conflict (question_id, label) do nothing;

-- history | british-raj | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'british-raj'),
    'The ''Indian Councils Act of 1892'' provided for:',
    'The Act of 1892 increased the size of the legislative councils, introduced the indirect method of election and widened the franchise, though it was not extended to the general population.',
    'hard',
    'Standard Reference',
    null,
    '61cce8ff3749542a0d2daaa9075116a3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '61cce8ff3749542a0d2daaa9075116a3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The creation of the Legislative Council at the centre'),
            ('B', 'The introduction of separate electorates'),
            ('C', 'The expansion of the legislative councils and the indirect method of election'),
            ('D', 'The partition of Bengal')
           ) as v(label, option_text)
 where q.question_hash = '61cce8ff3749542a0d2daaa9075116a3'
on conflict (question_id, label) do nothing;

commit;
