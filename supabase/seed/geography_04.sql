-- =============================================================================
-- geography_04.sql — geography question pack, part 04
-- 250 questions. Applied after supabase/migrations/004_reference_data.sql
-- =============================================================================

begin;

-- geography | world-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''Kilimanjaro'' is:',
    'The Kilimanjaro, at 5,895 metres, is the highest peak of the Africa and it is a dormant volcano, and the Mount Kenya is the highest of the Kenya and an active one.',
    'medium',
    'Standard Reference',
    null,
    '07d8861d514aff53cd627f010bce5176'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '07d8861d514aff53cd627f010bce5176'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The highest of the Kenya and an active volcano'),
            ('B', 'The highest of the Ethiopia'),
            ('C', 'The highest of the Atlas'),
            ('D', 'The highest peak of the Africa at 5,895 m and a dormant volcano')
           ) as v(label, option_text)
 where q.question_hash = '07d8861d514aff53cd627f010bce5176'
on conflict (question_id, label) do nothing;

-- geography | world-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''Mount Kenya'' is:',
    'The Mount Kenya, at 5,199 metres, is the second highest of the Africa and an active volcano and it is the highest of the Kenya.',
    'medium',
    'Standard Reference',
    null,
    '28958884722291fe9cc09314b026506b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '28958884722291fe9cc09314b026506b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A dormant volcano of the Tanzania'),
            ('B', 'The highest peak of the Kenya and an active volcano that is the second highest of the Africa'),
            ('C', 'The highest of the Africa'),
            ('D', 'The highest of the Ethiopia')
           ) as v(label, option_text)
 where q.question_hash = '28958884722291fe9cc09314b026506b'
on conflict (question_id, label) do nothing;

-- geography | world-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''Atlas'' range:',
    'The Atlas range, in the Morocco, the Algeria and the Tunisia, separates the Sahara from the Mediterranean coastal plains and it has the cedar forests.',
    'medium',
    'Standard Reference',
    null,
    'e5837f2e9012599992cd560657853387'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'e5837f2e9012599992cd560657853387'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is in the North-West Africa and separates the Sahara from the coastal plains'),
            ('B', 'Is in the East Africa'),
            ('C', 'Is in the Southern Africa'),
            ('D', 'Is in the Central Africa')
           ) as v(label, option_text)
 where q.question_hash = 'e5837f2e9012599992cd560657853387'
on conflict (question_id, label) do nothing;

-- geography | world-geography | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''Drakensberg'' is:',
    'The Drakensberg, the great escarpment of the Southern Africa, has the highest peak of the continent outside the Andes, the Thabana Ntlenyana at 3,482 metres.',
    'hard',
    'Standard Reference',
    null,
    '7ea34a887e65c587adddcbe96b42150b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '7ea34a887e65c587adddcbe96b42150b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The highest range of the Africa'),
            ('B', 'The rift of the East Africa'),
            ('C', 'The range of the Madagascar'),
            ('D', 'The great escarpment of the Southern Africa with the highest peak of the Thabana Ntlenyana')
           ) as v(label, option_text)
 where q.question_hash = '7ea34a887e65c587adddcbe96b42150b'
on conflict (question_id, label) do nothing;

-- geography | world-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''Andes'' is:',
    'The Andes, about 7,000 km long, is the longest continental mountain range of the world and it runs along the western edge of the South America.',
    'medium',
    'Standard Reference',
    null,
    'c11bfd3c508ca3c736429366e8e3045d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'c11bfd3c508ca3c736429366e8e3045d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The range of the Europe'),
            ('B', 'The longest mountain chain of the world on the western edge of the South America'),
            ('C', 'The highest range of the Asia'),
            ('D', 'The mountain range of the Africa')
           ) as v(label, option_text)
 where q.question_hash = 'c11bfd3c508ca3c736429366e8e3045d'
on conflict (question_id, label) do nothing;

-- geography | world-geography | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''Aconcagua'' is:',
    'The Aconcagua, at 6,960 metres, is the highest peak of the South America and the highest of the world outside the Asia.',
    'hard',
    'Standard Reference',
    null,
    'd61ee6154a1f98a72192148822600502'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd61ee6154a1f98a72192148822600502'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The highest of the Rockies'),
            ('B', 'The highest of the North America'),
            ('C', 'The highest peak of the South America and of the world outside the Asia'),
            ('D', 'The highest of the Andes')
           ) as v(label, option_text)
 where q.question_hash = 'd61ee6154a1f98a72192148822600502'
on conflict (question_id, label) do nothing;

-- geography | world-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'Which of the following statements regarding the Denali is correct?',
    'The Denali, at 6,190 metres, is the highest peak of the North America and the second highest of the world.',
    'medium',
    'Standard Reference',
    null,
    'cfdd893b3ee52e85e5998e5a3ace0d73'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'cfdd893b3ee52e85e5998e5a3ace0d73'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the highest of the world'),
            ('B', 'It is in the Andes'),
            ('C', 'Is the highest peak of the North America'),
            ('D', 'Is the highest of the South America')
           ) as v(label, option_text)
 where q.question_hash = 'cfdd893b3ee52e85e5998e5a3ace0d73'
on conflict (question_id, label) do nothing;

-- geography | world-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''Ural'' mountains:',
    'The Ural mountains, the traditional boundary of the Europe and the Asia, are rich in the minerals and the fossil fuels.',
    'easy',
    'Standard Reference',
    null,
    'adb58ece72171c8abd3f3b72994a0c2e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'adb58ece72171c8abd3f3b72994a0c2e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Are the highest of the Asia'),
            ('B', 'Are in the Southern Africa'),
            ('C', 'Separate the Europe and the Africa'),
            ('D', 'Separate the Europe and the Asia and they are rich in the minerals')
           ) as v(label, option_text)
 where q.question_hash = 'adb58ece72171c8abd3f3b72994a0c2e'
on conflict (question_id, label) do nothing;

-- geography | world-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''Caucasus'' mountains:',
    'The Caucasus mountains, between the Black Sea and the Caspian Sea, are the traditional boundary of the Europe and the Asia and the Mount Elbrus is the highest of the Europe.',
    'medium',
    'Standard Reference',
    null,
    'ba11ea07c9ede5db0c5dbce95dd77d59'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ba11ea07c9ede5db0c5dbce95dd77d59'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Separate the Europe and the Asia and they are between the Black Sea and the Caspian Sea'),
            ('B', 'Are in the South America'),
            ('C', 'Are between the Baltic and the Black Sea'),
            ('D', 'Separate the Africa and the Asia')
           ) as v(label, option_text)
 where q.question_hash = 'ba11ea07c9ede5db0c5dbce95dd77d59'
on conflict (question_id, label) do nothing;

-- geography | world-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''Alps'' mountains:',
    'The Alps, the young fold mountains of the Europe, separate the Italy and the Mont Blanc at 4,810 metres is the highest of the range.',
    'medium',
    'Standard Reference',
    null,
    'a69f05d76cb18ee9dee473d746bcc582'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a69f05d76cb18ee9dee473d746bcc582'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Separate the Europe and the Asia'),
            ('B', 'Are the youngest fold mountains of the Europe and they separate the Italy from the rest of the Europe'),
            ('C', 'Are the oldest of the Europe'),
            ('D', 'Are in the Scandinavia')
           ) as v(label, option_text)
 where q.question_hash = 'a69f05d76cb18ee9dee473d746bcc582'
on conflict (question_id, label) do nothing;

-- geography | world-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''Rockies'' mountains:',
    'The Rockies extend from the North-West of the Canada to the North-East of the Mexico and they are about 4,800 km long.',
    'medium',
    'Standard Reference',
    null,
    '2bf25b1648233d37b0a2ecb4cca49670'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '2bf25b1648233d37b0a2ecb4cca49670'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Separate the Europe and the Asia'),
            ('B', 'Are the highest of the world'),
            ('C', 'Extend from the North-West of the Canada to the North-East of the Mexico'),
            ('D', 'Are in the South America')
           ) as v(label, option_text)
 where q.question_hash = '2bf25b1648233d37b0a2ecb4cca49670'
on conflict (question_id, label) do nothing;

-- geography | world-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'Which of the following statements regarding the Himalaya is correct?',
    'The Himalaya extend about 2,400 km from the Kashmir to the Arunachal Pradesh in the north-east and they have the greatest vertical extent of any of the mountain ranges of the world.',
    'easy',
    'Standard Reference',
    null,
    'efe0cbe007e75eb716b924a22fac4a90'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'efe0cbe007e75eb716b924a22fac4a90'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'They separate the Europe and the Asia'),
            ('B', 'Extend about 2,400 km from the Kashmir to the Arunachal in the north-east'),
            ('C', 'They extend in the Southern Africa'),
            ('D', 'They are the highest of the world')
           ) as v(label, option_text)
 where q.question_hash = 'efe0cbe007e75eb716b924a22fac4a90'
on conflict (question_id, label) do nothing;

-- geography | world-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''Great Dividing Range'' is:',
    'The Great Dividing Range, the great watershed of the eastern Australia, separates the east-flowing the coastal rivers from the west-flowing the Murray and the Darling.',
    'medium',
    'Standard Reference',
    null,
    '33c1bc359e7d6687999f8c26148e533c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '33c1bc359e7d6687999f8c26148e533c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The range of the Southern Africa'),
            ('B', 'The range of the North America'),
            ('C', 'The range of the South America'),
            ('D', 'The great watershed of the eastern Australia')
           ) as v(label, option_text)
 where q.question_hash = '33c1bc359e7d6687999f8c26148e533c'
on conflict (question_id, label) do nothing;

-- geography | world-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''Sahara'' desert:',
    'The Sahara, at about 9.2 million square kilometres, is the largest hot desert and it is crossed by the Atlas and the Ahaggar and the Tibesti.',
    'medium',
    'Standard Reference',
    null,
    'b7b506c3e0bc6dee8e65a5dfe65d37a6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'b7b506c3e0bc6dee8e65a5dfe65d37a6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Covers about 9.2 million square kilometres and it is the largest hot desert'),
            ('B', 'Is the largest of the deserts'),
            ('C', 'Is the largest of the cold deserts'),
            ('D', 'It is in the Southern Hemisphere')
           ) as v(label, option_text)
 where q.question_hash = 'b7b506c3e0bc6dee8e65a5dfe65d37a6'
on conflict (question_id, label) do nothing;

-- geography | world-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''Gobi'' desert:',
    'The Gobi, a cold desert of the Mongolia and the northern China, is about 1.3 million square kilometres and it is the sixth largest of the world.',
    'easy',
    'Standard Reference',
    null,
    'ce76d5ed7f65744cbc172a8a83f7a40d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ce76d5ed7f65744cbc172a8a83f7a40d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the cold desert of the Mongolia and the northern China'),
            ('B', 'Is the largest of the hot deserts'),
            ('C', 'Is in the Southern Hemisphere'),
            ('D', 'It is the desert of the Africa')
           ) as v(label, option_text)
 where q.question_hash = 'ce76d5ed7f65744cbc172a8a83f7a40d'
on conflict (question_id, label) do nothing;

-- geography | world-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''Atacama'' desert:',
    'The Atacama, in the Chile, is the driest of the deserts of the world and the Atacama Desert of the Arica has never recorded a rainfall.',
    'medium',
    'Standard Reference',
    null,
    'e6252c84d8e8692678ac178cb0d2f259'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e6252c84d8e8692678ac178cb0d2f259'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the largest of the hot deserts'),
            ('B', 'It is in the Africa'),
            ('C', 'It is the coldest of the deserts'),
            ('D', 'Is the driest of the world and it is in the South America')
           ) as v(label, option_text)
 where q.question_hash = 'e6252c84d8e8692678ac178cb0d2f259'
on conflict (question_id, label) do nothing;

-- geography | world-geography | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''Taklamakan'' desert:',
    'The Taklamakan, in the Xinjiang of China, is one of the largest of the shifting sand deserts of the world and it is crossed by the Silk Road.',
    'hard',
    'Standard Reference',
    null,
    'a8294db634ba34cbf1283dedf5f6abc1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'a8294db634ba34cbf1283dedf5f6abc1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is in the Southern Africa'),
            ('B', 'It is the largest of the cold deserts of the world'),
            ('C', 'Is in the Xinjiang of China and is one of the largest of the shifting sand deserts'),
            ('D', 'Is in the Sahara')
           ) as v(label, option_text)
 where q.question_hash = 'a8294db634ba34cbf1283dedf5f6abc1'
on conflict (question_id, label) do nothing;

-- geography | world-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'Which of the following is correct in the case of the Ladakh?',
    'The Ladakh, at over 3,000 metres, is a cold desert of the Great Himalaya and it is a part of the rain shadow of the Karakoram.',
    'medium',
    'Standard Reference',
    null,
    'cca6e2db363a30b70c835949c733c606'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'cca6e2db363a30b70c835949c733c606'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is the largest of the hot deserts'),
            ('B', 'Is a cold desert of the Ladakh in the Great Himalaya'),
            ('C', 'It is a hot desert of the Rajasthan'),
            ('D', 'It is in the Deccan')
           ) as v(label, option_text)
 where q.question_hash = 'cca6e2db363a30b70c835949c733c606'
on conflict (question_id, label) do nothing;

-- geography | world-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''Caspian Sea'' is:',
    'The Caspian Sea, the largest of the inland bodies of water at about 3.7 lakh square kilometres, is a landlocked saline lake and it is the largest of the saline lakes after the Dead Sea.',
    'medium',
    'Standard Reference',
    null,
    '838c91f70bbc98820f0e1280df248eb2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '838c91f70bbc98820f0e1280df248eb2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The largest of the oceans'),
            ('B', 'A part of the Pacific'),
            ('C', 'The smallest of the seas'),
            ('D', 'The largest of the inland seas and it is a landlocked saline water body')
           ) as v(label, option_text)
 where q.question_hash = '838c91f70bbc98820f0e1280df248eb2'
on conflict (question_id, label) do nothing;

-- geography | world-geography | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''Aral Sea'' is:',
    'The Aral Sea, between the Kazakhstan and the Uzbekistan, has almost dried up because of the diversion of the rivers for the cotton irrigation.',
    'hard',
    'Standard Reference',
    null,
    '45fec23013a8d2a94047996ff835810f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '45fec23013a8d2a94047996ff835810f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A part of the Pacific'),
            ('B', 'The deepest of the seas'),
            ('C', 'The salt lake of the Central Asia that has almost dried up because of the irrigation'),
            ('D', 'The largest of the inland seas')
           ) as v(label, option_text)
 where q.question_hash = '45fec23013a8d2a94047996ff835810f'
on conflict (question_id, label) do nothing;

-- geography | world-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''Great Salt Lake'' is:',
    'The Great Salt Lake of the Utah is a salt lake and it is the largest of the salt lakes of the Western Hemisphere.',
    'medium',
    'Standard Reference',
    null,
    'ce8e35c211240a386f8b8ee773c37cce'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'ce8e35c211240a386f8b8ee773c37cce'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A part of the Arctic Ocean'),
            ('B', 'The salt lake of the Utah in the western United States'),
            ('C', 'A part of the Pacific'),
            ('D', 'The largest of the fresh water lakes')
           ) as v(label, option_text)
 where q.question_hash = 'ce8e35c211240a386f8b8ee773c37cce'
on conflict (question_id, label) do nothing;

-- geography | world-geography | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''Lake Baikal'' of the Siberia:',
    'The Baikal, at 1,642 metres, is the deepest of the lakes and the largest of the fresh water lakes by the volume and it holds a fifth of the unfrozen fresh water of the world.',
    'hard',
    'Standard Reference',
    null,
    'd49ff82f53e3c551e96ad389db1334fd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd49ff82f53e3c551e96ad389db1334fd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the deepest and the largest of the fresh water lakes and it holds a fifth of the unfrozen fresh water'),
            ('B', 'Is the largest of the salt lakes'),
            ('C', 'Is the largest of the artificial lakes'),
            ('D', 'It is in the Scandinavia')
           ) as v(label, option_text)
 where q.question_hash = 'd49ff82f53e3c551e96ad389db1334fd'
on conflict (question_id, label) do nothing;

-- geography | world-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''Great Bear Lake'' and the ''Great Slave Lake'' are:',
    'The Great Bear and the Great Slave are the two large lakes of the north-western Canada and the Great Slave is the deepest of the North America.',
    'medium',
    'Standard Reference',
    null,
    'a6ed52caf48450de581c113399b6542b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a6ed52caf48450de581c113399b6542b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The two great lakes of the Canada'),
            ('B', 'The lakes of the Russia'),
            ('C', 'The lakes of the Africa'),
            ('D', 'The lakes of the South America')
           ) as v(label, option_text)
 where q.question_hash = 'a6ed52caf48450de581c113399b6542b'
on conflict (question_id, label) do nothing;

-- geography | world-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''Lake Titicaca'':',
    'The Titicaca, on the border of the Peru and the Bolivia, is the largest of the fresh water lakes of the South America and the highest of the navigable lakes of the world.',
    'medium',
    'Standard Reference',
    null,
    'e0819cca3657d677e9cc8730e93b2ac0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e0819cca3657d677e9cc8730e93b2ac0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is in the Africa'),
            ('B', 'It is a salt lake'),
            ('C', 'It is the deepest of the world'),
            ('D', 'Is the largest of the fresh water lakes of the South America and it is the highest of the navigable lakes')
           ) as v(label, option_text)
 where q.question_hash = 'e0819cca3657d677e9cc8730e93b2ac0'
on conflict (question_id, label) do nothing;

-- geography | world-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''Lake Victoria'' is:',
    'The Victoria, about 6,900 square kilometres, is the largest of the African lakes and the second of the world by the area, and the Nile flows out of it.',
    'easy',
    'Standard Reference',
    null,
    '132addcbe4db79c98a5ce69cc7cde843'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '132addcbe4db79c98a5ce69cc7cde843'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A salt lake of the Africa'),
            ('B', 'It is in the South America'),
            ('C', 'The largest of the African lakes and the second of the world by the area'),
            ('D', 'The deepest of the African lakes')
           ) as v(label, option_text)
 where q.question_hash = '132addcbe4db79c98a5ce69cc7cde843'
on conflict (question_id, label) do nothing;

-- geography | world-geography | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''Lake Tanganyika'' is:',
    'The Tanganyika is the second largest of the African lakes and the second deepest of the world and it has the unique species of the cichlids.',
    'hard',
    'Standard Reference',
    null,
    '4b32a32198b20dc7f5d00bfa65ed8c0e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '4b32a32198b20dc7f5d00bfa65ed8c0e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is in the South America'),
            ('B', 'The second largest of the African lakes and the deepest of the world with the unique fish species'),
            ('C', 'The largest of the African lakes'),
            ('D', 'A salt lake of the Africa')
           ) as v(label, option_text)
 where q.question_hash = '4b32a32198b20dc7f5d00bfa65ed8c0e'
on conflict (question_id, label) do nothing;

-- geography | world-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''Yangtze'' is:',
    'The Yangtze, the longest river of the Asia at about 6,300 km, flows into the East China Sea and the Three Gorges is the largest dam project of the world.',
    'medium',
    'Standard Reference',
    null,
    '170dc24517fa65faddfae8291dddb486'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '170dc24517fa65faddfae8291dddb486'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The longest river of the world'),
            ('B', 'It is a tributary of the Ganges'),
            ('C', 'It flows into the Bay of Bengal'),
            ('D', 'The longest river of the Asia at about 6,300 km and it flows into the East China Sea')
           ) as v(label, option_text)
 where q.question_hash = '170dc24517fa65faddfae8291dddb486'
on conflict (question_id, label) do nothing;

-- geography | world-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''Mekong'' river:',
    'The Mekong, about 4,900 km, flows through the China, the Myanmar, the Laos, the Thailand, the Cambodia and the Vietnam, and the delta is the most productive of the world.',
    'medium',
    'Standard Reference',
    null,
    '643aafe189ab51caef644a388fc13283'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '643aafe189ab51caef644a388fc13283'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It flows into the Arabian Sea'),
            ('B', 'Flows through the China and the six countries of the Indo-China peninsula'),
            ('C', 'Flows through the Brazil'),
            ('D', 'It is a tributary of the Ganges')
           ) as v(label, option_text)
 where q.question_hash = '643aafe189ab51caef644a388fc13283'
on conflict (question_id, label) do nothing;

-- geography | world-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''Danube'' river:',
    'The Danube, about 2,850 km, flows through the ten countries and the Black Sea and it is the most international of the rivers.',
    'medium',
    'Standard Reference',
    null,
    'fe5f43621d0e0171bee8633cbb0e790d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'fe5f43621d0e0171bee8633cbb0e790d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It flows into the Caspian Sea'),
            ('B', 'It is a tributary of the Volga'),
            ('C', 'Flows through the ten countries and the Black Sea and it is the most international of the rivers'),
            ('D', 'It is the longest of the Africa')
           ) as v(label, option_text)
 where q.question_hash = 'fe5f43621d0e0171bee8633cbb0e790d'
on conflict (question_id, label) do nothing;

-- geography | world-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'Which of the following statements regarding the Rhine is correct?',
    'The Rhine, about 1,230 km, flows through the Switzerland, the Germany and the Netherlands and the Ruhr valley of the Germany is the most industrial of the Europe.',
    'medium',
    'Standard Reference',
    null,
    'f0c0818ab3d950625ba4a70f24b5c27c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f0c0818ab3d950625ba4a70f24b5c27c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Flows through the Switzerland, the Germany and the Netherlands'),
            ('B', 'Flows through the France only'),
            ('C', 'It is the longest of the Europe'),
            ('D', 'It flows into the Black Sea')
           ) as v(label, option_text)
 where q.question_hash = 'f0c0818ab3d950625ba4a70f24b5c27c'
on conflict (question_id, label) do nothing;

-- geography | world-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''Nile'' is:',
    'The Nile, about 6,650 km, is the longest river of the world and the Blue Nile, the Atbara and the Sobat are the chief of the tributaries.',
    'easy',
    'Standard Reference',
    null,
    'bed444fb08d8b51d1f9d42df97948229'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'bed444fb08d8b51d1f9d42df97948229'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The longest of the Asia'),
            ('B', 'It is the most polluted of the rivers'),
            ('C', 'It flows into the Red Sea'),
            ('D', 'The longest river of the world at about 6,650 km and the Blue Nile is its main tributary')
           ) as v(label, option_text)
 where q.question_hash = 'bed444fb08d8b51d1f9d42df97948229'
on conflict (question_id, label) do nothing;

-- geography | world-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''Congo'' river:',
    'The Congo, at about 4,700 km, is the second longest of the world and the deepest with the immense discharge and it drains the second largest of the rainforests.',
    'medium',
    'Standard Reference',
    null,
    '3eae357c3b7abcbb02bc48466053adef'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '3eae357c3b7abcbb02bc48466053adef'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It flows into the Atlantic from the east'),
            ('B', 'Is the second longest of the world and the deepest with the immense discharge'),
            ('C', 'Is the longest of the world'),
            ('D', 'It is the most polluted of the rivers')
           ) as v(label, option_text)
 where q.question_hash = '3eae357c3b7abcbb02bc48466053adef'
