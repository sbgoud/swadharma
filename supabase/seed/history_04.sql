-- =============================================================================
-- history_04.sql — history question pack, part 04
-- 250 questions. Applied after supabase/migrations/004_reference_data.sql
-- =============================================================================

begin;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''INA'' and the INA trials:',
    'The INA trials at the Red Fort provoked a huge public agitation and the RIN mutiny of February 1946 and the withdrawal of the cases by the British government.',
    'medium',
    'Standard Reference',
    null,
    'c36d195eb8c14677f33859dedcf7697e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'c36d195eb8c14677f33859dedcf7697e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The INA trials were of the princely states'),
            ('B', 'The INA trials at the Red Fort in 1945-46 provoked a nationwide agitation'),
            ('C', 'The INA trials were of the British'),
            ('D', 'The INA trials were the election trials')
           ) as v(label, option_text)
 where q.question_hash = 'c36d195eb8c14677f33859dedcf7697e'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''Royal Indian Navy Mutiny'' of 1946:',
    'The Royal Indian Navy mutiny of February 1946 began at the HMIS Talwar in Bombay and it spread to the Karachi and the Bombay shore establishments.',
    'hard',
    'Standard Reference',
    null,
    '24eebe445d6abb51acb28c54d34dda5e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '24eebe445d6abb51acb28c54d34dda5e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was the mutiny of the police in Delhi'),
            ('B', 'Was the mutiny of the air force'),
            ('C', 'Was the mutiny of the sailors at Bombay that followed the INA trials'),
            ('D', 'Was the mutiny of the army in the NW')
           ) as v(label, option_text)
 where q.question_hash = '24eebe445d6abb51acb28c54d34dda5e'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''Mountbatten Plan'' of 3 June 1947:',
    'The Mountbatten Plan provided for the partition of India with the lapse of the paramountcy and the clause of the referendum for the accession of the princely states.',
    'medium',
    'Standard Reference',
    null,
    '06e1c3de3d0f48a7206e18f84a74dbd7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '06e1c3de3d0f48a7206e18f84a74dbd7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Provided for the united India'),
            ('B', 'Provided for the partition with the lapse of the paramountcy and the referendum for the accession of the princely states'),
            ('C', 'Provided for the federation'),
            ('D', 'Provided for the dominion status only')
           ) as v(label, option_text)
 where q.question_hash = '06e1c3de3d0f48a7206e18f84a74dbd7'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''Indian Independence Act, 1947'':',
    'The Indian Independence Act of 1947 created the two dominions of India and Pakistan from 15 August 1947 with the Constituent Assemblies of the two.',
    'easy',
    'Standard Reference',
    null,
    '5679e9802874f8746545aa24d73042b3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '5679e9802874f8746545aa24d73042b3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Created the provinces'),
            ('B', 'Abolished the viceroy'),
            ('C', 'Created the Republic'),
            ('D', 'Created the two dominions with the Constituent Assemblies')
           ) as v(label, option_text)
 where q.question_hash = '5679e9802874f8746545aa24d73042b3'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''first General Elections'' of independent India were held in:',
    'The first general elections of independent India were held in 1951-52 in two phases and the Congress won an absolute majority with about 74 per cent of the votes.',
    'easy',
    'Standard Reference',
    null,
    'e8ef7237a0757b1095fea8dcfc634b0a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'e8ef7237a0757b1095fea8dcfc634b0a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1951-52'),
            ('B', '1947'),
            ('C', '1950'),
            ('D', '1955')
           ) as v(label, option_text)
 where q.question_hash = 'e8ef7237a0757b1095fea8dcfc634b0a'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The term ''Satyagraha'' was coined by:',
    'The term ''Satyagraha'' was coined by Mahatma Gandhi in 1914 during the South African struggle, where he used it for the first time on the question of the registration of Indians in the Transvaal.',
    'medium',
    'Standard Reference',
    null,
    'aaf413dc5dbff5e616a1c44f4f7c2e17'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'aaf413dc5dbff5e616a1c44f4f7c2e17'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Nehru'),
            ('B', 'the Tagore'),
            ('C', 'the Gandhi in 1914 in the context of the South African struggle'),
            ('D', 'the Tilak')
           ) as v(label, option_text)
 where q.question_hash = 'aaf413dc5dbff5e616a1c44f4f7c2e17'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'Which of the following statements regarding the Gandhi and the Jawaharlal Nehru is correct?',
    'The Gandhi and the Jawaharlal Nehru differed on the structure of the Congress, the participation in the legislature and the timing of the mass movements, and they both agreed on the Purna Swaraj and the non-violence.',
    'hard',
    'Standard Reference',
    null,
    '7d39fd185b5554b3a511462191cc14a3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '7d39fd185b5554b3a511462191cc14a3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'They were identical in all the views'),
            ('B', 'The Gandhi opposed the participation in the legislature'),
            ('C', 'The Nehru opposed the Civil Disobedience'),
            ('D', 'The Gandhi and the Jawaharlal Nehru had differences on the structure of the Congress and the methods')
           ) as v(label, option_text)
 where q.question_hash = '7d39fd185b5554b3a511462191cc14a3'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''Swaraj'' and the:',
    'The distinction between the Swaraj and the Purna Swaraj was about the immediate objective of the movement and the distant goal of the complete independence.',
    'hard',
    'Standard Reference',
    null,
    '8fe9f1c7c4b1c86bdd3215c5fd28c062'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '8fe9f1c7c4b1c86bdd3215c5fd28c062'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The difference between the Swaraj and the Purna Swaraj was about the immediate objective'),
            ('B', 'There was no difference'),
            ('C', 'The Swaraj was for the dominion status'),
            ('D', 'The Purna Swaraj was for the reform')
           ) as v(label, option_text)
 where q.question_hash = '8fe9f1c7c4b1c86bdd3215c5fd28c062'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''Ramakrishna and the Vivekananda:',
    'The Ramakrishna Mission was founded in 1897 by the Swami Vivekananda and it works for the spiritual and the social service, and the Belur Math is its headquarters.',
    'medium',
    'Standard Reference',
    null,
    '030b1e007553a3492de874baa826b8bf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '030b1e007553a3492de874baa826b8bf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It was founded by the Tagore'),
            ('B', 'The Ramakrishna Mission was founded by the Vivekananda in 1897'),
            ('C', 'It was founded in 1905'),
            ('D', 'It was founded by the Aurobindo')
           ) as v(label, option_text)
 where q.question_hash = '030b1e007553a3492de874baa826b8bf'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''Seva Sangh'' and the Ambedkar:',
    'The Servants of the People Society, the Bahishkrit Hitakarini Sabha, was founded by the B.R. Ambedkar in 1933 and it published the journal Mooknayak.',
    'hard',
    'Standard Reference',
    null,
    'c5e6cf87b0552a7bac86468a55a67141'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c5e6cf87b0552a7bac86468a55a67141'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It was founded by the Phule'),
            ('B', 'It was founded by the Periyar'),
            ('C', 'The Servants of the People Society was founded by the Ambedkar in the 1930s'),
            ('D', 'It was founded in 1920')
           ) as v(label, option_text)
 where q.question_hash = 'c5e6cf87b0552a7bac86468a55a67141'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    '''Mooknayak'' was:',
    '''Mooknayak'' was the journal launched by Dr B.R. Ambedkar in 1930 in Marathi and English to propagate the anti-caste ideas of the Dalits.',
    'hard',
    'Standard Reference',
    null,
    '0cf845eaa7957abad46811c664d29fc3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '0cf845eaa7957abad46811c664d29fc3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the journal of the Congress'),
            ('B', 'the journal of the Muslim League'),
            ('C', 'the journal of the Communists'),
            ('D', 'the journal of Dr B.R. Ambedkar that was published in Marathi and English')
           ) as v(label, option_text)
 where q.question_hash = '0cf845eaa7957abad46811c664d29fc3'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''Poona and the:',
    'The main difference between the Ambedkar and the Gandhi was on the separate electorate for the Depressed Classes and it was resolved by the Poona Pact of 1932.',
    'medium',
    'Standard Reference',
    null,
    'c3dca762aba66718317ab3b3b161e99a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'c3dca762aba66718317ab3b3b161e99a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The difference was about the press'),
            ('B', 'The Ambedkar and the Gandhi had the difference on the separate electorate'),
            ('C', 'The Ambedkar and the Gandhi had no difference'),
            ('D', 'The difference was about the boycott')
           ) as v(label, option_text)
 where q.question_hash = 'c3dca762aba66718317ab3b3b161e99a'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''Jain and the:',
    'The Indian National Congress was founded in December 1885 in Bombay with 72 delegates and the W.C. Bonnerjee was the first president.',
    'easy',
    'Standard Reference',
    null,
    'c239dd73d02316da30848074e0c8970e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'c239dd73d02316da30848074e0c8970e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Indian National Congress was founded in 1885 and the first session was held in Bombay with 72 delegates'),
            ('B', 'It was founded in 1905'),
            ('C', 'It was founded by the Gandhi'),
            ('D', 'It was founded in 1857')
           ) as v(label, option_text)
 where q.question_hash = 'c239dd73d02316da30848074e0c8970e'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''Moderates'' and the Extremists:',
    'The Extremists of 1907, the group of the Bal, the Pal, the Lajpat Rai and the Aurobindo, advocated the swaraj, the boycott and the passive resistance.',
    'medium',
    'Standard Reference',
    null,
    '667d1d0e5cb7e7da513a0dfc1ab16041'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '667d1d0e5cb7e7da513a0dfc1ab16041'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Moderates were the Extremists of 1907'),
            ('B', 'There was no difference'),
            ('C', 'The Extremists of 1907 included the Bal, the Pal and the Lajpat Rai'),
            ('D', 'The Extremists were the led by the Gopal Krishna Gokhale')
           ) as v(label, option_text)
 where q.question_hash = '667d1d0e5cb7e7da513a0dfc1ab16041'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''Surat'' and the:',
    'The Surat session of 1907, presided over by the Rash Behari Bose, saw the split of the Congress with the moderates and the extremists and they reunited at Calcutta in 1906... 1907.',
    'hard',
    'Standard Reference',
    null,
    'f78b57c6c8d57ab57494555f0a273e75'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'f78b57c6c8d57ab57494555f0a273e75'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Surat session was of 1929'),
            ('B', 'The Surat session was the first session'),
            ('C', 'The Surat session of 1907 led to the split of the Congress'),
            ('D', 'The Surat session was of 1916')
           ) as v(label, option_text)
 where q.question_hash = 'f78b57c6c8d57ab57494555f0a273e75'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''Indian Councils Act of 1909'' and the:',
    'The Indian Councils Act of 1909 provided for the expansion of the legislative councils, the indirect method of the election, the wider franchise and the separate electorates for the Muslims.',
    'medium',
    'Standard Reference',
    null,
    '99bf22accb915852cb091a5e3ef0eb96'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '99bf22accb915852cb091a5e3ef0eb96'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Act provided for the indirect election to the legislative councils and the separate electorates for the Muslims'),
            ('B', 'The Act provided for the dyarchy'),
            ('C', 'The Act provided for the provincial autonomy'),
            ('D', 'The Act abolished the councils')
           ) as v(label, option_text)
 where q.question_hash = '99bf22accb915852cb091a5e3ef0eb96'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''Delhi Durbar'' of 1911:',
    'The Delhi Durbar of December 1911, the coronation of the King George V, announced the shifting of the capital to Delhi and it was the first durbar after the partition of Bengal was annulled.',
    'medium',
    'Standard Reference',
    null,
    '674f559642581b36b143668c84876202'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '674f559642581b36b143668c84876202'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was a summit of the Congress'),
            ('B', 'Was the coronation of the King George V in which the capital was announced to be shifted to Delhi'),
            ('C', 'Was the coronation of the Edward VII'),
            ('D', 'Was the coronation of the George VI')
           ) as v(label, option_text)
 where q.question_hash = '674f559642581b36b143668c84876202'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''Capital'' and the:',
    'The capital of British India was shifted from Calcutta to Delhi in 1911 and the new Parliament House of New Delhi was designed by the Edwin Lutyens and completed in 1927.',
    'easy',
    'Standard Reference',
    null,
    'bbac6bbfb795f546613ff8a4cc2b2589'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'bbac6bbfb795f546613ff8a4cc2b2589'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The capital was shifted in 1947'),
            ('B', 'The capital was shifted in 1935'),
            ('C', 'The capital was never shifted'),
            ('D', 'The capital was shifted from Calcutta to Delhi in 1911')
           ) as v(label, option_text)
 where q.question_hash = 'bbac6bbfb795f546613ff8a4cc2b2589'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''Partition of Bengal'' of 1905 was annulled in:',
    'The partition of Bengal was annulled at the Delhi Durbar of 1911 and the province of Bengal was reunited with the partition of the eastern and the western Bengal in 1912.',
    'medium',
    'Standard Reference',
    null,
    '80584333dce9b66f7585b41e5397005d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '80584333dce9b66f7585b41e5397005d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1911'),
            ('B', '1912'),
            ('C', '1907'),
            ('D', '1906')
           ) as v(label, option_text)
 where q.question_hash = '80584333dce9b66f7585b41e5397005d'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''Home Rule'' movement of 1916 was launched by:',
    'The Home Rule movement was launched in April 1916 by the Bal Gangadhar Tilak and the Annie Besant and it was the first all-India political party with a permanent organisation.',
    'medium',
    'Standard Reference',
    null,
    '791ebf6b7b8e5c9bbe9f72ed5212e12e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '791ebf6b7b8e5c9bbe9f72ed5212e12e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Tagore and Vivekananda'),
            ('B', 'Tilak and Annie Besant'),
            ('C', 'Gandhi and Nehru'),
            ('D', 'Modi and Patel')
           ) as v(label, option_text)
 where q.question_hash = '791ebf6b7b8e5c9bbe9f72ed5212e12e'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The Congress was reunited in:',
    'The Congress was reunited in 1916 at the Lucknow session, which marked the beginning of a new phase with the Home Rule agitation and the Congress-League unity.',
    'hard',
    'Standard Reference',
    null,
    '2d0b7eafc8bbf279e30d2aa3e22236b4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '2d0b7eafc8bbf279e30d2aa3e22236b4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1906'),
            ('B', '1920'),
            ('C', '1930'),
            ('D', '1916 at the Lucknow session')
           ) as v(label, option_text)
 where q.question_hash = '2d0b7eafc8bbf279e30d2aa3e22236b4'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The Government of India Act of 1919 separated the central and the provincial subjects and introduced:',
    'The Government of India Act of 1919 separated the central and the provincial subjects and it introduced the dyarchy in the provinces, and the electoral franchise was widened to about 10 per cent of the population.',
    'medium',
    'Standard Reference',
    null,
    '308ff2b91019dcb7363d3e193e8a81f5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '308ff2b91019dcb7363d3e193e8a81f5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the provincial autonomy'),
            ('B', 'the franchise to all'),
            ('C', 'the dyarchy'),
            ('D', 'the separate electorates')
           ) as v(label, option_text)
 where q.question_hash = '308ff2b91019dcb7363d3e193e8a81f5'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The 1921 Nagpur session of the Congress was:',
    'The Nagpur session of December 1921 was presided over by the C. Vijayaraghavachariar and it was the first Congress with the women in the membership and it also endorsed the Soviet Union.',
    'hard',
    'Standard Reference',
    null,
    'a07127ee4a6d9acad991bc029c4b9bc2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a07127ee4a6d9acad991bc029c4b9bc2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the session of the Partition'),
            ('B', 'presided over by the C. Vijayaraghavachariar and it was the first with the women in the membership'),
            ('C', 'presided over by the Motilal Nehru'),
            ('D', 'presided over by the Gandhi')
           ) as v(label, option_text)
 where q.question_hash = 'a07127ee4a6d9acad991bc029c4b9bc2'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The Kashmir Committee of the Congress was:',
    'The Kashmir Committee of the Congress was formed in 1931 to support the demand of the Muslim League for the independence and it was an unusual instance of the Congress supporting a cause against its own interest.',
    'hard',
    'Standard Reference',
    null,
    'a593773368d8d9edd50183cbd6c59727'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a593773368d8d9edd50183cbd6c59727'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'formed in 1927'),
            ('B', 'formed by the British'),
            ('C', 'the committee of the partition'),
            ('D', 'formed in 1931 to support the movement of the Muslim League for the independence')
           ) as v(label, option_text)
 where q.question_hash = 'a593773368d8d9edd50183cbd6c59727'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The Nehru Report of 1928 was:',
    'The Nehru Report of 1928, prepared under the chairmanship of the Motilal Nehru, was the first comprehensive constitutional document of the Congress and it contained the fundamental rights, the provincial autonomy and the dominion status.',
    'medium',
    'Standard Reference',
    null,
    'e304744affd65159301fd63288aad87d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e304744affd65159301fd63288aad87d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the report of the Simon Commission'),
            ('B', 'the report of the Round Table Conference'),
            ('C', 'the first comprehensive constitutional document of the Congress'),
            ('D', 'a document of the British')
           ) as v(label, option_text)
 where q.question_hash = 'e304744affd65159301fd63288aad87d'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The Muscat and the Yusufzai and the Noakhali were:',
    'The peasant revolts of 1930 were centred in the Muscat, the Yusufzai and the Noakhali and the raid of the police at the Peshawar was the biggest of them.',
    'hard',
    'Standard Reference',
    null,
    '27fef162d17a0f8663a810d2571af706'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '27fef162d17a0f8663a810d2571af706'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the three centres of the peasant revolts in 1930'),
            ('B', 'the three princely states'),
            ('C', 'the three jails'),
            ('D', 'the three districts of the Congress')
           ) as v(label, option_text)
 where q.question_hash = '27fef162d17a0f8663a810d2571af706'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''Dharasana'' and the Salt Satyagraha:',
    'The Dharasana raid of May 1930, where the volunteers were beaten by the police without resisting, broke the morale of the government and the Civil Disobedience spread rapidly.',
    'medium',
    'Standard Reference',
    null,
    'd5b584ebfc0151a53dfb117ec34451cb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd5b584ebfc0151a53dfb117ec34451cb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Dharasana raid of 1930 broke the backbone of the salt law and the Civil Disobedience'),
            ('B', 'It ended the movement'),
            ('C', 'It was in the Punjab'),
            ('D', 'It was a victory for the British')
           ) as v(label, option_text)
 where q.question_hash = 'd5b584ebfc0151a53dfb117ec34451cb'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The Poona Pact of 1932 was:',
    'The Poona Pact of 24 September 1932 between the Ambedkar and the Gandhi replaced the separate electorate with the reserved seats.',
    'medium',
    'Standard Reference',
    null,
    'd556aa8706a2b2eb2e470c38dc88f2f2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd556aa8706a2b2eb2e470c38dc88f2f2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'between the Congress and the League'),
            ('B', 'about the salt law'),
            ('C', 'between the Ambedkar and the Gandhi on the separate electorate'),
            ('D', 'between the British and the Congress')
           ) as v(label, option_text)
 where q.question_hash = 'd556aa8706a2b2eb2e470c38dc88f2f2'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''First Round Table Conference'' of 1930:',
    'The First Round Table Conference of 1930 was held in London without any Congress participation, as the boycott continued after the Gandh-Irwin Pact.',
    'hard',
    'Standard Reference',
    null,
    '4de412ef52a82bcbad73c4a0401c5c8a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '4de412ef52a82bcbad73c4a0401c5c8a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was attended by the Ambedkar as the sole Congress representative'),
            ('B', 'Was held in London with the Congress boycotting it'),
            ('C', 'Was held in Bombay'),
            ('D', 'Was chaired by the Nehru')
           ) as v(label, option_text)
 where q.question_hash = '4de412ef52a82bcbad73c4a0401c5c8a'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'At the Second Round Table Conference of 1931, B.R. Ambedkar was:',
    'Dr B.R. Ambedkar was the sole representative of the Congress at the Second Round Table Conference in London in 1931, where he said that the British were the greatest enemies of the Indians.',
    'hard',
    'Standard Reference',
    null,
    'd0a697e9884e862dd835be27572d4dde'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'd0a697e9884e862dd835be27572d4dde'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'not present at the conference'),
            ('B', 'the representative of the Muslim League'),
            ('C', 'the representative of the British'),
            ('D', 'the sole representative of the Congress')
           ) as v(label, option_text)
 where q.question_hash = 'd0a697e9884e862dd835be27572d4dde'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'It was the longest act of the British and it provided:',
    'The Government of India Act of 1935, the longest act of the British Parliament on India, provided for an all-India federation and the provincial autonomy and it also created the Reserve Bank of India.',
    'medium',
    'Standard Reference',
    null,
    'ee34519789844455f31b0dba8087b330'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'ee34519789844455f31b0dba8087b330'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the shortest'),
            ('B', 'for the independence'),
            ('C', 'the act of 1947'),
            ('D', 'for an all-India federation and the provincial autonomy')
           ) as v(label, option_text)
 where q.question_hash = 'ee34519789844455f31b0dba8087b330'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''Muslim League'' and the Lahore Resolution of 1940:',
    'The Lahore Resolution of 1940, passed at the annual session of the Muslim League, demanded the independent Muslim states in the north-west and the east and it is a turning point of the partition.',
    'medium',
    'Standard Reference',
    null,
    'a3993f656032e72383c47604f19e40b7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'a3993f656032e72383c47604f19e40b7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It was about the reforms'),
            ('B', 'It was about the Partition of Bengal'),
            ('C', 'It demanded the separate states of the Muslims in the north-west and the east'),
            ('D', 'It accepted the United India')
           ) as v(label, option_text)
 where q.question_hash = 'a3993f656032e72383c47604f19e40b7'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''Two-Nation Theory'' was propounded by:',
    'The Two-Nation Theory was propounded by the Muhammad Iqbal in his 1930 Allahabad address and it was elaborated by the Jinnah in the Lahore Resolution of 1940.',
    'medium',
    'Standard Reference',
    null,
    'f2496fbfe1fb2e6f523025f3e4c7c1bb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f2496fbfe1fb2e6f523025f3e4c7c1bb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Muhammad Iqbal'),
            ('B', 'Abul Kalam Azad'),
            ('C', 'Maulana Abul Kalam'),
            ('D', 'Muhammad Ali Jinnah')
           ) as v(label, option_text)
 where q.question_hash = 'f2496fbfe1fb2e6f523025f3e4c7c1bb'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''Cripps Mission'' of 1942:',
    'The Cripps Mission of March 1942 proposed the dominion status after the war and the constitution-making body with the majority of the Indian members, and it failed because of the Muslim League''s objection and the insistence on the Pakistan.',
    'hard',
    'Standard Reference',
    null,
    '07758a2a8baf9ed729453c74b8f21f58'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '07758a2a8baf9ed729453c74b8f21f58'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was the mission of the Cripps of the British cabinet'),
            ('B', 'Proposed the dominion status and the constitution-making body after the war'),
            ('C', 'Proposed the complete independence'),
            ('D', 'Was the last attempt of the British')
           ) as v(label, option_text)
 where q.question_hash = '07758a2a8baf9ed729453c74b8f21f58'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''August Offer'' of 1940:',
    'The August Offer of 1940 was the offer of the British to the Congress to join the Second World War with the dominion status and the expansion of the Governor''s Council and the recognition of the Indians.',
    'hard',
    'Standard Reference',
    null,
    '862e829499904a21ec37d1c39308ed92'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '862e829499904a21ec37d1c39308ed92'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It was the offer of the partition'),
            ('B', 'It was the offer of the home rule'),
            ('C', 'Was the offer of the British to the Congress to join the war with the dominion status and the expansion of the council'),
            ('D', 'It was the offer of the Muslim League')
           ) as v(label, option_text)
 where q.question_hash = '862e829499904a21ec37d1c39308ed92'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''Individual Satyagraha'' of 1940:',
    'The Individual Satyagraha, limited to the individuals, was the response of the Gandhi to the Second World War and he advised the people to protest individually against it.',
    'hard',
    'Standard Reference',
    null,
    '58867c5275f0f3bdbcb503aef86b33d8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '58867c5275f0f3bdbcb503aef86b33d8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It was the movement of the INA'),
            ('B', 'Was the limited protest of the individuals that the Gandhi advised against the joining of the war'),
            ('C', 'It was the mass movement'),
            ('D', 'It was the peasant revolt')
           ) as v(label, option_text)
 where q.question_hash = '58867c5275f0f3bdbcb503aef86b33d8'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'Consider the following statements. Which of them is correct with regard to the Forward Bloc?',
    'The Forward Bloc was formed by the Subhash Chandra Bose at the Tripuri session of the Congress in 1939 and the Bose was elected the president over the Gandhian opposition.',
    'medium',
    'Standard Reference',
    null,
    'b81cf2dc4459c1b6610e3b6c37c3f3ad'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'b81cf2dc4459c1b6610e3b6c37c3f3ad'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It was formed in 1942'),
            ('B', 'It was a communist formation'),
            ('C', 'It was the INA'),
            ('D', 'The Forward Bloc was formed by the Bose in 1939 at the Tripuri session')
           ) as v(label, option_text)
 where q.question_hash = 'b81cf2dc4459c1b6610e3b6c37c3f3ad'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''Tripuri Session'' of the Congress in 1939:',
    'At the Tripuri session of 1939 the Subhash Chandra Bose was elected the president of the Congress against the wishes of the Gandhian leadership and he formed the Forward Bloc.',
    'medium',
    'Standard Reference',
    null,
    '39ae8da8b869c3567d8970bf6595ab85'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '39ae8da8b869c3567d8970bf6595ab85'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Subhash Chandra Bose was elected the president and the Gandhians opposed it'),
            ('B', 'The Gandhiji was elected'),
            ('C', 'The session was cancelled'),
            ('D', 'The Bose was defeated and left the Congress')
           ) as v(label, option_text)
 where q.question_hash = '39ae8da8b869c3567d8970bf6595ab85'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''INA'' and the Rash Behari Bose:',
    'The Rash Behari Bose, the Subhash Chandra Bose and the other leaders of the Indian independence movement abroad founded the Indian National Army in the Second World War.',
    'hard',
    'Standard Reference',
    null,
    '286217c934eb699e11e10f1188dddf33'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '286217c934eb699e11e10f1188dddf33'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Rash Behari Bose founded the Forward Bloc'),
            ('B', 'The Rash Behari Bose was the Congress president'),
            ('C', 'The Rash Behari Bose was a British officer'),
            ('D', 'The Rash Behari Bose, the Subhash Chandra Bose and the the others founded the INA')
           ) as v(label, option_text)
 where q.question_hash = '286217c934eb699e11e10f1188dddf33'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The Azad Hind Government was:',
    'The Azad Hind Government was proclaimed in Singapore on 21 October 1943 with the Subhash Chandra Bose as the premier and it had a woman in the cabinet, the Lakshmi Sahgal.',
    'medium',
    'Standard Reference',
    null,
    'e472cd1cf12dd359f1c2d6d74a19f4cf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'e472cd1cf12dd359f1c2d6d74a19f4cf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'proclaimed in Singapore in October 1943 with the Subhash Chandra Bose as the premier'),
            ('B', 'proclaimed in Kabul in 1942'),
            ('C', 'proclaimed in Berlin in 1945'),
            ('D', 'proclaimed in Tokyo in 1941')
           ) as v(label, option_text)
 where q.question_hash = 'e472cd1cf12dd359f1c2d6d74a19f4cf'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'Which of the following is correct in the case of the Cabinet Mission?',
    'The Cabinet Mission arrived in India in March 1946, rejected the demand of Pakistan and proposed the three-tier federation with the grouping of the provinces.',
    'medium',
    'Standard Reference',
    null,
    '81f04aa4c64a973890e1d461a22f3ef9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '81f04aa4c64a973890e1d461a22f3ef9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It accepted the Pakistan demand'),
            ('B', 'The Cabinet Mission arrived in March 1946 and rejected the Pakistan demand'),
            ('C', 'It arrived in 1945'),
            ('D', 'It was a British military mission')
           ) as v(label, option_text)
 where q.question_hash = '81f04aa4c64a973890e1d461a22f3ef9'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'Which of the following statements regarding the Cripps Mission offered is correct?',
    'The Cripps Mission of 1942 offered the dominion status and the constitution-making body after the war and it was the last attempt of the British to keep India within the Empire.',
    'hard',
    'Standard Reference',
    null,
    'ec891a9dd7ec1df6cb9803ec26d9a5a4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'ec891a9dd7ec1df6cb9803ec26d9a5a4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It was the mission of 1939'),
            ('B', 'It was the mission of the Round Table'),
            ('C', 'The Cripps Mission offered the dominion status with the constitution-making body after the war'),
            ('D', 'It offered the complete independence')
           ) as v(label, option_text)
 where q.question_hash = 'ec891a9dd7ec1df6cb9803ec26d9a5a4'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The Radcliffe Boundary Commission divided the Punjab and the Bengal and it took:',
    'The Radcliffe Boundary Commission, chaired by the Cyril Radcliffe, divided the Punjab and the Bengal and it published its award on 17 August 1947, about five months after it was set up.',
    'medium',
    'Standard Reference',
    null,
    '53a1f76d0c313dc6a7591eb21be7cdd7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '53a1f76d0c313dc6a7591eb21be7cdd7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'done by the Jinnah and the Nehru'),
            ('B', 'about five months'),
            ('C', 'the work of the Cabinet Mission'),
            ('D', 'one year')
           ) as v(label, option_text)
 where q.question_hash = '53a1f76d0c313dc6a7591eb21be7cdd7'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The first Indian troops to reach the Pakistani border were:',
    'The first Indian troops to reach the Pakistani border were from the North-West Frontier Province and the massive crowd at the border was the first major confrontation between the two armies.',
    'hard',
    'Standard Reference',
    null,
    '9182238df51537cb698b96c93344fefe'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '9182238df51537cb698b96c93344fefe'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'from Bengal'),
            ('B', 'no troops'),
            ('C', 'the troops of the NW Frontier Province'),
            ('D', 'from the Punjab')
           ) as v(label, option_text)
 where q.question_hash = '9182238df51537cb698b96c93344fefe'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The Hyderabad was:',
    'The Hyderabad was integrated into the Indian Union in 1948 after the Operation Polo, and the Junagadh was integrated in the same year after the referendum.',
    'medium',
    'Standard Reference',
    null,
    'ab497cfdd2dedefdf483c167f687f62b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'ab497cfdd2dedefdf483c167f687f62b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'integrated in 1947'),
            ('B', 'never integrated'),
            ('C', 'integrated in 1950'),
            ('D', 'integrated into the Indian Union in 1948 after the Operation Polo')
           ) as v(label, option_text)
 where q.question_hash = 'ab497cfdd2dedefdf483c167f687f62b'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'In the context of the Operation Polo, which of the following is correct?',
    'The Operation Polo of September 1948 was the code name of the military action that secured the state of Hyderabad and it was one of the most successful of the Sardar Patel''s integration efforts.',
    'medium',
    'Standard Reference',
    null,
    '2c01c2caaefae51dcf183af735a2878a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '2c01c2caaefae51dcf183af735a2878a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Operation Polo was the code name of the military action against the Nizam of Hyderabad in 1948'),
            ('B', 'It was the code name of the Kashmir operation'),
            ('C', 'It was the code name of the Goa liberation'),
            ('D', 'It was the code name of the Pokhran test')
           ) as v(label, option_text)
 where q.question_hash = '2c01c2caaefae51dcf183af735a2878a'
