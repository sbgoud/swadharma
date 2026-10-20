-- =============================================================================
-- environment_05.sql — environment question pack, part 05
-- 4 questions. Applied after supabase/migrations/004_reference_data.sql
-- =============================================================================

begin;

-- environment | pollution | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'The dyeing units of the textile clusters of Rajasthan are a cause of concern because of:',
    'The dyeing and the bleaching units of the textile clusters of the Rajasthan discharge the untreated effluents, and this is a cause of the water pollution of the rivers and the ground water in the clusters of the Bhilwara, the Jaipur and the Pali.',
    'medium',
    'Standard Reference',
    null,
    'dbfc60d351b6d21970f53b7f5942020e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'dbfc60d351b6d21970f53b7f5942020e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the desertification of the agricultural land'),
            ('B', 'the depletion of the ozone layer'),
            ('C', 'the water pollution of the rivers and the ground water'),
            ('D', 'the depletion of the soil salinity')
           ) as v(label, option_text)
 where q.question_hash = 'dbfc60d351b6d21970f53b7f5942020e'
on conflict (question_id, label) do nothing;

-- environment | climate-change | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'climate-change'),
    'The ''Mission on Climate Change'' of the ''National Action Plan on Climate Change'':',
    'The National Action Plan on Climate Change has eight missions, of which the National Solar Mission and the National Mission for Sustainable Agriculture are among the most important, and they are complemented by the climate specific national missions.',
    'hard',
    'Standard Reference',
    null,
    'c9e0eeda683cd3bac8b30cf16604c815'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'c9e0eeda683cd3bac8b30cf16604c815'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is limited to the adaptation in the coastal states'),
            ('B', 'Includes the eight missions, of which the National Solar Mission and the National Mission for Sustainable Agriculture are among the most important'),
            ('C', 'Includes only the National Mission on the afforestation'),
            ('D', 'Covers only the urban transport and the buildings')
           ) as v(label, option_text)
 where q.question_hash = 'c9e0eeda683cd3bac8b30cf16604c815'
on conflict (question_id, label) do nothing;

-- environment | waste-management | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'waste-management'),
    'The ''Waste to Wealth'' approach of the Swachh Bharat Mission:',
    'The Waste to Wealth approach of the Swachh Bharat Mission seeks to convert the biodegradable waste into the manure through the compost and the vermicompost, and the plastic waste into the fuel, the refuelling and the construction material, so that the waste becomes a resource instead of a burden.',
    'medium',
    'Standard Reference',
    null,
    'e9bc9783c07ec7c2c5b8db1ef79bdde3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e9bc9783c07ec7c2c5b8db1ef79bdde3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Burns the mixed waste in the open pits'),
            ('B', 'Buries the waste in the sanitary landfills of the cities'),
            ('C', 'Sells the waste to the cement kilns only'),
            ('D', 'Converts the biodegradable waste into the manure and the plastic waste into the fuel and the construction material')
           ) as v(label, option_text)
 where q.question_hash = 'e9bc9783c07ec7c2c5b8db1ef79bdde3'
on conflict (question_id, label) do nothing;

-- environment | renewable-energy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'renewable-energy'),
    'The ''Karnataka'' and the ''Tamil Nadu'' of India:',
    'Karnataka and Tamil Nadu have the largest number of the cogeneration plants that run on the biomass and the bagasse, and this is the result of the large number of the sugar mills and of the industries that have set up the captive power plants.',
    'hard',
    'Standard Reference',
    null,
    '68a5a98c0056517eafc4176566b7e3f3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '68a5a98c0056517eafc4176566b7e3f3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Have the largest number of the power plants that run on the biomass and the bagasse cogeneration'),
            ('B', 'Are the leading exporters of the sea fish'),
            ('C', 'Have the largest area under the mangroves'),
            ('D', 'Are the only states with the solar parks')
           ) as v(label, option_text)
 where q.question_hash = '68a5a98c0056517eafc4176566b7e3f3'
on conflict (question_id, label) do nothing;

commit;