on conflict (question_id, label) do nothing;

-- geography | world-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'Which of the following statements regarding the Amazon is correct?',
    'The Amazon discharges about a fifth of the river water of the world into the Atlantic and the rainforest of the Amazon is called the lung of the planet.',
    'easy',
    'Standard Reference',
    null,
    'a4a30dd7c87a8adf33c85f4b9240e4fe'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a4a30dd7c87a8adf33c85f4b9240e4fe'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Discharges about a fifth of the river water of the world into the Atlantic'),
            ('B', 'Is the longest of the world'),
            ('C', 'It is the most polluted of the rivers'),
            ('D', 'It is the largest of the salt water rivers')
           ) as v(label, option_text)
 where q.question_hash = 'a4a30dd7c87a8adf33c85f4b9240e4fe'
on conflict (question_id, label) do nothing;

-- geography | world-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'Consider the following statements. Which of them is correct with regard to the Ganges?',
    'The Ganga, about 2,525 km, is the longest of the rivers of the India and it is the most sacred and the most polluted of the Indian rivers.',
    'easy',
    'Standard Reference',
    null,
    '2acb1b37a7694ebf5ed2cf3cde5ce4f0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '2acb1b37a7694ebf5ed2cf3cde5ce4f0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is the most polluted of the rivers of the India'),
            ('B', 'It flows into the Arabian Sea'),
            ('C', 'Is the longest of the rivers of the India and the most sacred'),
            ('D', 'It is the longest of the world')
           ) as v(label, option_text)
 where q.question_hash = '2acb1b37a7694ebf5ed2cf3cde5ce4f0'
on conflict (question_id, label) do nothing;

-- geography | world-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'Which of the following statements is/are correct in relation to the Yamuna?',
    'The Yamuna, about 1,376 km, is the longest tributary of the Ganga and it is the most polluted of the rivers of the India.',
    'medium',
    'Standard Reference',
    null,
    '57dfe8d768c879df9de3744ac3a875a5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '57dfe8d768c879df9de3744ac3a875a5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the longest tributary of the Ganga and it is the most polluted of the rivers of the India'),
            ('B', 'It is the longest of the India'),
            ('C', 'It flows into the Arabian Sea'),
            ('D', 'It is the main tributary of the Brahmaputra')
           ) as v(label, option_text)
 where q.question_hash = '57dfe8d768c879df9de3744ac3a875a5'
on conflict (question_id, label) do nothing;

-- geography | world-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'Which of the following statements regarding the Damodar is correct?',
    'The Damodar is known as the Sorrow of Bengal and it was the first of the multipurpose river valley projects with the Damodar Valley Corporation of 1947.',
    'easy',
    'Standard Reference',
    null,
    '23bbcee45f026965ac3211cfb600ce87'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '23bbcee45f026965ac3211cfb600ce87'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It flows into the Arabian Sea'),
            ('B', 'Is known as the Sorrow of Bengal and the first of the multipurpose river valley projects'),
            ('C', 'Is the longest of the Ganga'),
            ('D', 'It is the Sorrow of Assam')
           ) as v(label, option_text)
 where q.question_hash = '23bbcee45f026965ac3211cfb600ce87'
on conflict (question_id, label) do nothing;

-- geography | world-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'Which of the following statements is/are correct in relation to the Indus?',
    'The Indus, with the Jhelum, the Chenab, the Ravi, the Beas and the Sutlej, forms the Indus system and the Indus is the most important of them.',
    'easy',
    'Standard Reference',
    null,
    '279f798ff01cc9569b09a5a0e6aff45f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '279f798ff01cc9569b09a5a0e6aff45f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is the longest of the India'),
            ('B', 'It is the lifeline of the Bengal'),
            ('C', 'It flows into the Bay of Bengal'),
            ('D', 'Is one of the five rivers of the Punjab and it is the most important of the Indus system')
           ) as v(label, option_text)
 where q.question_hash = '279f798ff01cc9569b09a5a0e6aff45f'
on conflict (question_id, label) do nothing;

-- geography | world-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'In the context of the fourth longest, which of the following is correct?',
    'The Mahanadi, about 851 km, is the fourth longest river of the India and the largest of the east flowing rivers.',
    'easy',
    'Standard Reference',
    null,
    '7409aac8a9aa8273275b42e43e26721d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '7409aac8a9aa8273275b42e43e26721d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is the largest of the west flowing rivers'),
            ('B', 'It flows into the Arabian Sea'),
            ('C', 'Is the fourth longest of the India and the largest of the east flowing rivers'),
            ('D', 'It is the longest of the India')
           ) as v(label, option_text)
 where q.question_hash = '7409aac8a9aa8273275b42e43e26721d'
on conflict (question_id, label) do nothing;

-- geography | world-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'Which of the following statements regarding the a west flowing river is correct?',
    'The Sharavathi, with the Jog Falls, is one of the west flowing rivers of the Karnataka and the Kali and the Varahi are the others.',
    'medium',
    'Standard Reference',
    null,
    '116e58c8bed555724c7c1c499ab36903'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '116e58c8bed555724c7c1c499ab36903'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is the longest of the peninsular rivers'),
            ('B', 'It flows into the Bay of Bengal'),
            ('C', 'Is a west flowing river of the Karnataka with the Jog Falls'),
            ('D', 'It is a tributary of the Kaveri')
           ) as v(label, option_text)
 where q.question_hash = '116e58c8bed555724c7c1c499ab36903'
on conflict (question_id, label) do nothing;

-- geography | world-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'Consider the following statements. Which of them is correct with regard to the Is the second longest of the peninsular rivers?',
    'The Krishna, about 1,400 km, is the second longest of the peninsular rivers and it rises at the Mahabaleshwar in the Western Ghats.',
    'medium',
    'Standard Reference',
    null,
    '8ed55c61a8ccc54d502b24fc6b3239a1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '8ed55c61a8ccc54d502b24fc6b3239a1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the second longest of the peninsular rivers and it rises at the Mahabaleshwar'),
            ('B', 'It is the longest of the peninsular rivers'),
            ('C', 'It is the largest of the west flowing rivers'),
            ('D', 'It flows into the Arabian Sea')
           ) as v(label, option_text)
 where q.question_hash = '8ed55c61a8ccc54d502b24fc6b3239a1'
on conflict (question_id, label) do nothing;

-- geography | world-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'Which of the following statements is/are correct in relation to the Godavari?',
    'The Godavari, about 1,465 km, is the longest of the peninsular rivers and it rises at the Trimbakeshwar near the Nashik in the Western Ghats.',
    'easy',
    'Standard Reference',
    null,
    'efe8042c3e783953858f598820a6f3c9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'efe8042c3e783953858f598820a6f3c9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is the second longest of the peninsular rivers'),
            ('B', 'It is a west flowing river'),
            ('C', 'It flows into the Arabian Sea'),
            ('D', 'Is the longest of the peninsular rivers and it rises at the Trimbakeshwar')
           ) as v(label, option_text)
 where q.question_hash = 'efe8042c3e783953858f598820a6f3c9'
on conflict (question_id, label) do nothing;

-- geography | world-geography | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The Betas of the Andaman are:',
    'The Betas, the extinct volcanic islands of the Andaman, have the wide caldera lake and they are the remnants of the volcanic activity.',
    'hard',
    'Standard Reference',
    null,
    '2adff6764922cfe99c389f200e34bdd0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '2adff6764922cfe99c389f200e34bdd0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'in the Gulf of Mannar'),
            ('B', 'the extinct volcanic islands of the archipelago'),
            ('C', 'the coral islands of the Lakshadweep'),
            ('D', 'the highest islands of the world')
           ) as v(label, option_text)
 where q.question_hash = '2adff6764922cfe99c389f200e34bdd0'
on conflict (question_id, label) do nothing;

-- geography | world-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'Which of the following statements is/are correct in relation to the Lakshadweep?',
    'The Lakshadweep, the coral islands of the Arabian Sea, has ten islands and the Kavaratti is the largest and the capital is the Kavaratti.',
    'medium',
    'Standard Reference',
    null,
    '18840c7b1f3b24f77d4db7b7b96af988'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '18840c7b1f3b24f77d4db7b7b96af988'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is the coral archipelago of the Bay of Bengal'),
            ('B', 'It is a part of the Andaman group'),
            ('C', 'Is the coral archipelago of the Arabian Sea with the ten islands and the Kavaratti as the largest'),
            ('D', 'It is the volcanic archipelago of the Bay of Bengal')
           ) as v(label, option_text)
 where q.question_hash = '18840c7b1f3b24f77d4db7b7b96af988'
on conflict (question_id, label) do nothing;

-- geography | world-geography | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''Minicoy'' of the Lakshadweep:',
    'The Minicoy, the southernmost of the Lakshadweep, is inhabited by the Maldivians who had migrated from the Maldives and they speak the Mahl.',
    'hard',
    'Standard Reference',
    null,
    '3347b7a49ffc2ff55dda428a9282dc95'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '3347b7a49ffc2ff55dda428a9282dc95'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is uninhabited'),
            ('B', 'Is the southernmost island and it is inhabited by the Maldivians who speak Mahl'),
            ('C', 'It is the largest island of the archipelago'),
            ('D', 'It is an extinct volcano')
           ) as v(label, option_text)
 where q.question_hash = '3347b7a49ffc2ff55dda428a9282dc95'
on conflict (question_id, label) do nothing;

-- geography | world-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'Which of the following statements is/are correct in relation to the volcanic coral islands?',
    'The Andaman is volcanic and the Nicobar is coral and they are in the Bay of Bengal, and the islands were used by the British as the penal colony.',
    'easy',
    'Standard Reference',
    null,
    'fb0edd38c597da7c61336458c87afb9f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'fb0edd38c597da7c61336458c87afb9f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the coral islands of the Arabian Sea'),
            ('B', 'in the Gulf of Mannar'),
            ('C', 'the coral islands of the Palk Strait'),
            ('D', 'the volcanic and the coral islands of the Bay of Bengal')
           ) as v(label, option_text)
 where q.question_hash = 'fb0edd38c597da7c61336458c87afb9f'
on conflict (question_id, label) do nothing;

-- geography | world-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The Great Nicobar is:',
    'The Great Nicobar has the Indira Point, the southernmost point of the Indian union, and theobar is the largest of the Nicobar group.',
    'medium',
    'Standard Reference',
    null,
    '491a35ad44ce6fc5cb95d51cc62d0e62'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '491a35ad44ce6fc5cb95d51cc62d0e62'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the southernmost point of the Indian union and it has the Indira Point'),
            ('B', 'the northernmost island'),
            ('C', 'the largest island of the Andaman'),
            ('D', 'uninhabited')
           ) as v(label, option_text)
 where q.question_hash = '491a35ad44ce6fc5cb95d51cc62d0e62'
on conflict (question_id, label) do nothing;

-- geography | world-geography | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''Sagar Island'' of the West Bengal:',
    'The Sagar Island, at about 100 km in length, is the biggest of the sandbar islands of the world and it is in the Bay of Bengal.',
    'hard',
    'Standard Reference',
    null,
    '711dbe03f4a634bceecd28800e35d380'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '711dbe03f4a634bceecd28800e35d380'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the biggest of the sandbar islands of the world'),
            ('B', 'It is a coral island'),
            ('C', 'It is in the Bay of Bengal of the Tamil Nadu'),
            ('D', 'It is an extinct volcano')
           ) as v(label, option_text)
 where q.question_hash = '711dbe03f4a634bceecd28800e35d380'
on conflict (question_id, label) do nothing;

-- geography | world-geography | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'Which of the following statements regarding the Diu is correct?',
    'The Diu is an island off the Kathiawar peninsula of the Gujarat and it was a Portuguese possession until 1961 and it is now a part of the Gujarat.',
    'hard',
    'Standard Reference',
    null,
    '3c90d6fd1a42924ba508ce1ca76455c1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '3c90d6fd1a42924ba508ce1ca76455c1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a coral island of the Lakshadweep'),
            ('B', 'It is in the Gulf of Mannar'),
            ('C', 'It is an extinct volcano of the Bay of Bengal'),
            ('D', 'Is a Diu island of the Kathiawar and it was a Portuguese possession')
           ) as v(label, option_text)
 where q.question_hash = '3c90d6fd1a42924ba508ce1ca76455c1'
on conflict (question_id, label) do nothing;

-- geography | world-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''Elephanta'' of the Mumbai:',
    'The Elephanta, the Gharapuri island of the Mumbai harbour, has the famous rock-cut caves of the Shiva and it is a World Heritage site.',
    'medium',
    'Standard Reference',
    null,
    'dbcc8930db3b3fbe0bb3ce33e3375988'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'dbcc8930db3b3fbe0bb3ce33e3375988'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is in the Gulf of Mannar'),
            ('B', 'It is an extinct volcano'),
            ('C', 'Is the island with the rock-cut caves of the Shiva and it is a World Heritage site'),
            ('D', 'It is a coral island of the Lakshadweep')
           ) as v(label, option_text)
 where q.question_hash = 'dbcc8930db3b3fbe0bb3ce33e3375988'
on conflict (question_id, label) do nothing;

-- geography | world-geography | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''Ritchie''s Archipelago'' of the Andaman:',
    'The Ritchie''s Archipelago, in the south-east of the Andaman, has the Barren Island, the only active volcano of the Asia and the Indian Ocean region.',
    'hard',
    'Standard Reference',
    null,
    '8a456b6f25868ab03cfe93b365d4347a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '8a456b6f25868ab03cfe93b365d4347a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a group of the atolls'),
            ('B', 'Is the group of the islands in the south-east of the Andaman with the extinct volcanoes'),
            ('C', 'It is a group of the coral islands'),
            ('D', 'It is a group of the barrier islands')
           ) as v(label, option_text)
 where q.question_hash = '8a456b6f25868ab03cfe93b365d4347a'
on conflict (question_id, label) do nothing;

-- geography | world-geography | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''Barren Island'' of the Andaman:',
    'The Barren Island, in the Ritchie''s Archipelago of the Andaman, is the only active volcano of the Asia and the Indian Ocean and it was the eruption of 2008 that was noticed.',
    'hard',
    'Standard Reference',
    null,
    '1b02c5fe3b5bd34631180198bd4a148e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '1b02c5fe3b5bd34631180198bd4a148e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a coral island'),
            ('B', 'It is a sandbar'),
            ('C', 'It is uninhabited permanently'),
            ('D', 'Is the only active volcano of the Asia and the Indian Ocean region')
           ) as v(label, option_text)
 where q.question_hash = '1b02c5fe3b5bd34631180198bd4a148e'
on conflict (question_id, label) do nothing;

-- geography | climate-and-weather | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'climate-and-weather'),
    'The India Meteorological Department was established in:',
    'The India Meteorological Department, the national agency for weather and climate services, was established in 1875 and today functions from its headquarters in New Delhi with regional offices across the country.',
    'easy',
    'NCERT Class XI',
    null,
    'ffac8e992b9783c54ed9c41b6e6596e6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'ffac8e992b9783c54ed9c41b6e6596e6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1951, with its headquarters at Mumbai'),
            ('B', '1875, with its headquarters at New Delhi'),
            ('C', '1925, with its headquarters at Pune'),
            ('D', '1901, with its headquarters at Kolkata')
           ) as v(label, option_text)
 where q.question_hash = 'ffac8e992b9783c54ed9c41b6e6596e6'
on conflict (question_id, label) do nothing;

-- geography | climate-and-weather | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'climate-and-weather'),
    'The normal date of the onset of the South-West Monsoon over the Kerala coast is:',
    'The monsoon normally sets in over the Kerala coast on 1 June, and the India Meteorological Department declares the onset after a network of stations reports the required rainfall and wind pattern.',
    'easy',
    'NCERT Class XI',
    null,
    'a4ff22b2263f2ca9e8fa30d6ba39d48b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'a4ff22b2263f2ca9e8fa30d6ba39d48b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '15 June'),
            ('B', '21 May'),
            ('C', '1 June'),
            ('D', '15 May')
           ) as v(label, option_text)
 where q.question_hash = 'a4ff22b2263f2ca9e8fa30d6ba39d48b'
on conflict (question_id, label) do nothing;

-- geography | climate-and-weather | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'climate-and-weather'),
    'The two branches of the South-West Monsoon over the Indian subcontinent are the:',
    'The Arabian Sea branch strikes the Western Ghats and the Bay of Bengal branch advances up the Ganga plain, and the two together cause more than 90 per cent of India''s annual rainfall.',
    'easy',
    'NCERT Class XI',
    null,
    '7d0d5218b147269f62d3829961cc51fa'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '7d0d5218b147269f62d3829961cc51fa'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Arabian Sea branch and the Bay of Bengal branch'),
            ('B', 'Mahanadi branch and the Ganga branch'),
            ('C', 'Western Disturbance branch and the Bay of Bengal branch'),
            ('D', 'Himalayan branch and the Deccan branch')
           ) as v(label, option_text)
 where q.question_hash = '7d0d5218b147269f62d3829961cc51fa'
on conflict (question_id, label) do nothing;

-- geography | climate-and-weather | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'climate-and-weather'),
    'A monsoon season is described as ''normal'' by the IMD when the seasonal rainfall is:',
    'The IMD classifies a monsoon season as normal when the seasonal rainfall is within 96 to 104 per cent of the long period average, with above normal and below normal departures outside that band.',
    'easy',
    'Standard Reference',
    null,
    '4b8e974b662975b28a695bc43ba23f88'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '4b8e974b662975b28a695bc43ba23f88'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'exactly equal to the long period average'),
            ('B', 'between 80 and 120 per cent of the long period average'),
            ('C', 'between 96 and 104 per cent of the long period average'),
            ('D', 'between 90 and 110 per cent of the long period average')
           ) as v(label, option_text)
 where q.question_hash = '4b8e974b662975b28a695bc43ba23f88'
on conflict (question_id, label) do nothing;

-- geography | climate-and-weather | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'climate-and-weather'),
    'The long period average of all-India rainfall used by the IMD for 1971-2020 is approximately:',
    'The long period average of all-India rainfall for the 1971-2020 period is about 87 cm, and the actual monsoon rainfall is always compared with this benchmark to assess its performance.',
    'easy',
    'IMD',
    null,
    'd737e6b5b937f18868e5a8a26625a71a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd737e6b5b937f18868e5a8a26625a71a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '87 cm'),
            ('B', '120 cm'),
            ('C', '100 cm'),
            ('D', '75 cm')
           ) as v(label, option_text)
 where q.question_hash = 'd737e6b5b937f18868e5a8a26625a71a'
on conflict (question_id, label) do nothing;

-- geography | climate-and-weather | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'climate-and-weather'),
    'The retreating monsoon in October and November brings most of the winter rain to:',
    'As the monsoon retreats from the north-west towards the southern peninsula, the rain-bearing winds reverse over the Bay of Bengal and bring the main share of the winter rain to Tamil Nadu and coastal Andhra Pradesh.',
    'easy',
    'NCERT Class XI',
    null,
    '1938fbecef9dcc4cd3204eed4943cd48'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '1938fbecef9dcc4cd3204eed4943cd48'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Assam and Meghalaya'),
            ('B', 'Tamil Nadu and coastal Andhra Pradesh'),
            ('C', 'Punjab and Haryana'),
            ('D', 'Rajasthan and Gujarat')
           ) as v(label, option_text)
 where q.question_hash = '1938fbecef9dcc4cd3204eed4943cd48'
on conflict (question_id, label) do nothing;

-- geography | climate-and-weather | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'climate-and-weather'),
    'A ''cold wave'' is declared by the IMD when the minimum temperature falls:',
    'The IMD declares a cold wave when the minimum temperature in a plain station falls to 4.5 degrees Celsius or below the normal minimum, and the criteria are stricter for hill stations.',
    'easy',
    'IMD',
    null,
    'b7b20129ba54f14345c81ffc909a3bff'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'b7b20129ba54f14345c81ffc909a3bff'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2 degrees Celsius or more below the normal minimum temperature'),
            ('B', '6 degrees Celsius or more below the normal minimum temperature'),
            ('C', '4.5 degrees Celsius or more above the normal minimum temperature'),
            ('D', '4.5 degrees Celsius or more below the normal minimum temperature')
           ) as v(label, option_text)
 where q.question_hash = 'b7b20129ba54f14345c81ffc909a3bff'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'The Planning Commission recognised how many agro-climatic regions in India?',
    'The Planning Commission divided India into eight agro-climatic regions on the basis of rainfall, temperature and soil characteristics, and the classification remains widely used for planning cropping patterns.',
    'easy',
    'Standard Reference',
    null,
    'fb28951b7fecca7953abde06ea547b31'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'fb28951b7fecca7953abde06ea547b31'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Eight'),
            ('B', 'Twenty'),
            ('C', 'Five'),
            ('D', 'Twelve')
           ) as v(label, option_text)
 where q.question_hash = 'fb28951b7fecca7953abde06ea547b31'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'The state with the largest area under the rice-wheat cropping system in India is:',
    'Haryana has the largest area under the intensive rice-wheat system, supported by assured irrigation in the Indus-Ganga plain, and the cycle is known as the ''Haryana model'' of cropping.',
    'easy',
    'Standard Reference',
    null,
    '83e3e144b36dd05e53c46fb92a9d4eb8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '83e3e144b36dd05e53c46fb92a9d4eb8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'West Bengal'),
            ('B', 'Punjab'),
            ('C', 'Uttar Pradesh'),
            ('D', 'Haryana')
           ) as v(label, option_text)
 where q.question_hash = '83e3e144b36dd05e53c46fb92a9d4eb8'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'The ''Ahar'' cropping system is associated with:',
    'In the Ahar system of eastern India, especially Bihar and eastern Uttar Pradesh, the winter rice is sown in the monsoon season on the lowlands using the residual moisture, and wheat follows in the rabi season.',
    'easy',
    'Standard Reference',
    null,
    '8a6013127792a5d6af013a4ac2dada4d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '8a6013127792a5d6af013a4ac2dada4d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the coastal saline soils of Gujarat'),
            ('B', 'the dry farming tracts of Rajasthan'),
            ('C', 'Bihar and eastern Uttar Pradesh, where rice is grown in the monsoon and wheat in the winter'),
            ('D', 'the flood plains of Assam')
           ) as v(label, option_text)
 where q.question_hash = '8a6013127792a5d6af013a4ac2dada4d'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'The rabi season of the Indian cropping year is:',
    'The rabi crops, chiefly wheat, gram and mustard, are sown in the cold season from October and harvested in March and April, while kharif crops are sown with the onset of the monsoon.',
    'easy',
    'NCERT Class XII',
    null,
    'e558f7daf69a5e9250f8c418f23c2b05'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e558f7daf69a5e9250f8c418f23c2b05'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'June to September'),
            ('B', 'October to March'),
            ('C', 'March to June'),
            ('D', 'November to February')
           ) as v(label, option_text)
 where q.question_hash = 'e558f7daf69a5e9250f8c418f23c2b05'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'The main kharif crops of India include rice, maize, jowar, bajra, cotton, jute, groundnut and:',
    'Soybean is a kharif oilseed sown with the onset of the monsoon, whereas wheat, mustard and gram are rabi crops that need the cool season.',
    'easy',
    'NCERT Class XII',
    null,
    'c99730a3587b9c2204fd8aa59ddcef34'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'c99730a3587b9c2204fd8aa59ddcef34'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'soybean'),
            ('B', 'gram'),
            ('C', 'wheat'),
            ('D', 'mustard')
           ) as v(label, option_text)
 where q.question_hash = 'c99730a3587b9c2204fd8aa59ddcef34'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'In the Indian cropping calendar, mustard is classified as a:',
    'Mustard, a rabi oilseed, is the dominant edible oil crop of India, whereas groundnut and soybean are kharif oilseeds and sunflower is largely a rabi crop in some regions.',
    'easy',
    'NCERT Class XII',
    null,
    '1bd6e68a30b3d31e49ea3c1f32b6d445'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '1bd6e68a30b3d31e49ea3c1f32b6d445'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Soybean'),
            ('B', 'Sunflower'),
            ('C', 'Mustard'),
            ('D', 'Groundnut')
           ) as v(label, option_text)
 where q.question_hash = '1bd6e68a30b3d31e49ea3c1f32b6d445'