on conflict (question_id, label) do nothing;

-- history | post-independence | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The States Reorganisation Act of 1956 was:',
    'The States Reorganisation Act of 1956 amended Articles 1 and 3 and the Fourth and the Sixth Schedules to give effect to the linguistic reorganisation on the basis of the Fazl Ali Commission''s recommendations.',
    'hard',
    'Standard Reference',
    null,
    'c6a7241c9dc866c2cd91043a6baaf77d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c6a7241c9dc866c2cd91043a6baaf77d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'based on the Sarkar Commission'),
            ('B', 'based on the Balwant Rai Mehta Commission'),
            ('C', 'based on the Fazl Ali Commission and it was an amendment of Articles 1 and 3'),
            ('D', 'based on the Kothari Commission')
           ) as v(label, option_text)
 where q.question_hash = 'c6a7241c9dc866c2cd91043a6baaf77d'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The referendum of 1973 in Sikkim was:',
    'The referendum of 1973 in Sikkim was against the monarchy and it became the 22nd state of the Indian Union in 1975.',
    'medium',
    'Standard Reference',
    null,
    '340bacee8ce6bcbebe60aa935b4a93c3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '340bacee8ce6bcbebe60aa935b4a93c3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a state in 1987'),
            ('B', 'against the monarchy and it was made a state in 1975'),
            ('C', 'for the monarchy'),
            ('D', 'never in India')
           ) as v(label, option_text)
 where q.question_hash = '340bacee8ce6bcbebe60aa935b4a93c3'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The ''North-Eastern Areas (Reorganisation) Act, 1971'' provided for:',
    'The North-Eastern Areas (Reorganisation) Act of 1971 provided for the creation of the eight states and the union territories of the North-East, with the states of Meghalaya, Manipur, Tripura, Arunachal Pradesh, Mizoram and Nagaland.',
    'medium',
    'Standard Reference',
    null,
    '160adde4b59228e03c3191e61435e04d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '160adde4b59228e03c3191e61435e04d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The creation of the state of Sikkim'),
            ('B', 'The creation of the state of Goa'),
            ('C', 'The creation of the state of Punjab'),
            ('D', 'The creation of the states of Meghalaya, Manipur, Tripura, Arunachal Pradesh, Mizoram and Nagaland')
           ) as v(label, option_text)
 where q.question_hash = '160adde4b59228e03c3191e61435e04d'
on conflict (question_id, label) do nothing;

-- history | post-independence | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'Which of the following statements regarding the Goa is correct?',
    'Goa was liberated from the Portuguese on 18 December 1961 in the Operation Vijay and the day is commemorated as the Goa Liberation Day.',
    'easy',
    'Standard Reference',
    null,
    'b318fb380d4a5b875854e5a8dabe93fa'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'b318fb380d4a5b875854e5a8dabe93fa'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Goa was liberated on 18 December 1961 by the Indian forces and the Operation Vijay was the code name'),
            ('B', 'It was liberated in 1947'),
            ('C', 'It was liberated in 1963'),
            ('D', 'It was never Portuguese')
           ) as v(label, option_text)
 where q.question_hash = 'b318fb380d4a5b875854e5a8dabe93fa'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The abolition of the zamindari was:',
    'The abolition of the zamindari in West Bengal was the first land reform legislation of the free India, and the other states followed with the abolition of the ryotwari and the jagirdari systems.',
    'medium',
    'Standard Reference',
    null,
    '2a20b7affd3c652b1c5f803d03aed6f1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '2a20b7affd3c652b1c5f803d03aed6f1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the first land reform legislation of the free India'),
            ('B', 'the first in 1955'),
            ('C', 'never enacted'),
            ('D', 'only in Kerala')
           ) as v(label, option_text)
 where q.question_hash = '2a20b7affd3c652b1c5f803d03aed6f1'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The Second Five Year Plan (1956-61) was:',
    'The Second Five Year Plan of 1956-61, based on the P.C. Mahalanobis model, had the emphasis on the development of the heavy industries and it is sometimes called the ''Mahalanobis Plan''.',
    'medium',
    'Standard Reference',
    null,
    '068e1b155d34ac203d55428a6f24958c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '068e1b155d34ac203d55428a6f24958c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'based on the Fisher and the Turgot model'),
            ('B', 'based on the Mahalanobis model with the emphasis on the heavy industries'),
            ('C', 'based on the agriculture'),
            ('D', 'based on the Kadarpur model')
           ) as v(label, option_text)
 where q.question_hash = '068e1b155d34ac203d55428a6f24958c'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The Third Five Year Plan (1961-66) was:',
    'The Third Five Year Plan of 1961-66, drafted largely by the D.R. Gadgil, was the ''Garibi Hatao'' plan with the emphasis on the agriculture, the employment and the family planning and the modernising of the agriculture.',
    'medium',
    'Standard Reference',
    null,
    '5f1c19f7deeca23fecdbebf8aed0ebf2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '5f1c19f7deeca23fecdbebf8aed0ebf2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the heavy industry plan'),
            ('B', 'the infrastructure plan'),
            ('C', 'the export plan'),
            ('D', 'a ''Garibi Hatao'' plan with the emphasis on the agriculture and the family planning')
           ) as v(label, option_text)
 where q.question_hash = '5f1c19f7deeca23fecdbebf8aed0ebf2'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The First Five Year Plan (1951-56) was:',
    'The First Five Year Plan of 1951-56, based on the Gadgil Yojana, had the emphasis on the agriculture, the irrigation and the power and it was a model of the balanced regional development.',
    'medium',
    'Standard Reference',
    null,
    'e80d9ab30ba26e1d103ab7e753fd0017'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e80d9ab30ba26e1d103ab7e753fd0017'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Sarvodaya plan'),
            ('B', 'based on the Pokrovsky model'),
            ('C', 'based on the Gadgil Yojana with the emphasis on the agriculture and the irrigation'),
            ('D', 'based on the heavy industry')
           ) as v(label, option_text)
 where q.question_hash = 'e80d9ab30ba26e1d103ab7e753fd0017'
on conflict (question_id, label) do nothing;

-- history | post-independence | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The ''Seventh Five Year Plan'' (1985-90):',
    'The Seventh Five Year Plan of 1985-90 had the emphasis on the agriculture and the rural development, the technological upgradation and the growth of the foodgrains at 4 to 5 per cent a year.',
    'hard',
    'Standard Reference',
    null,
    '66abfa7f17a6ed4b5a95c201920b60ef'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '66abfa7f17a6ed4b5a95c201920b60ef'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It was the plan of the fiscal consolidation'),
            ('B', 'Was the plan with the emphasis on the agriculture and the rural development with the technological upgradation'),
            ('C', 'It was the heavy industry plan'),
            ('D', 'It was the export plan')
           ) as v(label, option_text)
 where q.question_hash = '66abfa7f17a6ed4b5a95c201920b60ef'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The ''Eighth Five Year Plan'' (1992-97):',
    'The Eighth Five Year Plan of 1992-97 was the ''Employment Plan'' with the objective of the generating of more employment through the growth of the industrial and the service sectors.',
    'medium',
    'Standard Reference',
    null,
    '049a91b315658e654ef5107a73f83fc0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '049a91b315658e654ef5107a73f83fc0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was the ''Employment Plan'' with the emphasis on the growth of the employment'),
            ('B', 'It was the agriculture plan'),
            ('C', 'It was the heavy industry plan'),
            ('D', 'It was the export plan')
           ) as v(label, option_text)
 where q.question_hash = '049a91b315658e654ef5107a73f83fc0'
on conflict (question_id, label) do nothing;

-- history | post-independence | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The ''Ninth Five Year Plan'' (1997-2002):',
    'The Ninth Five Year Plan of 1997-2002 was the ''Backward Regions'' plan with the emphasis on the development of the backward areas with the aim of the reduction of the regional disparities.',
    'hard',
    'Standard Reference',
    null,
    'f83a064ad77a72eb4c970513bfbea7cd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'f83a064ad77a72eb4c970513bfbea7cd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It was the employment plan'),
            ('B', 'It was the agriculture plan'),
            ('C', 'It was the export plan'),
            ('D', 'Was the ''Backward Regions'' plan with the emphasis on the development of the backward areas and the human resources')
           ) as v(label, option_text)
 where q.question_hash = 'f83a064ad77a72eb4c970513bfbea7cd'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The ''Tenth Five Year Plan'' (2002-07):',
    'The Tenth Five Year Plan of 2002-07 had the aim of a faster growth and the reduction of the poverty with the targets of the 8 to 10 per cent growth and the reduction of the poverty ratio.',
    'medium',
    'Standard Reference',
    null,
    'e8a90918109a569eed1baa843c0cbe15'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e8a90918109a569eed1baa843c0cbe15'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It was the employment plan'),
            ('B', 'It was the heavy industry plan'),
            ('C', 'Was the plan with the emphasis on the faster growth and the employment and the reduction of the poverty with the targets of the 8 per cent growth'),
            ('D', 'It was the backward regions plan')
           ) as v(label, option_text)
 where q.question_hash = 'e8a90918109a569eed1baa843c0cbe15'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The ''Twelfth Five Year Plan'' (2012-17):',
    'The Twelfth Five Year Plan of 2012-17 had the targets of the 8.5 per cent growth with the emphasis on the health, the education, the jobs and the reduction of the poverty.',
    'medium',
    'Standard Reference',
    null,
    '066c593e0cb5d301a4e1202eee4df226'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '066c593e0cb5d301a4e1202eee4df226'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It was the agriculture plan'),
            ('B', 'It was the heavy industry plan'),
            ('C', 'It was the export plan'),
            ('D', 'Had the targets of the 8.5 per cent growth and the reduction of the poverty and the health and the education and the jobs')
           ) as v(label, option_text)
 where q.question_hash = '066c593e0cb5d301a4e1202eee4df226'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'Which of the following statements regarding the first successful in the wheat is correct?',
    'The Green Revolution was first successful in the wheat and the rice of the Punjab and the Haryana, and the M.S. Swaminathan led the effort with the Norman Borlaug varieties.',
    'medium',
    'Standard Reference',
    null,
    '2c647bb98ec13cc335c942f7b5a874a2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '2c647bb98ec13cc335c942f7b5a874a2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'first successful in the millets of Rajasthan'),
            ('B', 'first successful in the maize of Karnataka'),
            ('C', 'first successful in the wheat and the rice in the Punjab and the Haryana'),
            ('D', 'first successful in the rice of Tamil Nadu')
           ) as v(label, option_text)
 where q.question_hash = '2c647bb98ec13cc335c942f7b5a874a2'
on conflict (question_id, label) do nothing;

-- history | post-independence | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The White Revolution was:',
    'The White Revolution was the effort to increase the milk production and the Operation Flood, the world''s largest milk cooperative project, was its most famous component.',
    'easy',
    'Standard Reference',
    null,
    '6bbd62653be03581a4ce4bc62509157f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '6bbd62653be03581a4ce4bc62509157f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the effort to increase the fish'),
            ('B', 'the effort to increase the milk production and the Operation Flood was the largest milk cooperative project'),
            ('C', 'the effort to increase the wheat'),
            ('D', 'the effort to increase the eggs')
           ) as v(label, option_text)
 where q.question_hash = '6bbd62653be03581a4ce4bc62509157f'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'Which of the following statements is/are correct in relation to the Narasimha Rao?',
    'The 1991 reforms under the Prime Minister P.V. Narasimha Rao, with the Finance Minister Manmohan Singh, dismantled the licence Raj in response to the crisis of 1991.',
    'medium',
    'Standard Reference',
    null,
    '24555471000d44d4f033f8dc70b3593c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '24555471000d44d4f033f8dc70b3593c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The 1991 reforms under the P.V. Narasimha Rao dismantled the licence Raj and the 1991 crisis forced the reforms'),
            ('B', 'The reforms were of 1980'),
            ('C', 'The reforms were of 1998'),
            ('D', 'The reforms were planned in 1985')
           ) as v(label, option_text)
 where q.question_hash = '24555471000d44d4f033f8dc70b3593c'
on conflict (question_id, label) do nothing;

-- history | post-independence | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The Manmohan Singh was:',
    'The Manmohan Singh was the Finance Minister who announced the 1991 reforms and he later served as the Prime Minister from 2004 to 2014.',
    'easy',
    'Standard Reference',
    null,
    '0af9cc3ab25333a9dd60722e62832d5f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '0af9cc3ab25333a9dd60722e62832d5f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Finance Minister from 1998'),
            ('B', 'the Governor of the RBI'),
            ('C', 'the Chief Economic Adviser'),
            ('D', 'the Finance Minister of the 1991 reforms and the later Prime Minister from 2004')
           ) as v(label, option_text)
 where q.question_hash = '0af9cc3ab25333a9dd60722e62832d5f'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'Which of the following statements regarding the 1991 reforms is correct?',
    'The 1991 reforms devalued the rupee, reduced the tariffs, delicensed the industries, opened the foreign investment and reduced the scope of the public sector through the disinvestment.',
    'medium',
    'Standard Reference',
    null,
    '50cb9a43d66ab1bcd151c4a7109f12c9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '50cb9a43d66ab1bcd151c4a7109f12c9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The trade was restricted'),
            ('B', 'The rupee was devalued and the tariff was reduced and the delicensing of the industries and the opening of the FDI'),
            ('C', 'The rupee was appreciated and the tariffs were raised'),
            ('D', 'The industries were nationalised')
           ) as v(label, option_text)
 where q.question_hash = '50cb9a43d66ab1bcd151c4a7109f12c9'
on conflict (question_id, label) do nothing;

-- history | post-independence | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The New Industrial Policy of 1991 was:',
    'The New Industrial Policy was announced on 24 July 1991 and it was a statement of the industrial policy of the government and it announced the delicensing, the foreign investment and the public sector policy.',
    'hard',
    'Standard Reference',
    null,
    '8ec5e8739a101fd9483fe9df6a865434'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '8ec5e8739a101fd9483fe9df6a865434'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'announced on 24 July 1991'),
            ('B', 'announced on 26 January 1991'),
            ('C', 'announced in 1985'),
            ('D', 'announced on 15 August 1991')
           ) as v(label, option_text)
 where q.question_hash = '8ec5e8739a101fd9483fe9df6a865434'
on conflict (question_id, label) do nothing;

-- history | post-independence | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The first disinvestment of the government was in 1991-92 and the 1992-93 budget gave:',
    'The disinvestment process began in 1991-92 and the 1992-93 budget of the P.V. Narasimha Rao with the Manmohan Singh set the target of the disinvestment of the 25 per cent of the PSUs.',
    'hard',
    'Standard Reference',
    null,
    '23e2ed2132edea8c871102913c55f88d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '23e2ed2132edea8c871102913c55f88d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'no disinvestment'),
            ('B', 'in 2000'),
            ('C', 'the target of the disinvestment of the 25 per cent of the PSUs'),
            ('D', 'in 1975')
           ) as v(label, option_text)
 where q.question_hash = '23e2ed2132edea8c871102913c55f88d'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'Which of the following statements regarding the Nepal is correct?',
    'Nepal became a sovereign democratic republic on 28 May 2008 with the abolition of the monarchy and it was the first of the Hindu kingdoms to become a republic.',
    'medium',
    'Standard Reference',
    null,
    'fb8e686b5a7b1df23b406ccd936875e3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'fb8e686b5a7b1df23b406ccd936875e3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Nepal became a sovereign democratic republic in 2008 after the abolition of the monarchy'),
            ('B', 'It became a republic in 1990'),
            ('C', 'It is a constitutional monarchy'),
            ('D', 'It became a republic in 1959')
           ) as v(label, option_text)
 where q.question_hash = 'fb8e686b5a7b1df23b406ccd936875e3'
on conflict (question_id, label) do nothing;

-- history | post-independence | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'Bangladesh became:',
    'Bangladesh became independent on 16 December 1971 after the war and the Sheikh Mujibur Rahman was its first prime minister and he is the Father of the Nation.',
    'easy',
    'Standard Reference',
    null,
    '485a8e71d0193c855a4058d3724af96d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '485a8e71d0193c855a4058d3724af96d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'independent in 1947'),
            ('B', 'independent in 1975'),
            ('C', 'the president'),
            ('D', 'independent in 1971 and the Sheikh Mujibur Rahman was the first prime minister')
           ) as v(label, option_text)
 where q.question_hash = '485a8e71d0193c855a4058d3724af96d'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'Which of the following statements is/are correct in relation to the Sri Lanka?',
    'Sri Lanka became a republic in 1972 with the abolition of the Westminster system and the state of emergency is still in force in the country.',
    'medium',
    'Standard Reference',
    null,
    'a8a00276b5f400409fce14caac3fb767'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a8a00276b5f400409fce14caac3fb767'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It became a republic in 1988'),
            ('B', 'Sri Lanka became a republic in 1972 with the abolition of the monarchy'),
            ('C', 'It became a republic in 1948'),
            ('D', 'It is a constitutional monarchy')
           ) as v(label, option_text)
 where q.question_hash = 'a8a00276b5f400409fce14caac3fb767'
on conflict (question_id, label) do nothing;

-- history | post-independence | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The SAARC was founded in 1985 and the South Asian Preferential Trade Agreement (SAPTA) was signed:',
    'The SAARC was founded in 1985 and the SAPTA, the South Asian Preferential Trade Agreement, was signed in 1995 and it came into force in 1996.',
    'hard',
    'Standard Reference',
    null,
    '98429f8dd97bc5b4159adf68ba964f10'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '98429f8dd97bc5b4159adf68ba964f10'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'founded in 1975'),
            ('B', 'no SAARC'),
            ('C', 'in 1995'),
            ('D', 'founded in 1995')
           ) as v(label, option_text)
 where q.question_hash = '98429f8dd97bc5b4159adf68ba964f10'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'In the context of the Non-Aligned Movement, which of the following is correct?',
    'The Non-Aligned Movement is a forum of the more than 120 countries that are not formally aligned with any of the major power blocs and it was the largest of the three at the Bandung of 1955.',
    'medium',
    'Standard Reference',
    null,
    '153195a469a256df17a6b983e42c2c15'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '153195a469a256df17a6b983e42c2c15'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The NAM is a forum of the more than 120 countries that are not formally aligned with any of the major power blocs'),
            ('B', 'It is a military alliance'),
            ('C', 'It is a trade bloc'),
            ('D', 'It is a party')
           ) as v(label, option_text)
 where q.question_hash = '153195a469a256df17a6b983e42c2c15'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The Commonwealth is:',
    'The modern Commonwealth was created by the London Declaration of 1949 and it is a voluntary association of the sovereign states with the head of the Commonwealth being the British monarch.',
    'medium',
    'Standard Reference',
    null,
    'f7d1c36d2491da6497421b332f34860e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f7d1c36d2491da6497421b332f34860e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'created by the India Act'),
            ('B', 'a voluntary association of the 56 states and the modern form was created by the London Declaration of 1949'),
            ('C', 'created in 1931 with the Balfour Declaration'),
            ('D', 'a trade union')
           ) as v(label, option_text)
 where q.question_hash = 'f7d1c36d2491da6497421b332f34860e'
on conflict (question_id, label) do nothing;

-- history | post-independence | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'Which of the following statements is/are correct in relation to the Ceylon?',
    'Ceylon was renamed Sri Lanka in 1972 and the name was chosen from the Sanskrit word for the island.',
    'easy',
    'Standard Reference',
    null,
    'f1282a6b78ded663ef62d4e81ea63b55'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'f1282a6b78ded663ef62d4e81ea63b55'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It was renamed in 1948'),
            ('B', 'It was renamed in 1971'),
            ('C', 'It was renamed in 1975'),
            ('D', 'Ceylon was renamed Sri Lanka in 1972')
           ) as v(label, option_text)
 where q.question_hash = 'f1282a6b78ded663ef62d4e81ea63b55'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The Bandipur National Park is in Karnataka and the Project Tiger started:',
    'The Bandipur National Park is in Karnataka and the Project Tiger was launched in 1973 with the nine reserves including the Corbett, the Manas, the Sunderbans and the Similipal.',
    'medium',
    'Standard Reference',
    null,
    '0634d5046e2fe506cfb06e8d9fd2ca0d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '0634d5046e2fe506cfb06e8d9fd2ca0d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'in 1975'),
            ('B', 'in Tamil Nadu'),
            ('C', 'in 1973'),
            ('D', 'in Kerala')
           ) as v(label, option_text)
 where q.question_hash = '0634d5046e2fe506cfb06e8d9fd2ca0d'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The Project Tiger was:',
    'The Project Tiger of 1973 combined the ban on the hunting, the protection of the habitats and the relocation of the villages from the core zones.',
    'medium',
    'Standard Reference',
    null,
    'd8bac4efe2db2eb6e26c95052083800b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd8bac4efe2db2eb6e26c95052083800b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'launched in 1973 and the tigers were protected with the ban on the hunting and the habitat conservation'),
            ('B', 'launched in 1983'),
            ('C', 'a programme of the elephants'),
            ('D', 'a programme of the lions')
           ) as v(label, option_text)
 where q.question_hash = 'd8bac4efe2db2eb6e26c95052083800b'
on conflict (question_id, label) do nothing;

-- history | post-independence | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The Mother India was:',
    'The Mother India was declared the national mother in 1950 and the National War Memorial at the Rajpath in Delhi commemorates the fallen soldiers of the wars.',
    'hard',
    'Standard Reference',
    null,
    '1695d25b39e76568c8fbf3de70be1cf6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '1695d25b39e76568c8fbf3de70be1cf6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'declared in 1972'),
            ('B', 'no such declaration'),
            ('C', 'declared the national mother in 1950 and the National War Memorial was at the Rajpath'),
            ('D', 'declared in 1947')
           ) as v(label, option_text)
 where q.question_hash = '1695d25b39e76568c8fbf3de70be1cf6'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The ''Planning Commission'' and the 1950:',
    'The Planning Commission was established in March 1950 by a resolution of the Cabinet and it was an extra-constitutional body that was chaired by the Prime Minister.',
    'medium',
    'Standard Reference',
    null,
    '37c4eed41cd910c529e4e3aa81a9dcd5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '37c4eed41cd910c529e4e3aa81a9dcd5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It was set up in 1960'),
            ('B', 'The Planning Commission was set up in March 1950 by a resolution of the Cabinet'),
            ('C', 'It was set up in 1951'),
            ('D', 'It was set up in 1947')
           ) as v(label, option_text)
 where q.question_hash = '37c4eed41cd910c529e4e3aa81a9dcd5'
on conflict (question_id, label) do nothing;

-- history | post-independence | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The Fazl Ali Commission had the three members and it was:',
    'The States Reorganisation Commission, the Fazl Ali Commission, had three members, the Fazl Ali, the K.M. Panikkar and the H.N. Kunzru, and it submitted its report in 1956.',
    'hard',
    'Standard Reference',
    null,
    '41df1bc4c621f2266702406bd0a13cbc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '41df1bc4c621f2266702406bd0a13cbc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '5 members'),
            ('B', 'the Sarkar Commission'),
            ('C', 'the Kothari Commission'),
            ('D', 'the first commission to recommend the linguistic reorganisation')
           ) as v(label, option_text)
 where q.question_hash = '41df1bc4c621f2266702406bd0a13cbc'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'Which of the following statements regarding the enacted on 1 November 1956 is correct?',
    'The States Reorganisation Act of 1956 came into force on 1 November 1956 and it created the states of the linguistic basis with the exception of the Punjab, the Bengal and the Assam.',
    'medium',
    'Standard Reference',
    null,
    '604b29f0ac1c0cd672d78ae3e9915c97'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '604b29f0ac1c0cd672d78ae3e9915c97'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'enacted on 1 November 1956'),
            ('B', 'enacted on 1 April 1957'),
            ('C', 'enacted on 15 August 1956'),
            ('D', 'enacted in 1953')
           ) as v(label, option_text)
 where q.question_hash = '604b29f0ac1c0cd672d78ae3e9915c97'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The Chandigarh is:',
    'The Chandigarh is the joint capital of the Punjab and the Haryana and the city was designed by the Le Corbusier and it was the Pierre Jeanneret.',
    'medium',
    'Standard Reference',
    null,
    'b07965db804bd1a9a1097b9ece0c2132'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'b07965db804bd1a9a1097b9ece0c2132'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the capital of the Haryana only'),
            ('B', 'the capital of the Himachal Pradesh'),
            ('C', 'the joint capital of the Punjab and the Haryana and the Le Corbusier and the Pierre Jeanneret designed it'),
            ('D', 'the capital of the Punjab only')
           ) as v(label, option_text)
 where q.question_hash = 'b07965db804bd1a9a1097b9ece0c2132'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'Consider the following statements. Which of them is correct with regard to the Hyderabad?',
    'The Hyderabad was the capital of the Nizams of the Asaf Jahi dynasty and the Charminar is its emblem, while the Golconda is the fort of the Qutb Shahi.',
    'medium',
    'Standard Reference',
    null,
    '7ee06d2d9dd28cab11ec21ee262e1fdb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '7ee06d2d9dd28cab11ec21ee262e1fdb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Hyderabad was the capital of the Asaf Jahi dynasty only after 1947'),
            ('B', 'The Hyderabad was the capital of the Nizams and the Charminar is its emblem'),
            ('C', 'The Hyderabad was the capital of the Nizams and the Golconda is its emblem'),
            ('D', 'The Hyderabad was a Portuguese city')
           ) as v(label, option_text)
 where q.question_hash = '7ee06d2d9dd28cab11ec21ee262e1fdb'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The Daman and Diu were:',
    'The Daman and Diu, the former Portuguese territories, were merged with the Dadra and Nagar Haveli in 2020 to form the new Union Territory.',
    'medium',
    'Standard Reference',
    null,
    'b640095fac0196f40a48eccb5e0a9304'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'b640095fac0196f40a48eccb5e0a9304'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'merged with the Goa in 1987'),
            ('B', 'merged with the Gujarat in 1960'),
            ('C', 'never Portuguese'),
            ('D', 'the Portuguese territories that were merged with the Dadra and Nagar Haveli in 2020')
           ) as v(label, option_text)
 where q.question_hash = 'b640095fac0196f40a48eccb5e0a9304'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The Mizoram became:',
    'The Mizoram became the 23rd state of the Indian Union in 1987 and it was formed out of the Lushai Hills of the former NEFA after the Mizo Accord.',
    'medium',
    'Standard Reference',
    null,
    '2a64b08b85aeb1332e801cb78011f5f6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '2a64b08b85aeb1332e801cb78011f5f6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'formed from the NEFA'),
            ('B', 'the 25th state'),
            ('C', 'a state in 1987 and it was formed from the Lushai Hills'),
            ('D', 'a state in 1972')
           ) as v(label, option_text)
 where q.question_hash = '2a64b08b85aeb1332e801cb78011f5f6'
on conflict (question_id, label) do nothing;

-- history | post-independence | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The Nagaland became:',
    'The Nagaland was the first state of the North-East to be formed on the tribal basis, in 1963, and it was the result of the Naga People''s Convention of 1957.',
    'hard',
    'Standard Reference',
    null,
    '9df13ab189cc7e5e823cf8306b4dd4ae'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '9df13ab189cc7e5e823cf8306b4dd4ae'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'formed in 1972'),
            ('B', 'the first state of India on the tribal basis'),
            ('C', 'formed in 1987'),
            ('D', 'a state in 1963 and it was the first state of the North-East to be formed on the tribal basis')
           ) as v(label, option_text)
 where q.question_hash = '9df13ab189cc7e5e823cf8306b4dd4ae'
on conflict (question_id, label) do nothing;

-- history | post-independence | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The Northeast was:',
    'The Northeast was the most neglected region of India and the M.S. Swaminathan, the P.N. Haksar and the Kartar Singh commission recommended the special attention to it.',
    'hard',
    'Standard Reference',
    null,
    'f29604bdde467eba43d3edbd6227ab58'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f29604bdde467eba43d3edbd6227ab58'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the focus of the 1991 reforms'),
            ('B', 'the most neglected region and the M.S. Swaminathan and the P.N. Haksar and the Kartar Singh commission recommended the special attention'),
            ('C', 'the richest region'),
            ('D', 'free of the ethnic issues')
           ) as v(label, option_text)
 where q.question_hash = 'f29604bdde467eba43d3edbd6227ab58'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'Ladakh became a Union Territory in 2019 and it was:',
    'Ladakh became a Union Territory in 2019 along with Jammu and Kashmir, and the buddhist culture and the sparse population are the features of the region.',
    'medium',
    'Standard Reference',
    null,
    '154b2ccfbf52af15532a68102f7c185f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '154b2ccfbf52af15532a68102f7c185f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ladakh became a Union Territory in 2019 and it was a part of the erstwhile Jammu and Kashmir'),
            ('B', 'It was a part of the Punjab'),
            ('C', 'It was a state before 2019'),
            ('D', 'It was a part of the Himachal Pradesh')
           ) as v(label, option_text)
 where q.question_hash = '154b2ccfbf52af15532a68102f7c185f'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The Article 370 and the Article 35A were:',
    'The Article 370 and the Article 35A were the special provisions of the erstwhile state of Jammu and Kashmir that provided the exceptional status and the residency rights.',
    'medium',
    'Standard Reference',
    null,
    '2bdbba05de40caaa7fbfa8ce783d3ffd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '2bdbba05de40caaa7fbfa8ce783d3ffd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the provisions of the Panchayati Raj'),
            ('B', 'the provisions of the land reforms'),
            ('C', 'the special provisions of the erstwhile state'),
            ('D', 'the provisions of the Emergency')
           ) as v(label, option_text)
 where q.question_hash = '2bdbba05de40caaa7fbfa8ce783d3ffd'
on conflict (question_id, label) do nothing;

-- history | post-independence | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'Which of the following statements regarding the Indian States is correct?',
    'At the time of the independence there were 562 princely states, of which the nine Part A states were the given the status of the governor''s provinces and the Part B states were the given the status of the princely states.',
    'hard',
    'Standard Reference',
    null,
    '063c61a15ff978b4889f3df0f04c251e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '063c61a15ff978b4889f3df0f04c251e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'There were 562 princely states and 9 Part A and Part B and Part C states at the time of the independence'),
            ('B', 'There were 500 princely states'),
            ('C', 'There were 300 princely states'),
            ('D', 'There were no princely states')
           ) as v(label, option_text)
 where q.question_hash = '063c61a15ff978b4889f3df0f04c251e'
on conflict (question_id, label) do nothing;

-- history | post-independence | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The 1951 Census was:',
    'The 1951 Census was the first census of independent India and the 2021 Census was delayed by the Covid pandemic and the new enumeration was in 2022.',
    'hard',
    'Standard Reference',
    null,
    '43494069d8599cad79dc483f26ea7082'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '43494069d8599cad79dc483f26ea7082'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the first after the independence and it was in 1952'),
            ('B', 'no census in 1951'),
            ('C', 'conducted by the British'),
            ('D', 'the first census of the independent India and the 2021 was delayed by the Covid')
           ) as v(label, option_text)
 where q.question_hash = '43494069d8599cad79dc483f26ea7082'
on conflict (question_id, label) do nothing;

-- history | post-independence | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The Census in India is:',
    'The Census is conducted by the Office of the Registrar General and Census Commissioner under the Ministry of Home Affairs and the Registrar General is the Chief Election Commissioner as well.',
    'easy',
    'Standard Reference',
    null,
    'd2de4d6ab82b0e378e01ee9b823e0393'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd2de4d6ab82b0e378e01ee9b823e0393'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'conducted by the CSO'),
            ('B', 'conducted by the Office of the Registrar General and Census Commissioner under the Home Ministry'),
            ('C', 'conducted by the NITI Aayog'),
            ('D', 'conducted by the Finance Commission')
           ) as v(label, option_text)
 where q.question_hash = 'd2de4d6ab82b0e378e01ee9b823e0393'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'Which of the following statements regarding the National Income is correct?',
    'The planning was abolished with the 1991 reforms and the NITI Aayog replaced the Planning Commission in 2015 without the allocation of the plan funds.',
    'medium',
    'Standard Reference',
    null,
    '4ccc49f1f5c0a17eebb29d4ebaa77af2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '4ccc49f1f5c0a17eebb29d4ebaa77af2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The planning was abolished in 1975'),
            ('B', 'The Planning Commission is still the apex body of the planning'),
            ('C', 'The NITI Aayog allocates the plan funds'),
            ('D', 'The planning in India was abolished in 1991 and the NITI Aayog replaced the Planning Commission in 2015')
           ) as v(label, option_text)
 where q.question_hash = '4ccc49f1f5c0a17eebb29d4ebaa77af2'
on conflict (question_id, label) do nothing;

-- history | post-independence | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The Constitution was enacted on 26 November 1949 and it came:',
    'The Constitution was enacted, signed and promulgated on 26 November 1949 and it came into force on 26 January 1950, the Republic Day.',
    'easy',
    'Standard Reference',
    null,
    '4fa683a405b9717d8fa494c3c59f60fc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '4fa683a405b9717d8fa494c3c59f60fc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'into force on 26 January 1950'),
            ('B', 'enacted on 26 January 1950'),
            ('C', 'into force on 15 August 1947'),
            ('D', 'enacted in 1956')
           ) as v(label, option_text)
 where q.question_hash = '4fa683a405b9717d8fa494c3c59f60fc'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The Supreme Court of India was:',
    'The Supreme Court of India was inaugurated on 28 January 1950, two days after the Constitution came into force, and it succeeded the Federal Court of India.',
    'medium',
    'Standard Reference',
    null,
    '4bbca104522db7cead724482c04c8568'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '4bbca104522db7cead724482c04c8568'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'inaugurated on 26 November 1949'),
            ('B', 'inaugurated in 1937'),
            ('C', 'inaugurated on 28 January 1950'),
            ('D', 'inaugurated on 26 January 1950')
           ) as v(label, option_text)
 where q.question_hash = '4bbca104522db7cead724482c04c8568'
on conflict (question_id, label) do nothing;

-- history | post-independence | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The ''Republic Day'' parade and the:',
    'The Republic Day parade was first held in 1950 and the only Republic Day parade with the President riding an elephant was the first one of 1950.',
    'hard',
    'Standard Reference',
    null,
    '0d5c85a1b87eb3db6ee923e544c12821'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '0d5c85a1b87eb3db6ee923e544c12821'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'There was no parade in 1950'),
            ('B', 'The Republic Day parade was first held in 1950 and the first Republic Day in 1950 was the only one with the President in an elephant howdah'),
            ('C', 'The first parade was in 1947'),
            ('D', 'The parade was first held in 1955')
           ) as v(label, option_text)
 where q.question_hash = '0d5c85a1b87eb3db6ee923e544c12821'
on conflict (question_id, label) do nothing;

-- history | post-independence | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The Bhopal gas tragedy of 1984 was:',
    'The Bhopal gas tragedy of December 1984, the methyl isocyanate gas leak from the Union Carbide pesticide plant, killed thousands and it remains the worst industrial disaster in India.',
    'easy',
    'Standard Reference',
    null,
    '21e9ec753bbb9668202a2d0a500e737f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '21e9ec753bbb9668202a2d0a500e737f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the methyl isocyanate gas leak from the Union Carbide plant'),
            ('B', 'a nuclear accident'),
            ('C', 'a flood'),
            ('D', 'an earthquake')
           ) as v(label, option_text)
 where q.question_hash = '21e9ec753bbb9668202a2d0a500e737f'