on conflict (question_id, label) do nothing;

-- geography | human-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'human-geography'),
    'The Census of India 2021 could not be completed in the scheduled year because of:',
    'The house listing and the first phase of enumeration were completed, but the pandemic forced a postponement of the population enumeration, which was later completed and released in stages from 2022.',
    'easy',
    'Standard Reference',
    null,
    'f91b068fd47bda164d49f58d07893990'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f91b068fd47bda164d49f58d07893990'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a Supreme Court order'),
            ('B', 'the COVID-19 pandemic'),
            ('C', 'a failure of the delimitation exercise'),
            ('D', 'a change in the definition of the household')
           ) as v(label, option_text)
 where q.question_hash = 'f91b068fd47bda164d49f58d07893990'
on conflict (question_id, label) do nothing;

-- geography | human-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'human-geography'),
    'The earliest census in India that was both comprehensive and synchronous was conducted in:',
    'The non-synchronous census of 1872 was the first attempt, but the first systematic synchronous census, with a five-yearly cycle and a population of about 11.3 per cent, was held in 1881.',
    'medium',
    'Standard Reference',
    null,
    '3a29aada9bf041f5035f24299311bb6a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '3a29aada9bf041f5035f24299311bb6a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1872'),
            ('B', '1891'),
            ('C', '1901'),
            ('D', '1881')
           ) as v(label, option_text)
 where q.question_hash = '3a29aada9bf041f5035f24299311bb6a'
on conflict (question_id, label) do nothing;

-- geography | human-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'human-geography'),
    'The most reliable source of data on births and deaths in India is the:',
    'The Sample Registration System, with its intensive and continuous enumeration, provides the most reliable and timely data on births and deaths, and it also provides the basis for the infant mortality rate.',
    'medium',
    'Standard Reference',
    null,
    '37e9bf5dffb35bcdf2c84d8227387903'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '37e9bf5dffb35bcdf2c84d8227387903'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sample Registration System'),
            ('B', 'Periodic Labour Force Survey'),
            ('C', 'Census of India'),
            ('D', 'National Family Health Survey')
           ) as v(label, option_text)
 where q.question_hash = '37e9bf5dffb35bcdf2c84d8227387903'
on conflict (question_id, label) do nothing;

-- geography | human-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'human-geography'),
    'Data on migration in India is collected by the:',
    'The National Sample Survey collects information on migration in its regular quinquennial rounds, since the census records place of last residence rather than place of migration.',
    'easy',
    'Standard Reference',
    null,
    '1373477f5aa5ebf9cb5b1f527be69b4e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '1373477f5aa5ebf9cb5b1f527be69b4e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Census of India every ten years'),
            ('B', 'Registrar General of India'),
            ('C', 'NITI Aayog'),
            ('D', 'National Sample Survey in its quinquennial rounds')
           ) as v(label, option_text)
 where q.question_hash = '1373477f5aa5ebf9cb5b1f527be69b4e'
on conflict (question_id, label) do nothing;

-- geography | human-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'human-geography'),
    'The numerically largest Scheduled Tribe in India is the:',
    'The Bhils are the largest Scheduled Tribe of India, spread across Rajasthan, Madhya Pradesh, Gujarat and Maharashtra, followed by the Gonds, Santhals, Munda and Tharu.',
    'medium',
    'Standard Reference',
    null,
    '0a1efe0fb440e73dacfb9cb09bb1ef3c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '0a1efe0fb440e73dacfb9cb09bb1ef3c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Warli'),
            ('B', 'Toda'),
            ('C', 'Bhil'),
            ('D', 'Gond')
           ) as v(label, option_text)
 where q.question_hash = '0a1efe0fb440e73dacfb9cb09bb1ef3c'
on conflict (question_id, label) do nothing;

-- geography | human-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'human-geography'),
    'The Census of India 2021 was to be held in two phases; the first of these is called the:',
    'The first phase, the house listing, records the number of structures and their use, while the second phase, the enumeration, counts every person, with the two together enabling the preparation of the population and housing data.',
    'medium',
    'Standard Reference',
    null,
    'a0c1cee4929cb6e9480c155536492291'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a0c1cee4929cb6e9480c155536492291'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'preparation of the electoral roll'),
            ('B', 'house listing'),
            ('C', 'enumeration'),
            ('D', 'delimitation')
           ) as v(label, option_text)
 where q.question_hash = 'a0c1cee4929cb6e9480c155536492291'
on conflict (question_id, label) do nothing;

-- geography | human-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'human-geography'),
    'The number of languages included in the Eighth Schedule of the Constitution is:',
    'The Eighth Schedule lists 22 languages after the 92nd Amendment of 2003 added Bhojpuri, Maithili, Dogri and Sanskrit to the original 18.',
    'easy',
    'Standard Reference',
    null,
    'bcdce898901876080f8eeca5f958f774'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'bcdce898901876080f8eeca5f958f774'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '26'),
            ('B', '24'),
            ('C', '18'),
            ('D', '22')
           ) as v(label, option_text)
 where q.question_hash = 'bcdce898901876080f8eeca5f958f774'
on conflict (question_id, label) do nothing;

-- geography | disaster-management | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'disaster-management'),
    'The flash flood in July 2013 that devastated Uttarakhand was triggered mainly by:',
    'Cloudbursts and the breach of a landslide-dammed lake at Chorabari near Kedarnath triggered the disaster in the Alaknanda and Mandakini catchments, which killed thousands of pilgrims and tourists.',
    'medium',
    'Standard Reference',
    null,
    '10ff36995d0784f9c5c04530e57f615e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '10ff36995d0784f9c5c04530e57f615e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the failure of a glacier lake dam in Sikkim'),
            ('B', 'a cloudburst in the Kedarnath and Chorabari valleys'),
            ('C', 'the failure of the Tehri dam'),
            ('D', 'an earthquake in the Himalaya')
           ) as v(label, option_text)
 where q.question_hash = '10ff36995d0784f9c5c04530e57f615e'
on conflict (question_id, label) do nothing;

-- geography | disaster-management | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'disaster-management'),
    'Cyclone Amphan, which struck the eastern coast of India in May 2020, originated in the:',
    'Amphan was a very severe cyclonic storm that formed over the Bay of Bengal, intensified rapidly before striking the Sundarbans and West Bengal and causing extensive damage in Kolkata and the Sundarbans region.',
    'medium',
    'Standard Reference',
    null,
    '7f2d286394e06631cf8671231dbc7a28'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '7f2d286394e06631cf8671231dbc7a28'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bay of Bengal'),
            ('B', 'Arabian Sea'),
            ('C', 'Indian Ocean south of Sri Lanka'),
            ('D', 'Gulf of Mannar')
           ) as v(label, option_text)
 where q.question_hash = '7f2d286394e06631cf8671231dbc7a28'
on conflict (question_id, label) do nothing;

-- geography | disaster-management | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'disaster-management'),
    'The ''Guidance on Management of Drought'' was issued in India in:',
    'The National Disaster Management Authority issued guidance on drought management in 2016, which lays down the responsibilities of the central and state governments for drought assessment, declaration and relief.',
    'hard',
    'Standard Reference',
    null,
    'ba70c5f66544b2316d6a6d25aef3a4c2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'ba70c5f66544b2316d6a6d25aef3a4c2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2018'),
            ('B', '2005'),
            ('C', '2016'),
            ('D', '2010')
           ) as v(label, option_text)
 where q.question_hash = 'ba70c5f66544b2316d6a6d25aef3a4c2'
on conflict (question_id, label) do nothing;

-- geography | disaster-management | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'disaster-management'),
    'Which of the following is NOT a function of the National Disaster Management Authority?',
    'The NDMA lays down policy and guidelines and approves the national plan, but the National Response Force is an armed force of the Ministry of Home Affairs, and the State Disaster Response Fund is administered by the central government with the states.',
    'medium',
    'Standard Reference',
    null,
    '09a8e39b3cd3bd233ffd8410e70b4e39'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '09a8e39b3cd3bd233ffd8410e70b4e39'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'approving the national disaster management plan'),
            ('B', 'issuing guidelines on the management of earthquakes and cyclones'),
            ('C', 'directing the operations of the National Response Force'),
            ('D', 'managing the finances of the State Disaster Response Fund')
           ) as v(label, option_text)
 where q.question_hash = '09a8e39b3cd3bd233ffd8410e70b4e39'
on conflict (question_id, label) do nothing;

-- geography | disaster-management | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'disaster-management'),
    'The ''Heat Wave Action Plan'' in India is intended to:',
    'Heat wave action plans provide for an early warning system, public awareness campaigns, heat shelters and the identification of vulnerable groups such as outdoor workers, elderly people and pregnant women.',
    'medium',
    'NDMA',
    null,
    '8ac824791196b1988bc2bd13e41d186c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '8ac824791196b1988bc2bd13e41d186c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'increase the green cover of cities during summer'),
            ('B', 'promote the use of air conditioning in public buildings'),
            ('C', 'regulate the working hours of outdoor labour only'),
            ('D', 'reduce the health impact of extreme heat through early warning, public awareness and response measures')
           ) as v(label, option_text)
 where q.question_hash = '8ac824791196b1988bc2bd13e41d186c'
on conflict (question_id, label) do nothing;

-- geography | disaster-management | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'disaster-management'),
    'Which of the following hazards causes the largest number of deaths in India every year?',
    'Lightning is the single largest cause of deaths related to natural hazards in India, killing hundreds of people annually, largely because of the low awareness of safety measures in the rural hinterland.',
    'medium',
    'Standard Reference',
    null,
    'be9eeee469dd97165f90a79732109cd1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'be9eeee469dd97165f90a79732109cd1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Lightning'),
            ('B', 'Earthquakes'),
            ('C', 'Cyclones'),
            ('D', 'Landslides')
           ) as v(label, option_text)
 where q.question_hash = 'be9eeee469dd97165f90a79732109cd1'
on conflict (question_id, label) do nothing;

-- geography | disaster-management | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'disaster-management'),
    'The ''National Earthquake Management Organisation'' is headed by the:',
    'The National Earthquake Management Organisation functions under the chairmanship of the National Executive Committee, which is headed by the Prime Minister under the Disaster Management Act, 2005.',
    'hard',
    'Standard Reference',
    null,
    '852972fc93c698f79b03c00be814d328'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '852972fc93c698f79b03c00be814d328'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Prime Minister'),
            ('B', 'National Executive Committee'),
            ('C', 'Director General of the Geological Survey of India'),
            ('D', 'Union Home Secretary')
           ) as v(label, option_text)
 where q.question_hash = '852972fc93c698f79b03c00be814d328'
on conflict (question_id, label) do nothing;

-- geography | indian-physical-features | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'indian-physical-features'),
    'The ''Rajmahal hills'' of eastern India are located in:',
    'The Rajmahal hills, an extension of the Chota Nagpur plateau, lie in the north of Jharkhand, and the Damodar and the Subarnarekha flow through them before joining the Ganga and the Bay of Bengal respectively.',
    'medium',
    'Standard Reference',
    null,
    'd213949146f2315f1dc76ac36d8de4ce'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'd213949146f2315f1dc76ac36d8de4ce'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bihar'),
            ('B', 'Odisha'),
            ('C', 'West Bengal'),
            ('D', 'Jharkhand')
           ) as v(label, option_text)
 where q.question_hash = 'd213949146f2315f1dc76ac36d8de4ce'
on conflict (question_id, label) do nothing;

-- geography | indian-physical-features | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'indian-physical-features'),
    'The ''Mahadeo hills'' of central India are located in:',
    'The Mahadeo hills form the northernmost part of the Satpura range in Madhya Pradesh, and the Narmada flows in the valley between them and the Vindhyas.',
    'hard',
    'Standard Reference',
    null,
    'bf35bfb55a7dd1b680e391f3341bf613'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'bf35bfb55a7dd1b680e391f3341bf613'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Maharashtra'),
            ('B', 'Madhya Pradesh'),
            ('C', 'Chhattisgarh'),
            ('D', 'Rajasthan')
           ) as v(label, option_text)
 where q.question_hash = 'bf35bfb55a7dd1b680e391f3341bf613'
on conflict (question_id, label) do nothing;

-- geography | indian-physical-features | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'indian-physical-features'),
    'The ''Dangs'' plateau is located in:',
    'The Dangs are a small plateau in the Satpura range in eastern Maharashtra, a forested hilly tract drained by the tributaries of the Tapi.',
    'hard',
    'Standard Reference',
    null,
    '1ef21a758b48f75f778892f0d7f2d882'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '1ef21a758b48f75f778892f0d7f2d882'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Madhya Pradesh'),
            ('B', 'Odisha'),
            ('C', 'Maharashtra'),
            ('D', 'Gujarat')
           ) as v(label, option_text)
 where q.question_hash = '1ef21a758b48f75f778892f0d7f2d882'
on conflict (question_id, label) do nothing;

-- geography | indian-physical-features | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'indian-physical-features'),
    'The ''Anaimalai hills'' of the Western Ghats lie mainly in:',
    'The Anaimalai hills, with the Palni hills as their western continuation, lie along the Tamil Nadu-Kerala border, and the Anaimalai and the Palar rise from them.',
    'medium',
    'Standard Reference',
    null,
    '21eebe4e9f2686294645021f137056a4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '21eebe4e9f2686294645021f137056a4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Tamil Nadu and Kerala'),
            ('B', 'Karnataka'),
            ('C', 'Kerala and Karnataka'),
            ('D', 'Maharashtra and Goa')
           ) as v(label, option_text)
 where q.question_hash = '21eebe4e9f2686294645021f137056a4'
on conflict (question_id, label) do nothing;

-- geography | indian-physical-features | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'indian-physical-features'),
    'The ''Javadi hills'' are located in:',
    'The Javadi hills lie in the northern part of the Eastern Ghats in Tamil Nadu, forming a continuation of the hills of the Eastern Ghats south of the Telangana plateau.',
    'hard',
    'Standard Reference',
    null,
    '5a737c017ffc3e814f39dc61a819e59f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '5a737c017ffc3e814f39dc61a819e59f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Odisha'),
            ('B', 'Tamil Nadu'),
            ('C', 'Sikkim'),
            ('D', 'Kerala')
           ) as v(label, option_text)
 where q.question_hash = '5a737c017ffc3e814f39dc61a819e59f'
on conflict (question_id, label) do nothing;

-- geography | indian-physical-features | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'indian-physical-features'),
    'The ''Shevaroy hills'' are located in:',
    'The Shevaroy hills form a small range in the Eastern Ghats in Tamil Nadu, between the Javadi hills and the Kollimalai hills, and the Yercaud hill station lies on them.',
    'hard',
    'Standard Reference',
    null,
    '4e9c170b8acd997be96a8ca589aef698'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '4e9c170b8acd997be96a8ca589aef698'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Tamil Nadu'),
            ('B', 'Kerala'),
            ('C', 'Odisha'),
            ('D', 'Meghalaya')
           ) as v(label, option_text)
 where q.question_hash = '4e9c170b8acd997be96a8ca589aef698'
on conflict (question_id, label) do nothing;

-- geography | resources-and-minerals | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'resources-and-minerals'),
    'The ''Jharia'' coalfield, the largest in India, is located in:',
    'The Jharia coalfield in the Dhanbad region of Jharkhand is the largest in India and supplies coking coal used by the steel plants of the eastern region.',
    'medium',
    'Standard Reference',
    null,
    'f077eb287a37cbf974cae505fbf52c48'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'f077eb287a37cbf974cae505fbf52c48'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bihar'),
            ('B', 'West Bengal'),
            ('C', 'Jharkhand'),
            ('D', 'Chhattisgarh')
           ) as v(label, option_text)
 where q.question_hash = 'f077eb287a37cbf974cae505fbf52c48'
on conflict (question_id, label) do nothing;

-- geography | resources-and-minerals | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'resources-and-minerals'),
    'The ''Talcher'' coalfield is located in:',
    'The Talcher coalfield of Odisha in the Mahanadi basin is a major source of coking coal and supports the coal-based industries of the region.',
    'medium',
    'Standard Reference',
    null,
    '21b7f413c09f496f9ec56b19dc11bd72'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '21b7f413c09f496f9ec56b19dc11bd72'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Chhattisgarh'),
            ('B', 'Assam'),
            ('C', 'Jharkhand'),
            ('D', 'Odisha')
           ) as v(label, option_text)
 where q.question_hash = '21b7f413c09f496f9ec56b19dc11bd72'
on conflict (question_id, label) do nothing;

-- geography | resources-and-minerals | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'resources-and-minerals'),
    'The ''Singrauli'' coalfield is located in:',
    'The Singrauli coalfield, spread across Madhya Pradesh and Uttar Pradesh in the Son Valley, is one of the largest coalfields in the country and the site of the major thermal power stations of eastern India.',
    'hard',
    'Standard Reference',
    null,
    'b1421f33e7c67dca70102b0f96435f51'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'b1421f33e7c67dca70102b0f96435f51'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Madhya Pradesh'),
            ('B', 'Chhattisgarh'),
            ('C', 'Uttar Pradesh'),
            ('D', 'Jharkhand')
           ) as v(label, option_text)
 where q.question_hash = 'b1421f33e7c67dca70102b0f96435f51'
on conflict (question_id, label) do nothing;

-- geography | resources-and-minerals | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'resources-and-minerals'),
    'The ''Neyveli'' lignite field, the largest lignite deposit in India, is located in:',
    'The Neyveli lignite field in the Cuddalore district of Tamil Nadu is the largest lignite deposit in India and supplies the Neyveli Thermal Power Station.',
    'medium',
    'Standard Reference',
    null,
    'b0e1966e63aedb1761b19d9d278db3f5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b0e1966e63aedb1761b19d9d278db3f5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rajasthan'),
            ('B', 'Tamil Nadu'),
            ('C', 'Kerala'),
            ('D', 'Karnataka')
           ) as v(label, option_text)
 where q.question_hash = 'b0e1966e63aedb1761b19d9d278db3f5'
on conflict (question_id, label) do nothing;

-- geography | resources-and-minerals | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'resources-and-minerals'),
    'The historic ''Kolar'' gold field is located in:',
    'The Kolar gold fields in Karnataka were among the richest in the world in the early twentieth century and are now nearly exhausted, though the region remains a landmark in Indian mining history.',
    'hard',
    'Standard Reference',
    null,
    '5c1ac9899626bfd198db0d70d394cfdc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '5c1ac9899626bfd198db0d70d394cfdc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Jharkhand'),
            ('B', 'Tamil Nadu'),
            ('C', 'Karnataka'),
            ('D', 'Andhra Pradesh')
           ) as v(label, option_text)
 where q.question_hash = '5c1ac9899626bfd198db0d70d394cfdc'
on conflict (question_id, label) do nothing;

-- geography | resources-and-minerals | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'resources-and-minerals'),
    'The ''Chhotanagpur'' and the ''Singhbhum'' belts are the chief source of which group of minerals?',
    'The Chotanagpur plateau and the Singhbhum belt in Jharkhand and Odisha are the principal Indian source of iron ore, and also of copper, mica and uranium.',
    'medium',
    'Standard Reference',
    null,
    '55e67bc03de7cc51ba9705b4df3c6476'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '55e67bc03de7cc51ba9705b4df3c6476'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Lignite and peat'),
            ('B', 'Diamond and gold'),
            ('C', 'Bauxite and limestone'),
            ('D', 'Iron ore, mica and copper')
           ) as v(label, option_text)
 where q.question_hash = '55e67bc03de7cc51ba9705b4df3c6476'
on conflict (question_id, label) do nothing;

-- geography | world-geography | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''Indian Ocean Dipole'' is a coupled ocean-atmosphere variability pattern in the:',
    'The Indian Ocean Dipole, a see-saw in the sea surface temperature of the western and eastern Indian Ocean, influences the strength of the Indian monsoon, with a positive IOD generally favouring a good monsoon.',
    'hard',
    'Standard Reference',
    null,
    'adc25386a1de5c7561e9ceec865660cf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'adc25386a1de5c7561e9ceec865660cf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Southern Ocean'),
            ('B', 'Pacific Ocean'),
            ('C', 'Atlantic Ocean'),
            ('D', 'Indian Ocean')
           ) as v(label, option_text)
 where q.question_hash = 'adc25386a1de5c7561e9ceec865660cf'
on conflict (question_id, label) do nothing;

-- geography | world-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''Great Barrier Reef'', the largest coral reef system in the world, lies off the coast of:',
    'The Great Barrier Reef runs for more than 2,300 kilometres along the coast of Queensland in north-eastern Australia and is the largest coral reef system in the world, though it is under serious threat from coral bleaching.',
    'medium',
    'Standard Reference',
    null,
    'c4cfe03d2ecce6b8eabac306458e3822'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c4cfe03d2ecce6b8eabac306458e3822'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Northern Territory of Australia'),
            ('B', 'Tasmania'),
            ('C', 'Queensland, Australia'),
            ('D', 'Cairns in Papua New Guinea')
           ) as v(label, option_text)
 where q.question_hash = 'c4cfe03d2ecce6b8eabac306458e3822'
on conflict (question_id, label) do nothing;

-- geography | world-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''Kalahari'' desert lies mainly in:',
    'The semi-arid Kalahari region covers Botswana, Namibia, northern South Africa and parts of Zambia and Angola, and it is the home of the San and other hunter-gatherer communities.',
    'medium',
    'Standard Reference',
    null,
    '640a65222ccead7748d125bcd0ca77a3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '640a65222ccead7748d125bcd0ca77a3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Zimbabwe and Mozambique'),
            ('B', 'Botswana, Namibia and South Africa'),
            ('C', 'Sahara and Sudan'),
            ('D', 'Namibia and Angola only')
           ) as v(label, option_text)
 where q.question_hash = '640a65222ccead7748d125bcd0ca77a3'
on conflict (question_id, label) do nothing;