on conflict (question_id, label) do nothing;

-- history | post-independence | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The Pokhran-II of 1998 was:',
    'The Pokhran-II of May 1998 was the series of the five nuclear tests, including the thermonuclear device, and it was the first after the Smiling Buddha of 1974.',
    'easy',
    'Standard Reference',
    null,
    '9a5dc8958bb0cc8e13a6405fb01f8f65'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '9a5dc8958bb0cc8e13a6405fb01f8f65'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'of 1974'),
            ('B', 'the series of the five nuclear tests and it was the first after the 1974'),
            ('C', 'the first nuclear test of India'),
            ('D', 'the first after the 1998 tests')
           ) as v(label, option_text)
 where q.question_hash = '9a5dc8958bb0cc8e13a6405fb01f8f65'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'In the context of the Nuclear, which of the following is correct?',
    'India has a nuclear doctrine of the no first use and the credible minimum deterrence and it is a founder member of the Non-Aligned Movement, and it is also a member of the Nuclear Suppliers Group.',
    'medium',
    'Standard Reference',
    null,
    'cba9c0a14c18536aea7ba3cb00abfcb5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'cba9c0a14c18536aea7ba3cb00abfcb5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'India has the policy of the first use'),
            ('B', 'India has a nuclear weapons free policy'),
            ('C', 'The India was a founder member of the Non-Aligned Movement and it has a nuclear doctrine of the no first use and the credible minimum deterrence'),
            ('D', 'India has no nuclear doctrine')
           ) as v(label, option_text)
 where q.question_hash = 'cba9c0a14c18536aea7ba3cb00abfcb5'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'In the context of the NPT, which of the following is correct?',
    'India has never signed the NPT and it maintains a self-imposed moratorium on the nuclear tests, and it is a nuclear capable state in the eyes of the international community.',
    'medium',
    'Standard Reference',
    null,
    'a8901ec3a5c6f0b8098a07ee3b3b40ad'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a8901ec3a5c6f0b8098a07ee3b3b40ad'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'India is a signatory to the NPT'),
            ('B', 'India ratified the NPT in 1998'),
            ('C', 'India is a non-nuclear state'),
            ('D', 'India is a nuclear capable state outside the NPT and it maintains a self-imposed moratorium on the tests')
           ) as v(label, option_text)
 where q.question_hash = 'a8901ec3a5c6f0b8098a07ee3b3b40ad'
on conflict (question_id, label) do nothing;

-- history | post-independence | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'Which of the following statements regarding the Indian space is correct?',
    'The ISRO was founded in August 1969 and the Aryabhata, the first Indian satellite, was launched in 1975 and the first Indian launch vehicle, the SLV-3, put the Rohan in the orbit in 1987.',
    'easy',
    'Standard Reference',
    null,
    '51fa024d75b65d4f1801bdd298588fae'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '51fa024d75b65d4f1801bdd298588fae'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The ISRO was founded in 1957'),
            ('B', 'The Aryabhata was in 1975 and the ISRO in 1969'),
            ('C', 'The ISRO was founded in 1972'),
            ('D', 'The ISRO was founded in 1969 and the Aryabhata was the first satellite in 1975')
           ) as v(label, option_text)
 where q.question_hash = '51fa024d75b65d4f1801bdd298588fae'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The Mars Orbiter Mission was:',
    'The Mars Orbiter Mission, launched in November 2013, made India the first country to reach Mars on the first attempt with the cost of about Rs. 450 crore, lower than any other.',
    'medium',
    'Standard Reference',
    null,
    '1c52e05058510d5fdc6b3306f89948d9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '1c52e05058510d5fdc6b3306f89948d9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'launched in 2013 and it made India the first country to reach Mars on the first attempt and the cheapest'),
            ('B', 'launched in 2014'),
            ('C', 'the first Indian mission of the Moon'),
            ('D', 'the first to land on the Venus')
           ) as v(label, option_text)
 where q.question_hash = '1c52e05058510d5fdc6b3306f89948d9'
on conflict (question_id, label) do nothing;

-- history | post-independence | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The Operation White Hat was:',
    'The Operation White Hat of September 2017 was the cyber security operation of the Indian Army to cleanse the public systems of the malware that was traced to the ISI.',
    'hard',
    'Standard Reference',
    null,
    '59e3a8dd6082707c30fa8129f78ea1d6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '59e3a8dd6082707c30fa8129f78ea1d6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a border operation'),
            ('B', 'the 1971 war operation'),
            ('C', 'the cyber security operation of the Indian Army to cleanse the networks of the ISI malware from the public systems'),
            ('D', 'a space mission')
           ) as v(label, option_text)
 where q.question_hash = '59e3a8dd6082707c30fa8129f78ea1d6'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The ''Surgical Strike'' of 2019:',
    'The Indian Air Force strike of February 2019 on the Jaish-e-Mohammed training camp at Balakot in the Pakistan administered Kashmir followed the Pulwama attack.',
    'medium',
    'Standard Reference',
    null,
    'eeaf49debf5b48ad4aa2c8c7f17317b9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'eeaf49debf5b48ad4aa2c8c7f17317b9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It was in the Northeast'),
            ('B', 'Was the Indian Air Force strike on the Jaish-e-Mohammed training camp in Balakot in the Pakistan administered Kashmir'),
            ('C', 'It was a strike on the N Valentines in the Bangladesh'),
            ('D', 'It was a naval strike')
           ) as v(label, option_text)
 where q.question_hash = 'eeaf49debf5b48ad4aa2c8c7f17317b9'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The ''Galwan'' and the 2020:',
    'The Galwan Valley clash of 15 June 2020 was the first face to face confrontation between the Indian and the Chinese soldiers in 45 years and it involved a physical clash with the casualties on both the sides.',
    'medium',
    'Standard Reference',
    null,
    'e695b9d4919b8811bce555a664b636be'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'e695b9d4919b8811bce555a664b636be'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Galwan clash of June 2020 was the first India-China face to face confrontation in 45 years'),
            ('B', 'It was the first war between the two'),
            ('C', 'It was in the Sikkim'),
            ('D', 'It was the 1971 war')
           ) as v(label, option_text)
 where q.question_hash = 'e695b9d4919b8811bce555a664b636be'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The Article 370 was:',
    'The Article 370 was abrogated in August 2019 and the Supreme Court upheld it in December 2023 and the statehood of Jammu and Kashmir was restored with the assembly elections of 2024.',
    'medium',
    'Standard Reference',
    null,
    '97072bfb56a4dad0581b79f9f4fa33f7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '97072bfb56a4dad0581b79f9f4fa33f7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'never abrogated'),
            ('B', 'abrogated in August 2019 and the statehood was restored in 2024'),
            ('C', 'abrogated in 1950'),
            ('D', 'abrogated in 2017')
           ) as v(label, option_text)
 where q.question_hash = '97072bfb56a4dad0581b79f9f4fa33f7'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The 1991 crisis was:',
    'The 1991 crisis was a combination of the fiscal deficit of about 8.9 per cent of the GDP, the balance of payments crisis, the low growth of about 1 per cent and the declining reserves of about two weeks of the imports.',
    'medium',
    'Standard Reference',
    null,
    'f791bdfb27ca0846b20222e31e01eb82'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'f791bdfb27ca0846b20222e31e01eb82'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'caused by the flood in 1991'),
            ('B', 'caused by the oil shock alone'),
            ('C', 'caused by the political crisis'),
            ('D', 'triggered by the fiscal deficit, the balance of payments crisis and the declining growth and the reserves')
           ) as v(label, option_text)
 where q.question_hash = 'f791bdfb27ca0846b20222e31e01eb82'
on conflict (question_id, label) do nothing;

-- history | post-independence | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The National Waterway 1 is:',
    'The National Waterway 1 is the Ganga between Haldia and Allahabad, the National Waterway 2 is the Brahmaputra between Sadiya and Dhubri and the National Waterway 3 is the West Coast Canal.',
    'hard',
    'Standard Reference',
    null,
    'c10928f22cca9199516e449b912d994d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c10928f22cca9199516e449b912d994d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Kaveri'),
            ('B', 'the Ganga'),
            ('C', 'the Ganga and the National Waterway 3 is the West Coast Canal and the National Waterway 2 is the Brahmaputra'),
            ('D', 'the Brahmaputra')
           ) as v(label, option_text)
 where q.question_hash = 'c10928f22cca9199516e449b912d994d'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'Which of the following statements regarding the The Sagarmala is correct?',
    'The Sagarmala is the port-led logistics development programme and the PM Gati Shakti National Master Plan has the 14 sectors and the 20 key corridors.',
    'medium',
    'Standard Reference',
    null,
    'be2311e31e888db2476fc64b83744cd0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'be2311e31e888db2476fc64b83744cd0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'They are the industrial corridor projects'),
            ('B', 'The Sagarmala is the port-led logistics programme and the PM Gati Shakti is the master plan with the 14 sectors'),
            ('C', 'The Sagarmala is the highway project and the Gati Shakti is the ports project'),
            ('D', 'They are the same')
           ) as v(label, option_text)
 where q.question_hash = 'be2311e31e888db2476fc64b83744cd0'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The Make in India was launched:',
    'The Make in India of 2014 is implemented through the 14 PLI sectors with an outlay of about Rs. 1.97 lakh crore and the 32 industrial corridors.',
    'medium',
    'Standard Reference',
    null,
    'a21dca18e1e2dc8612a1383740bf5e91'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'a21dca18e1e2dc8612a1383740bf5e91'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'only the agriculture'),
            ('B', 'a state scheme'),
            ('C', 'in 2014 and the 14 PLI sectors with the 1.97 lakh crore outlay are its main vehicles'),
            ('D', 'in 1991')
           ) as v(label, option_text)
 where q.question_hash = 'a21dca18e1e2dc8612a1383740bf5e91'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The ''Startup India'' and the 2016:',
    'The Startup India was launched in January 2016 with the recognition of the startups, the 16+100 programme and the funds of over Rs. 10,000 crore for the incubation and the seed.',
    'medium',
    'Standard Reference',
    null,
    'bd6a512866e77e5da2a3d926140bb69d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'bd6a512866e77e5da2a3d926140bb69d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Startup India was launched in 2016 with the 16+100 recognition and the funds of over Rs. 10,000 crore'),
            ('B', 'It was launched in 2011'),
            ('C', 'It was launched in 2018'),
            ('D', 'It is a state scheme')
           ) as v(label, option_text)
 where q.question_hash = 'bd6a512866e77e5da2a3d926140bb69d'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The NITI Aayog has:',
    'The NITI Aayog has the three-tier structure of the national, the state and the district and it has the special emphasis on the districts as the units of the planning.',
    'medium',
    'Standard Reference',
    null,
    '9c21f6694c2111cb45e6c93b29b29a5d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '9c21f6694c2111cb45e6c93b29b29a5d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a two-tier structure'),
            ('B', 'only the national level'),
            ('C', 'a ministry'),
            ('D', 'the three-tier structure of the national, the state and the district')
           ) as v(label, option_text)
 where q.question_hash = '9c21f6694c2111cb45e6c93b29b29a5d'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The RBI was nationalised in 1949 and the RBI Act of 1934 created:',
    'The Reserve Bank of India was nationalised in 1949 with the RBI Act of 1934, which provided for its constitution and it was the successor of the Imperial Bank of India.',
    'medium',
    'Standard Reference',
    null,
    'a642c234328fdea4155948b326d37812'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a642c234328fdea4155948b326d37812'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'nationalised in 1934'),
            ('B', 'nationalised in 1947'),
            ('C', 'nationalised in 1935'),
            ('D', 'it')
           ) as v(label, option_text)
 where q.question_hash = 'a642c234328fdea4155948b326d37812'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'Which of the following is correct in the case of the Insurance?',
    'The life insurance was nationalised in 1956 with the creation of the LIC and the IRDAI was set up in 1999 to regulate the insurance sector.',
    'medium',
    'Standard Reference',
    null,
    '78137063909a720c864c00741a42d9f3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '78137063909a720c864c00741a42d9f3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It was set up in 1991'),
            ('B', 'The life insurance was nationalised in 1999'),
            ('C', 'The IRDAI was set up in 1999 and the life insurance was nationalised in 1956'),
            ('D', 'It was set up in 1947')
           ) as v(label, option_text)
 where q.question_hash = '78137063909a720c864c00741a42d9f3'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The bank nationalisation of 1969 was:',
    'The bank nationalisation of 1969 covered the 14 banks with the deposits of over Rs. 50 lakh, the Imperial Bank was nationalised in 1955 and the SBI was formed in 1955 as the Imperial Bank of India.',
    'medium',
    'Standard Reference',
    null,
    'c8c563a8f5aba5059031cb5d1a34cef0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'c8c563a8f5aba5059031cb5d1a34cef0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'of 5 banks'),
            ('B', 'of the 14 banks with the deposits of over Rs. 50 lakh'),
            ('C', 'of 8 banks'),
            ('D', 'of 22 banks')
           ) as v(label, option_text)
 where q.question_hash = 'c8c563a8f5aba5059031cb5d1a34cef0'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The LIC was created:',
    'The Life Insurance Corporation was created in 1956 and the General Insurance was nationalised in 1972 with the establishment of the GIC.',
    'medium',
    'Standard Reference',
    null,
    '601794b392601b74c89bb91b6b81017a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '601794b392601b74c89bb91b6b81017a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'in 1956 and the general insurance was nationalised in 1972'),
            ('B', 'in 1947'),
            ('C', 'nationalised in 1955'),
            ('D', 'in 1972')
           ) as v(label, option_text)
 where q.question_hash = '601794b392601b74c89bb91b6b81017a'
on conflict (question_id, label) do nothing;

-- history | post-independence | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The cooperative movement in India was strengthened by:',
    'The Indian Cooperative Union, founded in 1929, and the National Cooperative Development Corporation of 1962 are the apex institutions of the cooperative movement, and the cooperatives are the largest distribution network in the rural India.',
    'hard',
    'Standard Reference',
    null,
    '8471ec4793964ba505aa5d9f867428a3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '8471ec4793964ba505aa5d9f867428a3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Finance Commission in 1961'),
            ('B', 'The Indian Cooperative Union founded in 1929 and the National Cooperative Development Corporation'),
            ('C', 'The Reserve Bank of India in 1955'),
            ('D', 'The Planning Commission in 1950')
           ) as v(label, option_text)
 where q.question_hash = '8471ec4793964ba505aa5d9f867428a3'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'Which of the following statements regarding the Indian National Congress is correct?',
    'The moderates and the extremists reunited at the Calcutta session of December 1906 and the same session saw the formation of the All India Muslim League.',
    'medium',
    'Standard Reference',
    null,
    'a9d1e6163bc4212d68d73d7a172e2c5a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a9d1e6163bc4212d68d73d7a172e2c5a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'They reunited in 1905'),
            ('B', 'They reunited in 1920'),
            ('C', 'They never reunited'),
            ('D', 'The moderate and the extremist factions reunited at the Calcutta session of December 1906')
           ) as v(label, option_text)
 where q.question_hash = 'a9d1e6163bc4212d68d73d7a172e2c5a'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The partition was:',
    'The partition of Bengal was annulled at the Delhi Durbar of 1911 and the province was partitioned again in 1912 into the Bengal and the Assam and the Bihar and the Orissa.',
    'medium',
    'Standard Reference',
    null,
    'dbd4801603280a42508551d98ddc3113'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'dbd4801603280a42508551d98ddc3113'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'annulled in 1920'),
            ('B', 'never annulled'),
            ('C', 'annulled in 1911 and the Bengal was partitioned in 1912'),
            ('D', 'annulled in 1905')
           ) as v(label, option_text)
 where q.question_hash = 'dbd4801603280a42508551d98ddc3113'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'Which of the following statements is/are correct in relation to the Gandhi returned to India in January 1915 and the first Satyagraha?',
    'The Gandhi returned to India in January 1915 and the first of the three major satyagrahas of 1917-18 was the Ahmedabad mill strike, then the Champaran and then the Kheda.',
    'medium',
    'Standard Reference',
    null,
    'af42c066d945aebb5a8b65eee7373b6c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'af42c066d945aebb5a8b65eee7373b6c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Gandhi returned to India in January 1915 and the first Satyagraha was the Ahmedabad in 1918'),
            ('B', 'The Gandhi returned in 1905'),
            ('C', 'The Gandhi returned in 1921'),
            ('D', 'The Gandhi never returned')
           ) as v(label, option_text)
 where q.question_hash = 'af42c066d945aebb5a8b65eee7373b6c'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'In the context of the Indian Councils Act of 1919, which of the following is correct?',
    'The Government of India Act of 1919 separated the central and the provincial subjects, introduced the dyarchy and separated the electorate for the first time.',
    'medium',
    'Standard Reference',
    null,
    '6e58cdfbb8ff69e80d030bfb0c9238ea'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '6e58cdfbb8ff69e80d030bfb0c9238ea'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It provided for the provincial autonomy'),
            ('B', 'It abolished the separate electorates and the direct elections'),
            ('C', 'It provided for the franchise for the women'),
            ('D', 'It provided for the separate electorates and the dyarchy')
           ) as v(label, option_text)
 where q.question_hash = '6e58cdfbb8ff69e80d030bfb0c9238ea'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The Hartal of 6 April 1919 was:',
    'The Hartal of 6 April 1919, the first all-India political protest, was called against the Rowlatt Act and the arrest of the Saifuddin Kitchlew and the Satyapal.',
    'medium',
    'Standard Reference',
    null,
    '55f7a3413a36984912646139e0d95c4a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '55f7a3413a36984912646139e0d95c4a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the celebration of the victory'),
            ('B', 'the peasant revolt'),
            ('C', 'the first nationwide protest against the Rowlatt Act'),
            ('D', 'in Punjab')
           ) as v(label, option_text)
 where q.question_hash = '55f7a3413a36984912646139e0d95c4a'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The Jallianwala Bagh massacre of 13 April 1919 was:',
    'The Jallianwala Bagh massacre of 13 April 1919 was ordered by the General Reginald Dyer who ordered his troops to fire on the peaceful crowd in the enclosed ground of the Amritsar.',
    'easy',
    'Standard Reference',
    null,
    'bde71a18de2d8606356c12fb46596bfc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'bde71a18de2d8606356c12fb46596bfc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'in Delhi'),
            ('B', 'in Lucknow'),
            ('C', 'in Patna'),
            ('D', 'ordered by the General Dyer in the Amritsar')
           ) as v(label, option_text)
 where q.question_hash = 'bde71a18de2d8606356c12fb46596bfc'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The Khilafat agitation of 1919 was:',
    'The Khilafat agitation of 1919 demanded the restoration of the Sultan-Caliph of Turkey and it coincided with the Non-Cooperation Movement, and the two together gave the movement a broad mass base.',
    'medium',
    'Standard Reference',
    null,
    '4a9998a7233a89f4084f2f039fe6bb6e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '4a9998a7233a89f4084f2f039fe6bb6e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'for the Sultan of Turkey and it coincided with the Non-Cooperation'),
            ('B', 'for the Caliph of Egypt'),
            ('C', 'against the British'),
            ('D', 'the peasant movement')
           ) as v(label, option_text)
 where q.question_hash = '4a9998a7233a89f4084f2f039fe6bb6e'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The movement included:',
    'The Non-Cooperation of 1920-22 combined the boycott of the foreign goods, the surrender of the titles and the honours, the refusal of the council elections, the leaving of the schools and the courts and the civil disobedience of the British.',
    'medium',
    'Standard Reference',
    null,
    'e92506add84ac38f96cfcc696c1a0b95'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e92506add84ac38f96cfcc696c1a0b95'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the armed struggle'),
            ('B', 'limited to the students'),
            ('C', 'the boycott of the British goods, the surrender of the titles and the no-changers'),
            ('D', 'only the boycott')
           ) as v(label, option_text)
 where q.question_hash = 'e92506add84ac38f96cfcc696c1a0b95'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The firing by the police at the Chauri Chaura of February 1922 led to:',
    'The firing by the police at the Chauri Chaura on 5 February 1922, in which 22 policemen were killed, led the Mahatma Gandhi to withdraw the Non-Cooperation Movement at the Bardoli meeting of the Congress in February 1922.',
    'medium',
    'Standard Reference',
    null,
    'f90ab1e23382110d1e4fca9f6b19853e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'f90ab1e23382110d1e4fca9f6b19853e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the suspension of the Civil Disobedience'),
            ('B', 'the start of the Quit India'),
            ('C', 'the withdrawal of the Gandhi from the Congress'),
            ('D', 'the withdrawal of the Non-Cooperation')
           ) as v(label, option_text)
 where q.question_hash = 'f90ab1e23382110d1e4fca9f6b19853e'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The Kakori train action of 1925 was:',
    'The Kakori action of 9 August 1925, the raid on the police station on the Upasana Express near Lucknow, was the work of the revolutionaries like the Ram Prasad Bismil, the Ashfaqulla Khan and the Rajendra Lahiri.',
    'hard',
    'Standard Reference',
    null,
    'b832562aae001844e4935bbc7ddcaa17'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b832562aae001844e4935bbc7ddcaa17'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the mutiny of the navy'),
            ('B', 'the raid of the police station on the Upasana Express by the revolutionaries'),
            ('C', 'the peasant revolt'),
            ('D', 'the strike of the mill workers')
           ) as v(label, option_text)
 where q.question_hash = 'b832562aae001844e4935bbc7ddcaa17'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The Simon Commission of 1928 had no Indian member and it was:',
    'The Simon Commission, appointed in November 1927, had seven British members and no Indian and it was boycotted by all the political parties when it landed in Bombay.',
    'medium',
    'Standard Reference',
    null,
    'c9f9f0ea3a552009286d3b68e035069f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'c9f9f0ea3a552009286d3b68e035069f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'boycotted at the Lumumba Maidan'),
            ('B', 'headed by an Indian'),
            ('C', 'accepted by the Congress'),
            ('D', 'never formed')
           ) as v(label, option_text)
 where q.question_hash = 'c9f9f0ea3a552009286d3b68e035069f'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The Lahore session of 1929 adopted:',
    'The Lahore session of December 1929, presided over by the Jawaharlal Nehru, adopted the historic Purna Swaraj resolution and it authorised the non-violent struggle.',
    'easy',
    'Standard Reference',
    null,
    '57270cf8f4f6cb150791d40533d07901'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '57270cf8f4f6cb150791d40533d07901'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Federation plan'),
            ('B', 'the session of the 1930'),
            ('C', 'the Purna Swaraj resolution and it was presided over by the Jawaharlal Nehru'),
            ('D', 'presided over by the Motilal Nehru')
           ) as v(label, option_text)
 where q.question_hash = '57270cf8f4f6cb150791d40533d07901'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'Civil Disobedience Movement began:',
    'The Civil Disobedience Movement began with the Dandi March of 12 March 1930 and it was the first all-India mass movement of the Indian nationalism.',
    'easy',
    'Standard Reference',
    null,
    'a6052683b5e13d74142161eeeb9e483b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a6052683b5e13d74142161eeeb9e483b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'with the Champaran'),
            ('B', 'with the Rowlatt'),
            ('C', 'with the Bardoli'),
            ('D', 'with the Dandi March on 12 March 1930 and it was the first mass movement against the British rule in India')
           ) as v(label, option_text)
 where q.question_hash = 'a6052683b5e13d74142161eeeb9e483b'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The Pact of March 1931 provided:',
    'The Gandhi-Irwin Pact of 5 March 1931 provided for the suspension of the Civil Disobedience and the release of the political prisoners, except those convicted of violence, in return for the Congress participation in the Round Table Conference.',
    'medium',
    'Standard Reference',
    null,
    '3c8e86fc9d547612e7ec7f12d15f41b9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '3c8e86fc9d547612e7ec7f12d15f41b9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'of 1935'),
            ('B', 'for the suspension of the Civil Disobedience and the release of the prisoners in return for the Round Table Conference'),
            ('C', 'of 1930'),
            ('D', 'of 1932')
           ) as v(label, option_text)
 where q.question_hash = '3c8e86fc9d547612e7ec7f12d15f41b9'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The Poona Pact of September 1932 was:',
    'The Poona Pact of 24 September 1932 between the Mahatma Gandhi and the B.R. Ambedkar replaced the separate electorate for the Depressed Classes with the reserved seats within the general electorate.',
    'easy',
    'Standard Reference',
    null,
    '660c9666926983f341092b699a6bf23b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '660c9666926983f341092b699a6bf23b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'between the Mahatma Gandhi and the B.R. Ambedkar'),
            ('B', 'between the Gandhi and the Jinnah'),
            ('C', 'between the Ambedkar and the Patel'),
            ('D', 'between the Nehru and the Ambedkar')
           ) as v(label, option_text)
 where q.question_hash = '660c9666926983f341092b699a6bf23b'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'Which of the following statements is/are correct in relation to the 1937 elections?',
    'In the 1937 elections the Congress won an absolute majority in five provinces and the ministries were formed in seven and the League formed the government in Assam and Bengal.',
    'hard',
    'Standard Reference',
    null,
    '6d1ce5379f98dbe8262d01daa0f6aa08'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '6d1ce5379f98dbe8262d01daa0f6aa08'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The elections were not held'),
            ('B', 'The Congress won an absolute majority in five of the nine provinces and the ministries were formed in seven'),
            ('C', 'The Congress won all the nine'),
            ('D', 'The League won the majority')
           ) as v(label, option_text)
 where q.question_hash = '6d1ce5379f98dbe8262d01daa0f6aa08'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'Quit India Movement was:',
    'The Quit India Movement of 1942 was the first movement in India with the spontaneous mass participation and it saw the emergence of the Aruna Asaf Ali and the Jayaprakash Narayan as the leaders.',
    'medium',
    'Standard Reference',
    null,
    '8fc2e7411b335456cff117c4706d15d1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '8fc2e7411b335456cff117c4706d15d1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'launched on 8 August 1942 and it was the first movement in India with a mass participation'),
            ('B', 'launched in 1930'),
            ('C', 'the first to use the non-violence'),
            ('D', 'the movement of the INA')
           ) as v(label, option_text)
 where q.question_hash = '8fc2e7411b335456cff117c4706d15d1'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'Which of the following is correct in the case of the INA?',
    'The Indian National Army was revived by the Subhash Chandra Bose in 1943 in the Second World War with the Rash Behari Bose, the Prem Kumar Sahgal and the Gurbaksh Singh Dhillon and it had a woman, the Lakshmi Sahgal, in the Azad Hind cabinet.',
    'medium',
    'Standard Reference',
    null,
    'd59e37b2967eaf18889de6af5c4d9964'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'd59e37b2967eaf18889de6af5c4d9964'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The INA was founded in 1945 by the Nehru'),
            ('B', 'The INA was a peasant force'),
            ('C', 'The INA never existed'),
            ('D', 'The INA was revived by the Subhash Chandra Bose in 1943 with the Rash Behari Bose and the other leaders')
           ) as v(label, option_text)
 where q.question_hash = 'd59e37b2967eaf18889de6af5c4d9964'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'Which of the following is correct in the case of the INA trials?',
    'The INA trials at the Red Fort, which began in November 1945, provoked a nationwide public agitation and the Royal Indian Navy mutiny of February 1946 and the British government withdrew the cases.',
    'medium',
    'Standard Reference',
    null,
    'b40798b95257453ed010c039f9c443d5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'b40798b95257453ed010c039f9c443d5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'They were held in 1947'),
            ('B', 'They were never held'),
            ('C', 'The INA trials at the Red Fort in 1945-46 provoked a nationwide agitation and the RIN mutiny'),
            ('D', 'They were the trials of the British officers')
           ) as v(label, option_text)
 where q.question_hash = 'b40798b95257453ed010c039f9c443d5'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'Cripps Mission proposed:',
    'The Cripps Mission of March 1942 proposed the dominion status after the war and the constitution-making body, and it failed over the Muslim League''s insistence on the Pakistan.',
    'hard',
    'Standard Reference',
    null,
    '44140937a2055a4b2da4147214c03c35'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '44140937a2055a4b2da4147214c03c35'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the dominion status and the constitution-making body after the war'),
            ('B', 'the complete independence'),
            ('C', 'the last British plan'),
            ('D', 'the plan of the 1930')
           ) as v(label, option_text)
 where q.question_hash = '44140937a2055a4b2da4147214c03c35'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'Cabinet Mission proposed:',
    'The Cabinet Mission Plan of 1946 proposed the three-tier federation with the grouping of the provinces and the United Centre, and the Congress accepted it in July 1946 but the Muslim League rejected it.',
    'medium',
    'Standard Reference',
    null,
    '7600bf4772eae91ef47a08ae2fd37f11'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '7600bf4772eae91ef47a08ae2fd37f11'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'accepted by the League'),
            ('B', 'the Pakistan'),
            ('C', 'a military mission'),
            ('D', 'the three-tier federation and the grouping of the provinces and the Congress accepted it')
           ) as v(label, option_text)
 where q.question_hash = '7600bf4772eae91ef47a08ae2fd37f11'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'Mountbatten Plan provided:',
    'The Mountbatten Plan of 3 June 1947 provided for the partition of India, the lapse of the paramountcy over the princely states and the referendum clause for their accession.',
    'medium',
    'Standard Reference',
    null,
    '5e85f4210c4be4fe77e0e997d0365704'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '5e85f4210c4be4fe77e0e997d0365704'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the plan of 1946'),
            ('B', 'the plan of 1942'),
            ('C', 'for the partition with the lapse of the paramountcy and the referendum clause for the princely states'),
            ('D', 'for the United India')
           ) as v(label, option_text)
 where q.question_hash = '5e85f4210c4be4fe77e0e997d0365704'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The Radcliffe Boundary Commission divided the Punjab and the Bengal and it published:',
    'The Radcliffe Boundary Commission, chaired by the Cyril Radcliffe, divided the Punjab and the Bengal and it published its award on 17 August 1947, five months after it was set up.',
    'medium',
    'Standard Reference',
    null,
    '53d4b257ef00c486270573a05c920b6b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '53d4b257ef00c486270573a05c920b6b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'in 1945'),
            ('B', 'the award after the independence'),
            ('C', 'before the partition'),
            ('D', 'The Radcliffe Commission divided only the Bengal')
           ) as v(label, option_text)
 where q.question_hash = '53d4b257ef00c486270573a05c920b6b'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The Instrument of Accession was:',
    'The Instrument of Accession, a legal instrument of the accession of the princely states to India, was a joint work of the Sardar Patel and his secretary, V.P. Menon.',
    'medium',
    'Standard Reference',
    null,
    '7c03b849000ee71850ed291eef8b7499'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '7c03b849000ee71850ed291eef8b7499'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'signed only by the British'),
            ('B', 'the act of the Indian Parliament'),
            ('C', 'the treaty of the partition'),
            ('D', 'signed by the Indian states and the Sardar Patel and the V.P. Menon integrated them')
           ) as v(label, option_text)
 where q.question_hash = '7c03b849000ee71850ed291eef8b7499'
on conflict (question_id, label) do nothing;

-- history | post-independence | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'the Indian States is correct were:',
    'At the time of the independence there were 9 provinces and 562 princely states, and the process of the integration was completed with the accession of the last of them, the state of Hyderabad, in 1948.',
    'hard',
    'Standard Reference',
    null,
    'ee88fb81ebfcb89d0baec1e478d5ee98'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'ee88fb81ebfcb89d0baec1e478d5ee98'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'There were 700 princely states'),
            ('B', 'There were 562 princely states and 9 provinces at the time of the independence'),
            ('C', 'There were 100 princely states'),
            ('D', 'There were 9 princely states')
           ) as v(label, option_text)
 where q.question_hash = 'ee88fb81ebfcb89d0baec1e478d5ee98'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'Which of the following statements regarding the The Hyderabad acceded to India is correct?',
    'The Operation Polo of September 1948 secured the accession of the state of Hyderabad, the largest of the princely states by the area, and the Junagadh and the other states followed.',
    'medium',
    'Standard Reference',
    null,
    '5b6f5c69b203f469a94fa8a2679079a2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '5b6f5c69b203f469a94fa8a2679079a2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It was never integrated'),
            ('B', 'It acceded in 1950'),
            ('C', 'The Hyderabad acceded to India in 1948 after the Operation Polo'),
            ('D', 'It acceded in 1947')
           ) as v(label, option_text)
 where q.question_hash = '5b6f5c69b203f469a94fa8a2679079a2'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'In the context of the Sikkim, which of the following is correct?',
    'The referendum of 1973 in Sikkim was against the monarchy and the state of Sikkim was formed in 1975 as the 22nd state of the Union.',
    'medium',
    'Standard Reference',
    null,
    '373dcdfacd6229420f36caf7ab8cba69'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '373dcdfacd6229420f36caf7ab8cba69'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sikkim became the 22nd state in 1975 after the referendum of 1973'),
            ('B', 'It became a state in 1963'),
            ('C', 'It became a state in 1987'),
            ('D', 'It is a Union Territory')
           ) as v(label, option_text)
 where q.question_hash = '373dcdfacd6229420f36caf7ab8cba69'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The North-Eastern Areas (Reorganisation) Act of 1971 created the states of the North-East and the NEFA became:',
    'The North-Eastern Areas (Reorganisation) Act of 1971 created the states of Meghalaya, Manipur, Tripura, Arunachal Pradesh, Mizoram and Nagaland and the NEFA became the Arunachal Pradesh.',
    'medium',
    'Standard Reference',
    null,
    '155c02d69adc92243ac40a8ccc485bcc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '155c02d69adc92243ac40a8ccc485bcc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Arunachal Pradesh'),
            ('B', 'the state of the Punjab'),
            ('C', 'the state of Goa'),
            ('D', 'the state of the Haryana')
           ) as v(label, option_text)
 where q.question_hash = '155c02d69adc92243ac40a8ccc485bcc'
on conflict (question_id, label) do nothing;

-- history | post-independence | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'Which of the following is correct in the case of the Goa?',
    'Goa, Daman and Diu were liberated from the Portuguese on 18 December 1961 in the Operation Vijay and the Goa Liberation Day is observed on 19 December.',
    'easy',
    'Standard Reference',
    null,
    '5eb7c1b2df19ac35f3c283dfa01f4ef3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '5eb7c1b2df19ac35f3c283dfa01f4ef3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It was liberated in 1947'),
            ('B', 'It was liberated in 1963'),
            ('C', 'It was never a Portuguese territory'),
            ('D', 'Goa was liberated on 18 December 1961 in the Operation Vijay')
           ) as v(label, option_text)
 where q.question_hash = '5eb7c1b2df19ac35f3c283dfa01f4ef3'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'In the context of the 23rd state, which of the following is correct?',
    'The Mizoram became the 23rd state of the Union in 1987 out of the Lushai Hills of the former NEFA, following the Mizo Accord of 1986.',
    'medium',
    'Standard Reference',
    null,
    '9a2357f4fc5b2dad7c9e56c3884810a2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '9a2357f4fc5b2dad7c9e56c3884810a2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a Union Territory'),
            ('B', 'the 23rd state in 1987 out of the Lushai Hills'),
            ('C', 'the 21st state in 1972'),
            ('D', 'formed out of the NEFA')
           ) as v(label, option_text)
 where q.question_hash = '9a2357f4fc5b2dad7c9e56c3884810a2'
on conflict (question_id, label) do nothing;

-- history | post-independence | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'In the context of the Nagaland, which of the following is correct?',
    'The Nagaland, formed in 1963, was the first state of the North-East to be created on the tribal basis and it was the result of the Naga People''s Convention of 1957.',
    'hard',
    'Standard Reference',
    null,
    '4057e6e5e4075565734ec7d1b15c8077'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '4057e6e5e4075565734ec7d1b15c8077'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It was formed out of the NEFA'),
            ('B', 'It was formed in 1987'),
            ('C', 'The Nagaland was the first state of the North-East to be formed on the tribal basis in 1963'),
            ('D', 'It was formed in 1972')
           ) as v(label, option_text)
 where q.question_hash = '4057e6e5e4075565734ec7d1b15c8077'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'Which of the following statements regarding the on the Fazz Ali is correct?',
    'The States Reorganisation Act of 1956, based on the Fazz Ali Commission''s recommendations, amended the First and the Fourth Schedules to reorganise the states on the linguistic basis.',
    'medium',
    'Standard Reference',
    null,
    '0413db6b70aff3fd7191c69e6f75bb29'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '0413db6b70aff3fd7191c69e6f75bb29'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'based on the Sarkar Commission'),
            ('B', 'based on the Balwant Rai Mehta Committee'),
            ('C', 'based on the Fazz Ali Commission and it amended the First and the Fourth Schedules'),
            ('D', 'based on the Kothari Commission')
           ) as v(label, option_text)
 where q.question_hash = '0413db6b70aff3fd7191c69e6f75bb29'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The Andhra State was:',
    'The Telugu speaking Andhra State was created on 1 October 1953 and the present Andhra Pradesh was formed on 1 November 1956 by the addition of the Telugu districts of the Mysore state.',
    'medium',
    'Standard Reference',
    null,
    '36bfe862d21a44ac80fb99d8d28787eb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '36bfe862d21a44ac80fb99d8d28787eb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'created in 1975'),
            ('B', 'created on 1 October 1953 and the Andhra Pradesh on 1 November 1956'),
            ('C', 'created in 1956'),
            ('D', 'created in 1960')
           ) as v(label, option_text)
 where q.question_hash = '36bfe862d21a44ac80fb99d8d28787eb'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The Bombay state was:',
    'The state of Bombay was divided into the Maharashtra and the Gujarat with effect from 1 May 1960 and the state of Punjab was divided into the Haryana, the Punjab and the Chandigarh.',
    'medium',
    'Standard Reference',
    null,
    '53e5134903eeccac17d656bcce661a16'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '53e5134903eeccac17d656bcce661a16'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'formed in 1956'),
            ('B', 'formed in 1962'),
            ('C', 'formed in 1963'),
            ('D', 'divided into the Maharashtra and the Gujarat on 1 May 1960')
           ) as v(label, option_text)
 where q.question_hash = '53e5134903eeccac17d656bcce661a16'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'Planning Commission was:',
    'The Planning Commission was set up in March 1950 by a resolution of the Cabinet and it was an extra-constitutional body chaired by the Prime Minister, and it was replaced by the NITI Aayog in 2015.',
    'medium',
    'Standard Reference',
    null,
    '91f1fc4e696e642289585f98fcdeaa16'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '91f1fc4e696e642289585f98fcdeaa16'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'an extra-constitutional body set up in 1950 and it was chaired by the Prime Minister'),
            ('B', 'a constitutional body'),
            ('C', 'chaired by the President'),
            ('D', 'set up in 1947')
           ) as v(label, option_text)
 where q.question_hash = '91f1fc4e696e642289585f98fcdeaa16'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'Second Five Year Plan was:',
    'The Second Five Year Plan of 1956-61, based on the Mahalanobis model, had the emphasis on the development of the heavy industries and the rapid industrialisation.',
    'medium',
    'Standard Reference',
    null,
    'f8167d1adc675bf791dd069de64a2254'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f8167d1adc675bf791dd069de64a2254'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the plan of the heavy industry and it was based on the Mahalanobis model'),
            ('B', 'the plan of the agriculture'),
            ('C', 'the plan of the employment'),
            ('D', 'the plan of the exports')
           ) as v(label, option_text)
 where q.question_hash = 'f8167d1adc675bf791dd069de64a2254'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'New Industrial Policy announced:',
    'The New Industrial Policy Statement of 24 July 1991 announced the industrial delicensing, the liberalisation of the foreign investment, the reduction of the public sector and the phasing out of the MRTP.',
    'medium',
    'Standard Reference',
    null,
    '8f6d6dbfbfc7318bbeac581eb80a34f6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '8f6d6dbfbfc7318bbeac581eb80a34f6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It was about the exports'),
            ('B', 'Announced the delicensing, the foreign investment liberalisation and the reduction of the public sector'),
            ('C', 'It was the 1980 policy'),
            ('D', 'It was the 1997 policy')
           ) as v(label, option_text)
 where q.question_hash = '8f6d6dbfbfc7318bbeac581eb80a34f6'
on conflict (question_id, label) do nothing;

-- history | post-independence | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'Which of the following is correct in the case of the effort increase?',
    'The Green Revolution was the effort to increase the foodgrain production with the high yielding varieties of the wheat and the rice and it was led by the M.S. Swaminathan with the Norman Borlaug varieties.',
    'easy',
    'Standard Reference',
    null,
    '53fe10ffb2b44d670d9aa19c1430ab8b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '53fe10ffb2b44d670d9aa19c1430ab8b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the effort to increase the milk'),
            ('B', 'the effort to increase the fish'),
            ('C', 'the effort to increase the exports'),
            ('D', 'the effort to increase the foodgrain production with the high yielding varieties and the M.S. Swaminathan led it')
           ) as v(label, option_text)
 where q.question_hash = '53fe10ffb2b44d670d9aa19c1430ab8b'
on conflict (question_id, label) do nothing;

-- history | post-independence | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'led by the Verghese Kurien and it made:',
    'The White Revolution was led by the Verghese Kurien through the National Dairy Development Board and it made India the largest milk producer in the world.',
    'easy',
    'Standard Reference',
    null,
    '9e0a29610fbe030ee9b59b295c2fe56d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '9e0a29610fbe030ee9b59b295c2fe56d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'led by the Norman Borlaug'),
            ('B', 'led by the Amartya Sen'),
            ('C', 'led by the Verghese Kurien and it made India the largest milk producer'),
            ('D', 'led by the M.S. Swaminathan')
           ) as v(label, option_text)
 where q.question_hash = '9e0a29610fbe030ee9b59b295c2fe56d'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The 1991 reforms and the creation of the SEBI and the disinvestment were:',
    'The 1991 reforms, the creation of the SEBI, the disinvestment and the reduction of the fiscal deficit were under the Prime Minister P.V. Narasimha Rao and the Finance Minister Manmohan Singh.',
    'medium',
    'Standard Reference',
    null,
    '0f0eb2ccde1ebabc858a70a70e9301ec'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '0f0eb2ccde1ebabc858a70a70e9301ec'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'under the P.V. Narasimha Rao and the Manmohan Singh'),
            ('B', 'under the Indira Gandhi'),
            ('C', 'under the Rajiv Gandhi'),
            ('D', 'under the Morarji Desai')
           ) as v(label, option_text)
 where q.question_hash = '0f0eb2ccde1ebabc858a70a70e9301ec'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'the NITI Aayog is correct was:',
    'The NITI Aayog, constituted in January 2015 in place of the Planning Commission, is a collaborative think tank and it does not allocate the plan funds to the states.',
    'medium',
    'Standard Reference',
    null,
    '1a334270a58f6c848d6258235aeac5c9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '1a334270a58f6c848d6258235aeac5c9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a ministry'),
            ('B', 'It was constituted in 2015 in place of the Planning Commission and it is a think tank without the plan funds'),
            ('C', 'It was set up in 1991'),
            ('D', 'It allocates the plan funds')
           ) as v(label, option_text)
 where q.question_hash = '1a334270a58f6c848d6258235aeac5c9'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The growth of the Indian economy in the 1990s and the 2000s was driven by:',
    'The Indian growth story of the 1990s and the 2000s rested on the 1991 liberalisation, the rapid growth of the IT and the service sector, the demographic dividend and the advantage of the English language.',
    'medium',
    'Standard Reference',
    null,
    'a352501a214680aeb5073b12e67cd9b3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a352501a214680aeb5073b12e67cd9b3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the growth of the agriculture and the white revolution'),
            ('B', 'the protection of the small scale industry and the import substitution'),
            ('C', 'the decline of the foreign investment and the strict exchange controls'),
            ('D', 'the growth of the IT and the services and the demographic dividend and the English language advantage')
           ) as v(label, option_text)
 where q.question_hash = 'a352501a214680aeb5073b12e67cd9b3'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'the first of the independent India and the 2021 was:',
    'The 1951 Census was the first census of the independent India and the 2021 Census was conducted after the postponement of the 2021 round because of the Covid pandemic.',
    'medium',
    'Standard Reference',
    null,
    '541074c03ecc2b55431cbb8cb9a17788'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '541074c03ecc2b55431cbb8cb9a17788'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the first'),
            ('B', 'no census after 1951'),
            ('C', 'the first of the independent India and the 2021 was the first after the 2011'),
            ('D', 'the first ever')
           ) as v(label, option_text)
 where q.question_hash = '541074c03ecc2b55431cbb8cb9a17788'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'Consider the following statements. Which of them is correct with regard to the Census?',
    'The Cardamoms, the Coromandel, the Malabar and the Konkan are the four divisions of the coastal region of the peninsular India.',
    'medium',
    'Standard Reference',
    null,
    '35710a9a65d3c9cadd77a36f1ccc4809'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '35710a9a65d3c9cadd77a36f1ccc4809'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Himalayas and the Western Ghats'),
            ('B', 'The Ganga and the Brahmaputra plains'),
            ('C', 'The Deccan and the Chota Nagpur'),
            ('D', 'The Cardamoms and the Coromandel and the Malabar and the Konkan')
           ) as v(label, option_text)
 where q.question_hash = '35710a9a65d3c9cadd77a36f1ccc4809'