-- geography | world-geography | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''Sunda Strait'' separates:',
    'The Sunda Strait separates the islands of Sumatra and Java and is the narrowest of the major Indonesian straits, and the Krakatoa eruption of 1883 took place in it.',
    'hard',
    'Standard Reference',
    null,
    '58d99022a8e7d54408e869fa30a7304b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '58d99022a8e7d54408e869fa30a7304b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sumatra and Java'),
            ('B', 'Borneo and Sulawesi'),
            ('C', 'Sumatra and the Malay Peninsula'),
            ('D', 'Java and Bali')
           ) as v(label, option_text)
 where q.question_hash = '58d99022a8e7d54408e869fa30a7304b'
on conflict (question_id, label) do nothing;

-- geography | world-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The largest stretch of tropical rainforest in the world outside the Amazon is the:',
    'The Congo basin of Central Africa holds the second largest tropical rainforest in the world after the Amazon, and it is home to gorillas and okapi as well as a huge diversity of forest species.',
    'medium',
    'Standard Reference',
    null,
    '1dd21bff349393f49ef1aa1ff48269f9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '1dd21bff349393f49ef1aa1ff48269f9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sundaland forests'),
            ('B', 'Mekong delta'),
            ('C', 'Guiana Shield'),
            ('D', 'Congo basin')
           ) as v(label, option_text)
 where q.question_hash = '1dd21bff349393f49ef1aa1ff48269f9'
on conflict (question_id, label) do nothing;

-- geography | world-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''Aral Sea'' shrank dramatically because:',
    'The diversion of the Amu Darya and Syr Darya for irrigating cotton in Central Asia caused the Aral Sea to shrink to a fraction of its former area, exposing salt-tainted soils and wrecking the local fisheries.',
    'medium',
    'Standard Reference',
    null,
    '6043478867e16c7b74ea1798c3ef2915'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '6043478867e16c7b74ea1798c3ef2915'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a rise in global sea levels'),
            ('B', 'the construction of a large submarine canyon'),
            ('C', 'the diversion of its inflowing rivers for cotton irrigation'),
            ('D', 'an earthquake that opened a new channel')
           ) as v(label, option_text)
 where q.question_hash = '6043478867e16c7b74ea1798c3ef2915'
on conflict (question_id, label) do nothing;

-- geography | map-locations | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The ''Chumbi Valley'' is located in:',
    'The Chumbi Valley is a small valley in Sikkim between Sikkim and Tibet, through which the road to Lhasa passes, and its transfer to China was a long-standing India-China issue.',
    'easy',
    'Standard Reference',
    null,
    'b654d3f8b63d3fbac59222ea77b3425a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'b654d3f8b63d3fbac59222ea77b3425a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sikkim'),
            ('B', 'Arunachal Pradesh'),
            ('C', 'Ladakh'),
            ('D', 'Himachal Pradesh')
           ) as v(label, option_text)
 where q.question_hash = 'b654d3f8b63d3fbac59222ea77b3425a'
on conflict (question_id, label) do nothing;

-- geography | map-locations | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The ''Bum La'' pass connects Tawang in Arunachal Pradesh with:',
    'The Bum La pass, at over 4,500 metres, is the route through the Himalayas from Tawang to Lhasa and is one of the highest used border crossings on the eastern frontier.',
    'hard',
    'Standard Reference',
    null,
    'd7c9355f9052a11da3c61654e9f0b76c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd7c9355f9052a11da3c61654e9f0b76c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Thimphu in Bhutan'),
            ('B', 'Lhasa in Tibet'),
            ('C', 'Dhaka in Bangladesh'),
            ('D', 'Kabul in Afghanistan')
           ) as v(label, option_text)
 where q.question_hash = 'd7c9355f9052a11da3c61654e9f0b76c'
on conflict (question_id, label) do nothing;

-- geography | map-locations | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The ''Namika La'' pass, which links Leh with the Nubra Valley, lies in:',
    'The Namika La pass in the Ladakh region connects Leh with the Nubra Valley and the Siachen area, and the ''Khardung La'' pass serves a similar purpose further north.',
    'hard',
    'Standard Reference',
    null,
    '1595d75fabc0d3c159d2ddb82d42cada'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '1595d75fabc0d3c159d2ddb82d42cada'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Jammu and Kashmir'),
            ('B', 'Sikkim'),
            ('C', 'Uttarakhand'),
            ('D', 'Ladakh')
           ) as v(label, option_text)
 where q.question_hash = '1595d75fabc0d3c159d2ddb82d42cada'
on conflict (question_id, label) do nothing;

-- geography | map-locations | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The ''Bara-Lacha'' is a high pass in the:',
    'The Bara-Lacha lies on the route between the Nubra Valley and the Siachen Glacier area, and the nearby ''Bara-lacha'' and ''Depsang'' sectors form part of the most sensitive stretch of the India-China boundary.',
    'hard',
    'Standard Reference',
    null,
    'f9a09a0d42de51cf7ef92a6c1b4fa7d1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'f9a09a0d42de51cf7ef92a6c1b4fa7d1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Himachal Pradesh'),
            ('B', 'Karakoram of Pakistan'),
            ('C', 'Siachen region of Ladakh'),
            ('D', 'Sikkim')
           ) as v(label, option_text)
 where q.question_hash = 'f9a09a0d42de51cf7ef92a6c1b4fa7d1'
on conflict (question_id, label) do nothing;

-- geography | map-locations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The ''Chang La'' pass in Ladakh is notable because it is:',
    'The Chang La at over 5,000 metres on the road between Leh and Pangong Lake is among the highest motorable road passes in the world and is guarded by an Indian Army post.',
    'medium',
    'Standard Reference',
    null,
    '8c9e893906e3e28ea27b146b5a9f1f0f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '8c9e893906e3e28ea27b146b5a9f1f0f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the pass that links Nepal with Tibet'),
            ('B', 'one of the highest motorable road passes in the world'),
            ('C', 'the lowest pass on the Karakoram Highway'),
            ('D', 'the only pass open year round in the Himalayas')
           ) as v(label, option_text)
 where q.question_hash = '8c9e893906e3e28ea27b146b5a9f1f0f'
on conflict (question_id, label) do nothing;

-- geography | map-locations | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The ''Nathu La'' and the ''Bum La'' passes are located in which state?',
    'Both Bum La and Nathu La lie in Arunachal Pradesh, and the Nathu La pass on the Sikkim-Tibet frontier is the more frequently used of the two.',
    'easy',
    'Standard Reference',
    null,
    '98c98f6c0589a810a7c3744466e6e9e8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '98c98f6c0589a810a7c3744466e6e9e8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Arunachal Pradesh'),
            ('B', 'Ladakh'),
            ('C', 'Himachal Pradesh'),
            ('D', 'Sikkim')
           ) as v(label, option_text)
 where q.question_hash = '98c98f6c0589a810a7c3744466e6e9e8'
on conflict (question_id, label) do nothing;

-- geography | world-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The administrative capital of Australia is:',
    'Canberra was purpose-built as the capital after the Australian federation in 1901 because Sydney and Melbourne had competing claims, and it lies in the Australian Capital Territory.',
    'easy',
    'Standard Reference',
    null,
    '6101b71df944d8efe3bcf56213ff6daf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '6101b71df944d8efe3bcf56213ff6daf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sydney'),
            ('B', 'Melbourne'),
            ('C', 'Canberra'),
            ('D', 'Perth')
           ) as v(label, option_text)
 where q.question_hash = '6101b71df944d8efe3bcf56213ff6daf'
on conflict (question_id, label) do nothing;

-- geography | world-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The capital of Brazil is:',
    'Brasilia, laid out on a modernist plan and inaugurated in 1960, replaced Rio de Janeiro as the capital, and the transfer was made to promote the development of the interior of the country.',
    'easy',
    'Standard Reference',
    null,
    '0d30af051347cb7a5d1d0ebff2b38ef2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '0d30af051347cb7a5d1d0ebff2b38ef2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Salvador'),
            ('B', 'Brasilia'),
            ('C', 'Rio de Janeiro'),
            ('D', 'Sao Paulo')
           ) as v(label, option_text)
 where q.question_hash = '0d30af051347cb7a5d1d0ebff2b38ef2'
on conflict (question_id, label) do nothing;

-- geography | world-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The capital of Switzerland is:',
    'Bern has been the federal city of Switzerland since 1848, while Zurich is the largest city and Geneva hosts many international organisations.',
    'easy',
    'Standard Reference',
    null,
    'ed6b9ec146e29e1b92e649b3c13c8d95'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ed6b9ec146e29e1b92e649b3c13c8d95'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bern'),
            ('B', 'Zurich'),
            ('C', 'Geneva'),
            ('D', 'Basel')
           ) as v(label, option_text)
 where q.question_hash = 'ed6b9ec146e29e1b92e649b3c13c8d95'
on conflict (question_id, label) do nothing;

-- geography | world-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The capital of Canada is:',
    'Ottawa, selected by Queen Victoria in 1857, is the capital of Canada, and it is located on the Ontario side of the Ottawa River in Quebec.',
    'easy',
    'Standard Reference',
    null,
    'c3a91f3926cb9721f98e2e2ace038a5c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'c3a91f3926cb9721f98e2e2ace038a5c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Montreal'),
            ('B', 'Vancouver'),
            ('C', 'Toronto'),
            ('D', 'Ottawa')
           ) as v(label, option_text)
 where q.question_hash = 'c3a91f3926cb9721f98e2e2ace038a5c'
on conflict (question_id, label) do nothing;

-- geography | world-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The capital of Turkey is:',
    'Ankara became the capital of Turkey in 1923, replacing Istanbul, and the city lies on the Anatolian plateau at the confluence of the Ankara and Hatip streams.',
    'easy',
    'Standard Reference',
    null,
    '2cead8d6b33aa66c24be17cfb9865585'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '2cead8d6b33aa66c24be17cfb9865585'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Istanbul'),
            ('B', 'Izmir'),
            ('C', 'Ankara'),
            ('D', 'Bursa')
           ) as v(label, option_text)
 where q.question_hash = '2cead8d6b33aa66c24be17cfb9865585'
on conflict (question_id, label) do nothing;

-- geography | world-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The administrative capital of Tanzania is:',
    'Dodoma is the official capital of Tanzania, while Dar es Salaam remains the commercial capital and the seat of many government functions and the country''s largest port.',
    'easy',
    'Standard Reference',
    null,
    '52adfae51b54bf1ab92ad5c6d3f2de4b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '52adfae51b54bf1ab92ad5c6d3f2de4b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Mombasa'),
            ('B', 'Dodoma'),
            ('C', 'Dar es Salaam'),
            ('D', 'Arusha')
           ) as v(label, option_text)
 where q.question_hash = '52adfae51b54bf1ab92ad5c6d3f2de4b'
on conflict (question_id, label) do nothing;

-- geography | world-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'South Africa has three capitals. The judicial capital is:',
    'Pretoria is the administrative capital, Cape Town the legislative capital and Bloemfontein the judicial capital, a unique arrangement that reflects the compromise between the former provinces.',
    'easy',
    'Standard Reference',
    null,
    '466014b6c919695cadc875533a15017a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '466014b6c919695cadc875533a15017a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bloemfontein'),
            ('B', 'Pretoria'),
            ('C', 'Cape Town'),
            ('D', 'Johannesburg')
           ) as v(label, option_text)
 where q.question_hash = '466014b6c919695cadc875533a15017a'
on conflict (question_id, label) do nothing;

-- geography | world-geography | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The official capital of Sri Lanka, where the Parliament and the Supreme Court are located, is:',
    'Sri Jayawardenepura Kotte, in the Colombo metropolitan area, is the official capital, while Colombo is the commercial capital and the seat of the executive and the central bank.',
    'hard',
    'Standard Reference',
    null,
    '6f4302ed26cee748854066d448caed5a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '6f4302ed26cee748854066d448caed5a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kandy'),
            ('B', 'Galle'),
            ('C', 'Colombo'),
            ('D', 'Sri Jayawardenepura Kotte')
           ) as v(label, option_text)
 where q.question_hash = '6f4302ed26cee748854066d448caed5a'
on conflict (question_id, label) do nothing;

-- geography | world-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The constitutional capital of Bolivia is:',
    'Sucre is the constitutional capital of Bolivia, while La Paz is the seat of the government and the national congress, and it is the highest administrative capital in the world.',
    'easy',
    'Standard Reference',
    null,
    'f4e1b2331dc1c37195eb1bac5e34f5d1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f4e1b2331dc1c37195eb1bac5e34f5d1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Santa Cruz'),
            ('B', 'Sucre'),
            ('C', 'Cochabamba'),
            ('D', 'La Paz')
           ) as v(label, option_text)
 where q.question_hash = 'f4e1b2331dc1c37195eb1bac5e34f5d1'
on conflict (question_id, label) do nothing;

-- geography | world-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The capital of the Netherlands is:',
    'Amsterdam is the constitutional capital of the Netherlands, but The Hague is the seat of the government, the parliament and the International Court of Justice.',
    'easy',
    'Standard Reference',
    null,
    '8083353830876eece0ceef4d6ffa3c15'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '8083353830876eece0ceef4d6ffa3c15'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rotterdam'),
            ('B', 'Utrecht'),
            ('C', 'Amsterdam'),
            ('D', 'The Hague')
           ) as v(label, option_text)
 where q.question_hash = '8083353830876eece0ceef4d6ffa3c15'
on conflict (question_id, label) do nothing;

-- geography | map-locations | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The southernmost national capital of a sovereign country in the world is:',
    'Wellington, at about 41 degrees south, is the southernmost capital of a sovereign state, being further south than the capitals of Chile and Argentina.',
    'easy',
    'Standard Reference',
    null,
    '7a7d82c5b96d3bbc6bdf9ef380444f7c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '7a7d82c5b96d3bbc6bdf9ef380444f7c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Wellington'),
            ('B', 'Santiago'),
            ('C', 'Canberra'),
            ('D', 'Buenos Aires')
           ) as v(label, option_text)
 where q.question_hash = '7a7d82c5b96d3bbc6bdf9ef380444f7c'
on conflict (question_id, label) do nothing;

-- geography | map-locations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The International Olympic Committee, which oversees the Olympic Games, is headquartered at:',
    'The IOC is based in Lausanne in Switzerland, while FIFA is headquartered in Zurich and the World Trade Organization in Geneva, a city that hosts the largest number of international organisations.',
    'medium',
    'Standard Reference',
    null,
    '8b198b8b503619527c86f3e2fe55a4c9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '8b198b8b503619527c86f3e2fe55a4c9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Zurich'),
            ('B', 'Paris'),
            ('C', 'Vienna'),
            ('D', 'Lausanne')
           ) as v(label, option_text)
 where q.question_hash = '8b198b8b503619527c86f3e2fe55a4c9'
on conflict (question_id, label) do nothing;

-- geography | map-locations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The International Telecommunication Union, the UN agency that allocates radio frequencies, is headquartered at:',
    'The ITU, together with the WIPO and the WHO, is among the United Nations agencies based in Geneva, and its Radio Regulations Bureau manages the global radio frequency spectrum.',
    'medium',
    'Standard Reference',
    null,
    '80d88c69b9837d4ff06c36c0efb658ae'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '80d88c69b9837d4ff06c36c0efb658ae'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Vienna'),
            ('B', 'Geneva'),
            ('C', 'Brussels'),
            ('D', 'Nairobi')
           ) as v(label, option_text)
 where q.question_hash = '80d88c69b9837d4ff06c36c0efb658ae'
on conflict (question_id, label) do nothing;

-- geography | map-locations | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The headquarters of the International Maritime Organization is at:',
    'The IMO, the UN agency responsible for the safety and prevention of pollution from ships, is headquartered in London, and the SOLAS convention is one of its key instruments.',
    'easy',
    'Standard Reference',
    null,
    'c20dd7eeea8cd511e86fff72e1e14acb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c20dd7eeea8cd511e86fff72e1e14acb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Amsterdam'),
            ('B', 'Rotterdam'),
            ('C', 'London'),
            ('D', 'Geneva')
           ) as v(label, option_text)
 where q.question_hash = 'c20dd7eeea8cd511e86fff72e1e14acb'
on conflict (question_id, label) do nothing;

-- geography | map-locations | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The headquarters of the African Union is at:',
    'The African Union, born from the OAU in 2002, is headquartered in Addis Ababa, which is also the seat of the United Nations Economic Commission for Africa.',
    'easy',
    'Standard Reference',
    null,
    'e11ff9c8af51f561230f4b4b66c4e96a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e11ff9c8af51f561230f4b4b66c4e96a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Nairobi'),
            ('B', 'Lagos'),
            ('C', 'Cairo'),
            ('D', 'Addis Ababa')
           ) as v(label, option_text)
 where q.question_hash = 'e11ff9c8af51f561230f4b4b66c4e96a'
on conflict (question_id, label) do nothing;

-- geography | map-locations | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The most densely populated independent country in the world is:',
    'Monaco, a tiny principality on the French Riviera, has the highest population density of any sovereign country, while Singapore is the most densely populated among larger states.',
    'easy',
    'Standard Reference',
    null,
    '294259a385ba0f426e5c1a2ad6a8d128'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '294259a385ba0f426e5c1a2ad6a8d128'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Monaco'),
            ('B', 'Malta'),
            ('C', 'Bangladesh'),
            ('D', 'Singapore')
           ) as v(label, option_text)
 where q.question_hash = '294259a385ba0f426e5c1a2ad6a8d128'
on conflict (question_id, label) do nothing;

-- geography | map-locations | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The smallest independent country in the world by area is:',
    'Vatican City, the seat of the Catholic Church, has an area of about 0.44 square kilometres, making it the smallest independent state in the world.',
    'easy',
    'Standard Reference',
    null,
    'feb9880bb7e275d56f18f52547975b0a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'feb9880bb7e275d56f18f52547975b0a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Liechtenstein'),
            ('B', 'Monaco'),
            ('C', 'San Marino'),
            ('D', 'Vatican City')
           ) as v(label, option_text)
 where q.question_hash = 'feb9880bb7e275d56f18f52547975b0a'
on conflict (question_id, label) do nothing;

-- geography | map-locations | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The country with the greatest number of time zones, because of its overseas territories, is:',
    'France has twelve time zones when its overseas territories are included, exceeding even Russia and the United States, although its metropolitan territory spans only three.',
    'hard',
    'Standard Reference',
    null,
    '7068328579cc78ea5fd6be237d91aac0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '7068328579cc78ea5fd6be237d91aac0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Australia'),
            ('B', 'France'),
            ('C', 'Russia'),
            ('D', 'the United States')
           ) as v(label, option_text)
 where q.question_hash = '7068328579cc78ea5fd6be237d91aac0'
on conflict (question_id, label) do nothing;

-- geography | map-locations | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'Which of the following statements regarding the Asia and North America is correct?',
    'The Bering Strait, about 82 kilometres wide at its narrowest, separates the Chukchi Peninsula of Russia from Alaska in the United States and marks the conventional boundary between Asia and North America.',
    'easy',
    'Standard Reference',
    null,
    'a7782e60972a2b7df07011fc40efff3e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'a7782e60972a2b7df07011fc40efff3e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Africa and Europe'),
            ('B', 'Australia and New Zealand'),
            ('C', 'Asia and North America'),
            ('D', 'Europe and Asia')
           ) as v(label, option_text)
 where q.question_hash = 'a7782e60972a2b7df07011fc40efff3e'
on conflict (question_id, label) do nothing;

-- geography | map-locations | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The Strait of Malacca separates:',
    'The Strait of Malacca, between the Malay Peninsula and the island of Sumatra, is one of the busiest shipping lanes in the world, carrying much of the trade between the Indian Ocean and the Pacific.',
    'easy',
    'Standard Reference',
    null,
    '36ee85ba6062dee84044cd4a373fb1db'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '36ee85ba6062dee84044cd4a373fb1db'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Malay Peninsula and Sumatra'),
            ('B', 'Borneo and the Philippines'),
            ('C', 'India and Sri Lanka'),
            ('D', 'Java and Bali')
           ) as v(label, option_text)
 where q.question_hash = '36ee85ba6062dee84044cd4a373fb1db'
on conflict (question_id, label) do nothing;

-- geography | map-locations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'Which of the following statements regarding the India and Sri Lanka is correct?',
    'The Palk Strait, spanned by the Adam''s Bridge chain of islets, lies between the Tamil Nadu coast and northern Sri Lanka, and the Rameswaram island and the Talaimannar island face each other across it.',
    'medium',
    'Standard Reference',
    null,
    '679d6dcbc585bc25766ed1627c910eab'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '679d6dcbc585bc25766ed1627c910eab'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Malaysia and Indonesia'),
            ('B', 'India and Bangladesh'),
            ('C', 'Myanmar and Thailand'),
            ('D', 'India and Sri Lanka')
           ) as v(label, option_text)
 where q.question_hash = '679d6dcbc585bc25766ed1627c910eab'
on conflict (question_id, label) do nothing;

-- geography | map-locations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The Bab-el-Mandeb strait connects the Red Sea with the:',
    'The Bab-el-Mandeb strait connects the Red Sea with the Gulf of Aden and the Arabian Sea, and it is a key chokepoint for the Suez route and for the petroleum exports of the Gulf.',
    'medium',
    'Standard Reference',
    null,
    '4384c7c04717b8e75e2f59389ffef469'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '4384c7c04717b8e75e2f59389ffef469'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Persian Gulf'),
            ('B', 'Gulf of Aden'),
            ('C', 'Gulf of Oman'),
            ('D', 'Mediterranean Sea')
           ) as v(label, option_text)
 where q.question_hash = '4384c7c04717b8e75e2f59389ffef469'
on conflict (question_id, label) do nothing;

-- geography | map-locations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The Strait of Magellan connects the Atlantic Ocean with the:',
    'The Strait of Magellan, named after the Portuguese explorer, links the Atlantic and the Pacific at the southern tip of South America, though the Panama Canal has made it largely obsolete for shipping.',
    'medium',
    'Standard Reference',
    null,
    '39f02ea0c8f6e82c2848e655289bf667'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '39f02ea0c8f6e82c2848e655289bf667'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Pacific Ocean'),
            ('B', 'Indian Ocean'),
            ('C', 'Southern Ocean only'),
            ('D', 'Caribbean Sea')
           ) as v(label, option_text)
 where q.question_hash = '39f02ea0c8f6e82c2848e655289bf667'
on conflict (question_id, label) do nothing;

-- geography | map-locations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The Gulf of Finland connects the Baltic Sea with the:',
    'The Gulf of Finland is the easternmost arm of the Baltic Sea, running from Saint Petersburg to the Estonian coast and opening westward into the Gulf of Riga and the Gulf of Bothnia.',
    'medium',
    'Standard Reference',
    null,
    'ace9f4bc1515a7c9f597f157782a0092'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'ace9f4bc1515a7c9f597f157782a0092'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'White Sea'),
            ('B', 'North Sea'),
            ('C', 'Gulf of Riga and the Gulf of Bothnia'),
            ('D', 'Black Sea')
           ) as v(label, option_text)
 where q.question_hash = 'ace9f4bc1515a7c9f597f157782a0092'
on conflict (question_id, label) do nothing;

-- geography | map-locations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The Ural River forms part of the conventional boundary between:',
    'The Ural river, together with the Ural mountains, the Caspian Sea, the Caucasus and the Turkish Straits, forms the conventional Europe-Asia boundary, and the river flows into the Caspian.',
    'medium',
    'Standard Reference',
    null,
    '2eebca9703dae6c8ebed475a42d7ce71'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '2eebca9703dae6c8ebed475a42d7ce71'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Europe and Asia'),
            ('B', 'North and South America'),
            ('C', 'Europe and Africa'),
            ('D', 'Asia and Africa')
           ) as v(label, option_text)
 where q.question_hash = '2eebca9703dae6c8ebed475a42d7ce71'
on conflict (question_id, label) do nothing;

-- geography | world-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The longest river of Europe is the:',
    'The Volga, which flows through Russia and empties into the Caspian Sea, is the longest river of Europe, while the Danube is the second longest and the only major one flowing to the Black Sea.',
    'medium',
    'Standard Reference',
    null,
    'b149c3721224de80b7c31b8a86e8fb28'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'b149c3721224de80b7c31b8a86e8fb28'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Dnieper'),
            ('B', 'Rhine'),
            ('C', 'Volga'),
            ('D', 'Danube')
           ) as v(label, option_text)
 where q.question_hash = 'b149c3721224de80b7c31b8a86e8fb28'
on conflict (question_id, label) do nothing;

-- geography | world-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The Ob, Yenisei and Lena rivers of Siberia drain into the:',
    'The great Siberian rivers flow north into the Arctic Ocean, and much of their flow is frozen for several months a year, which is why the Arctic sea ice has a major Siberian contribution.',
    'medium',
    'Standard Reference',
    null,
    '48c86caf35d44b171085ab2e36d04ce9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '48c86caf35d44b171085ab2e36d04ce9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Pacific Ocean'),
            ('B', 'Atlantic Ocean'),
            ('C', 'Caspian Sea'),
            ('D', 'Arctic Ocean')
           ) as v(label, option_text)
 where q.question_hash = '48c86caf35d44b171085ab2e36d04ce9'
on conflict (question_id, label) do nothing;

-- geography | map-locations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The Amur river marks the international frontier between Russia and which country?',
    'The Amur, formed by the Shilka and the Argun, forms the eastern frontier between Russia and China for much of its course before emptying into the Sea of Okhotsk.',
    'medium',
    'Standard Reference',
    null,
    'e2f761217f6a4da898de3268bee44bfb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e2f761217f6a4da898de3268bee44bfb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kazakhstan'),
            ('B', 'China'),
            ('C', 'Mongolia'),
            ('D', 'North Korea')
           ) as v(label, option_text)
 where q.question_hash = 'e2f761217f6a4da898de3268bee44bfb'
on conflict (question_id, label) do nothing;

-- geography | world-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The longest river of Australia is the:',
    'The Murray, flowing for about 2,500 kilometres through southeastern Australia, is the longest single river, and together with its tributary the Darling it forms the Murray-Darling basin, the country''s most important irrigation region.',
    'medium',
    'Standard Reference',
    null,
    '0640a209716e28054bf1a621771c5f42'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '0640a209716e28054bf1a621771c5f42'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Gascoyne'),
            ('B', 'Darling'),
            ('C', 'Murchison'),
            ('D', 'Murray')
           ) as v(label, option_text)
 where q.question_hash = '0640a209716e28054bf1a621771c5f42'
on conflict (question_id, label) do nothing;

-- geography | world-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'Lake Victoria, the largest lake in Africa, is shared by Uganda, Tanzania and:',
    'Lake Victoria, about 68,800 square kilometres, is shared by Uganda, Tanzania and Kenya, and the lake drains into the White Nile through the Victoria Nile.',
    'medium',
    'Standard Reference',
    null,
    '486296e2a5515bc12112006e91bea9fa'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '486296e2a5515bc12112006e91bea9fa'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kenya'),
            ('B', 'Rwanda'),
            ('C', 'Burundi'),
            ('D', 'Ethiopia')
           ) as v(label, option_text)
 where q.question_hash = '486296e2a5515bc12112006e91bea9fa'
on conflict (question_id, label) do nothing;

-- geography | world-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The deepest lake in the world is:',
    'Lake Baikal in Siberia, more than 1,600 metres deep, is the deepest lake in the world and holds about a fifth of the unfrozen fresh water on the planet, in a rift valley formed by crustal extension.',
    'medium',
    'Standard Reference',
    null,
    '2ab28784ab5a8aad82db73477dba5f21'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '2ab28784ab5a8aad82db73477dba5f21'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Lake Victoria'),
            ('B', 'Crater Lake'),
            ('C', 'Lake Baikal'),
            ('D', 'Lake Tanganyika')
           ) as v(label, option_text)
 where q.question_hash = '2ab28784ab5a8aad82db73477dba5f21'
on conflict (question_id, label) do nothing;

-- geography | world-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The Blue Nile and the Atbara rise from the:',
    'The Ethiopian Highlands, the source of the Blue Nile, the Atbara and the Sobat, feed the White Nile through Lake Victoria and Lake Tana and give the Nile most of its flow and flooding.',
    'medium',
    'Standard Reference',
    null,
    '11c72ff4edb60e563c544febb1c4e008'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '11c72ff4edb60e563c544febb1c4e008'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'East African Rift lakes'),
            ('B', 'Ethiopian Highlands'),
            ('C', 'Drakensberg mountains'),
            ('D', 'Congo basin')
           ) as v(label, option_text)
 where q.question_hash = '11c72ff4edb60e563c544febb1c4e008'
on conflict (question_id, label) do nothing;

-- geography | map-locations | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The lowest point on the surface of the earth is the shore of the:',
    'The shore of the Dead Sea, about 430 metres below sea level, is the lowest exposed land surface on earth, and the Dead Sea lake is a hypersaline terminal lake with no outlet.',
    'hard',
    'Standard Reference',
    null,
    '170e622b5c36e423c1423ad3791fb37c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '170e622b5c36e423c1423ad3791fb37c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Dead Sea'),
            ('B', 'Lake Eyre'),
            ('C', 'Lake Assal'),
            ('D', 'Death Valley')
           ) as v(label, option_text)
 where q.question_hash = '170e622b5c36e423c1423ad3791fb37c'
on conflict (question_id, label) do nothing;

-- geography | map-locations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The lowest point in Africa is the shore of the:',
    'Lake Assal in Djibouti, about 155 metres below sea level, is the lowest point in Africa, and the Danakil Depression in Ethiopia is only slightly higher.',
    'medium',
    'Standard Reference',
    null,
    '97ec0e4733bbbdfc412b115866827c57'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '97ec0e4733bbbdfc412b115866827c57'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Danakil Depression'),
            ('B', 'Lake Assal'),
            ('C', 'Dead Sea'),
            ('D', 'Lake Chad')
           ) as v(label, option_text)
 where q.question_hash = '97ec0e4733bbbdfc412b115866827c57'
on conflict (question_id, label) do nothing;

-- geography | world-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''Empty Quarter'' of the Arabian Peninsula is the world''s largest:',
    'The Rub al-Khali, the Empty Quarter, is the largest continuous sand desert in the world, whereas the Sahara is the largest hot desert and Antarctica the largest desert overall.',
    'medium',
    'Standard Reference',
    null,
    'b42c3cc86163309492d492f0ebaa6574'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'b42c3cc86163309492d492f0ebaa6574'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'gravel plain'),
            ('B', 'rocky plateau'),
            ('C', 'continuous sand desert'),
            ('D', 'salt pan')
           ) as v(label, option_text)
 where q.question_hash = 'b42c3cc86163309492d492f0ebaa6574'
on conflict (question_id, label) do nothing;

-- geography | physical-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'physical-geography'),
    'The largest volcano on earth by volume is:',
    'Mauna Loa in Hawaii is the largest active volcano on earth, rising about 17 kilometres from the sea floor, and the shield volcano has produced the world''s largest historical lava flows.',
    'medium',
    'Standard Reference',
    null,
    '276be50e463bd134c6de4a288b0257e8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '276be50e463bd134c6de4a288b0257e8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Cotopaxi'),
            ('B', 'Mount Fuji'),
            ('C', 'Mount Everest'),
            ('D', 'Mauna Loa')
           ) as v(label, option_text)
 where q.question_hash = '276be50e463bd134c6de4a288b0257e8'
on conflict (question_id, label) do nothing;

-- geography | physical-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'physical-geography'),
    'The volcano that buried the Roman city of Pompeii was:',
    'The eruption of Mount Vesuvius in AD 79 overwhelmed the Roman city of Pompeii with ash and pumice, and the site was rediscovered in the eighteenth century.',
    'medium',
    'Standard Reference',
    null,
    '94705731c07d7fe5741ce6cfa134b4a6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '94705731c07d7fe5741ce6cfa134b4a6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Mount Etna'),
            ('B', 'Mount Stromboli'),
            ('C', 'Mount Vesuvius'),
            ('D', 'Mount Pelee')
           ) as v(label, option_text)
 where q.question_hash = '94705731c07d7fe5741ce6cfa134b4a6'
on conflict (question_id, label) do nothing;

-- geography | disaster-management | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'disaster-management'),
    'The ''Cascadia'' subduction zone lies off the coast of:',
    'The Cascadia subduction zone runs from northern California through Oregon and Washington to Vancouver Island, and it is the source of the great Cascadia earthquakes.',
    'medium',
    'Standard Reference',
    null,
    'bf8a76acd232c48382830990f091511c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'bf8a76acd232c48382830990f091511c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Chile and Peru'),
            ('B', 'Japan and the Kurils'),
            ('C', 'New Zealand'),
            ('D', 'the north-western United States and Canada')
           ) as v(label, option_text)
 where q.question_hash = 'bf8a76acd232c48382830990f091511c'
on conflict (question_id, label) do nothing;

-- geography | physical-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'physical-geography'),
    'The ''East African Rift System'' is a zone of:',
    'The Great Rift Valley is a system of divergent boundaries stretching from the Afar depression in Ethiopia to Mozambique, and along it lie the Rift Valley lakes and the volcanoes of Kilimanjaro and Mount Kenya.',
    'medium',
    'Standard Reference',
    null,
    '6490dcfd13ba78d98d00482a80fa9701'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '6490dcfd13ba78d98d00482a80fa9701'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'divergent plate boundaries with deep lakes and volcanoes'),
            ('B', 'convergent boundaries with fold mountains'),
            ('C', 'transform faults with no volcanic activity'),
            ('D', 'a stable craton with no seismic activity')
           ) as v(label, option_text)
 where q.question_hash = '6490dcfd13ba78d98d00482a80fa9701'
on conflict (question_id, label) do nothing;

-- geography | world-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''Okavango Delta'' in Botswana is notable because it is:',
    'The Okavango is an inland delta in the Kalahari where the Okavango River spreads into marshes and never reaches the ocean, and it is a major tourist attraction and a Ramsar wetland.',
    'medium',
    'Standard Reference',
    null,
    'e64f9de0e05d5622749bfea905f15f64'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e64f9de0e05d5622749bfea905f15f64'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the largest delta in the world'),
            ('B', 'an endorheic delta into which the river does not reach the sea'),
            ('C', 'a drowned river valley invaded by the sea'),
            ('D', 'a glacial moraine-dammed lake')
           ) as v(label, option_text)
 where q.question_hash = 'e64f9de0e05d5622749bfea905f15f64'
on conflict (question_id, label) do nothing;

-- geography | world-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''Tibetan Plateau'' is known as the:',
    'With an average height above 4,500 metres, the Tibetan Plateau is called the Roof of the World, and it is the source of the great Asian rivers, the Indus, the Brahmaputra, the Salween and the Mekong.',
    'medium',
    'Standard Reference',
    null,
    '58509a3895a19e14c8813c9f24e82e59'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '58509a3895a19e14c8813c9f24e82e59'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Roof of Europe'),
            ('B', 'World''s breadbasket'),
            ('C', 'Roof of the World'),
            ('D', 'Land of the Midnight Sun')
           ) as v(label, option_text)
 where q.question_hash = '58509a3895a19e14c8813c9f24e82e59'
on conflict (question_id, label) do nothing;

-- geography | physical-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'physical-geography'),
    'The ''Caledonian mountain system'' was formed in the:',
    'The Caledonian mountains of the British Isles and Scandinavia were built in the early Paleozoic, while the later Hercynian orogeny in the late Paleozoic created the coal-bearing basins of central Europe.',
    'medium',
    'Standard Reference',
    null,
    '4989addd3da391cc69ef317870dcfcb9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '4989addd3da391cc69ef317870dcfcb9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Precambrian era'),
            ('B', 'early Paleozoic era'),
            ('C', 'Mesozoic era'),
            ('D', 'Cenozoic era')
           ) as v(label, option_text)
 where q.question_hash = '4989addd3da391cc69ef317870dcfcb9'
on conflict (question_id, label) do nothing;

-- geography | world-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''Guiana Shield'' is associated with:',
    'The Guiana Shield, an ancient crystalline plateau, comprises the Guiana Highlands and the Orinoco basin of Venezuela and Guyana, and it is rich in gold, bauxite and diamonds.',
    'medium',
    'Standard Reference',
    null,
    '5d1a8d0d00f6b98395b21f6e34dd7c33'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '5d1a8d0d00f6b98395b21f6e34dd7c33'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Amazon basin and the Brazilian Highlands'),
            ('B', 'the La Plata basin and the Pampas'),
            ('C', 'the Atacama basin and the Andes'),
            ('D', 'the Orinoco basin and the Guiana Highlands')
           ) as v(label, option_text)
 where q.question_hash = '5d1a8d0d00f6b98395b21f6e34dd7c33'
on conflict (question_id, label) do nothing;

-- geography | resources-and-minerals | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'resources-and-minerals'),
    'The ''Kimberley'' region of Western Australia is famous for:',
    'The Kimberley plateau is the centre of the world''s largest diamond producing region, and the discovery of the Argyle pipe transformed the world diamond trade.',
    'hard',
    'Standard Reference',
    null,
    '5efa08d14a505ed9cbe5f0d173679b1e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '5efa08d14a505ed9cbe5f0d173679b1e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'diamond mining'),
            ('B', 'gold panning'),
            ('C', 'bauxite mining'),
            ('D', 'iron ore mining')
           ) as v(label, option_text)
 where q.question_hash = '5efa08d14a505ed9cbe5f0d173679b1e'
on conflict (question_id, label) do nothing;

-- geography | resources-and-minerals | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'resources-and-minerals'),
    'The world''s largest producers of rare earth elements, which are vital for permanent magnets and electronics, are:',
    'China dominates rare earth mining and processing, with Australia and the United States as important producers, and this concentration is a frequent subject of trade and strategic discussion.',
    'hard',
    'Standard Reference',
    null,
    '1662e7e5cbad354d32a75b534c4f1076'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '1662e7e5cbad354d32a75b534c4f1076'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'India and Japan'),
            ('B', 'Brazil and Chile'),
            ('C', 'China, with Australia and the United States also significant'),
            ('D', 'Canada and Russia')
           ) as v(label, option_text)
 where q.question_hash = '1662e7e5cbad354d32a75b534c4f1076'
on conflict (question_id, label) do nothing;

-- geography | resources-and-minerals | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'resources-and-minerals'),
    'The leading producer of bauxite in the world is:',
    'Guinea, with the vast Boke and Kindia deposits, is the largest producer of bauxite, and the ore is exported mainly to alumina plants in Europe and Asia.',
    'hard',
    'Standard Reference',
    null,
    '612cb4bef4bb583e0e12e7cf7954d931'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '612cb4bef4bb583e0e12e7cf7954d931'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Australia'),
            ('B', 'China'),
            ('C', 'Brazil'),
            ('D', 'Guinea')
           ) as v(label, option_text)
 where q.question_hash = '612cb4bef4bb583e0e12e7cf7954d931'
on conflict (question_id, label) do nothing;

-- geography | resources-and-minerals | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'resources-and-minerals'),
    'The largest proven oil reserves of the world are found in:',
    'Venezuela holds the largest proven crude oil reserves in the world, largely in the heavy oil belt of the Orinoco, followed by Saudi Arabia and Canada.',
    'hard',
    'Standard Reference',
    null,
    '20bd050bac5ce4877cfa07c9c1947b15'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '20bd050bac5ce4877cfa07c9c1947b15'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Russia'),
            ('B', 'Venezuela'),
            ('C', 'Saudi Arabia'),
            ('D', 'Canada')
           ) as v(label, option_text)
 where q.question_hash = '20bd050bac5ce4877cfa07c9c1947b15'
on conflict (question_id, label) do nothing;

-- geography | resources-and-minerals | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'resources-and-minerals'),
    'The ''Great Dyke'' of Zimbabwe is famous for its deposits of:',
    'The Great Dyke, a vast linear intrusion in Zimbabwe, hosts an unusually rich concentration of platinum group metals together with chromium and gold, and it has sustained the country''s mining economy.',
    'hard',
    'Standard Reference',
    null,
    'd0b7c733f73d516e129c57246c8deee3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd0b7c733f73d516e129c57246c8deee3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'platinum and chromium'),
            ('B', 'iron ore and coal'),
            ('C', 'gold and diamonds'),
            ('D', 'copper and tin')
           ) as v(label, option_text)
 where q.question_hash = 'd0b7c733f73d516e129c57246c8deee3'
on conflict (question_id, label) do nothing;

-- geography | resources-and-minerals | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'resources-and-minerals'),
    'The Cerro Rico silver mine at Potosi in Bolivia was worked for centuries and is:',
    'Potosi, discovered in 1545, yielded extraordinary silver wealth for the Spanish empire and is a UNESCO World Heritage site, and Bolivia still mines tin in the same region.',
    'hard',
    'Standard Reference',
    null,
    'cb0f3548231d189e402ed5f937d32567'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'cb0f3548231d189e402ed5f937d32567'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the chief source of tin in the twentieth century'),
            ('B', 'the largest gold mine in South America'),
            ('C', 'a major copper mine of the Andean region'),
            ('D', 'one of the largest silver mines in the world')
           ) as v(label, option_text)
 where q.question_hash = 'cb0f3548231d189e402ed5f937d32567'
on conflict (question_id, label) do nothing;

-- geography | world-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''NATO'' was founded in:',
    'The North Atlantic Treaty Organization was founded in April 1949 with twelve founding members, and its Article 5 collective defence clause is the basis of the alliance''s security guarantee.',
    'easy',
    'Standard Reference',
    null,
    '9aac0a4922f0beef461791d932b864dc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '9aac0a4922f0beef461791d932b864dc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1951'),
            ('B', '1949'),
            ('C', '1955'),
            ('D', '1945')
           ) as v(label, option_text)
 where q.question_hash = '9aac0a4922f0beef461791d932b864dc'
on conflict (question_id, label) do nothing;

-- geography | world-geography | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''European Union'' after the withdrawal of the United Kingdom has how many member states?',
    'The United Kingdom''s withdrawal in 2020 left the European Union with 27 member states, and the euro area covers twenty of them, with several candidate countries still in accession talks.',
    'hard',
    'Standard Reference',
    null,
    '162e939c1b657f0d08e09eabba2e5577'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '162e939c1b657f0d08e09eabba2e5577'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '25'),
            ('B', '30'),
            ('C', '27'),
            ('D', '28')
           ) as v(label, option_text)
 where q.question_hash = '162e939c1b657f0d08e09eabba2e5577'
on conflict (question_id, label) do nothing;

-- geography | world-geography | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''ASEAN'' comprises how many member states?',
    'ASEAN, the Association of South-East Asian Nations, has ten members after the admission of Timor-Leste as the newest member, and it operates on the basis of consensus and non-interference.',
    'hard',
    'Standard Reference',
    null,
    '27d1adcb2904dbfc1b2aa817e3ff6d5b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '27d1adcb2904dbfc1b2aa817e3ff6d5b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '10'),
            ('B', '11'),
            ('C', '9'),
            ('D', '12')
           ) as v(label, option_text)
 where q.question_hash = '27d1adcb2904dbfc1b2aa817e3ff6d5b'
on conflict (question_id, label) do nothing;

-- geography | world-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'South Asia''s regional grouping, which has been largely inactive, was founded in:',
    'SAARC was founded in 1985 with the Dhaka Declaration and its secretariat is in Kathmandu, but the organisation has been unable to hold a summit for many years, and India has insisted on a bilateral approach instead.',
    'easy',
    'Standard Reference',
    null,
    '42030c1c904e5a9feb7c140aa423b54f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '42030c1c904e5a9feb7c140aa423b54f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1985'),
            ('B', '1990'),
            ('C', '1980'),
            ('D', '1975')
           ) as v(label, option_text)
 where q.question_hash = '42030c1c904e5a9feb7c140aa423b54f'
on conflict (question_id, label) do nothing;

-- geography | world-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''BIMSTEC'' connects:',
    'BIMSTEC is a grouping of the seven Bay of Bengal countries - India, Bangladesh, Sri Lanka, Nepal, Bhutan, Myanmar and Thailand - and it is often seen as the building block for the Indian Ocean Rim Association.',
    'easy',
    'Standard Reference',
    null,
    '168b45e0b41180754808bf53efc267d8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '168b45e0b41180754808bf53efc267d8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Central Asian republics'),
            ('B', 'Bay of Bengal Initiative for Multi-Sectoral Technical and Economic Cooperation'),
            ('C', 'the countries of the Indian Ocean Rim Association'),
            ('D', 'the Indian Ocean rim countries')
           ) as v(label, option_text)
 where q.question_hash = '168b45e0b41180754808bf53efc267d8'
on conflict (question_id, label) do nothing;

-- geography | world-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The grouping of the world''s major economies, in which the African Union was admitted as a permanent member, consists of:',
    'The G20 comprises 19 countries, the European Union and, since 2023, the African Union, and it was formally elevated to the level of a leaders'' forum at the New Delhi summit in September 2023.',
    'medium',
    'Standard Reference',
    null,
    '1d01f4ac82cc56a135a8c7c59708d46c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '1d01f4ac82cc56a135a8c7c59708d46c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '20 countries'),
            ('B', '19 countries and the European Union'),
            ('C', '22 countries'),
            ('D', '19 countries, the European Union and the African Union')
           ) as v(label, option_text)
 where q.question_hash = '1d01f4ac82cc56a135a8c7c59708d46c'
on conflict (question_id, label) do nothing;

-- geography | world-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''Cotonou Agreement'' of 2000 governs the relationship between:',
    'The Cotonou Agreement, the successor to the Lome Convention, defines the EU''s partnership and trade preferences with the African, Caribbean and Pacific group of countries.',
    'easy',
    'Standard Reference',
    null,
    '0d6e64dc0d029cb229220574a5b4f7e0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '0d6e64dc0d029cb229220574a5b4f7e0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'NATO and its partners'),
            ('B', 'the IMF and its borrowers'),
            ('C', 'the European Union and the African, Caribbean and Pacific countries'),
            ('D', 'the WTO and the developing countries')
           ) as v(label, option_text)
 where q.question_hash = '0d6e64dc0d029cb229220574a5b4f7e0'