on conflict (question_id, label) do nothing;

-- history | post-independence | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'In the context of the National Sample Survey, which of the following is correct?',
    'The National Sample Survey Organisation, under the Ministry of Statistics, conducted the Periodic Labour Force Survey and it was the predecessor of the NSO that conducted the 2011 Census.',
    'hard',
    'Standard Reference',
    null,
    '5bede1333369932c9b920708c405506d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '5bede1333369932c9b920708c405506d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The NSS conducted the surveys of the employment'),
            ('B', 'The NSS is the statistical arm of the RBI'),
            ('C', 'The NSS was dissolved in 2011'),
            ('D', 'The NSS was the organisation that conducted the 2011 Census')
           ) as v(label, option_text)
 where q.question_hash = '5bede1333369932c9b920708c405506d'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The Bhoodan movement of the Vinoba Bhave was:',
    'The Bhoodan and the Gramdan movements of the Vinoba Bhave sought the voluntary and the maximum land reform with the landless as the recipients and it was the inspiration of the land reform legislation of the states.',
    'medium',
    'Standard Reference',
    null,
    '285a7d1fd3f4a11f73bb38cb3be6c33b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '285a7d1fd3f4a11f73bb38cb3be6c33b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the movement of the zamindars'),
            ('B', 'a movement of the students'),
            ('C', 'the voluntary donation of the surplus land to the landless'),
            ('D', 'the movement of the tenants against the landlords')
           ) as v(label, option_text)
 where q.question_hash = '285a7d1fd3f4a11f73bb38cb3be6c33b'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'Which of the following statements regarding the The Ladakh is correct?',
    'The Ladakh became a Union Territory in October 2019 along with the Jammu and Kashmir and it has a distinct culture and a sparse population.',
    'medium',
    'Standard Reference',
    null,
    'b7caa2ca2f5c9a47e12b355c2a3b625a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b7caa2ca2f5c9a47e12b355c2a3b625a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It was formed in 1975'),
            ('B', 'The Ladakh was a Union Territory in 2019 and it was part of the erstwhile Jammu and Kashmir'),
            ('C', 'It was a state in 1991'),
            ('D', 'It is a part of the Himachal Pradesh')
           ) as v(label, option_text)
 where q.question_hash = 'b7caa2ca2f5c9a47e12b355c2a3b625a'
on conflict (question_id, label) do nothing;

-- history | post-independence | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'Which of the following is correct in the case of the Article 370?',
    'The Article 370 gave the special status to the state of Jammu and Kashmir with the exception of the defence, the foreign affairs and the communications until it was abrogated in August 2019.',
    'easy',
    'Standard Reference',
    null,
    '3f11920de4243e5e14bb8829f238f3d3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '3f11920de4243e5e14bb8829f238f3d3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It was about the emergency'),
            ('B', 'It gave the special status to the Jammu and Kashmir until it was abrogated in August 2019'),
            ('C', 'It gave the special status to the Nagaland'),
            ('D', 'It was about the reservation')
           ) as v(label, option_text)
 where q.question_hash = '3f11920de4243e5e14bb8829f238f3d3'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'In the context of the Supreme Court directed, which of the following is correct?',
    'In December 2023 the Supreme Court upheld the abrogation of the Article 370 and directed that the statehood of the Jammu and Kashmir should be restored with the assembly elections.',
    'medium',
    'Standard Reference',
    null,
    '7c8fa76568e5b30d52030a53d4f6b735'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '7c8fa76568e5b30d52030a53d4f6b735'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It struck down the abrogation in 2019'),
            ('B', 'It has not pronounced the judgment'),
            ('C', 'It upheld the abrogation and the statehood was not restored'),
            ('D', 'The Supreme Court directed the restoration of the statehood of the Jammu and Kashmir')
           ) as v(label, option_text)
 where q.question_hash = '7c8fa76568e5b30d52030a53d4f6b735'
on conflict (question_id, label) do nothing;

-- history | post-independence | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The committee that recommended the merger of the princely states with India was chaired by:',
    'The Balbir Singh Seechewal headed the committee that examined the question of the merger of the princely states and he was a former Foreign Secretary of India.',
    'hard',
    'Standard Reference',
    null,
    'c1912d9225c3783c00a52f3bc347c38c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c1912d9225c3783c00a52f3bc347c38c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Sardar Patel'),
            ('B', 'The B.N. Rau'),
            ('C', 'The Balbir Singh Seechewal'),
            ('D', 'The Jawaharlal Nehru')
           ) as v(label, option_text)
 where q.question_hash = 'c1912d9225c3783c00a52f3bc347c38c'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''Non-Cooperation Movement'' was withdrawn in February 1922 at the:',
    'The Non-Cooperation Movement was withdrawn in February 1922 at the Bardoli meeting of the Congress Working Committee after the Chauri Chaura incident.',
    'medium',
    'Standard Reference',
    null,
    '943fd3795534ad651f49464c45765e73'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '943fd3795534ad651f49464c45765e73'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bardoli meeting of the Congress Working Committee'),
            ('B', 'Calcutta session of the Congress'),
            ('C', 'Lucknow session of the Congress'),
            ('D', 'Nagpur session of the Congress')
           ) as v(label, option_text)
 where q.question_hash = '943fd3795534ad651f49464c45765e73'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''Salt Sathyagraha'' was ended by the:',
    'The Civil Disobedience Movement and the Salt Sathyagraha were suspended after the Gandhi-Irwin Pact of March 1931 and they were formally ended in 1934 with the Government of India Act.',
    'medium',
    'Standard Reference',
    null,
    'a1460f28e24a04dc28212c124a0c6e47'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a1460f28e24a04dc28212c124a0c6e47'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Gandhi-Irwin Pact of 1931'),
            ('B', 'Second Round Table Conference'),
            ('C', 'Simla Conference'),
            ('D', 'Poona Pact')
           ) as v(label, option_text)
 where q.question_hash = 'a1460f28e24a04dc28212c124a0c6e47'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''First Civil Disobedience Movement'' was suspended in the:',
    'The Civil Disobedience Movement was suspended after the Gandhi-Irwin Pact of 1931 and it was formally ended with the Government of India Act of 1934.',
    'medium',
    'Standard Reference',
    null,
    '169c5f7e3806a59ce3b52d1740524969'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '169c5f7e3806a59ce3b52d1740524969'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1930 with the Dandi March'),
            ('B', '1934 with the Government of India Act'),
            ('C', '1929 with the Lahore session'),
            ('D', '1931 with the Gandhi-Irwin Pact')
           ) as v(label, option_text)
 where q.question_hash = '169c5f7e3806a59ce3b52d1740524969'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'Indian Councils Act of 1909 provided:',
    'The Indian Councils Act of 1909 enlarged the legislative councils, introduced the indirect election, widened the franchise and provided for the separate electorates for the Muslims.',
    'medium',
    'Standard Reference',
    null,
    'aa9f2b8fc9809098d82a0a9f0652a92a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'aa9f2b8fc9809098d82a0a9f0652a92a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'for the dominion status'),
            ('B', 'for the separate electorates for the Muslims and the enlarged councils'),
            ('C', 'for the dyarchy'),
            ('D', 'for the provincial autonomy')
           ) as v(label, option_text)
 where q.question_hash = 'aa9f2b8fc9809098d82a0a9f0652a92a'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'Government of India Act of 1919 provided:',
    'The Government of India Act of 1919 separated the central and the provincial subjects and it introduced the dyarchy in the provinces, and the franchise was widened to about 10 per cent of the population.',
    'medium',
    'Standard Reference',
    null,
    '7ba2085278c35bcf9e573fe4ea5e7dc8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '7ba2085278c35bcf9e573fe4ea5e7dc8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'for the provincial autonomy'),
            ('B', 'for the home rule'),
            ('C', 'for the dyarchy and the separation of the central and the provincial subjects'),
            ('D', 'for the separate electorates')
           ) as v(label, option_text)
 where q.question_hash = '7ba2085278c35bcf9e573fe4ea5e7dc8'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''Chauri Chaura'' took place in the:',
    'The Chauri Chaura incident of 5 February 1922 happened in the Gorakhpur district of the United Provinces, where a crowd set fire to a police station.',
    'medium',
    'Standard Reference',
    null,
    '02c0e46053c73b429884b3afba8faca5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '02c0e46053c73b429884b3afba8faca5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Lucknow district'),
            ('B', 'Patna district'),
            ('C', 'Gorakhpur district of the United Provinces'),
            ('D', 'Kanpur district')
           ) as v(label, option_text)
 where q.question_hash = '02c0e46053c73b429884b3afba8faca5'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''Kakori'' action of 1925 was in:',
    'The Kakori action of 9 August 1925 was the raid on the police station at Kakori near Lucknow on the Upasana Express by the revolutionaries.',
    'hard',
    'Standard Reference',
    null,
    '83a83fce7f3dcfb7f57733bcef81aa45'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '83a83fce7f3dcfb7f57733bcef81aa45'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Delhi'),
            ('B', 'Kanpur'),
            ('C', 'Bombay'),
            ('D', 'Near Lucknow on the Upasana Express')
           ) as v(label, option_text)
 where q.question_hash = '83a83fce7f3dcfb7f57733bcef81aa45'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'Consider the following statements. Which of them is correct with regard to the HSRA?',
    'The Hindustan Socialist Republican Association, with the Chandrashekhar Azad and the Ram Prasad Bismil, was the revolutionary organisation of the north and the HSRA Day is observed on 9 April.',
    'hard',
    'Standard Reference',
    null,
    '5e139f40d2d7343f63057737dea920e4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '5e139f40d2d7343f63057737dea920e4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It was the League'),
            ('B', 'The HSRA was the revolutionary organisation of the Chandrashekhar Azad and the Ram Prasad Bismil'),
            ('C', 'It was the peasant organisation'),
            ('D', 'It was the Congress')
           ) as v(label, option_text)
 where q.question_hash = '5e139f40d2d7343f63057737dea920e4'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'Chandra Shekhar Azad was:',
    'The Chandra Shekhar Azad died at the Alfred Park in Allahabad on 27 February 1931 and the Alfred Park was renamed the Chandrashekhar Azad Park.',
    'medium',
    'Standard Reference',
    null,
    '84d937f8dfa1fb1b00de94f5438c8872'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '84d937f8dfa1fb1b00de94f5438c8872'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the revolutionary who died at the Alfred Park in Allahabad in 1931'),
            ('B', 'the leader of the Non-Cooperation'),
            ('C', 'the first President of the Congress'),
            ('D', 'the Governor of the United Provinces')
           ) as v(label, option_text)
 where q.question_hash = '84d937f8dfa1fb1b00de94f5438c8872'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'Which of the following statements regarding the Bhagat Singh is correct?',
    'The Bhagat Singh, the revolutionary of the HSRA, was hanged in the Lahore Conspiracy Case on 23 March 1931 and his slogan was `Inquilab Zindabad''.',
    'easy',
    'Standard Reference',
    null,
    '16b36a12c4462b13154ce5dceb81d37a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '16b36a12c4462b13154ce5dceb81d37a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'He was the leader of the Non-Cooperation'),
            ('B', 'He was the President of the Congress'),
            ('C', 'He was the Finance Minister'),
            ('D', 'He was the revolutionary of the HSRA who was hanged in the Lahore Conspiracy Case in 1931')
           ) as v(label, option_text)
 where q.question_hash = '16b36a12c4462b13154ce5dceb81d37a'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''Chittagong Armoury Raid'' of 1930 was by:',
    'The Chittagong Armoury Raid of 18 April 1930 was led by the Surya Sen and the Indian Republican Army and it inspired the Peshawar and the Meerut actions.',
    'hard',
    'Standard Reference',
    null,
    '75ef2280e2a13e97eeaddbcfbf5dd71f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '75ef2280e2a13e97eeaddbcfbf5dd71f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Ram Prasad Bismil'),
            ('B', 'The V.D. Savarkar'),
            ('C', 'The Surya Sen and the Indian Republican Army'),
            ('D', 'The Bhagat Singh')
           ) as v(label, option_text)
 where q.question_hash = '75ef2280e2a13e97eeaddbcfbf5dd71f'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''First Congress of the Communists of India'' was held at:',
    'The first congress of the Communist Party of India was held at Kanpur in December 1925 and the All India Trade Union Congress was formed at the same time.',
    'hard',
    'Standard Reference',
    null,
    '85b27a8a6d54a759f6e59f45820ad9d2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '85b27a8a6d54a759f6e59f45820ad9d2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Madras in 1927'),
            ('B', 'Kanpur in 1925'),
            ('C', 'Nagpur in 1925'),
            ('D', 'Calcutta in 1920')
           ) as v(label, option_text)
 where q.question_hash = '85b27a8a6d54a759f6e59f45820ad9d2'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''Nehru Report'' of 1928 was chaired by:',
    'The Nehru Report of 1928, chaired by the Motilal Nehru, was the first comprehensive constitutional document of the Congress and it contained the bill of rights and the dominion status.',
    'medium',
    'Standard Reference',
    null,
    'de885538cf31c545822ba3ba0dcf6520'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'de885538cf31c545822ba3ba0dcf6520'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Motilal Nehru'),
            ('B', 'Jawaharlal Nehru'),
            ('C', 'Subhash Chandra Bose'),
            ('D', 'B.N. Rau')
           ) as v(label, option_text)
 where q.question_hash = 'de885538cf31c545822ba3ba0dcf6520'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''Lahore Pact'' of 1940 was between:',
    'The Lahore Pact of 1940 was the agreement between the Congress and the Muslim League and the Congress accepted the Muslim League''s demand for the partition and the independent states.',
    'hard',
    'Standard Reference',
    null,
    '34eb85d82d305d1bc7263e31471090cb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '34eb85d82d305d1bc7263e31471090cb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The League and the Scheduled Castes'),
            ('B', 'The British and the League'),
            ('C', 'The Muslim League and the Congress'),
            ('D', 'The Congress and the Communist Party')
           ) as v(label, option_text)
 where q.question_hash = '34eb85d82d305d1bc7263e31471090cb'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''August Offer'' of 1940 was made to:',
    'The August Offer of 1940, made by the British to the Congress, offered the dominion status and the expansion of the council in return for the participation of the Indians in the Second World War.',
    'hard',
    'Standard Reference',
    null,
    'fcacdb1641a3f184849f0d89e474bef0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'fcacdb1641a3f184849f0d89e474bef0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Congress'),
            ('B', 'The Muslim League'),
            ('C', 'The Communist Party'),
            ('D', 'The princely states')
           ) as v(label, option_text)
 where q.question_hash = 'fcacdb1641a3f184849f0d89e474bef0'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''Individual Satyagraha'' of 1940 was launched by:',
    'The Individual Satyagraha, the limited protest of the individuals, was launched by the Mahatma Gandhi in October 1940 in response to the Second World War.',
    'medium',
    'Standard Reference',
    null,
    '8919011c7309dc728b6568cc8828aa5c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '8919011c7309dc728b6568cc8828aa5c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'V.D. Savarkar'),
            ('B', 'Mahatma Gandhi'),
            ('C', 'Jawaharlal Nehru'),
            ('D', 'B.R. Ambedkar')
           ) as v(label, option_text)
 where q.question_hash = '8919011c7309dc728b6568cc8828aa5c'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''Forward Bloc'' of 1939 was formed by:',
    'The Forward Bloc was formed by the Subhash Chandra Bose at the Tripuri session of the Congress in 1939 after his election as the president against the wishes of the Gandhians.',
    'medium',
    'Standard Reference',
    null,
    '1a6f9cc332c9dc6237a220792604eab4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '1a6f9cc332c9dc6237a220792604eab4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Jawaharlal Nehru'),
            ('B', 'B.R. Ambedkar'),
            ('C', 'Vijayalaxmi Pandit'),
            ('D', 'Subhash Chandra Bose')
           ) as v(label, option_text)
 where q.question_hash = '1a6f9cc332c9dc6237a220792604eab4'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''Tripuri Session'' of the Congress was held in:',
    'The Tripuri session of 1939, held in Tripura, saw the election of the Subhash Chandra Bose as the president of the Congress over the Gandhian opposition.',
    'hard',
    'Standard Reference',
    null,
    '0a0b33c3f2b7458198d6000c9e68ffad'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '0a0b33c3f2b7458198d6000c9e68ffad'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1939 in Tripura'),
            ('B', '1936 in Lucknow'),
            ('C', '1929 in Lahore'),
            ('D', '1927 in Madras')
           ) as v(label, option_text)
 where q.question_hash = '0a0b33c3f2b7458198d6000c9e68ffad'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The Haripura session of 1938 was:',
    'The Haripura session of the Congress in February 1938 was presided over by the Subhash Chandra Bose and it endorsed the National Planning Committee with the Jawaharlal Nehru as the chairman.',
    'hard',
    'Standard Reference',
    null,
    '6aa3dacdfcb5b5f7a1ec5561291e5484'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '6aa3dacdfcb5b5f7a1ec5561291e5484'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'presided over by the Nehru'),
            ('B', 'the Purna Swaraj'),
            ('C', 'of 1936'),
            ('D', 'presided over by the Subhash Chandra Bose and it endorsed the National Planning Committee')
           ) as v(label, option_text)
 where q.question_hash = '6aa3dacdfcb5b5f7a1ec5561291e5484'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''National Planning Committee'' was set up in 1938 with the Jawaharlal Nehru as:',
    'The National Planning Committee was set up by the Congress president in 1938, with the Jawaharlal Nehru as the chairman, and it was the precursor of the Planning Commission.',
    'medium',
    'Standard Reference',
    null,
    'e2c53524c6ed645d185a9e1ac9ae09fa'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e2c53524c6ed645d185a9e1ac9ae09fa'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Secretary'),
            ('B', 'The Treasurer'),
            ('C', 'The Chairman'),
            ('D', 'The Vice Chairman')
           ) as v(label, option_text)
 where q.question_hash = 'e2c53524c6ed645d185a9e1ac9ae09fa'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'Which of the following is correct in the case of the Satyagraha?',
    'The Mahatma Gandhi, the Martin Luther King and the Nelson Mandela are the three great leaders of the non-violent movements of the world.',
    'easy',
    'Standard Reference',
    null,
    'b6f5c553eb0681db420d80122dae6528'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b6f5c553eb0681db420d80122dae6528'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Gandhi and the Stalin are the leaders'),
            ('B', 'The Gandhi and the Martin Luther King and the Nelson Mandela are the leaders of the non-violence movements'),
            ('C', 'The Gandhi and the Hitler are the leaders'),
            ('D', 'The Gandhi and the Lenin are the leaders')
           ) as v(label, option_text)
 where q.question_hash = 'b6f5c553eb0681db420d80122dae6528'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'Which of the following statements regarding the The Congress is correct?',
    'The first session of the Congress to formally take up the demand of the Swaraj was the 1909 session and the 1929 Lahore session adopted the Purna Swaraj.',
    'medium',
    'Standard Reference',
    null,
    '4e939b915d584092ebbab7f5309794f3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '4e939b915d584092ebbab7f5309794f3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Congress took it up in 1929'),
            ('B', 'The Congress never took it up'),
            ('C', 'The Congress took it up in 1919'),
            ('D', 'The Congress was the first to take up the demand of the Swaraj in 1909')
           ) as v(label, option_text)
 where q.question_hash = '4e939b915d584092ebbab7f5309794f3'
on conflict (question_id, label) do nothing;

-- history | world-history | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'world-history'),
    'The Indian economy was:',
    'The First World War brought a boom in the Indian exports of certain goods but the overall impact was the wartime inflation, the fall in the trade and the heavy expenditure that led to the fiscal crisis.',
    'medium',
    'Standard Reference',
    null,
    'c509eb5323b1790c7e2356d24ec44431'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c509eb5323b1790c7e2356d24ec44431'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'no impact'),
            ('B', 'the British rule'),
            ('C', 'devastated by the war with the fall in the exports and the wartime inflation'),
            ('D', 'The Indian economy boomed')
           ) as v(label, option_text)
 where q.question_hash = 'c509eb5323b1790c7e2356d24ec44431'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'Rowlatt Satyagraha was:',
    'The Rowlatt Satyagraha of 1919 was the first all-India political movement of the Mahatma Gandhi, though it was limited to the urban middle class and it did not involve the peasantry.',
    'medium',
    'Standard Reference',
    null,
    '7ae8b631dbeffbd42f82359fae01c2f3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '7ae8b631dbeffbd42f82359fae01c2f3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the movement of the students only'),
            ('B', 'the first all-India political movement launched by the Mahatma Gandhi'),
            ('C', 'the last mass movement'),
            ('D', 'the peasant movement')
           ) as v(label, option_text)
 where q.question_hash = '7ae8b631dbeffbd42f82359fae01c2f3'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The Champaran of 1917 was:',
    'The Champaran of 1917, the first satyagraha of the Gandhi in India, was against the indigo planters and the Rajendra Prasad and the Gandhi went to the Champaran together.',
    'easy',
    'Standard Reference',
    null,
    'fc04f9297fb0f929054bc0a62b5a1293'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'fc04f9297fb0f929054bc0a62b5a1293'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the first satyagraha of the Gandhi against the indigo planters'),
            ('B', 'the Kheda'),
            ('C', 'the Ahmedabad'),
            ('D', 'the Bardoli')
           ) as v(label, option_text)
 where q.question_hash = 'fc04f9297fb0f929054bc0a62b5a1293'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'Consider the following statements. Which of them is correct with regard to the Mahatma Gandhi?',
    'The leadership of the national movement was shared by the Mahatma Gandhi, the Jawaharlal Nehru, the Vallabhbhai Patel, the Rajendra Prasad and the Muhammad Ali and the Jinnah in the united front.',
    'medium',
    'Standard Reference',
    null,
    '5a47f9c5563bb68db5c1973734ffde3f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '5a47f9c5563bb68db5c1973734ffde3f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Gandhi led it alone'),
            ('B', 'The Nehru and the Patel led it'),
            ('C', 'The British led it'),
            ('D', 'The Gandhi and the Jawaharlal Nehru and the Vallabhbhai Patel and the Rajendra Prasad led the movement with the Jinnah and the Muhammad Ali')
           ) as v(label, option_text)
 where q.question_hash = '5a47f9c5563bb68db5c1973734ffde3f'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The Indian Councils Act of 1927 and the Simon Commission of 1928 marked:',
    'The dyarchy in the provinces ended with the Government of India Act of 1935 and the 1927 Act and the Simon Commission of 1928 were the last phase of the dyarchy.',
    'hard',
    'Standard Reference',
    null,
    'cfbb4036db4724cfc8aba217a92cb860'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'cfbb4036db4724cfc8aba217a92cb860'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the end of the dyarchy in the provinces'),
            ('B', 'The dyarchy continued till 1935'),
            ('C', 'never introduced'),
            ('D', 'in 1947')
           ) as v(label, option_text)
 where q.question_hash = 'cfbb4036db4724cfc8aba217a92cb860'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''First Round Table Conference'' was held in:',
    'The First Round Table Conference was held in London in November-December 1930 and the Congress boycotted it.',
    'easy',
    'Standard Reference',
    null,
    '3d5b884d651e8e333163fc1a7df2b4ed'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '3d5b884d651e8e333163fc1a7df2b4ed'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Paris in 1930'),
            ('B', 'London in 1930'),
            ('C', 'Geneva in 1931'),
            ('D', 'London in 1931')
           ) as v(label, option_text)
 where q.question_hash = '3d5b884d651e8e333163fc1a7df2b4ed'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The ''White Paper'' of 1933:',
    'The White Paper of 1933 rejected the federal structure and the provincial autonomy of the Government of India Act and it was criticised by the Ambedkar, the Nehru and the Jinnah.',
    'hard',
    'Standard Reference',
    null,
    '6d13753528020d2950d5dee0128fc845'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '6d13753528020d2950d5dee0128fc845'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was the outline of the constitution'),
            ('B', 'Was the report of the Round Table'),
            ('C', 'Rejected the federal and the provincial autonomy and the Ambedkar and the Nehru criticised it'),
            ('D', 'Accepted the federal autonomy')
           ) as v(label, option_text)
 where q.question_hash = '6d13753528020d2950d5dee0128fc845'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'Consider the following statements. Which of them is correct with regard to the establishment Reserve Bank?',
    'The Government of India Act of 1935 provided for the establishment of the Reserve Bank of India and the Federal Court of India and it also gave the provincial autonomy.',
    'medium',
    'Standard Reference',
    null,
    'b5bc2e0359471220f71fc7d7054179f8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'b5bc2e0359471220f71fc7d7054179f8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'for the Reserve Bank only'),
            ('B', 'for the Supreme Court'),
            ('C', 'for the Planning Commission'),
            ('D', 'for the establishment of the Reserve Bank of India and the Federal Court')
           ) as v(label, option_text)
 where q.question_hash = 'b5bc2e0359471220f71fc7d7054179f8'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'Indian Independence Act provided:',
    'The Indian Independence Act of 1947 provided for the office of the Governor-General as the constitutional head and the Constituent Assemblies of the two dominions.',
    'hard',
    'Standard Reference',
    null,
    '6e0d51d5e7c87e658ed5e2b3652c6aa2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '6e0d51d5e7c87e658ed5e2b3652c6aa2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'for the office of the Governor-General and the Constituent Assemblies of the two dominions'),
            ('B', 'it abolished the viceroy'),
            ('C', 'for the republic'),
            ('D', 'for the provinces')
           ) as v(label, option_text)
 where q.question_hash = '6e0d51d5e7c87e658ed5e2b3652c6aa2'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The Cabinet Mission was:',
    'The Cabinet Mission of 1946 was the last effort of the British to keep India united and it proposed the three-tier federation with the grouping of the provinces.',
    'medium',
    'Standard Reference',
    null,
    'f2e50f7d51d3e8cc366191998113c88d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'f2e50f7d51d3e8cc366191998113c88d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a military mission'),
            ('B', 'the mission of the 1942'),
            ('C', 'the last effort of the British to keep the united India'),
            ('D', 'the first effort')
           ) as v(label, option_text)
 where q.question_hash = 'f2e50f7d51d3e8cc366191998113c88d'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The Mountbatten Plan of 1947 provided for the partition and it was:',
    'The Mountbatten Plan of 1947 was worked out on the basis of the Radcliffe Boundary Commission''s award and it provided for the partition of the Indian subcontinent.',
    'hard',
    'Standard Reference',
    null,
    '5fd964020192e5c6d2a3776dd15faad8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '5fd964020192e5c6d2a3776dd15faad8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'based on the Nehru Plan'),
            ('B', 'based on the Radcliffe award'),
            ('C', 'based on the Cabinet Mission'),
            ('D', 'based on the Cripps formula')
           ) as v(label, option_text)
 where q.question_hash = '5fd964020192e5c6d2a3776dd15faad8'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The ''National Population Register'' of India:',
    'The National Population Register is a verified database of the usual residents of India, unique and with a National Identity Number, and it is a step towards the seamless services.',
    'medium',
    'Standard Reference',
    null,
    'da60b89df75de980fac403b541f22dff'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'da60b89df75de980fac403b541f22dff'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the voters list'),
            ('B', 'Is the Aadhaar database'),
            ('C', 'Is a verified database of the usual residents of India with a unique identity number'),
            ('D', 'Is the census data')
           ) as v(label, option_text)
 where q.question_hash = 'da60b89df75de980fac403b541f22dff'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The ''Demographic dividend'' of India:',
    'The demographic dividend of India is the advantage of the large working age population and it is realised only with the investment in the health, the education, the skills and the job creation.',
    'medium',
    'Standard Reference',
    null,
    '2eb2c42c358aa55d3fddfea5e0edd706'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '2eb2c42c358aa55d3fddfea5e0edd706'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the advantage of the democracy'),
            ('B', 'Is the advantage of the large working age population and it requires the investment in the health, the education and the skills'),
            ('C', 'Is the advantage of the exports'),
            ('D', 'Is the advantage of the natural resources')
           ) as v(label, option_text)
 where q.question_hash = '2eb2c42c358aa55d3fddfea5e0edd706'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'Third Five Year Plan was:',
    'The Third Five Year Plan of 1961-66, drafted largely by the D.R. Gadgil, was the ''Garibi Hatao'' plan with the emphasis on the agriculture, the employment and the family planning.',
    'medium',
    'Standard Reference',
    null,
    '78c9aa557197c4bcbf4cc985ddb06a59'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '78c9aa557197c4bcbf4cc985ddb06a59'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Mahalanobis plan'),
            ('B', 'the Gadgil Yojana plan'),
            ('C', 'the employment plan'),
            ('D', 'drafted largely by the D.R. Gadgil and it was the Garibi Hatao plan')
           ) as v(label, option_text)
 where q.question_hash = '78c9aa557197c4bcbf4cc985ddb06a59'
on conflict (question_id, label) do nothing;

-- history | post-independence | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'Which of the following is correct in the case of the Seventh Five Year Plan?',
    'The Seventh Five Year Plan of 1985-90 emphasised the agriculture and the rural development with the technological upgradation and the growth of the foodgrains at 4 to 5 per cent a year.',
    'hard',
    'Standard Reference',
    null,
    '62b02a0e810c0ebda4cbad097c9d2e28'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '62b02a0e810c0ebda4cbad097c9d2e28'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It emphasised the agriculture and the rural development and the technological upgradation'),
            ('B', 'It was the heavy industry plan'),
            ('C', 'It was the Garibi Hatao plan'),
            ('D', 'It was the employment plan')
           ) as v(label, option_text)
 where q.question_hash = '62b02a0e810c0ebda4cbad097c9d2e28'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'Ninth Five Year Plan was:',
    'The Ninth Five Year Plan of 1997-2002 was the ''Backward Regions'' plan with the emphasis on the human resources development and the reduction of the regional disparities.',
    'medium',
    'Standard Reference',
    null,
    'fbea29ccff13799a65b84c42a2515144'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'fbea29ccff13799a65b84c42a2515144'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was the ''Garibi Hatao'' plan'),
            ('B', 'Was the agriculture plan'),
            ('C', 'Was the ''Backward Regions'' plan with the aim of the reduction of the regional disparities'),
            ('D', 'Was the ''Employment Plan''')
           ) as v(label, option_text)
 where q.question_hash = 'fbea29ccff13799a65b84c42a2515144'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'Twelfth Five Year Plan had:',
    'The Twelfth Five Year Plan of 2012-17 had the targets of the 8.5 per cent growth and the reduction of the poverty with the emphasis on the health, the education, the employment and the skills.',
    'medium',
    'Standard Reference',
    null,
    'fde32a6481736aff282c7c4682d6d2f0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'fde32a6481736aff282c7c4682d6d2f0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It had no targets'),
            ('B', 'Had the targets of the 8.5 per cent growth and the reduction of the poverty with the emphasis on the health, the education and the employment'),
            ('C', 'Was the agriculture plan'),
            ('D', 'Was the heavy industry plan')
           ) as v(label, option_text)
 where q.question_hash = 'fde32a6481736aff282c7c4682d6d2f0'
on conflict (question_id, label) do nothing;

-- history | post-independence | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'Which of the following statements regarding the on 25 September 2014 is correct?',
    'The Make in India was launched on 25 September 2014 with the three pillars of the Make in India, the Skill India and the Start Up India and the 25 September is observed as the Make in India Day.',
    'easy',
    'Standard Reference',
    null,
    '76f3888233ecf5d74aa48dc0770d5222'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '76f3888233ecf5d74aa48dc0770d5222'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'launched on 25 September 2014 with the three pillars of the Make in India, the Skill India and the Start Up India'),
            ('B', 'launched in 1991'),
            ('C', 'launched in 2005'),
            ('D', 'launched in 2018')
           ) as v(label, option_text)
 where q.question_hash = '76f3888233ecf5d74aa48dc0770d5222'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The Startup India was:',
    'The Startup India was launched in January 2016 with the recognition of the startups, the three-year tax exemption for the eligible startups and the funds of over Rs. 10,000 crore for the incubation and the seed.',
    'medium',
    'Standard Reference',
    null,
    'c43e21957dcdafbf4689e6fd3b6e823b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'c43e21957dcdafbf4689e6fd3b6e823b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'launched in 2011'),
            ('B', 'launched in 2014'),
            ('C', 'a state scheme'),
            ('D', 'launched in 2016 with the recognition of the startups and the tax exemption and the fund of over Rs. 10,000 crore')
           ) as v(label, option_text)
 where q.question_hash = 'c43e21957dcdafbf4689e6fd3b6e823b'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The Skill India was:',
    'The Skill India was launched in 2015 with the National Skill Development Corporation and the target of training 100 million young people and it has the NSQF and the National Occupational Standards.',
    'medium',
    'Standard Reference',
    null,
    '2e36e769b7da26bbeda49dc4aced09a8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '2e36e769b7da26bbeda49dc4aced09a8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a scheme of the IT'),
            ('B', 'launched in 2015 with the National Skill Development Corporation and the 100 million youth training target'),
            ('C', 'launched in 1991'),
            ('D', 'launched in 2018')
           ) as v(label, option_text)
 where q.question_hash = '2e36e769b7da26bbeda49dc4aced09a8'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The Government e-Marketplace is:',
    'The Government e-Marketplace, launched in 2014, is the online platform for the public procurement of the goods and the services and it is a Ministry of Commerce project.',
    'medium',
    'Standard Reference',
    null,
    '97bf18fc285e673a6efe8d7b2b4da024'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '97bf18fc285e673a6efe8d7b2b4da024'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the online platform for the public procurement'),
            ('B', 'a stock exchange'),
            ('C', 'a payment platform'),
            ('D', 'a satellite system')
           ) as v(label, option_text)
 where q.question_hash = '97bf18fc285e673a6efe8d7b2b4da024'
on conflict (question_id, label) do nothing;

-- history | post-independence | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'Consider the following statements. Which of them is correct with regard to the IBC?',
    'The Insolvency and Bankruptcy Code of 2016 consolidated and amended the laws relating to the insolvency of the corporate persons, the partnership firms and the individuals.',
    'easy',
    'Standard Reference',
    null,
    '22017f3155c98ab8c30f3bb95d9f144f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '22017f3155c98ab8c30f3bb95d9f144f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It was the banking reform'),
            ('B', 'It was the labour code'),
            ('C', 'It was the tax code'),
            ('D', 'The IBC consolidated the insolvency laws of the individuals, the companies and the partnerships')
           ) as v(label, option_text)
 where q.question_hash = '22017f3155c98ab8c30f3bb95d9f144f'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The 2012 Delhi gang rape case led to:',
    'The 2012 case led to the outrage and the Justice Verma Committee whose recommendations were enacted in the Criminal Law (Amendment) Act of 2013.',
    'medium',
    'Standard Reference',
    null,
    'cece5d0569ef73e305a28a5b8278fd8f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'cece5d0569ef73e305a28a5b8278fd8f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the new education policy'),
            ('B', 'the land reforms'),
            ('C', 'the Justice Verma Committee and the Criminal Law (Amendment) Act of 2013'),
            ('D', 'the amendment of the RTI Act')
           ) as v(label, option_text)
 where q.question_hash = 'cece5d0569ef73e305a28a5b8278fd8f'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The Criminal Law (Amendment) Act of 2013 was:',
    'The Criminal Law (Amendment) Act of 2013, with the new sections of the IPC on the crimes against the woman, was enacted on the recommendations of the Justice Verma Committee.',
    'medium',
    'Standard Reference',
    null,
    'de03162e6b3e69324951d242dc490bd6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'de03162e6b3e69324951d242dc490bd6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'never passed'),
            ('B', 'passed after the Justice Verma Committee'),
            ('C', 'passed in 1956'),
            ('D', 'passed in 2005')
           ) as v(label, option_text)
 where q.question_hash = 'de03162e6b3e69324951d242dc490bd6'
on conflict (question_id, label) do nothing;

-- history | post-independence | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The Right to Information Act of 2005 gave the citizens the right to the information from the public authorities and it was:',
    'The Right to Information Act of 2005 came into force on 21 October 2005 and it gave the citizens the right to the information and it created the information commissions.',
    'easy',
    'Standard Reference',
    null,
    '748bf9c5efb1c21bc9dcddaf3a55a4ba'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '748bf9c5efb1c21bc9dcddaf3a55a4ba'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'of 1991'),
            ('B', 'of 2000'),
            ('C', 'of 2008'),
            ('D', 'enforced from 2006')
           ) as v(label, option_text)
 where q.question_hash = '748bf9c5efb1c21bc9dcddaf3a55a4ba'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The Lokpal and Lokayuktas Act of 2013 created:',
    'The Lokpal and Lokayuktas Act of 2013 gave the statutory status to the Lokpal and the Lokayuktas, the ombudsmen for the corruption at the centre and the states.',
    'medium',
    'Standard Reference',
    null,
    '11d36457dd505dcb1d621e3bf4562c7f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '11d36457dd505dcb1d621e3bf4562c7f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Election Commission'),
            ('B', 'the CAG'),
            ('C', 'the statutory bodies for the corruption ombudsmen'),
            ('D', 'the Human Rights Commission')
           ) as v(label, option_text)
 where q.question_hash = '11d36457dd505dcb1d621e3bf4562c7f'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'In the context of the FEMA, which of the following is correct?',
    'The Foreign Exchange Management Act of 1999, which came into force in 2000, replaced the Foreign Exchange Regulation Act of 1973 and it gave the RBI the powers over the foreign exchange.',
    'medium',
    'Standard Reference',
    null,
    'a7880f68bf01486bd7a69db2b3578e83'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a7880f68bf01486bd7a69db2b3578e83'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Foreign Exchange Management Act of 1999 replaced the FERA of 1973'),
            ('B', 'It was of 1947'),
            ('C', 'It was of 1973'),
            ('D', 'It was of 1980')
           ) as v(label, option_text)
 where q.question_hash = 'a7880f68bf01486bd7a69db2b3578e83'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The ''Competition Act'' of 2002:',
    'The Competition Act of 2002 replaced the Monopolistic and Restrictive Trade Practices Act of 1969 and it created the Competition Commission of India.',
    'medium',
    'Standard Reference',
    null,
    'c0d8844478819480f006d6d4e2847e29'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c0d8844478819480f006d6d4e2847e29'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It created the IRDAI'),
            ('B', 'It created the CAG'),
            ('C', 'Replaced the MRTP Act of 1969 and created the Competition Commission of India'),
            ('D', 'It created the SEBI')
           ) as v(label, option_text)
 where q.question_hash = 'c0d8844478819480f006d6d4e2847e29'
on conflict (question_id, label) do nothing;

-- history | post-independence | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The SEBI was given the statutory powers by the SEBI Act of 1992 and the 2014 amendment gave:',
    'The SEBI was given the statutory powers by the SEBI Act of 1992 and the 2014 amendment gave it the regulatory and the adjudicatory powers of the capital markets.',
    'hard',
    'Standard Reference',
    null,
    '4e3329d9aaf56fb0efe7e8151e9db778'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '4e3329d9aaf56fb0efe7e8151e9db778'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'in 1988'),
            ('B', 'the regulatory and the adjudicatory powers'),
            ('C', 'in 2014'),
            ('D', 'in 2005')
           ) as v(label, option_text)
 where q.question_hash = '4e3329d9aaf56fb0efe7e8151e9db778'
on conflict (question_id, label) do nothing;

-- history | post-independence | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'Which of the following statements regarding the Insolvency is correct?',
    'The Insolvency and Bankruptcy Code of 2016 provided for the time-bound resolution of the insolvency of the corporate debtors with the creditors in control of the process.',
    'easy',
    'Standard Reference',
    null,
    'b45a4d22d72943ef5054183a05234111'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'b45a4d22d72943ef5054183a05234111'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It provided for the banks recapitalisation'),
            ('B', 'It provided for the FDI liberalisation'),
            ('C', 'It provided for the GST'),
            ('D', 'The IBC provided for the time-bound resolution of the insolvency of the companies')
           ) as v(label, option_text)
 where q.question_hash = 'b45a4d22d72943ef5054183a05234111'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'Pradhan Mantri Ujjwala Yojana provided:',
    'The PMUY, launched in 2016 from Ballia in the Uttar Pradesh, provided the deposit-free LPG connection with the first refill subsidy to the women of the below poverty line and the SC and ST households.',
    'medium',
    'Standard Reference',
    null,
    'bdfba133724f86eea0cf95dc730d742d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'bdfba133724f86eea0cf95dc730d742d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the deposit-free LPG connection to the women of the below poverty line households'),
            ('B', 'the housing'),
            ('C', 'the pensions'),
            ('D', 'the insurance')
           ) as v(label, option_text)
 where q.question_hash = 'bdfba133724f86eea0cf95dc730d742d'
on conflict (question_id, label) do nothing;

-- history | post-independence | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The ''Pradhan Mantri Jeevan Jyoti Yojana'' of 2019:',
    'The PMJJY of 2019 provided the life cover of Rs. 2 lakh to the eligible rural households on the payment of the annual premium of about Rs. 436.',
    'hard',
    'Standard Reference',
    null,
    'dc633f7a461e2d9bd3cbcf0e19251f25'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'dc633f7a461e2d9bd3cbcf0e19251f25'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Provided the life cover of Rs. 2 lakh to the eligible households on the payment of the premium'),
            ('B', 'Provided the crop insurance'),
            ('C', 'Provided the health cover'),
            ('D', 'Provided the pension')
           ) as v(label, option_text)
 where q.question_hash = 'dc633f7a461e2d9bd3cbcf0e19251f25'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The PMAY-Urban was:',
    'The PMAY-Urban was launched in 2015 with the four verticals of the slum redevelopment, the credit linked subsidy, the affordable rental housing and the beneficiary-led construction.',
    'medium',
    'Standard Reference',
    null,
    'ba70fb9fd37dbdeb8f11a42ea5518739'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'ba70fb9fd37dbdeb8f11a42ea5518739'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a scheme of the rural housing only'),
            ('B', 'launched in 2015 and it has the four verticals'),
            ('C', 'launched in 2016'),
            ('D', 'launched in 1991')
           ) as v(label, option_text)
 where q.question_hash = 'ba70fb9fd37dbdeb8f11a42ea5518739'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The ''Swachh Bharat Mission'' of 2014:',
    'The Swachh Bharat Mission, launched in October 2014, had the rural component with the ODF+ and the waste management and the urban component with the elimination of the open defecation and the municipal solid waste.',
    'medium',
    'Standard Reference',
    null,
    'ea320e325c3053c5536e5c2547af2cb2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'ea320e325c3053c5536e5c2547af2cb2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It was a health mission'),
            ('B', 'It was a housing mission'),
            ('C', 'Was the mission of the rural and the urban sanitation with the ODF+ and the SBM-U targets'),
            ('D', 'It was a mission of the water supply only')
           ) as v(label, option_text)
 where q.question_hash = 'ea320e325c3053c5536e5c2547af2cb2'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'Ayushman Bharat is:',
    'The Ayushman Bharat PM-JAY, launched in 2018, provides the health cover of Rs. 5 lakh per family per year to about 55 crore beneficiaries at the government-run hospitals.',
    'medium',
    'Standard Reference',
    null,
    '8a597fb06eacc3541b45d6cb94faa47a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '8a597fb06eacc3541b45d6cb94faa47a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a scheme of the education'),
            ('B', 'a scheme of the housing'),
            ('C', 'a scheme of the pensions'),
            ('D', 'the health assurance of Rs. 5 lakh per family a year for about 55 crore beneficiaries')
           ) as v(label, option_text)
 where q.question_hash = '8a597fb06eacc3541b45d6cb94faa47a'