on conflict (question_id, label) do nothing;

-- geography | world-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''Antarctic Treaty'' signed in 1959 provides that the continent shall be used for:',
    'The Antarctic Treaty suspends territorial claims, prohibits military activity and any exploitation of resources and guarantees freedom of scientific investigation, which is the regime the Antarctic Treaty System builds on.',
    'easy',
    'Standard Reference',
    null,
    '25fe0d169cd153351c87679edf363837'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '25fe0d169cd153351c87679edf363837'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'military basing'),
            ('B', 'exclusive economic exploitation by the signatories'),
            ('C', 'commercial exploitation of mineral resources'),
            ('D', 'peaceful purposes only, with freedom of scientific investigation')
           ) as v(label, option_text)
 where q.question_hash = '25fe0d169cd153351c87679edf363837'
on conflict (question_id, label) do nothing;

-- geography | world-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The International Union for Conservation of Nature maintains the world''s largest database on:',
    'The IUCN Red List, maintained with the Species Survival Commission, is the world''s most comprehensive inventory of the conservation status of species and is used by CITES and by national legislation.',
    'medium',
    'Standard Reference',
    null,
    '9d2505f9557243947d6681a597c8bfe6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '9d2505f9557243947d6681a597c8bfe6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'species that are threatened with extinction'),
            ('B', 'protected forest areas'),
            ('C', 'national parks'),
            ('D', 'wetland sites')
           ) as v(label, option_text)
 where q.question_hash = '9d2505f9557243947d6681a597c8bfe6'
on conflict (question_id, label) do nothing;

-- geography | world-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''Montreux Convention'' relates to:',
    'The Montreux Convention of 1980 protects the Alpine environment, and it is a good example of the regional environmental agreements that exist alongside the global conventions.',
    'easy',
    'Standard Reference',
    null,
    '78751384888adccc8007b769ac6364ec'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '78751384888adccc8007b769ac6364ec'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the control of transboundary radiation'),
            ('B', 'the protection of the Alpine environment'),
            ('C', 'the regulation of fisheries in the high seas'),
            ('D', 'the governance of the Arctic Ocean')
           ) as v(label, option_text)
 where q.question_hash = '78751384888adccc8007b769ac6364ec'
on conflict (question_id, label) do nothing;

-- geography | climate-and-weather | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'climate-and-weather'),
    'The Greenland ice sheet is significant because it:',
    'The Greenland ice sheet holds enough water to raise global mean sea level by about seven metres, and its mass balance is one of the most closely watched indicators of climate change.',
    'easy',
    'Standard Reference',
    null,
    '5e131678732483202b76d3bd1685b458'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '5e131678732483202b76d3bd1685b458'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'is the only remaining ice sheet in the Northern Hemisphere'),
            ('B', 'is the largest source of ocean salinity'),
            ('C', 'if melted entirely would raise global sea level by about seven metres'),
            ('D', 'contains most of the world''s freshwater in a liquid state')
           ) as v(label, option_text)
 where q.question_hash = '5e131678732483202b76d3bd1685b458'
on conflict (question_id, label) do nothing;

-- geography | world-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''Sahel'' region of Africa is characterised by:',
    'The Sahel lies between the Sahara and the savanna belt, and its pastoral economies have been severely affected by the droughts of the 1970s and 1980s and by desertification.',
    'easy',
    'Standard Reference',
    null,
    '5974e7104dadcb9e43df924312066672'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '5974e7104dadcb9e43df924312066672'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'alpine meadows on the Ethiopian plateau'),
            ('B', 'desert on the Atlantic coast'),
            ('C', 'tropical rainforest along the equator'),
            ('D', 'semi-arid grasslands south of the Sahara')
           ) as v(label, option_text)
 where q.question_hash = '5974e7104dadcb9e43df924312066672'
on conflict (question_id, label) do nothing;

-- geography | climate-and-weather | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'climate-and-weather'),
    'The ''Mediterranean climate'' is characterised by:',
    'The Mediterranean climate has hot dry summers under the subtropical high and mild wet winters under the westerlies, and it is the classic climate of the Mediterranean basin, California, central Chile, the Cape of Good Hope and south-western Australia.',
    'easy',
    'Standard Reference',
    null,
    '3f1493f395c4da581ddcb52ee1a33298'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '3f1493f395c4da581ddcb52ee1a33298'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'dry hot summers and mild wet winters'),
            ('B', 'a desert climate with very low rainfall'),
            ('C', 'rainfall throughout the year with no dry season'),
            ('D', 'cold winters and hot dry summers with no rain')
           ) as v(label, option_text)
 where q.question_hash = '3f1493f395c4da581ddcb52ee1a33298'
on conflict (question_id, label) do nothing;

-- geography | climate-and-weather | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'climate-and-weather'),
    'The ''Katabatic'' winds are:',
    'A katabatic wind descends from high ground, cooling as it goes, while an anabatic wind is the daytime upslope breeze, and the Mistral and the Bora are well-known katabatic winds.',
    'easy',
    'Standard Reference',
    null,
    '24b455858db51c6a7f825f34d74aaf9a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '24b455858db51c6a7f825f34d74aaf9a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the westerly winds of the Southern Ocean'),
            ('B', 'cold winds blowing down from high ground to the lowlands'),
            ('C', 'warm winds blowing up a mountain slope during the day'),
            ('D', 'the trade winds of the Pacific')
           ) as v(label, option_text)
 where q.question_hash = '24b455858db51c6a7f825f34d74aaf9a'
on conflict (question_id, label) do nothing;

-- geography | climate-and-weather | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'climate-and-weather'),
    'The ''westerlies'' of the Southern Hemisphere are strongest in the latitude belt known as the:',
    'The unimpeded westerly belt around 40 to 50 degrees south, called the Roaring Forties, is famously stormy, and it was the belt used by the clipper ships on the route to Australia and the Americas.',
    'hard',
    'Standard Reference',
    null,
    'b5c6bd947b2c6cb720f59313aa17eec7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'b5c6bd947b2c6cb720f59313aa17eec7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Subpolar low pressure belt'),
            ('B', 'Doldrums'),
            ('C', 'Roaring Forties'),
            ('D', 'Horse latitudes')
           ) as v(label, option_text)
 where q.question_hash = 'b5c6bd947b2c6cb720f59313aa17eec7'
on conflict (question_id, label) do nothing;

-- geography | climate-and-weather | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'climate-and-weather'),
    'During an El Nino event, the:',
    'During an El Nino, weakened trade winds allow warm water to migrate eastward, the thermocline flattens in the eastern Pacific and the Walker Circulation reverses, with effects on the Indian monsoon.',
    'easy',
    'Standard Reference',
    null,
    '2d764b1a257564c2cb054524a7d08cb9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '2d764b1a257564c2cb054524a7d08cb9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'trade winds weaken and warm water shifts eastward towards the central Pacific'),
            ('B', 'equatorial currents intensify in the western Pacific'),
            ('C', 'the Southern Oscillation pressure difference reverses'),
            ('D', 'trade winds strengthen and the thermocline deepens in the east')
           ) as v(label, option_text)
 where q.question_hash = '2d764b1a257564c2cb054524a7d08cb9'
on conflict (question_id, label) do nothing;

-- geography | climate-and-weather | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'climate-and-weather'),
    'The ''Ozone hole'' over Antarctica is associated with:',
    'Chlorofluorocarbons release chlorine and bromine in the stratosphere, which destroy ozone catalytically, and the resulting hole over Antarctica led to the Montreal Protocol of 1987.',
    'easy',
    'Standard Reference',
    null,
    'f5d4547d42b9a78f8a81aab4ac946168'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'f5d4547d42b9a78f8a81aab4ac946168'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the greenhouse effect of carbon dioxide'),
            ('B', 'the depletion of the phytoplankton in the Southern Ocean'),
            ('C', 'the breakdown of ozone in the stratosphere by chlorofluorocarbons'),
            ('D', 'the melting of the West Antarctic ice shelf')
           ) as v(label, option_text)
 where q.question_hash = 'f5d4547d42b9a78f8a81aab4ac946168'
on conflict (question_id, label) do nothing;

-- geography | oceanography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'The ''Antarctic Circumpolar Current'' is significant because it:',
    'The ACC is the only current that flows right around the globe without being interrupted by a continent, and the cold water it carries isolates Antarctica thermally and maintains its ice sheet.',
    'easy',
    'Standard Reference',
    null,
    '47c479e2a873ff8d16daafa84362be99'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '47c479e2a873ff8d16daafa84362be99'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'flows only between South America and Africa'),
            ('B', 'is the warm current of the South Atlantic'),
            ('C', 'prevents the formation of the Antarctic ice sheet'),
            ('D', 'circulates uninterrupted around Antarctica and isolates the Antarctic continent')
           ) as v(label, option_text)
 where q.question_hash = '47c479e2a873ff8d16daafa84362be99'
on conflict (question_id, label) do nothing;

-- geography | oceanography | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'The current that flows along the north-west coast of Africa carrying cold water is the:',
    'The Canary Current, a cold current flowing south along the north-west coast of Africa, is a continuation of the North Atlantic Drift, and the warm Guinea Current flows in the opposite sense along the Gulf of Guinea.',
    'hard',
    'Standard Reference',
    null,
    '71bbde1788bacc0740042e05ca5e5297'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '71bbde1788bacc0740042e05ca5e5297'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Gulf Stream'),
            ('B', 'Canary Current'),
            ('C', 'Guinea Current'),
            ('D', 'Benguela Current')
           ) as v(label, option_text)
 where q.question_hash = '71bbde1788bacc0740042e05ca5e5297'
on conflict (question_id, label) do nothing;

-- geography | oceanography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'The ''Oyashio'' is a:',
    'The Oyashio flows south from the Bering Sea along the Kurils and Hokkaido, and where it meets the warm Kuroshio there are the rich fishing grounds of Hokkaido.',
    'easy',
    'Standard Reference',
    null,
    'e851336f695e9a863228954110d7f3ee'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e851336f695e9a863228954110d7f3ee'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'warm current in the North Atlantic'),
            ('B', 'cold current off the coast of Peru'),
            ('C', 'warm current flowing north along the coast of Japan'),
            ('D', 'cold current flowing south along the coast of Hokkaido and the Kurils')
           ) as v(label, option_text)
 where q.question_hash = 'e851336f695e9a863228954110d7f3ee'
on conflict (question_id, label) do nothing;

-- geography | oceanography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'The cold Labrador Current contributes to:',
    'The meeting of the cold Labrador Current with the warm Gulf Stream off Newfoundland produces the dense fogs of the Grand Banks and the rich fishing grounds for which the area is famous.',
    'medium',
    'Standard Reference',
    null,
    'b63698aa78123a9d2423c7cfd9a5e903'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'b63698aa78123a9d2423c7cfd9a5e903'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the coral reefs of the Caribbean'),
            ('B', 'the rise of the Amazon from the Andes'),
            ('C', 'the frequent fogs off Newfoundland, where it meets the Gulf Stream'),
            ('D', 'the dry climate of the Atacama')
           ) as v(label, option_text)
 where q.question_hash = 'b63698aa78123a9d2423c7cfd9a5e903'
on conflict (question_id, label) do nothing;

-- geography | oceanography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'The ''Antarctic Circumpolar Current'' has an important role in:',
    'The cold dense waters formed in the Southern Ocean sink and drive the global overturning circulation, while the circulation also allows the deep ocean to store carbon for long periods.',
    'medium',
    'Standard Reference',
    null,
    '3e5f04e44826708baf162746263e6885'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '3e5f04e44826708baf162746263e6885'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the global overturning circulation and the storage of carbon in the deep ocean'),
            ('B', 'the formation of the Gulf Stream'),
            ('C', 'the salinity of the Red Sea'),
            ('D', 'the monsoon winds of the Indian Ocean')
           ) as v(label, option_text)
 where q.question_hash = '3e5f04e44826708baf162746263e6885'
on conflict (question_id, label) do nothing;

-- geography | oceanography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'The ''Sargasso Sea'' lies in the:',
    'The Sargasso Sea is the only sea without a land boundary, in the subtropical North Atlantic, and its floating sargassum weed supports a distinctive marine community.',
    'medium',
    'Standard Reference',
    null,
    '84a3fcad6f8a8d90fd3d446652b30b28'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '84a3fcad6f8a8d90fd3d446652b30b28'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Southern Ocean'),
            ('B', 'North Atlantic Ocean'),
            ('C', 'Pacific Ocean'),
            ('D', 'Indian Ocean')
           ) as v(label, option_text)
 where q.question_hash = '84a3fcad6f8a8d90fd3d446652b30b28'
on conflict (question_id, label) do nothing;

-- geography | oceanography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'The ''Coral Triangle'' is located in:',
    'The Coral Triangle, centred on Indonesian waters, holds the world''s greatest diversity of reef species, including most of the known species of reef-building corals, and it is also the most threatened by warming and acidification.',
    'medium',
    'Standard Reference',
    null,
    'a9a65297101eee6be95872fec05fb694'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'a9a65297101eee6be95872fec05fb694'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the western Indian Ocean'),
            ('B', 'the Red Sea'),
            ('C', 'the seas around Indonesia, the Philippines, Malaysia and Papua New Guinea'),
            ('D', 'the Caribbean Sea')
           ) as v(label, option_text)
 where q.question_hash = 'a9a65297101eee6be95872fec05fb694'
on conflict (question_id, label) do nothing;

-- geography | oceanography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'Which of the following statements is/are correct in relation to the Weddell Sea?',
    'The Ross Sea and the Weddell Sea are the two deep embayments of the Antarctic coast, and the Ross Sea is the southernmost open water of the world, where the Ross Ice Shelf and Mount Erebus are found.',
    'medium',
    'Standard Reference',
    null,
    '955903a0cf83cee6ee883515d8c221e2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '955903a0cf83cee6ee883515d8c221e2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Arctic bays adjacent to Greenland'),
            ('B', 'the largest fjords of Norway'),
            ('C', 'the marginal seas of the Indian Ocean'),
            ('D', 'the two great seas of Antarctica')
           ) as v(label, option_text)
 where q.question_hash = '955903a0cf83cee6ee883515d8c221e2'
on conflict (question_id, label) do nothing;

-- geography | world-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''Montreal Protocol'' on ozone-depleting substances was agreed in:',
    'The Montreal Protocol of 1987 placed controls on chlorofluorocarbons and other ozone-depleting substances and is widely regarded as the most successful environmental agreement to date.',
    'medium',
    'Standard Reference',
    null,
    '330d4484a802ae9c764a107cdaed8d22'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '330d4484a802ae9c764a107cdaed8d22'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1987'),
            ('B', '1992'),
            ('C', '1985'),
            ('D', '1990')
           ) as v(label, option_text)
 where q.question_hash = '330d4484a802ae9c764a107cdaed8d22'
on conflict (question_id, label) do nothing;

-- geography | world-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''Paris Agreement'' of 2015 aims to:',
    'The Paris Agreement works on nationally determined contributions with a global stocktake every five years, and both the 2 degrees and the 1.5 degrees goals are stated in the treaty text.',
    'easy',
    'Standard Reference',
    null,
    '418ad55e03ab0da7b52f9bacfb8881cf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '418ad55e03ab0da7b52f9bacfb8881cf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'replace the IPCC with a new scientific body'),
            ('B', 'hold the increase in global average temperature to well below 2 degrees Celsius above pre-industrial levels and pursue efforts to limit it to 1.5 degrees'),
            ('C', 'reduce the greenhouse gas emissions of Annex I countries by 5 per cent against 1990 levels'),
            ('D', 'bind all states to uniform emission reduction commitments')
           ) as v(label, option_text)
 where q.question_hash = '418ad55e03ab0da7b52f9bacfb8881cf'
on conflict (question_id, label) do nothing;

-- geography | human-geography | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'human-geography'),
    'The phenomenon of a sharp fall in the rate of population growth in the late twentieth century is called the:',
    'The demographic transition describes the shift from high birth and death rates with high growth to low birth and death rates with low growth, and it passed through different stages in different countries.',
    'hard',
    'NCERT Class XII',
    null,
    '866d49f4415149a86d058335fa395ad5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '866d49f4415149a86d058335fa395ad5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'urban renaissance'),
            ('B', 'dependency crisis'),
            ('C', 'population explosion'),
            ('D', 'demographic transition')
           ) as v(label, option_text)
 where q.question_hash = '866d49f4415149a86d058335fa395ad5'
on conflict (question_id, label) do nothing;

-- geography | human-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'human-geography'),
    'A metropolitan area in India is defined as one with:',
    'Under the Census definition, a metropolitan area has a population of one lakh or more with a contiguous urban area of at least ten lakh, and a town has five thousand or more with a dense and permanent population.',
    'medium',
    'Standard Reference',
    null,
    'e2e7a54f6c0bcb064ed13bba819c33b9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e2e7a54f6c0bcb064ed13bba819c33b9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a population of five lakh or more'),
            ('B', 'a municipal corporation status'),
            ('C', 'a population of one lakh or more with a contiguous urban area of at least ten lakh'),
            ('D', 'a population of one lakh or more')
           ) as v(label, option_text)
 where q.question_hash = 'e2e7a54f6c0bcb064ed13bba819c33b9'
on conflict (question_id, label) do nothing;

-- geography | human-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'human-geography'),
    'The term ''megacity'' is used for a city with:',
    'A megacity has more than ten million inhabitants, and by the United Nations reckoning the number of such cities has grown sharply since 2000, most of them in Asia and Africa.',
    'medium',
    'Standard Reference',
    null,
    'e935f7b4aff21dc1d8dd53d2e1a7a823'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e935f7b4aff21dc1d8dd53d2e1a7a823'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'more than fifty million inhabitants'),
            ('B', 'more than ten million inhabitants'),
            ('C', 'more than one million inhabitants'),
            ('D', 'more than twenty million inhabitants')
           ) as v(label, option_text)
 where q.question_hash = 'e935f7b4aff21dc1d8dd53d2e1a7a823'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'Norman Borlaug, who is called the ''Father of the Green Revolution'', was awarded the Nobel Peace Prize in:',
    'Norman Borlaug received the Nobel Peace Prize in 1970 for developing high-yielding varieties of wheat and maize, and the prize citation described him as the man who has ''saved more lives than any other person in history''.',
    'hard',
    'Standard Reference',
    null,
    '91727eb0850a7e2b702958e5e101e8f9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '91727eb0850a7e2b702958e5e101e8f9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1970'),
            ('B', '1965'),
            ('C', '1975'),
            ('D', '1980')
           ) as v(label, option_text)
 where q.question_hash = '91727eb0850a7e2b702958e5e101e8f9'
on conflict (question_id, label) do nothing;

-- geography | world-geography | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The Mekong river rises in the Tibetan plateau and flows through China, Myanmar, Laos, Thailand, Cambodia and Vietnam before emptying into the:',
    'The Mekong is the longest river of mainland South-East Asia, about 4,800 kilometres long, and its delta in Vietnam forms the country''s rice bowl and the backbone of its inland waterway network.',
    'hard',
    'Standard Reference',
    null,
    'ca6f0060c05bd32ce745234e0cddd358'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'ca6f0060c05bd32ce745234e0cddd358'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Gulf of Thailand'),
            ('B', 'South China Sea'),
            ('C', 'Bay of Bengal'),
            ('D', 'Java Sea')
           ) as v(label, option_text)
 where q.question_hash = 'ca6f0060c05bd32ce745234e0cddd358'
on conflict (question_id, label) do nothing;

-- geography | map-locations | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The ''Iron Gate'' gorge of the Danube is located on the border of:',
    'The Iron Gate gorge, through which the Danube cuts between the Iron Gates mountains, marks the frontier between Romania and Serbia and is the site of the Djerdap hydroelectric project.',
    'hard',
    'Standard Reference',
    null,
    '36fe7cac62454bd7dcf9f2d9c20b2f89'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '36fe7cac62454bd7dcf9f2d9c20b2f89'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Romania and Serbia'),
            ('B', 'Slovakia and Hungary'),
            ('C', 'Hungary and Austria'),
            ('D', 'Bulgaria and Romania')
           ) as v(label, option_text)
 where q.question_hash = '36fe7cac62454bd7dcf9f2d9c20b2f89'
on conflict (question_id, label) do nothing;

-- geography | world-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The White Nile originates mainly from:',
    'The White Nile flows from Lake Victoria and Lake Kyoga, while the Blue Nile and the Atbara come from the Ethiopian Highlands, and the combined flow gives the Nile most of its water.',
    'medium',
    'Standard Reference',
    null,
    '4c5a423d8c6ad26982b0418cd88c1152'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '4c5a423d8c6ad26982b0418cd88c1152'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Ethiopian Highlands'),
            ('B', 'the equatorial lakes of the Congo'),
            ('C', 'Lake Victoria and Lake Kyoga'),
            ('D', 'Lake Tana')
           ) as v(label, option_text)
 where q.question_hash = '4c5a423d8c6ad26982b0418cd88c1152'
on conflict (question_id, label) do nothing;

-- geography | world-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The Volga, the longest river of Europe, empties into the:',
    'The Volga flows into the Caspian Sea, the world''s largest enclosed body of water, and the Volga-Caspian system accounts for a large share of the drainage of European Russia.',
    'medium',
    'Standard Reference',
    null,
    '165c9336f21d269685a6d1f6ef18cd55'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '165c9336f21d269685a6d1f6ef18cd55'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Black Sea'),
            ('B', 'Baltic Sea'),
            ('C', 'Mediterranean Sea'),
            ('D', 'Caspian Sea')
           ) as v(label, option_text)
 where q.question_hash = '165c9336f21d269685a6d1f6ef18cd55'
on conflict (question_id, label) do nothing;

-- geography | resources-and-minerals | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'resources-and-minerals'),
    'The Ural mountain range is significant because it:',
    'The Urals are among the oldest mountains of the world, yet they hold enormous deposits of oil, natural gas, coal, iron ore, copper, nickel and diamonds, which made them the foundation of Russian industrialisation.',
    'medium',
    'Standard Reference',
    null,
    '55476ac2d4ee1ee3dfec9145c9a57fec'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '55476ac2d4ee1ee3dfec9145c9a57fec'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'separates Europe from Asia and contains the rich Ural mineral belt'),
            ('B', 'forms the northern limit of the Indian subcontinent'),
            ('C', 'is the youngest fold mountain system of the world'),
            ('D', 'marks the boundary between the Pacific and the Indian oceans')
           ) as v(label, option_text)
 where q.question_hash = '55476ac2d4ee1ee3dfec9145c9a57fec'
on conflict (question_id, label) do nothing;

-- geography | resources-and-minerals | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'resources-and-minerals'),
    'The famous black soil chernozem belt of the world lies in:',
    'The chernozem belt extends across the Russian and Ukrainian steppes and into the Canadian prairies, and its deep fertile humus made it the granary of eastern Europe.',
    'medium',
    'Standard Reference',
    null,
    'd286590cefc184bafe35e3e439bc66aa'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd286590cefc184bafe35e3e439bc66aa'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Amazon basin'),
            ('B', 'the Deccan Plateau'),
            ('C', 'the grassland zone of the Eurasian steppes'),
            ('D', 'the Nile valley')
           ) as v(label, option_text)
 where q.question_hash = 'd286590cefc184bafe35e3e439bc66aa'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'The ''Prairie provinces'' of Canada are:',
    'The three prairie provinces of Alberta, Saskatchewan and Manitoba contain the bulk of Canada''s wheat production, and their chernozem soils are among the most fertile in the world.',
    'medium',
    'Standard Reference',
    null,
    'a33104c9be6b4449d5e9044c3104cc82'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a33104c9be6b4449d5e9044c3104cc82'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Nova Scotia and New Brunswick'),
            ('B', 'Alberta, Saskatchewan and Manitoba'),
            ('C', 'Ontario and Quebec'),
            ('D', 'British Columbia and Alberta')
           ) as v(label, option_text)
 where q.question_hash = 'a33104c9be6b4449d5e9044c3104cc82'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'Australia is the world''s largest exporter of:',
    'Australia is the largest producer and exporter of wool in the world, and it is also a leading exporter of wheat, iron ore, coal and beef, which makes it a major resource exporter despite its small population.',
    'medium',
    'Standard Reference',
    null,
    'cd440fa358b4c10615c2fd49d5c1dac3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'cd440fa358b4c10615c2fd49d5c1dac3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'wheat'),
            ('B', 'sugar'),
            ('C', 'coffee'),
            ('D', 'wool')
           ) as v(label, option_text)
 where q.question_hash = 'cd440fa358b4c10615c2fd49d5c1dac3'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'New Zealand is the world''s largest exporter of:',
    'New Zealand is the largest exporter of dairy products in the world, and its dairy exports, together with meat, wool and forestry products, account for a large share of its export earnings.',
    'medium',
    'Standard Reference',
    null,
    '44f5a0ecfdacacf614dfadeaa43dd9c0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '44f5a0ecfdacacf614dfadeaa43dd9c0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'beef'),
            ('B', 'cocoa'),
            ('C', 'wool'),
            ('D', 'dairy products')
           ) as v(label, option_text)
 where q.question_hash = '44f5a0ecfdacacf614dfadeaa43dd9c0'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'The coffee ''Belt of Brazil'' runs through the states of:',
    'Brazil''s coffee belt lies in the south-east of the country around Minas Gerais, Sao Paulo and Espirito Santo, and the country has been the world''s largest coffee producer for well over a century.',
    'medium',
    'Standard Reference',
    null,
    '0368b419805c71d7d27fe237165ec2fa'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '0368b419805c71d7d27fe237165ec2fa'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Minas Gerais, Sao Paulo and Espirito Santo'),
            ('B', 'Bahia and Pernambuco'),
            ('C', 'Amazonas and Para'),
            ('D', 'Rio Grande do Sul and Parana')
           ) as v(label, option_text)
 where q.question_hash = '0368b419805c71d7d27fe237165ec2fa'
on conflict (question_id, label) do nothing;

-- geography | world-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''Llanos'' of Venezuela and Colombia are:',
    'The Llanos are seasonally flooded tropical savannas that occupy the flat lands between the Andes and the Caribbean coast, and they are the cattle country of northern South America.',
    'medium',
    'Standard Reference',
    null,
    '6d0bc1617ef4e5ca9c021bf0c0e423bd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '6d0bc1617ef4e5ca9c021bf0c0e423bd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'desert scrubs'),
            ('B', 'tropical grasslands or savannas'),
            ('C', 'tropical rainforests'),
            ('D', 'alpine meadows')
           ) as v(label, option_text)
 where q.question_hash = '6d0bc1617ef4e5ca9c021bf0c0e423bd'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'Egypt''s agriculture depends on the Nile and is critically dependent on:',
    'The Aswan High Dam, completed in 1970, created Lake Nasser and allowed year-round irrigation and multiple cropping, but it also reduced the silt that used to fertilise the fields and increased salinity problems.',
    'medium',
    'Standard Reference',
    null,
    '75d2fc195c2fb894550a8ff287e0d7bd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '75d2fc195c2fb894550a8ff287e0d7bd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the groundwater of the Sahara'),
            ('B', 'the seasonal flooding of the Senegal river'),
            ('C', 'the Aswan High Dam and the irrigation system it supports'),
            ('D', 'the monsoon rainfall of the Ethiopian plateau')
           ) as v(label, option_text)
 where q.question_hash = '75d2fc195c2fb894550a8ff287e0d7bd'
on conflict (question_id, label) do nothing;

-- geography | world-geography | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''Pantanal'' of Brazil and Paraguay is the world''s largest:',
    'The Pantanal is the largest tropical wetland in the world, a flood-prone basin in which the Paraguay river spreads into vast seasonal marshes with an extraordinary biodiversity.',
    'hard',
    'Standard Reference',
    null,
    '2b4d7691922fe624196fbd4147f4d01c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '2b4d7691922fe624196fbd4147f4d01c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'tropical wetland'),
            ('B', 'alpine pasture'),
            ('C', 'coral reef system'),
            ('D', 'savanna of red soil')
           ) as v(label, option_text)
 where q.question_hash = '2b4d7691922fe624196fbd4147f4d01c'
on conflict (question_id, label) do nothing;

-- geography | disaster-management | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'disaster-management'),
    'The ''Black Sea Grain Initiative'' was designed to facilitate:',
    'The initiative, brokered by the United Nations and Turkey, opened the Black Sea ports for the safe passage of grain and fertiliser exports from Ukraine, which is a major source of world wheat and maize.',
    'medium',
    'Standard Reference',
    null,
    '93ba76492162b1d2669646c59bc0f496'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '93ba76492162b1d2669646c59bc0f496'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the sale of Russian grain through the Baltic ports'),
            ('B', 'the migration of labour from Central Asia'),
            ('C', 'the transit of Gulf oil through the Suez route'),
            ('D', 'the export of grain and fertilisers from the Black Sea region through Ukrainian ports')
           ) as v(label, option_text)
 where q.question_hash = '93ba76492162b1d2669646c59bc0f496'
on conflict (question_id, label) do nothing;

-- geography | disaster-management | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'disaster-management'),
    'The San Andreas Fault is a boundary between the:',
    'The San Andreas Fault is a transform boundary between the Pacific and the North American plates, and movement along it has caused major earthquakes such as the 1906 and 1989 San Francisco events.',
    'medium',
    'Standard Reference',
    null,
    '70b747ffaad115b9dc4ba57272dbfa45'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '70b747ffaad115b9dc4ba57272dbfa45'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Nazca and South American plates'),
            ('B', 'North American and Eurasian plates'),
            ('C', 'Pacific and North American plates'),
            ('D', 'Pacific and South American plates')
           ) as v(label, option_text)
 where q.question_hash = '70b747ffaad115b9dc4ba57272dbfa45'
on conflict (question_id, label) do nothing;

-- geography | disaster-management | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'disaster-management'),
    'The name for a tropical cyclone in the western Pacific Ocean is a:',
    'The same phenomenon is called a hurricane in the Atlantic and the eastern Pacific, a cyclone in the Indian Ocean and the south-west Pacific, and a typhoon in the western Pacific.',
    'hard',
    'Standard Reference',
    null,
    '9abae3250d7379aa9d45a14036fae9f6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '9abae3250d7379aa9d45a14036fae9f6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'willy-willies'),
            ('B', 'typhoon'),
            ('C', 'hurricane'),
            ('D', 'cyclone')
           ) as v(label, option_text)
 where q.question_hash = '9abae3250d7379aa9d45a14036fae9f6'
on conflict (question_id, label) do nothing;

-- geography | disaster-management | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'disaster-management'),
    'The 2004 Indian Ocean tsunami was generated by an undersea earthquake off the:',
    'The magnitude 9.0 earthquake off the west coast of Sumatra generated the tsunami that struck the shores of a dozen countries, and the Indian coastline faced its force in the Andaman and Nicobar Islands, Tamil Nadu, Kerala and Andhra Pradesh.',
    'easy',
    'Standard Reference',
    null,
    '0ac65f189912c0bed2ae6244dead9b5d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '0ac65f189912c0bed2ae6244dead9b5d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sumatra'),
            ('B', 'Nicobar Islands only'),
            ('C', 'Java'),
            ('D', 'Srilanka')
           ) as v(label, option_text)
 where q.question_hash = '0ac65f189912c0bed2ae6244dead9b5d'
on conflict (question_id, label) do nothing;

-- geography | disaster-management | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'disaster-management'),
    'The Great East Japan Earthquake and tsunami of 2011 caused the Fukushima Daiichi nuclear accident because of:',
    'The tsunami flooded the diesel generators that were the last line of off-site cooling, and without cooling the reactors and the spent fuel pools overheated, causing the release of radioactive material.',
    'easy',
    'Standard Reference',
    null,
    '113b0579cda76c0da9ffd49631650fd7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '113b0579cda76c0da9ffd49631650fd7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a direct strike of the tsunami on the reactor core'),
            ('B', 'a deliberate design flaw in the containment'),
            ('C', 'the loss of off-site power and the failure of the emergency diesel generators, leading to the decay of residual heat'),
            ('D', 'an earthquake of a magnitude never recorded before')
           ) as v(label, option_text)
 where q.question_hash = '113b0579cda76c0da9ffd49631650fd7'
on conflict (question_id, label) do nothing;

-- geography | world-geography | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'Which mountain ranges form the western mountain wall of North America, separating the Pacific from the interior?',
    'The Coast Range, the Cascade Range and the Sierra Nevada together form the western mountain wall of North America, and the Cascades contain the volcanoes such as Mount St Helens and Mount Rainier.',
    'hard',
    'Standard Reference',
    null,
    '860060b0fa07a352229baaf14dec44a9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '860060b0fa07a352229baaf14dec44a9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Sierra Nevada'),
            ('B', 'the Appalachian Mountains'),
            ('C', 'the Great Basin ranges'),
            ('D', 'the Coast Mountains and the Cascades')
           ) as v(label, option_text)
 where q.question_hash = '860060b0fa07a352229baaf14dec44a9'
on conflict (question_id, label) do nothing;

-- geography | soil-and-vegetation | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'soil-and-vegetation'),
    'The black soil of the Deccan is formed from the weathering of:',
    'The black soil or regur of the Deccan is derived from the weathering of the basaltic lava of the Deccan Trap, and it is also called the black cotton soil for its remarkable moisture retention.',
    'easy',
    'NCERT Class XII',
    null,
    '5fdf716243db7aa5e5f0db3c2473b29c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '5fdf716243db7aa5e5f0db3c2473b29c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the alluvium of the Godavari'),
            ('B', 'the basaltic lava of the Deccan Trap'),
            ('C', 'the laterite of the Western Ghats'),
            ('D', 'the granite of the Peninsular plateau')
           ) as v(label, option_text)
 where q.question_hash = '5fdf716243db7aa5e5f0db3c2473b29c'
on conflict (question_id, label) do nothing;

-- geography | soil-and-vegetation | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'soil-and-vegetation'),
    'The ''usar'' or ''reh'' lands of northern India are:',
    'The usar lands are the saline and alkaline soils of the semi-arid regions, called ''reh'' in Rajasthan, ''kallar'' in the Punjab and Uttar Pradesh and ''thor'' in Gujarat, and they are reclaimed with the gypsum and the drainage.',
    'easy',
    'NCERT Class XII',
    null,
    'f9db171641771aba6d40aedb9e95ce45'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'f9db171641771aba6d40aedb9e95ce45'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the peaty soils of Kerala'),
            ('B', 'the black soils of the Deccan'),
            ('C', 'saline and alkaline soils found in the semi-arid regions'),
            ('D', 'the sandy soils of the Thar')
           ) as v(label, option_text)
 where q.question_hash = 'f9db171641771aba6d40aedb9e95ce45'
on conflict (question_id, label) do nothing;

-- geography | soil-and-vegetation | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'soil-and-vegetation'),
    'The laterite soil of India is found in the areas of:',
    'Laterite is formed by the intense leaching of the soluble materials in the heavy rainfall and the high temperature regions, and it is rich in the iron and the aluminium oxides and is used as the building blocks in the coastal architecture.',
    'easy',
    'NCERT Class XII',
    null,
    'f5c1e4e58e8154bcd3203775c3ecd18f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f5c1e4e58e8154bcd3203775c3ecd18f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the arid regions of western Rajasthan'),
            ('B', 'heavy rainfall and high temperature'),
            ('C', 'low rainfall and a cold climate'),
            ('D', 'the high altitude of the Himalayan ranges')
           ) as v(label, option_text)
 where q.question_hash = 'f5c1e4e58e8154bcd3203775c3ecd18f'
on conflict (question_id, label) do nothing;

-- geography | soil-and-vegetation | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'soil-and-vegetation'),
    'The ''sheet'', ''rill'' and ''gully'' are the successive stages of:',
    'Sheet erosion removes the thin films of the topsoil, the rill erosion cuts the small channels and the gully erosion forms the deep channels that cannot be smoothed by the normal tillage, and all the three are the stages of the water erosion.',
    'easy',
    'NCERT Class XII',
    null,
    '748472f7fb7264ebe20adaef34e34e57'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '748472f7fb7264ebe20adaef34e34e57'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'soil erosion by the running water'),
            ('B', 'the denudation of the hills'),
            ('C', 'the weathering of the rocks'),
            ('D', 'the deposition of the alluvium')
           ) as v(label, option_text)
 where q.question_hash = '748472f7fb7264ebe20adaef34e34e57'
on conflict (question_id, label) do nothing;

-- geography | soil-and-vegetation | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'soil-and-vegetation'),
    'The ''shelter belts'' and the ''wind breaks'' are measures of:',
    'The shelter belts and the wind breaks are lines of trees planted to check the wind velocity and to trap the moving sand, and they are an effective measure against the wind erosion and the desertification.',
    'easy',
    'NCERT Class XII',
    null,
    'bbe55a275fb805fe3840e3fbabad405b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'bbe55a275fb805fe3840e3fbabad405b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the prevention of the soil erosion by the rivers'),
            ('B', 'the improvement of the irrigation'),
            ('C', 'the control of the desertification of the land'),
            ('D', 'the prevention of the wind erosion and the conservation of the soil')
           ) as v(label, option_text)
 where q.question_hash = 'bbe55a275fb805fe3840e3fbabad405b'
on conflict (question_id, label) do nothing;

-- geography | soil-and-vegetation | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'soil-and-vegetation'),
    'The ''tropical evergreen'' forests of India occur mainly in:',
    'The tropical evergreen forests grow where the rainfall exceeds 200 cm and the temperature is high throughout the year, and they are found on the western coast, in the north-east and in the Andaman and Nicobar Islands.',
    'easy',
    'NCERT Class XII',
    null,
    '149de844f434dccebd38940fe840e032'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '149de844f434dccebd38940fe840e032'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the dry interior of Rajasthan'),
            ('B', 'the high altitudes of Ladakh'),
            ('C', 'the western deserts of Gujarat'),
            ('D', 'the western coast, the north-east and the Andaman and Nicobar Islands')
           ) as v(label, option_text)
 where q.question_hash = '149de844f434dccebd38940fe840e032'
on conflict (question_id, label) do nothing;

-- geography | soil-and-vegetation | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'soil-and-vegetation'),
    'The ''teak'' is the most characteristic species of the:',
    'The teak is the dominant species of the tropical deciduous or the monsoon forests, which are the most widespread forest type in India and are found in the regions of a rainfall between 70 and 200 cm.',
    'easy',
    'NCERT Class XII',
    null,
    'e510790ee11d30da35108b30a1163da4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'e510790ee11d30da35108b30a1163da4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'mangrove forests'),
            ('B', 'montane coniferous forests'),
            ('C', 'temperate grasslands'),
            ('D', 'tropical deciduous forests')
           ) as v(label, option_text)
 where q.question_hash = 'e510790ee11d30da35108b30a1163da4'
on conflict (question_id, label) do nothing;

-- geography | soil-and-vegetation | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'soil-and-vegetation'),
    'The ''babul'', ''khejri'' and ''cactus'' are the typical species of the:',
    'The tropical thorn forests of the arid and the semi-arid regions of the west have the xerophytic species like the babool, the khejri, the cactus and the date palm, and they are the natural vegetation of the Thar and of the Rajasthan.',
    'easy',
    'NCERT Class XII',
    null,
    '1103cf3f92dae0e4c36c8026298bb137'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '1103cf3f92dae0e4c36c8026298bb137'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'tropical deciduous forests'),
            ('B', 'montane forests'),
            ('C', 'tropical thorn forests'),
            ('D', 'mangrove forests')
           ) as v(label, option_text)
 where q.question_hash = '1103cf3f92dae0e4c36c8026298bb137'
on conflict (question_id, label) do nothing;

-- geography | soil-and-vegetation | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'soil-and-vegetation'),
    'The ''Sundari'' tree is associated with the:',
    'The Sundari, the Rhizophora and the Ceriops are the characteristic species of the mangrove forests, which grow in the tidal mud of the estuaries and the deltas, and the Sundarban is the largest mangrove forest in the world.',
    'easy',
    'NCERT Class XII',
    null,
    'a1d890b2960cbb4d8e91cafea35b098c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a1d890b2960cbb4d8e91cafea35b098c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the dry deciduous forests'),
            ('B', 'mangrove forests'),
            ('C', 'the tropical evergreen forests'),
            ('D', 'the montane forests')
           ) as v(label, option_text)
 where q.question_hash = 'a1d890b2960cbb4d8e91cafea35b098c'
on conflict (question_id, label) do nothing;

-- geography | soil-and-vegetation | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'soil-and-vegetation'),
    'The ''deodar'', ''pine'' and ''silver fir'' are the species of the:',
    'The montane or the temperate forests occur at a height of about 1,500 to 3,000 metres in the Himalayas and the western ghats and they yield the deodar, the pine, the silver fir, the oak and the cedar.',
    'easy',
    'NCERT Class XII',
    null,
    'a2345b641da7cf56a047ab7b6ffdd179'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'a2345b641da7cf56a047ab7b6ffdd179'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'tropical thorn forests'),
            ('B', 'the mangrove forests'),
            ('C', 'montane forests'),
            ('D', 'tropical deciduous forests')
           ) as v(label, option_text)
 where q.question_hash = 'a2345b641da7cf56a047ab7b6ffdd179'
on conflict (question_id, label) do nothing;