on conflict (question_id, label) do nothing;

-- history | post-independence | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The ''Jal Jeevan Mission'' of 2019:',
    'The Jal Jeevan Mission, launched in 2019, aims at a functional household tap water connection for every rural household and the goal of 55 litres per person per day of the prescribed quality.',
    'easy',
    'Standard Reference',
    null,
    '9000183dcaf3f22196a48777468fde02'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '9000183dcaf3f22196a48777468fde02'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a skill mission'),
            ('B', 'Provides the tap water connection to every rural household'),
            ('C', 'It is a sanitation mission'),
            ('D', 'It is a nutrition mission')
           ) as v(label, option_text)
 where q.question_hash = '9000183dcaf3f22196a48777468fde02'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The ''PM POSHAN'' scheme of 2021:',
    'The PM POSHAN, launched in 2021, is the school nutrition programme of the hot cooked meals in the government and the government-aided schools.',
    'medium',
    'Standard Reference',
    2021,
    'd6649c2eed78b492f9691dcca3dc088d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'd6649c2eed78b492f9691dcca3dc088d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is the mid-day meal of the private schools only'),
            ('B', 'It is a scheme of the higher education'),
            ('C', 'It is a nutrition scheme of the states only'),
            ('D', 'Is the school nutrition programme of the hot meals in the government and the aided schools')
           ) as v(label, option_text)
 where q.question_hash = 'd6649c2eed78b492f9691dcca3dc088d'
on conflict (question_id, label) do nothing;

-- history | post-independence | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The National Education Policy replaced the 30 year old policy of 1986 and it was:',
    'The National Education Policy of 2020, approved by the Cabinet in July 2021, replaced the National Education Policy of 1986 that had remained in force for 34 years.',
    'easy',
    'Standard Reference',
    null,
    '3e47c0d598ad1c9af3f70e5be98768b1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '3e47c0d598ad1c9af3f70e5be98768b1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the policy of the primary education only'),
            ('B', 'never approved'),
            ('C', 'approved in 2021'),
            ('D', 'approved in 1991')
           ) as v(label, option_text)
 where q.question_hash = '3e47c0d598ad1c9af3f70e5be98768b1'
on conflict (question_id, label) do nothing;

-- history | post-independence | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'Which of the following statements regarding the National Education Policy is correct?',
    'The NEP provides for the National Education Alliance, the National Centre for the Accreditation and the PARAKH, the performance assessment, the ranking and the accreditation of the higher education institutions.',
    'hard',
    'Standard Reference',
    null,
    '4a4975cc0b88a14a268f772968eb018b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '4a4975cc0b88a14a268f772968eb018b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The NEP provides for the National Education Alliance and the PARAKH and the school accreditation'),
            ('B', 'It provided for the Central Advisory Board of Education'),
            ('C', 'It provided for the 10+2 structure'),
            ('D', 'It provided for the State universities only')
           ) as v(label, option_text)
 where q.question_hash = '4a4975cc0b88a14a268f772968eb018b'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'Which of the following statements is/are correct in relation to the NEP?',
    'The NEP provides for the social and the academic infrastructure of the schools, including the libraries, the laboratories, the play areas, the vocational guidance and the counsellors and the social workers.',
    'medium',
    'Standard Reference',
    null,
    'dc29e17332ee46b29b716ee2eb3561f1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'dc29e17332ee46b29b716ee2eb3561f1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It provides for the removal of the school'),
            ('B', 'The NEP provides for the social and the academic infrastructure of the schools including the libraries, the play areas and the counsellors'),
            ('C', 'It provides only for the textbooks'),
            ('D', 'It provides only for the exams')
           ) as v(label, option_text)
 where q.question_hash = 'dc29e17332ee46b29b716ee2eb3561f1'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'In the context of the Gati Shakti, which of the following is correct?',
    'The National Logistics Policy of 2022 and the PM Gati Shakti National Master Plan with the 14 sectors and the 20 corridors are the key instruments of the logistics and the infrastructure transformation.',
    'medium',
    'Standard Reference',
    null,
    '5366dee6fb763cc63005da89d7ac6cd3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '5366dee6fb763cc63005da89d7ac6cd3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a scheme of the education'),
            ('B', 'It is a health scheme'),
            ('C', 'It is a housing scheme'),
            ('D', 'The National Logistics Policy of 2022 and the PM Gati Shakti with the 14 sectors and the 20 corridors')
           ) as v(label, option_text)
 where q.question_hash = '5366dee6fb763cc63005da89d7ac6cd3'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The India Semiconductor Mission was:',
    'The India Semiconductor Mission, approved in September 2021, has a fiscal support of about Rs. 76,000 crore and it covers the fabs, the display fabs, the design and the packaging.',
    'medium',
    'Standard Reference',
    null,
    '3d4468412a905f450c86000a28293012'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '3d4468412a905f450c86000a28293012'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'approved in 2005'),
            ('B', 'discontinued'),
            ('C', 'approved in 2021 with the fiscal support of about Rs. 76,000 crore'),
            ('D', 'approved in 1991')
           ) as v(label, option_text)
 where q.question_hash = '3d4468412a905f450c86000a28293012'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The Digital India was:',
    'The Digital India, with the three pillars of the Digital Infrastructure as a Utility to Every Citizen, the Governance and Services on Demand and the Digital Empowerment of the Citizens, was the flagship programme of the Government of India.',
    'medium',
    'Standard Reference',
    null,
    'cafc99b3075fb025f8b7c364f69fb15c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'cafc99b3075fb025f8b7c364f69fb15c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the programme of the digital empowerment with the Digital Infrastructure, the Governance and the Services'),
            ('B', 'a scheme of the agriculture'),
            ('C', 'a scheme of the industrialisation'),
            ('D', 'of 1991')
           ) as v(label, option_text)
 where q.question_hash = 'cafc99b3075fb025f8b7c364f69fb15c'
on conflict (question_id, label) do nothing;

-- history | post-independence | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The ''National Digital Policy'' of 2015:',
    'The National Digital Policy of 2015 was the first policy of the digital India with the vision of the digital empowerment and it was superseded by the Digital India programme of 2016.',
    'hard',
    'Standard Reference',
    null,
    '90b48b77f170409a71aacfef46b5da0e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '90b48b77f170409a71aacfef46b5da0e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It was the IT policy of 1980'),
            ('B', 'It was of 2021'),
            ('C', 'Was the first policy of the digital India with the vision of the digital empowerment and it is superseded by the Digital India'),
            ('D', 'It was the policy of 1991')
           ) as v(label, option_text)
 where q.question_hash = '90b48b77f170409a71aacfef46b5da0e'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The Digital Public Infrastructure is:',
    'The Digital Public Infrastructure is the set of the interoperable digital public goods, the Aadhaar, the UPI, the Account Aggregator and the Merchants and the Payments, and the concept was a key focus of the G20 presidency of India.',
    'medium',
    'Standard Reference',
    null,
    'c4424d113935ecd114bedb68a040a705'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'c4424d113935ecd114bedb68a040a705'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the interoperable digital public goods with the Aadhaar, the UPI and the Account Aggregator'),
            ('B', 'a private sector platform'),
            ('C', 'a trade agreement'),
            ('D', 'only the Aadhaar')
           ) as v(label, option_text)
 where q.question_hash = 'c4424d113935ecd114bedb68a040a705'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The India Stack is:',
    'The India Stack, the digital public infrastructure of the country, is built on the Aadhaar, the UPI, the Account Aggregator and the Merchants and the Payments and the Securities Depositories.',
    'medium',
    'Standard Reference',
    null,
    '13039f2274f6d1c57300105e2dd52a6b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '13039f2274f6d1c57300105e2dd52a6b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a military alliance'),
            ('B', 'the Aadhaar, the UPI, the Account Aggregator and the Merchants and the Payments and the Securities Depositories'),
            ('C', 'the e-commerce portal'),
            ('D', 'the cloud computing')
           ) as v(label, option_text)
 where q.question_hash = '13039f2274f6d1c57300105e2dd52a6b'
on conflict (question_id, label) do nothing;

-- history | post-independence | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'Which of the following statements regarding the The CoWIN is correct?',
    'The CoWIN, the Co-Win Information Network, powered the world''s largest vaccination drive with more than 2 billion doses registered.',
    'easy',
    'Standard Reference',
    null,
    '8fb0a477089f12d00eff73a6d5e52ad3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '8fb0a477089f12d00eff73a6d5e52ad3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It was the e-commerce platform'),
            ('B', 'It is a satellite system'),
            ('C', 'It was the defence platform'),
            ('D', 'The CoWIN was the digital platform of the covid vaccination and it was the largest vaccination drive in the world')
           ) as v(label, option_text)
 where q.question_hash = '8fb0a477089f12d00eff73a6d5e52ad3'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The ''Human Spaceflight Centre'' of India:',
    'The Human Spaceflight Centre is at Bengaluru and the four astronaut candidates for the Gaganyaan, including the Shubhanshu Shukla and the Prasanth Balakrishnan Nair, were selected in 2022.',
    'medium',
    'Standard Reference',
    null,
    'e7aaa6d4b1c7713c6cff1db0d1059843'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'e7aaa6d4b1c7713c6cff1db0d1059843'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is at Bengaluru and the four astronaut candidates of the Gaganyaan were selected in 2022'),
            ('B', 'Is at Thiruvananthapuram'),
            ('C', 'Is at Hyderabad'),
            ('D', 'Is at Chandigarh')
           ) as v(label, option_text)
 where q.question_hash = 'e7aaa6d4b1c7713c6cff1db0d1059843'
on conflict (question_id, label) do nothing;

-- history | post-independence | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The Chandrayaan-3 landed on 23 August 2023 and it made:',
    'The Chandrayaan-3, launched in July 2023, landed near the lunar south pole on 23 August 2023 and India became the fourth country to soft-land on the Moon.',
    'easy',
    'Standard Reference',
    null,
    '0510b2a9a799d91b4dde4df0db1afa0d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '0510b2a9a799d91b4dde4df0db1afa0d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the first Indian crewed mission'),
            ('B', 'in 2019'),
            ('C', 'India the fourth country to land on the Moon'),
            ('D', 'the first Indian Mars mission')
           ) as v(label, option_text)
 where q.question_hash = '0510b2a9a799d91b4dde4df0db1afa0d'
on conflict (question_id, label) do nothing;

-- history | post-independence | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The Suryanayana, the CE-20 was:',
    'The Suryanayana, the CE-20, was the first indigenous cryogenic upper stage engine of India and it was used in the GSLV Mk III of 2014 and in the Chandrayaan-2 of 2019.',
    'hard',
    'Standard Reference',
    null,
    '23d5de086e85ef267a066c16accacf6e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '23d5de086e85ef267a066c16accacf6e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a manned capsule'),
            ('B', 'the first indigenous cryogenic upper stage engine of India'),
            ('C', 'the first solid propellant booster'),
            ('D', 'a satellite')
           ) as v(label, option_text)
 where q.question_hash = '23d5de086e85ef267a066c16accacf6e'
on conflict (question_id, label) do nothing;

-- history | post-independence | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The Padma Awards are the civilian awards announced on the Republic Day and the Padma Vibhushan is:',
    'The Padma Awards, the civilian awards, are announced every year on the Republic Day and the Padma Vibhushan is the second highest after the Bharat Ratna.',
    'easy',
    'Standard Reference',
    null,
    'e0ee882ae305f6403df85a8e629cc966'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e0ee882ae305f6403df85a8e629cc966'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the military awards'),
            ('B', 'of the state governments'),
            ('C', 'abolished in 2020'),
            ('D', 'the second highest')
           ) as v(label, option_text)
 where q.question_hash = 'e0ee882ae305f6403df85a8e629cc966'
on conflict (question_id, label) do nothing;

-- history | post-independence | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The first Bharat Ratna awards were:',
    'The first Bharat Ratna awards were conferred in 1954 on the Sarvepalli Radhakrishnan, the Chakravarti Rajagopalachari and the C. Rajagopalachari and the C. Rajagopalachari in 1990.',
    'medium',
    'Standard Reference',
    null,
    '55699ecb67014471d3a6faf4fdedb767'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '55699ecb67014471d3a6faf4fdedb767'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'conferred in 1950'),
            ('B', 'conferred in 1962'),
            ('C', 'conferred in 1999'),
            ('D', 'conferred in 1954 on the Radhakrishnan, the Rajagopalachari and the C. Rajagopalachari')
           ) as v(label, option_text)
 where q.question_hash = '55699ecb67014471d3a6faf4fdedb767'
on conflict (question_id, label) do nothing;

-- history | british-raj | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'british-raj'),
    'The first session of the Indian National Congress in 1885 was presided over by:',
    'The first session of the Indian National Congress was held at Gokuldas Tejpal Sanskrit College in Bombay in December 1885 with 72 delegates, and it was presided over by W.C. Bonnerjee. A.O. Hume, a retired civil servant, was the chief organiser of the session.',
    'easy',
    'Standard Reference',
    null,
    '3cddfb1f4b746ba91a58c70b371c24c0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '3cddfb1f4b746ba91a58c70b371c24c0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'W.C. Bonnerjee'),
            ('B', 'Dadabhai Naoroji'),
            ('C', 'Badruddin Tyabji'),
            ('D', 'A.O. Hume')
           ) as v(label, option_text)
 where q.question_hash = '3cddfb1f4b746ba91a58c70b371c24c0'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The Poona session of the Indian National Congress in 1924:',
    'The Poona session of July 1924 rejected the Gohoy Warren resolution that allowed the Congress to enter the legislative councils, and the decision was reaffirmed at the Abergavally (Belgaum) session of December 1924. The Swaraj Party was formed only in 1923 and the Nehru Report came later, in 1928.',
    'hard',
    'Standard Reference',
    null,
    '1f9d170b51cb7871011bb9a221516999'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '1f9d170b51cb7871011bb9a221516999'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Formed the Swaraj Party with C.R. Das and Motilal Nehru'),
            ('B', 'Adopted the resolution on complete independence and left the Congress'),
            ('C', 'Rejected the council entry programme of the British Government'),
            ('D', 'Approved the Nehru Report of 1928')
           ) as v(label, option_text)
 where q.question_hash = '1f9d170b51cb7871011bb9a221516999'
on conflict (question_id, label) do nothing;

-- history | british-raj | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'british-raj'),
    'The Vernacular Press Act of 1878:',
    'The Vernacular Press Act of 1878 made seditious material in the vernacular press a non-cognizable offence, allowed the government to press for securities and to confiscate the assets of a newspaper, and excluded the jurisdiction of the ordinary courts. The Act was repealed in 1882.',
    'hard',
    'Standard Reference',
    null,
    'f0e6034195061709ab3982686441c3a8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f0e6034195061709ab3982686441c3a8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was passed by the provincial governments of the presidencies and the provinces'),
            ('B', 'Made the publication of seditious material in the vernacular press a non-cognizable offence and allowed the government to confiscate the assets of a newspaper'),
            ('C', 'Introduced a press law to control the English newspapers in the metropolitan towns'),
            ('D', 'Repealed the censorship of the vernacular newspapers altogether')
           ) as v(label, option_text)
 where q.question_hash = 'f0e6034195061709ab3982686441c3a8'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The Communal Award announced by the British Government in 1932 provided for:',
    'The Communal Award of 1932 announced by Ramsay MacDonald provided for separate electorates for the Muslims, the Sikhs, the Hindus, the Christians and the Depressed Classes, and it provoked the Poona Pact of 1932 between Mahatma Gandhi and Dr B.R. Ambedkar, which withdrew the separate electorate for the Depressed Classes and replaced it with reserved seats.',
    'hard',
    'Standard Reference',
    null,
    '2dc46f15c17d72462c213e0e270159bd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '2dc46f15c17d72462c213e0e270159bd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The reservation of a fixed share of seats in the provincial legislatures for the Depressed Classes'),
            ('B', 'The enlargement of the franchise to all adult Indians'),
            ('C', 'The grant of separate electorates to the Depressed Classes only'),
            ('D', 'The grant of separate electorates to the Muslims, the Sikhs, the Hindus, the Christians and the Depressed Classes')
           ) as v(label, option_text)
 where q.question_hash = '2dc46f15c17d72462c213e0e270159bd'
on conflict (question_id, label) do nothing;

-- history | british-raj | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'british-raj'),
    'The Banaras Hindu University was founded in 1916 by:',
    'Madan Mohan Malaviya founded the Banaras Hindu University in 1916, and it was later declared a central university under the Banaras Hindu University Act, 1952.',
    'easy',
    'Standard Reference',
    null,
    'a2b2358f1079ec2bc01bee048ea00a68'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a2b2358f1079ec2bc01bee048ea00a68'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Gandhi'),
            ('B', 'Madan Mohan Malaviya'),
            ('C', 'Rabindranath Tagore'),
            ('D', 'Sardar Patel')
           ) as v(label, option_text)
 where q.question_hash = 'a2b2358f1079ec2bc01bee048ea00a68'
on conflict (question_id, label) do nothing;

-- history | british-raj | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'british-raj'),
    'The Jamia Millia Islamia was founded in 1920 by:',
    'The Jamia Millia Islamia was founded at Aligarh in October 1920 by Muhammad Ali Jauhar, Hakim Ajmal Khan and Abdul Majeed Khwaja with the active support of Maulana Abul Kalam Azad and Muhammad Iqbal.',
    'hard',
    'Standard Reference',
    null,
    '7583f754282ba00feb158f06ca12f122'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '7583f754282ba00feb158f06ca12f122'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Muhammad Ali Jauhar, Hakim Ajmal Khan and Abdul Majeed Khwaja'),
            ('B', 'Maulana Abul Kalam Azad and Muhammad Iqbal'),
            ('C', 'Sir Syed Ahmad Khan and Hakim Ajmal Khan'),
            ('D', 'Hasrat Mohani and Zakir Husain')
           ) as v(label, option_text)
 where q.question_hash = '7583f754282ba00feb158f06ca12f122'
on conflict (question_id, label) do nothing;

-- history | british-raj | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'british-raj'),
    'The Muhammadan Anglo-Oriental College, which later became the Aligarh Muslim University, was founded in 1875 by:',
    'Sir Syed Ahmad Khan founded the Muhammadan Anglo-Oriental College at Aligarh in 1875, and it was converted into the Aligarh Muslim University in 1920.',
    'medium',
    'Standard Reference',
    null,
    'f69ef08b2f3fde7784ff267a64d94be4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'f69ef08b2f3fde7784ff267a64d94be4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Hakim Ajmal Khan'),
            ('B', 'Sir Syed Ameer Ali'),
            ('C', 'Sir Syed Ahmad Khan'),
            ('D', 'Maulana Muhammad Ali Jauhar')
           ) as v(label, option_text)
 where q.question_hash = 'f69ef08b2f3fde7784ff267a64d94be4'
on conflict (question_id, label) do nothing;

-- history | british-raj | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'british-raj'),
    'The Indian Institute of Science was established in 1909 with the assistance of:',
    'The Indian Institute of Science was established at Bangalore in 1909 with the financial assistance of Jamsetji Tata, and the institution received a charter from the Government of India in 1909 itself.',
    'hard',
    'Standard Reference',
    null,
    '307d35ea1c9101a5f811f4564fd0e20e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '307d35ea1c9101a5f811f4564fd0e20e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Dorabji Tata'),
            ('B', 'Vikram Sarabhai'),
            ('C', 'Jamsetji Tata'),
            ('D', 'Raja Rammohan Roy')
           ) as v(label, option_text)
 where q.question_hash = '307d35ea1c9101a5f811f4564fd0e20e'
on conflict (question_id, label) do nothing;

-- history | freedom-struggle | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'freedom-struggle'),
    'The Wardha scheme of education, the scheme of the national education formulated at the Wardha conference of 1937, was prepared by:',
    'The national education conference held at Wardha in October 1937 appointed a committee under Nandalal Bose to draft the national educational scheme, popularly known as the Wardha scheme or the Jarbheda scheme of education.',
    'hard',
    'Standard Reference',
    null,
    '65befbfe8a360f79e4390d5eb502aee2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '65befbfe8a360f79e4390d5eb502aee2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Gandhi'),
            ('B', 'Rabindranath Tagore'),
            ('C', 'K.G. Saiyami'),
            ('D', 'Nandalal Bose')
           ) as v(label, option_text)
 where q.question_hash = '65befbfe8a360f79e4390d5eb502aee2'
on conflict (question_id, label) do nothing;

-- history | british-raj | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'british-raj'),
    'The Indian Penal Code and the Code of Criminal Procedure were enacted in:',
    'The Indian Penal Code was enacted in 1860 and the Code of Criminal Procedure in 1861, both drafted by the Law Commission of India under the chairmanship of Thomas Babington Macaulay, and both came into force on 1 October 1862.',
    'medium',
    'Standard Reference',
    null,
    '07a0f879707b672558887cb5f9178afb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '07a0f879707b672558887cb5f9178afb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1860 and 1861'),
            ('B', '1861 and 1862'),
            ('C', '1858 and 1860'),
            ('D', '1857 and 1860')
           ) as v(label, option_text)
 where q.question_hash = '07a0f879707b672558887cb5f9178afb'
on conflict (question_id, label) do nothing;

-- history | post-independence | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'post-independence'),
    'The Hindi news service of All India Radio was named Akashvani in 1957, a name coined by:',
    'The Hindi news service of All India Radio was named Akashvani on 7 May 1957, and the name was coined by V.K. Gokak in his radio play Aaha Naa Baloo.',
    'hard',
    'Standard Reference',
    null,
    '9f298943376e7fb380f9eed77b2baf9c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '9f298943376e7fb380f9eed77b2baf9c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sampurnanand'),
            ('B', 'V.K. Gokak'),
            ('C', 'Harivansh Rai Bachchan'),
            ('D', 'Kumar Vikal')
           ) as v(label, option_text)
 where q.question_hash = '9f298943376e7fb380f9eed77b2baf9c'
on conflict (question_id, label) do nothing;

commit;