-- geography | soil-and-vegetation | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'soil-and-vegetation'),
    'The alpine meadows of the higher Himalayas are locally called the:',
    'The bugyals are the alpine meadows of the higher Himalayas of Ladakh and of the Spiti where the yaks and the sheep graze in the summer, and the shola is the scrub of the transitional zone below the tree line.',
    'hard',
    'NCERT Class XII',
    null,
    'c1d4756eca44a4d3ad8f8effafb99838'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'c1d4756eca44a4d3ad8f8effafb99838'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bugyal'),
            ('B', 'Dhoop'),
            ('C', 'Chaparral'),
            ('D', 'Shola')
           ) as v(label, option_text)
 where q.question_hash = 'c1d4756eca44a4d3ad8f8effafb99838'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'The ''Kharif'' crops of India are:',
    'The kharif crops are sown with the onset of the southwest monsoon in the June-July and are harvested in the September-October, and the rice, the maize, the jowar, the bajra, the cotton and the jute are the principal kharif crops.',
    'easy',
    'NCERT Class XII',
    null,
    'b302c3f9c6e09c0200252ee43ebf9288'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b302c3f9c6e09c0200252ee43ebf9288'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'grown only in the irrigated tracts of the Punjab'),
            ('B', 'sown with the onset of the monsoon and harvested in the September-October'),
            ('C', 'sown in the winter and harvested in the spring'),
            ('D', 'grown in the summer months between the rabi and the kharif')
           ) as v(label, option_text)
 where q.question_hash = 'b302c3f9c6e09c0200252ee43ebf9288'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'The ''Aus'' season of rice cultivation is practised in:',
    'The aus or the autumn rice is the third rice crop of the year in the irrigated tracts of West Bengal, where the boro, the aman and the aus crops are grown in sequence on the same land.',
    'easy',
    'Standard Reference',
    null,
    'ae193b12958f93b67e76ee040561944c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'ae193b12958f93b67e76ee040561944c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Punjab'),
            ('B', 'Kerala'),
            ('C', 'Rajasthan'),
            ('D', 'West Bengal')
           ) as v(label, option_text)
 where q.question_hash = 'ae193b12958f93b67e76ee040561944c'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'The ''cropping intensity'' of a region is:',
    'Cropping intensity equals the gross cropped area divided by the net sown area, so an intensity of 100 per cent means that the land is sown only once a year, and the multiple cropping raises it above 100 per cent.',
    'easy',
    'Standard Reference',
    null,
    'bdf802facb2af9b99b8895398258d954'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'bdf802facb2af9b99b8895398258d954'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the ratio of the irrigated area to the net sown area'),
            ('B', 'the ratio of the gross cropped area to the net sown area'),
            ('C', 'the ratio of the foodgrain production to the net sown area'),
            ('D', 'the ratio of the area under the commercial crops to the total area')
           ) as v(label, option_text)
 where q.question_hash = 'bdf802facb2af9b99b8895398258d954'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'The ''Ahar'' system of cultivation is associated with:',
    'In the Ahar system of the eastern India the winter rice is sown in the monsoon season on the lowlands using the residual moisture and the wheat follows in the rabi, and the system is also known as the monsoon cropping.',
    'easy',
    'Standard Reference',
    null,
    '5e16c2dfaa63e14a5c5ad449c411cf97'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '5e16c2dfaa63e14a5c5ad449c411cf97'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Tamil Nadu delta'),
            ('B', 'the Konkan coast'),
            ('C', 'Bihar and the eastern Uttar Pradesh'),
            ('D', 'the Bundelkhand region')
           ) as v(label, option_text)
 where q.question_hash = '5e16c2dfaa63e14a5c5ad449c411cf97'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'The ''Zaid'' season crops of India include:',
    'The Zaid is the short summer season between the rabi and the kharif and the crops grown in it are the water melons, the muskmelons, the cucumbers and the fodder and the moong, and the irrigation is essential for them.',
    'easy',
    'NCERT Class XII',
    null,
    'a7c984d3403f0a7ea3c34398f99b720d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a7c984d3403f0a7ea3c34398f99b720d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'rice and wheat'),
            ('B', 'sugarcane and cotton'),
            ('C', 'the millets and the oilseeds'),
            ('D', 'watermelon, muskmelon, cucumber and the fodder crops')
           ) as v(label, option_text)
 where q.question_hash = 'a7c984d3403f0a7ea3c34398f99b720d'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'The ''Terai'' belt is characterised by:',
    'The Terai is the marshy belt of the alluvium south of the Bhabar where the streams reappear and the ground is wet and fertile, and the mithai or the sugarcane and the rice are the characteristic crops.',
    'medium',
    'NCERT Class XII',
    null,
    'd42c282ed94b15e50f10e9e41af1b5e0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd42c282ed94b15e50f10e9e41af1b5e0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'dense forest, marshy land and the numerous streams that disappear in the Bhabar'),
            ('B', 'the coarse sandy soil of the arid west'),
            ('C', 'the black soil of the river terraces'),
            ('D', 'the laterite plateau of the peninsula')
           ) as v(label, option_text)
 where q.question_hash = 'd42c282ed94b15e50f10e9e41af1b5e0'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'The ''rabi'' crops of India are sown in the month of:',
    'The rabi crops are sown in the cool season from the middle of October to the middle of November with the arrival of the winter rains and they are harvested in March and April.',
    'easy',
    'NCERT Class XII',
    null,
    '923ee7ff264103b1a2c49eb3b3be62c1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '923ee7ff264103b1a2c49eb3b3be62c1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'January and February'),
            ('B', 'June and July'),
            ('C', 'October and November'),
            ('D', 'March and April')
           ) as v(label, option_text)
 where q.question_hash = '923ee7ff264103b1a2c49eb3b3be62c1'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'The ''rabi'' crop that covers the largest area in India is:',
    'Wheat is the most important rabi crop and with the gram, the mustard and the barley it accounts for the bulk of the area sown in the winter across the Indo-Gangetic plain.',
    'medium',
    'Standard Reference',
    null,
    '2c243d70f9c10d13e6ce085e4e1a32c8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '2c243d70f9c10d13e6ce085e4e1a32c8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'barley'),
            ('B', 'gram'),
            ('C', 'mustard'),
            ('D', 'wheat')
           ) as v(label, option_text)
 where q.question_hash = '2c243d70f9c10d13e6ce085e4e1a32c8'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'The ''Jute'' is a fibre crop grown mainly in the states of:',
    'Jute, the golden fibre, needs the alluvial soil of the humid Bengal and the Brahmaputra valley, and West Bengal, Bihar, Assam, Odisha and Meghalaya account for the bulk of the production.',
    'medium',
    'NCERT Class XII',
    null,
    '4a6f8369a77d0957522d768bd12768de'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '4a6f8369a77d0957522d768bd12768de'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'West Bengal, Bihar, Assam and Odisha'),
            ('B', 'Kerala and Tamil Nadu'),
            ('C', 'Punjab and Haryana'),
            ('D', 'Gujarat and Rajasthan')
           ) as v(label, option_text)
 where q.question_hash = '4a6f8369a77d0957522d768bd12768de'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'The ''Tea'' in India is grown in:',
    'The tea plantations need a warm and humid climate with a well distributed rainfall, and the major growing states are Assam, West Bengal, Tamil Nadu and Kerala with Karnataka and the Nilgiris also being important.',
    'medium',
    'NCERT Class XII',
    null,
    'd64a5063db400b5687fd78df0017ca93'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd64a5063db400b5687fd78df0017ca93'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Odisha and Chhattisgarh'),
            ('B', 'Assam, West Bengal, Tamil Nadu and Kerala'),
            ('C', 'Punjab and Haryana'),
            ('D', 'Rajasthan and Gujarat')
           ) as v(label, option_text)
 where q.question_hash = 'd64a5063db400b5687fd78df0017ca93'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'The ''Rubber'' plantations in India are concentrated in:',
    'Rubber is a tropical plantation crop of the humid equatorial climate and it is grown in the southern and the western ghats regions of Kerala, Tamil Nadu and Karnataka and in Tripura.',
    'medium',
    'NCERT Class XII',
    null,
    '58948af2a38faf94d86cca80fb06b5ec'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '58948af2a38faf94d86cca80fb06b5ec'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Assam and Meghalaya'),
            ('B', 'Kerala, Tamil Nadu, Karnataka and Tripura'),
            ('C', 'Punjab and Haryana'),
            ('D', 'Rajasthan and Gujarat')
           ) as v(label, option_text)
 where q.question_hash = '58948af2a38faf94d86cca80fb06b5ec'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'The ''Coffee'' in India is mainly grown in:',
    'Coffee needs a mild climate with heavy rainfall and the shade of the trees, and the ''Coffee Board'' records the bulk of the production in Karnataka followed by Kerala and Tamil Nadu.',
    'hard',
    'NCERT Class XII',
    null,
    'e905ec140189d4af7a43ccf5ceb6b0b2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'e905ec140189d4af7a43ccf5ceb6b0b2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Karnataka, Kerala and Tamil Nadu'),
            ('B', 'Gujarat and Maharashtra'),
            ('C', 'Assam and West Bengal'),
            ('D', 'Punjab and Haryana')
           ) as v(label, option_text)
 where q.question_hash = 'e905ec140189d4af7a43ccf5ceb6b0b2'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'The ''Apple'' of India is grown in:',
    'The apple requires a cool and temperate climate with the chilling hours of the winter, and the orchards are concentrated in the higher hills of Jammu and Kashmir, Himachal Pradesh and Uttarakhand.',
    'hard',
    'NCERT Class XII',
    null,
    'e809b2bdc7e19bf32f0c2b9d2195fbc7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e809b2bdc7e19bf32f0c2b9d2195fbc7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kerala and Tamil Nadu'),
            ('B', 'Rajasthan and Gujarat'),
            ('C', 'West Bengal and Assam'),
            ('D', 'Jammu and Kashmir, Himachal Pradesh and Uttarakhand')
           ) as v(label, option_text)
 where q.question_hash = 'e809b2bdc7e19bf32f0c2b9d2195fbc7'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'The ''pulses'' in India are mainly grown as:',
    'Most of the pulses like the tur, the urad, the moong and the moth are the kharif crops of the rain fed tracts, and the gram is the notable exception as it is a rabi crop.',
    'hard',
    'Standard Reference',
    null,
    '2717e7697c5be88e197bcbf9a22a2123'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '2717e7697c5be88e197bcbf9a22a2123'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a cold season crop of the hill states'),
            ('B', 'a summer crop of the coastal tracts'),
            ('C', 'kharif crops in the rain fed areas'),
            ('D', 'rabi crops in the irrigated areas')
           ) as v(label, option_text)
 where q.question_hash = '2717e7697c5be88e197bcbf9a22a2123'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'The ''Sugarcane'' in India is a:',
    'Sugarcane is a long duration crop that takes about a year to mature and it occupies the land, which is one reason why it is not a very profitable crop for the farmer despite the assured procurement price.',
    'medium',
    'Standard Reference',
    null,
    '296cf8fdcb8778b51fd34ecc5d17d853'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '296cf8fdcb8778b51fd34ecc5d17d853'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a rabi crop sown in November'),
            ('B', 'a cold season crop of the western plateau'),
            ('C', 'a short duration kharif crop of four months'),
            ('D', 'a long duration crop that occupies the fields for over a year')
           ) as v(label, option_text)
 where q.question_hash = '296cf8fdcb8778b51fd34ecc5d17d853'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'The ''Green Revolution'' in India is associated with the high yielding varieties of:',
    'The Green Revolution of the 1960s was centred on the high yielding varieties of wheat and rice, which lifted the grain production of the country, and it was accompanied by the irrigation expansion and the fertiliser use.',
    'hard',
    'NCERT Class XII',
    null,
    'a4c4dfaf2bb2c020294216c4062cf1ae'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'a4c4dfaf2bb2c020294216c4062cf1ae'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'jute and cotton'),
            ('B', 'tea and coffee'),
            ('C', 'wheat and rice'),
            ('D', 'pulses and millets')
           ) as v(label, option_text)
 where q.question_hash = 'a4c4dfaf2bb2c020294216c4062cf1ae'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'The ''Blue Revolution'' in India relates to:',
    'The Blue Revolution refers to the dramatic increase in the fish production through the modern techniques, the deep sea fishing, the fish breeding and the the aquaculture, and it earned India the title of a leading fish producer.',
    'medium',
    'Standard Reference',
    null,
    'dee41fb5ef4d01048af261d9ff542bcf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'dee41fb5ef4d01048af261d9ff542bcf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the development of the fish production through the modern methods'),
            ('B', 'the high yielding varieties of wheat'),
            ('C', 'the white revolution of the milk'),
            ('D', 'the hybridisation of the plant breeding')
           ) as v(label, option_text)
 where q.question_hash = 'dee41fb5ef4d01048af261d9ff542bcf'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'The ''White Revolution'' in India was associated with:',
    'The White Revolution, led by Dr Verghese Kurien through the Operation Flood, transformed India into the largest producer of milk in the world with the dairy cooperatives of the Amul model.',
    'medium',
    'NCERT Class XII',
    null,
    '7e4696346c734e784689bd0d12554289'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '7e4696346c734e784689bd0d12554289'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the silver revolution in eggs and poultry'),
            ('B', 'the Operation Flood and the increase in the milk production'),
            ('C', 'the high yielding varieties of rice'),
            ('D', 'the golden fibre revolution in jute')
           ) as v(label, option_text)
 where q.question_hash = '7e4696346c734e784689bd0d12554289'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'The ''Golden Revolution'' in India was achieved in:',
    'The Golden Revolution of the 1990s related to the horticulture sector, with India emerging as a leading producer of the fruits, the vegetables, the spices and the honey, and it is also called the Revolution of the Horticulture.',
    'medium',
    'Standard Reference',
    null,
    'f7e17951273a2f19f0910f1303779876'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f7e17951273a2f19f0910f1303779876'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the horticultural crops like the honey, the fruits and the vegetables'),
            ('B', 'the fish production'),
            ('C', 'the non conventional energy sources'),
            ('D', 'the milk production')
           ) as v(label, option_text)
 where q.question_hash = 'f7e17951273a2f19f0910f1303779876'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'The ''Silver Revolution'' in India relates to:',
    'The Silver Revolution refers to the rapid growth of the poultry and the egg production in the country, and the other revolutions of the colours are the green, the white, the blue, the golden and the silver for the eggs and the poultry.',
    'medium',
    'Standard Reference',
    null,
    '67d6d4b78a0ebeb7ffe16c34932cce71'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '67d6d4b78a0ebeb7ffe16c34932cce71'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the fish production'),
            ('B', 'the increase in the egg and the poultry production'),
            ('C', 'the honey production'),
            ('D', 'the milk production')
           ) as v(label, option_text)
 where q.question_hash = '67d6d4b78a0ebeb7ffe16c34932cce71'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'The ''Antyodaya Anna Yojana'' provides:',
    'The Antyodaya Anna Yojana, the poorest of the poor component of the Public Distribution System, provides the free foodgrains to the families that are below the poverty line and are the most vulnerable.',
    'medium',
    'Standard Reference',
    null,
    '3e3d62d633bd1a6543302dc05812c18e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '3e3d62d633bd1a6543302dc05812c18e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the mid day meal in the schools'),
            ('B', 'the subsidised credit to the small farmers'),
            ('C', 'the employment guarantee in the rural areas'),
            ('D', 'free foodgrains to the poorest households of the country')
           ) as v(label, option_text)
 where q.question_hash = '3e3d62d633bd1a6543302dc05812c18e'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'The ''Minimum Support Price'' in India is:',
    'The MSP is the guaranteed price at which the government agencies will procure the crops from the farmers, and the CACP recommends the levels while the procurement is carried out by the FCI, the State agencies and the cooperatives.',
    'medium',
    'Standard Reference',
    null,
    '8a608adf43ced8d08e39911f39b007a3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '8a608adf43ced8d08e39911f39b007a3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the price at which the imports are allowed to enter'),
            ('B', 'the price determined by the Commission for the Agricultural Costs and the Prices for the retail market'),
            ('C', 'the price at which the government assures the procurement from the farmers'),
            ('D', 'the price fixed by the State Governments for the retail sale')
           ) as v(label, option_text)
 where q.question_hash = '8a608adf43ced8d08e39911f39b007a3'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'The ''Net sown area'' in the Indian agriculture statistics is the area:',
    'The net sown area is the area sown with the crops once or more during the year with the area left fallow for less than a year included in it, and the gross sown area is the sum of the areas sown for the different crops in the year.',
    'medium',
    'Standard Reference',
    null,
    'f3776d97365803e3eb5641fe100e0c38'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f3776d97365803e3eb5641fe100e0c38'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'sown with the crops and the land left fallow for a short time is included in it'),
            ('B', 'sown with the crops more than once a year'),
            ('C', 'covered by the forests and the wastelands'),
            ('D', 'irrigated at least once during the year')
           ) as v(label, option_text)
 where q.question_hash = 'f3776d97365803e3eb5641fe100e0c38'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'The ''canal'' irrigation system in India is the largest in:',
    'The canal system dominates the irrigation of the northern plain where the rivers of the Himalaya and the peninsular rivers feed the extensive canal commands, and the well system is the largest in the Deccan.',
    'medium',
    'NCERT Class XII',
    null,
    'aad0e6cd09a384cbc0300daeb79da9ba'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'aad0e6cd09a384cbc0300daeb79da9ba'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Deccan plateau'),
            ('B', 'the coastal areas of the west'),
            ('C', 'the northern plain'),
            ('D', 'the coastal areas of the east')
           ) as v(label, option_text)
 where q.question_hash = 'aad0e6cd09a384cbc0300daeb79da9ba'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'The ''well irrigation'' is the dominant source of irrigation in:',
    'The wells and the tube wells are the main source of the irrigation in the hard rock of the Deccan plateau because the percolation of the water is easier there, while the Punjab and the Bengal depend on the canals.',
    'medium',
    'NCERT Class XII',
    null,
    'f3a7338c74c5e4d2ddd7d6170090b38f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'f3a7338c74c5e4d2ddd7d6170090b38f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Punjab plains'),
            ('B', 'the Bengal delta'),
            ('C', 'the coastal Andhra'),
            ('D', 'the Deccan plateau')
           ) as v(label, option_text)
 where q.question_hash = 'f3a7338c74c5e4d2ddd7d6170090b38f'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'The ''Per Drop More Crop'' programme under the PMKSY aims at:',
    'The Per Drop More Crop component of the PMKSY promotes the micro irrigation to improve the water use efficiency, while the Watershed Development Component works in the rain fed areas and the AIBP covers the command area development.',
    'medium',
    'PIB',
    null,
    'ac8c4780670f65b6abb2322d097537af'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'ac8c4780670f65b6abb2322d097537af'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the diversification of the cropping pattern in the rain fed areas'),
            ('B', 'the promotion of the water use efficiency through the drip and the sprinkler irrigation'),
            ('C', 'the increase in the number of the lift irrigation projects'),
            ('D', 'the deepening of the wells in the hard rock')
           ) as v(label, option_text)
 where q.question_hash = 'ac8c4780670f65b6abb2322d097537af'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'The ''Integrated Cold Chain and Value Addition Infrastructure'' scheme of the agriculture ministry provides support for:',
    'The scheme finances the cold chain and the value addition infrastructure for the perishables like the fruits, the vegetables and the milk so that the wastage of the produce is reduced.',
    'hard',
    'PIB',
    null,
    '187e5294dc88889e79e8e09dca53e4d5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '187e5294dc88889e79e8e09dca53e4d5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the seed multiplication in the wheat belt'),
            ('B', 'the cold storages, the reefer vans and the primary processing centres for the horticulture produce'),
            ('C', 'the mechanisation of the harvesting in the paddy fields'),
            ('D', 'the marketing of the milk cooperative')
           ) as v(label, option_text)
 where q.question_hash = '187e5294dc88889e79e8e09dca53e4d5'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'The ''National Horticulture Mission'' aims at:',
    'The NHM was launched in 2005-06 for the holistic development of the horticulture sector with the area expansion, the productivity improvement, the post harvest management and the market linkage.',
    'medium',
    'Standard Reference',
    null,
    '9694d8b232e256196bf41ead4f012ea4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '9694d8b232e256196bf41ead4f012ea4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the procurement of the wheat for the buffer stock'),
            ('B', 'the raising of the foodgrain yield of the rice'),
            ('C', 'the enhancement of the horticulture production and the productivity with the post harvest management'),
            ('D', 'the promotion of the tea and the coffee exports')
           ) as v(label, option_text)
 where q.question_hash = '9694d8b232e256196bf41ead4f012ea4'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'The ''e-NAM'' portal provides the online trading platform for the:',
    'The National Agricultural Market links the agricultural produce market committees of the States on a single online platform so that the buyers and the sellers across the country can trade in the regulated yards.',
    'medium',
    'PIB',
    null,
    'a4bb6e9ef7d13aa2a47aefdeb76a0bed'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a4bb6e9ef7d13aa2a47aefdeb76a0bed'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the retail vegetable shops in the cities'),
            ('B', 'the export of the gems and the jewellery'),
            ('C', 'the stock exchanges of the corporate sector'),
            ('D', 'the Agricultural Commodities Exchanges of the regulated market yards')
           ) as v(label, option_text)
 where q.question_hash = 'a4bb6e9ef7d13aa2a47aefdeb76a0bed'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'The ''Per capita availability of foodgrains'' in India is:',
    'The per capita availability of the foodgrains is around 500 grams a day, which is higher than the actual consumption of about 400 grams, and the difference is explained by the buffer stocks, the exports, the feed and the wastage.',
    'hard',
    'Standard Reference',
    null,
    'd1d3d74230199b3cfa60912512f9c258'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd1d3d74230199b3cfa60912512f9c258'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'higher than the actual consumption because of the stocks and the wastage'),
            ('B', 'lower than the actual consumption'),
            ('C', 'the same as the consumption because of the PDS'),
            ('D', 'low because of the large population of the cattle')
           ) as v(label, option_text)
 where q.question_hash = 'd1d3d74230199b3cfa60912512f9c258'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'The ''Food Security Act'' covers:',
    'The National Food Security Act of 2013 covers about 75 per cent of the rural and 50 per cent of the urban population with the entitlements of the foodgrain and the nutrition support.',
    'hard',
    'Standard Reference',
    null,
    '34e4050cbea3e8a5edd619bde3aff77a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '34e4050cbea3e8a5edd619bde3aff77a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'about 75 per cent of the rural and 50 per cent of the urban population'),
            ('B', 'only the families below the poverty line'),
            ('C', 'only the urban poor of the notified cities'),
            ('D', 'the whole of the population without any exception')
           ) as v(label, option_text)
 where q.question_hash = '34e4050cbea3e8a5edd619bde3aff77a'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'The ''Operation Flood'' was based on the:',
    'The Operation Flood was modelled on the Amul cooperative of Anand in Gujarat, and it linked the producer cooperatives with the urban consumers through a network of the dairy cooperatives across the country.',
    'hard',
    'Standard Reference',
    null,
    '10decc50b10b65e36e6dfbe027c910b6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '10decc50b10b65e36e6dfbe027c910b6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the private sector dairies of the south'),
            ('B', 'Amul model of the dairy cooperatives'),
            ('C', 'the urban milk supply of the metropolitan cities'),
            ('D', 'the government owned dairy farms')
           ) as v(label, option_text)
 where q.question_hash = '10decc50b10b65e36e6dfbe027c910b6'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'The ''spices'' in India are grown in the:',
    'The spices need a warm and humid climate and a well drained soil rich in the humus, and the Malabar coast of Kerala, the coastal Karnataka and the Tamil Nadu are the principal producing areas.',
    'hard',
    'NCERT Class XII',
    null,
    'dbd07b11a3b85c644da597f3de87d266'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'dbd07b11a3b85c644da597f3de87d266'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the black soil of the Deccan only'),
            ('B', 'the alluvial soil of the Punjab'),
            ('C', 'warm and humid climate with the coastal and the laterite soils'),
            ('D', 'the cold arid climate of Ladakh')
           ) as v(label, option_text)
 where q.question_hash = 'dbd07b11a3b85c644da597f3de87d266'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'The ''Krishi Vigyan Kendra'' is:',
    'The Krishi Vigyan Kendras are the agricultural extension centres of the ICAR that translate the research into the practice for the farmers through the training and the demonstrations at the district level.',
    'medium',
    'Standard Reference',
    null,
    '41b406a8d32b97216b98dbd9116cdacc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '41b406a8d32b97216b98dbd9116cdacc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a research institute of the Indian Council of Agricultural Research for the basic research'),
            ('B', 'a body of the Ministry of Finance for the credit support to the farmers'),
            ('C', 'a university department of the agricultural economics'),
            ('D', 'a farm science centre of the Indian Council of Agricultural Research that provides the extension services to the farmers')
           ) as v(label, option_text)
 where q.question_hash = '41b406a8d32b97216b98dbd9116cdacc'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'The ''Indian Council of Agricultural Research'' is:',
    'The ICAR is the premier research organisation of the country for the agricultural research, and it is an autonomous organisation under the Department of Agricultural Research and Education with its headquarters in New Delhi.',
    'medium',
    'Standard Reference',
    null,
    '4056172a0a43a8a3f9eb3a1a5f4bc011'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '4056172a0a43a8a3f9eb3a1a5f4bc011'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a division of the Ministry of Food Processing Industries'),
            ('B', 'a research wing of the Indian Council of Medical Research'),
            ('C', 'a statutory body created by an Act of Parliament'),
            ('D', 'an autonomous organisation under the Department of Agricultural Research and Education of the Ministry of Agriculture')
           ) as v(label, option_text)
 where q.question_hash = '4056172a0a43a8a3f9eb3a1a5f4bc011'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'The ''The Food Corporation of India'' was set up in:',
    'The FCI was set up in 1965 under the Food Corporations Act to undertake the procurement, the storage, the transportation and the distribution of the foodgrains on behalf of the central and the State governments.',
    'medium',
    'Standard Reference',
    null,
    'da8fb3217523a83c669efc57bc81442f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'da8fb3217523a83c669efc57bc81442f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1955'),
            ('B', '1970'),
            ('C', '1965'),
            ('D', '1962')
           ) as v(label, option_text)
 where q.question_hash = 'da8fb3217523a83c669efc57bc81442f'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'The ''The Commission for Price Fixing of Agricultural Commodities'' recommends:',
    'The CACP under the Department of Agriculture and Farmers Welfare recommends the minimum support price, the procurement price and the price of the essential commodities, and it also advises on the issues of the costs and the prices of the agricultural commodities.',
    'medium',
    'Standard Reference',
    null,
    'daaa37a2d39a9f5b2675a778297b8c55'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'daaa37a2d39a9f5b2675a778297b8c55'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the minimum support price, the procurement price and the price of the essential commodities'),
            ('B', 'the export duty on the agricultural produce'),
            ('C', 'the crop insurance premium'),
            ('D', 'the interest rate of the agricultural credit')
           ) as v(label, option_text)
 where q.question_hash = 'daaa37a2d39a9f5b2675a778297b8c55'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'The ''farm mechanisation'' in India is promoted through the:',
    'The Sub-Mission on Mechanisation provides the subsidies for the custom hiring centres and the individual machinery and the equipment to the farmers, and the high level of the mechanisation in the wheat and the rice is credited to it.',
    'hard',
    'Standard Reference',
    null,
    '64995bc30855992953187e09088e7aac'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '64995bc30855992953187e09088e7aac'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Department of Atomic Energy'),
            ('B', 'the Sub-Mission on Mechanisation under the Ministry of Agriculture'),
            ('C', 'the National Capital Region Planning Board'),
            ('D', 'the Ministry of Road Transport and Highways')
           ) as v(label, option_text)
 where q.question_hash = '64995bc30855992953187e09088e7aac'
on conflict (question_id, label) do nothing;

commit;
