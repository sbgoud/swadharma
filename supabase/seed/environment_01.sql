-- =============================================================================
-- environment_01.sql — environment question pack, part 01
-- 250 questions. Applied after supabase/migrations/004_reference_data.sql
-- =============================================================================

begin;

-- environment | ecology-basics | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'In an ecosystem, which of the following is correctly classified as a biotic component?',
    'Biotic components are the living parts of the ecosystem, while water, soil, sunlight, temperature and wind are abiotic (non-living) factors.',
    'easy',
    'NCERT Class XII (Biology)',
    null,
    '3e71fbb5b9009b5c3de47c7bdcd9b40e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '3e71fbb5b9009b5c3de47c7bdcd9b40e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Water, minerals and soil'),
            ('B', 'Sunlight and air currents'),
            ('C', 'Green plants, animals and microorganisms'),
            ('D', 'Temperature and wind velocity')
           ) as v(label, option_text)
 where q.question_hash = '3e71fbb5b9009b5c3de47c7bdcd9b40e'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'A food chain represents which of the following?',
    'A food chain is a linear sequence of organisms linked by feeding; the interlinked food chains of a community constitute a food web.',
    'easy',
    'NCERT Class XII (Biology)',
    null,
    '7b536ffa57feec679aeb79fd64dda496'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '7b536ffa57feec679aeb79fd64dda496'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A sequence of organisms in which one feeds on the other, beginning with producers'),
            ('B', 'The recycling of nutrients between living and non-living components'),
            ('C', 'The interrelationship of all food chains of an area'),
            ('D', 'The total set of organisms of one habitat')
           ) as v(label, option_text)
 where q.question_hash = '7b536ffa57feec679aeb79fd64dda496'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'Which ecological pyramid is always upright, regardless of the ecosystem studied?',
    'The pyramid of energy is always upright because energy is lost at each transfer, whereas pyramids of numbers and biomass can be inverted, for example in a tree ecosystem.',
    'medium',
    'NCERT Class XII (Biology)',
    null,
    '1232eeb29b4767c1e67c804c12c75ff8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '1232eeb29b4767c1e67c804c12c75ff8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Pyramid of species diversity'),
            ('B', 'Pyramid of numbers'),
            ('C', 'Pyramid of biomass'),
            ('D', 'Pyramid of energy flow')
           ) as v(label, option_text)
 where q.question_hash = '1232eeb29b4767c1e67c804c12c75ff8'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'Gross primary productivity (GPP) of an ecosystem is best described as',
    'GPP is the gross amount of energy captured by photosynthesis; NPP equals GPP minus the energy used up in respiration by the plants themselves.',
    'easy',
    'NCERT Class XII (Biology)',
    null,
    '3bb61c565f11d526bf24f8d2f58f9fec'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '3bb61c565f11d526bf24f8d2f58f9fec'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The rate of energy stored as biomass after plant respiration'),
            ('B', 'The total rate of energy fixed by producers through photosynthesis'),
            ('C', 'The rate of energy flow from producers to herbivores'),
            ('D', 'The rate of decomposition of dead organic matter')
           ) as v(label, option_text)
 where q.question_hash = '3bb61c565f11d526bf24f8d2f58f9fec'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'The first organisms that usually colonise bare rock during primary succession are',
    'Lichens and mosses are pioneer species that weather the rock and initiate soil formation, allowing other, more demanding species to establish later.',
    'easy',
    'NCERT Class XII (Biology)',
    null,
    'dec1110d41c830934dd4fe812a9312a1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'dec1110d41c830934dd4fe812a9312a1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Shrubs and bushes'),
            ('B', 'Herbaceous grasses'),
            ('C', 'Lichens and mosses'),
            ('D', 'Large coniferous trees')
           ) as v(label, option_text)
 where q.question_hash = 'dec1110d41c830934dd4fe812a9312a1'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'Secondary succession differs from primary succession because it occurs',
    'Secondary succession follows a disturbance that leaves soil, seed banks and underground organs behind, so succession starts from a more advanced stage than in primary succession.',
    'medium',
    'NCERT Class XII (Biology)',
    null,
    'e8431d67b13078a60b826e56864697d1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'e8431d67b13078a60b826e56864697d1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'In an area already occupied by a community where the soil remains intact'),
            ('B', 'On sand dunes with no soil at all'),
            ('C', 'On land newly exposed by a volcanic eruption'),
            ('D', 'In a completely new aquatic habitat')
           ) as v(label, option_text)
 where q.question_hash = 'e8431d67b13078a60b826e56864697d1'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'The climax stage of an ecological succession is characterised by',
    'In the climax stage species composition and biomass become relatively stable and the community is dominated by long-lived, competitively superior species.',
    'medium',
    'NCERT Class XII (Biology)',
    null,
    '2e7dc55acfc109b8f6ca008fc42bd970'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '2e7dc55acfc109b8f6ca008fc42bd970'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The maximum number of pioneer species'),
            ('B', 'A relatively stable community of long-lived species'),
            ('C', 'A steep and continuous fall in total biomass'),
            ('D', 'Dominance of fast growing pioneer species')
           ) as v(label, option_text)
 where q.question_hash = '2e7dc55acfc109b8f6ca008fc42bd970'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'Which of the following is a classic example of a keystone species?',
    'A keystone species has a disproportionately large effect on ecosystem structure relative to its abundance; the sea otter prevents urchin overgrazing and maintains the kelp forest.',
    'medium',
    'NCERT Class XII (Biology)',
    null,
    '0a768d564b40064413244ffe6b161f5c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '0a768d564b40064413244ffe6b161f5c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A pollinator species that has the widest geographic range'),
            ('B', 'A large herbivore occurring in large numbers in a grassland'),
            ('C', 'A grass species that is abundant in a plain'),
            ('D', 'The sea otter controlling sea urchins in a kelp forest')
           ) as v(label, option_text)
 where q.question_hash = '0a768d564b40064413244ffe6b161f5c'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'The ecological niche of an organism refers to',
    'Hutchinson defined the niche as an n-dimensional hypervolume describing the range of conditions and resources an organism uses and its functional role in the community.',
    'hard',
    'NCERT Class XII (Biology)',
    null,
    'd4ad0a604ceec8160f1d72963910d96c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd4ad0a604ceec8160f1d72963910d96c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Only the food and feeding habits of the organism'),
            ('B', 'The full range of environmental conditions and resources it uses and its functional role'),
            ('C', 'The list of species to which the organism is most closely related'),
            ('D', 'The specific physical place where the organism lives')
           ) as v(label, option_text)
 where q.question_hash = 'd4ad0a604ceec8160f1d72963910d96c'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'Grinnell''s concept of the ecological niche mainly emphasises the',
    'Grinnell (1917) described the niche in spatial or habitat terms, whereas Elton emphasised the functional role and the n-dimensional Hutchinson concept combined both.',
    'hard',
    'NCERT Class XII (Biology)',
    null,
    '4d623451ad15e5daa6c71828d329f931'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '4d623451ad15e5daa6c71828d329f931'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Physical place occupied by a species'),
            ('B', 'Rate of energy flow through the food chain'),
            ('C', 'Competition between a species and its predators'),
            ('D', 'Functional role played by a species in the community')
           ) as v(label, option_text)
 where q.question_hash = '4d623451ad15e5daa6c71828d329f931'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'Biomagnification refers to',
    'Biomagnification is the increase in pollutant concentration at each higher trophic level, as with DDT and mercury, whereas accumulation within one organism is bioaccumulation.',
    'easy',
    'NCERT Class XII (Biology)',
    null,
    '4e1ee31e45fd9c69ed1d2e90c7a29bc7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '4e1ee31e45fd9c69ed1d2e90c7a29bc7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Loss of stratospheric ozone due to chlorofluorocarbons'),
            ('B', 'A fall in pollutant concentration with increasing altitude'),
            ('C', 'Accumulation of a pollutant within the body of a single organism over time'),
            ('D', 'An increase in the concentration of a pollutant in successive trophic levels')
           ) as v(label, option_text)
 where q.question_hash = '4e1ee31e45fd9c69ed1d2e90c7a29bc7'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'Bioaccumulation differs from biomagnification because it refers to',
    'Bioaccumulation is the build-up of a substance within one organism over time because uptake exceeds elimination; biomagnification is the concentration increase across trophic levels.',
    'easy',
    'NCERT Class XII (Biology)',
    null,
    '7b5cf172c8b6e0829f5536708868e9d7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '7b5cf172c8b6e0829f5536708868e9d7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Increase of a substance in successive trophic levels of a food chain'),
            ('B', 'Movement of a pollutant from water into sediment'),
            ('C', 'Increase of a substance in an individual organism over its lifetime'),
            ('D', 'Conversion of a pollutant into a less harmful form')
           ) as v(label, option_text)
 where q.question_hash = '7b5cf172c8b6e0829f5536708868e9d7'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'Minamata disease in Japan was caused by',
    'Industrial effluent rich in methylmercury was discharged into Minamata Bay; mercury biomagnified through fish and shellfish and caused severe neurological disease in the local population.',
    'easy',
    'Standard Reference',
    null,
    'f18932a8861c4f7bb34663669877e20f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f18932a8861c4f7bb34663669877e20f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Industrial discharge of methylmercury into Minamata Bay'),
            ('B', 'Radium leakage from a nuclear plant'),
            ('C', 'Lead contamination of drinking water'),
            ('D', 'Excessive use of DDT in rice fields')
           ) as v(label, option_text)
 where q.question_hash = 'f18932a8861c4f7bb34663669877e20f'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'The enrichment of a water body with nutrients leading to excessive algal growth and oxygen depletion is called',
    'Eutrophication results from excess phosphorus and nitrogen inputs, causing algal blooms whose decomposition depletes dissolved oxygen and creates dead zones.',
    'easy',
    'NCERT Class XII (Biology)',
    null,
    '540f333fc641b91ab095ce41c0716ebf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '540f333fc641b91ab095ce41c0716ebf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Thermal stratification'),
            ('B', 'Oligotrophication'),
            ('C', 'Eutrophication'),
            ('D', 'Siltation')
           ) as v(label, option_text)
 where q.question_hash = '540f333fc641b91ab095ce41c0716ebf'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'In the nitrogen cycle, the process that converts atmospheric nitrogen into ammonia is',
    'Nitrogen fixation by diazotrophic bacteria and industrial processes converts molecular nitrogen into ammonia; nitrification oxidises ammonia to nitrates and denitrification returns nitrogen to the air.',
    'easy',
    'NCERT Class XII (Biology)',
    null,
    '42b4ab1f023003fb32c8ceb6a209a3cf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '42b4ab1f023003fb32c8ceb6a209a3cf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ammonification'),
            ('B', 'Denitrification'),
            ('C', 'Nitrification'),
            ('D', 'Nitrogen fixation')
           ) as v(label, option_text)
 where q.question_hash = '42b4ab1f023003fb32c8ceb6a209a3cf'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'Which of the following biogeochemical cycles has essentially no gaseous phase in nature?',
    'Phosphorus moves mainly through rocks, soil, water and organisms and has no significant atmospheric reservoir, unlike carbon, nitrogen and water.',
    'easy',
    'NCERT Class XII (Biology)',
    null,
    '76ba0827a12948d1f51f4e896cb070c6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '76ba0827a12948d1f51f4e896cb070c6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Water cycle'),
            ('B', 'Phosphorus cycle'),
            ('C', 'Carbon cycle'),
            ('D', 'Nitrogen cycle')
           ) as v(label, option_text)
 where q.question_hash = '76ba0827a12948d1f51f4e896cb070c6'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'Species richness of a community refers to',
    'Species richness is simply the count of species, whereas species evenness describes how equally individuals are distributed among those species.',
    'easy',
    'NCERT Class XII (Biology)',
    null,
    '37c47af209b8cf84cc06e8344f94f06d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '37c47af209b8cf84cc06e8344f94f06d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The total biomass of the community'),
            ('B', 'The relative abundance of each species'),
            ('C', 'The number of different species present in it'),
            ('D', 'The genetic variation within a single species')
           ) as v(label, option_text)
 where q.question_hash = '37c47af209b8cf84cc06e8344f94f06d'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'A community in which a few species dominate in numbers while many other species are rare is said to have',
    'Evenness measures the similarity of abundance among species; dominance of a few species indicates low evenness even if richness is high.',
    'hard',
    'NCERT Class XII (Biology)',
    null,
    '92d8aa8d67b7fc9189dc4075b0bc287e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '92d8aa8d67b7fc9189dc4075b0bc287e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Low species evenness'),
            ('B', 'High primary productivity'),
            ('C', 'High species richness and high evenness'),
            ('D', 'Low species richness')
           ) as v(label, option_text)
 where q.question_hash = '92d8aa8d67b7fc9189dc4075b0bc287e'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'An ecosystem that absorbs more carbon dioxide than it releases is described as',
    'Forests, oceans and wetlands that take up more CO2 through photosynthesis than they release act as carbon sinks and help offset anthropogenic emissions.',
    'easy',
    'NCERT Class XII (Biology)',
    null,
    '65bda0547f55f4ad563902606b094503'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '65bda0547f55f4ad563902606b094503'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A carbon neutral system'),
            ('B', 'A carbon sink'),
            ('C', 'An open ecosystem'),
            ('D', 'A carbon source')
           ) as v(label, option_text)
 where q.question_hash = '65bda0547f55f4ad563902606b094503'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'Decomposers are ecologically significant chiefly because they',
    'Bacteria and fungi break down detritus and return inorganic nutrients to the soil and water, completing the nutrient cycles of the ecosystem.',
    'easy',
    'NCERT Class XII (Biology)',
    null,
    'd0919495143cee9a378d5c08d1095942'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'd0919495143cee9a378d5c08d1095942'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Form the base of all food chains'),
            ('B', 'Fix atmospheric nitrogen into ammonia'),
            ('C', 'Produce oxygen in the atmosphere'),
            ('D', 'Recycle nutrients from dead matter back into the abiotic pool')
           ) as v(label, option_text)
 where q.question_hash = 'd0919495143cee9a378d5c08d1095942'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'Which of the following best describes an r-selected species?',
    'r-selected species maximise reproductive output in unstable habitats, whereas K-selected species invest heavily in few offspring with high parental care.',
    'medium',
    'NCERT Class XII (Biology)',
    null,
    '3bf7d4137705dffdbfd1463a58e17fea'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '3bf7d4137705dffdbfd1463a58e17fea'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Having a long life span and slow growth'),
            ('B', 'Producing many offspring with little parental care'),
            ('C', 'Occurring only in climax communities'),
            ('D', 'Producing few offspring with intensive parental care')
           ) as v(label, option_text)
 where q.question_hash = '3bf7d4137705dffdbfd1463a58e17fea'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'Primary productivity in terrestrial ecosystems is generally highest in',
    'Warm temperature, abundant rainfall and year-round canopy photosynthesis make tropical rainforests the most productive terrestrial ecosystems.',
    'medium',
    'NCERT Class XII (Biology)',
    null,
    'f88dbfe8f8665ee474eafec82beda4d7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'f88dbfe8f8665ee474eafec82beda4d7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Desert scrub'),
            ('B', 'Tundra and alpine meadows'),
            ('C', 'Tropical rainforests'),
            ('D', 'Deep sea zones')
           ) as v(label, option_text)
 where q.question_hash = 'f88dbfe8f8665ee474eafec82beda4d7'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'The detritus food chain in a terrestrial ecosystem is principally maintained by',
    'Dead organic matter is consumed by detritivores and decomposers, forming detritus food chains that are dominant in most terrestrial ecosystems.',
    'medium',
    'NCERT Class XII (Biology)',
    null,
    '89b45ef699b7169488eea2ee91c8274a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '89b45ef699b7169488eea2ee91c8274a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Zooplankton'),
            ('B', 'Green plants'),
            ('C', 'Carnivorous plants'),
            ('D', 'Decomposers such as bacteria and fungi')
           ) as v(label, option_text)
 where q.question_hash = '89b45ef699b7169488eea2ee91c8274a'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'Which of the following is a component of the standing crop of an ecosystem?',
    'Standing crop is the living biomass present at a particular time; biomass flow refers to the rate of generation of that biomass.',
    'medium',
    'NCERT Class XII (Biology)',
    null,
    '4e05ec7195f9f511e2e92606322ca218'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '4e05ec7195f9f511e2e92606322ca218'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Total biomass of living organisms in an area at a given time'),
            ('B', 'Amount of water in the soil'),
            ('C', 'Rate of energy fixed by photosynthesis'),
            ('D', 'Solar energy incident on the area')
           ) as v(label, option_text)
 where q.question_hash = '4e05ec7195f9f511e2e92606322ca218'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'Allelopathy in plants refers to',
    'Allelopathic plants release secondary metabolites that suppress germination and growth of competitors, as seen in black walnut and eucalyptus.',
    'medium',
    'Standard Reference',
    null,
    '403da6e7bc3f42b72123480319b50053'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '403da6e7bc3f42b72123480319b50053'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Mutualism between roots of different species'),
            ('B', 'Production of chemicals that inhibit the growth of other plants'),
            ('C', 'The vertical layering of vegetation in a forest'),
            ('D', 'The shedding of leaves in the dry season')
           ) as v(label, option_text)
 where q.question_hash = '403da6e7bc3f42b72123480319b50053'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'Ecological amplitude of a species refers to',
    'A species with wide ecological amplitude (eurytopic) tolerates a broad range of conditions, while a narrow amplitude (stenotopic) species is restricted.',
    'hard',
    'Standard Reference',
    null,
    '3753f6a6e01f79f0be5ef650ac736698'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '3753f6a6e01f79f0be5ef650ac736698'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The range of environmental conditions within which it can survive and reproduce'),
            ('B', 'Its position in the trophic hierarchy'),
            ('C', 'The size of its population in its habitat'),
            ('D', 'The total biomass it produces annually')
           ) as v(label, option_text)
 where q.question_hash = '3753f6a6e01f79f0be5ef650ac736698'
on conflict (question_id, label) do nothing;

-- environment | biodiversity | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'biodiversity'),
    'Which of the following is NOT one of the criteria used by Norman Myers to identify a biodiversity hotspot?',
    'The two quantitative criteria are 1500 endemic vascular plants and 70 per cent habitat loss; hotspots may lie outside the tropics, for example the Cape Floristic Region and California Floristic Province.',
    'hard',
    'Standard Reference',
    null,
    '0a50e40fbd4839a066eff1b5d11f0c9d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '0a50e40fbd4839a066eff1b5d11f0c9d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Loss of at least 70 per cent of its original natural vegetation'),
            ('B', 'Endemicity of a high number of vertebrate species'),
            ('C', 'Location entirely within the tropics'),
            ('D', 'At least 1500 endemic vascular plant species')
           ) as v(label, option_text)
 where q.question_hash = '0a50e40fbd4839a066eff1b5d11f0c9d'
on conflict (question_id, label) do nothing;

-- environment | biodiversity | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'biodiversity'),
    'Which of the following biodiversity hotspots does NOT extend into India?',
    'India''s hotspots are the Himalaya, Indo-Burma, Western Ghats and Sri Lanka, and the Sundaland hotspot covering the Nicobar Islands; Madagascar lies in the western Indian Ocean.',
    'easy',
    'Standard Reference',
    null,
    'd08b3822160dda4549888d7d3e61939e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'd08b3822160dda4549888d7d3e61939e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Himalaya'),
            ('B', 'Indo-Burma'),
            ('C', 'Sundaland'),
            ('D', 'Madagascar and the Mascarenes')
           ) as v(label, option_text)
 where q.question_hash = 'd08b3822160dda4549888d7d3e61939e'
on conflict (question_id, label) do nothing;

-- environment | biodiversity | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'biodiversity'),
    'Among the IUCN Red List categories, the highest degree of immediate threat after extinction is classified as',
    'The categories run Extinct, Extinct in the Wild, Critically Endangered, Endangered, Vulnerable, Near Threatened, Least Concern, Data Deficient and Not Evaluated.',
    'easy',
    'Standard Reference',
    null,
    '090f737eb5bef85a14f332e3de0231c8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '090f737eb5bef85a14f332e3de0231c8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Near Threatened'),
            ('B', 'Vulnerable'),
            ('C', 'Endangered'),
            ('D', 'Critically Endangered')
           ) as v(label, option_text)
 where q.question_hash = '090f737eb5bef85a14f332e3de0231c8'
on conflict (question_id, label) do nothing;

-- environment | biodiversity | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'biodiversity'),
    'How many categories does the IUCN Red List of Threatened Species currently recognise?',
    'The Red List has nine categories: EX, EW, CR, EN, VU, NT, LC, DD and NE, of which CR, EN and VU together form the threatened categories.',
    'medium',
    'Standard Reference',
    null,
    'dafb664e746c00ea0fd9e08027a1bcac'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'dafb664e746c00ea0fd9e08027a1bcac'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Four'),
            ('B', 'Six'),
            ('C', 'Nine'),
            ('D', 'Twelve')
           ) as v(label, option_text)
 where q.question_hash = 'dafb664e746c00ea0fd9e08027a1bcac'
on conflict (question_id, label) do nothing;

-- environment | biodiversity | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'biodiversity'),
    'Schedule VI of the Wildlife (Protection) Act, 1972 deals with',
    'Schedule I covers animals, Schedule II other protected animals, Schedule III plants endemic to India, Schedule IV plants threatened with extinction and Schedule VI plants under cultivation.',
    'medium',
    'Standard Reference',
    null,
    '19db75b837abab03ac53bd71255f89cc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '19db75b837abab03ac53bd71255f89cc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Plants'),
            ('B', 'Amphibians'),
            ('C', 'Reptiles'),
            ('D', 'Birds')
           ) as v(label, option_text)
 where q.question_hash = '19db75b837abab03ac53bd71255f89cc'
on conflict (question_id, label) do nothing;

-- environment | biodiversity | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'biodiversity'),
    'The Ramsar Convention on Wetlands was adopted in',
    'The Convention was adopted on 2 February 1971 at Ramsar in Iran; India acceded to it and Keoladeo National Park became the first Indian Ramsar site in 1981.',
    'easy',
    'Standard Reference',
    null,
    '0919b3c94719abaf4b5419c38f7e5a66'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '0919b3c94719abaf4b5419c38f7e5a66'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1972 at Stockholm, Sweden'),
            ('B', '1971 at Ramsar, Iran'),
            ('C', '1982 at Rio de Janeiro, Brazil'),
            ('D', '1975 at Nairobi, Kenya')
           ) as v(label, option_text)
 where q.question_hash = '0919b3c94719abaf4b5419c38f7e5a66'
on conflict (question_id, label) do nothing;

-- environment | biodiversity | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'biodiversity'),
    'The largest Ramsar site in India by area is',
    'Nalsarovar in Gujarat, a large freshwater reservoir of the Nal Sarovar, is the largest Ramsar site in India; Loktak is the largest freshwater lake of the north-east.',
    'hard',
    'Standard Reference',
    null,
    'e449442df75e1c55d73f261a4fd602f1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e449442df75e1c55d73f261a4fd602f1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Loktak Lake'),
            ('B', 'Keoladeo National Park'),
            ('C', 'Chilika Lake'),
            ('D', 'Nalsarovar')
           ) as v(label, option_text)
 where q.question_hash = 'e449442df75e1c55d73f261a4fd602f1'
on conflict (question_id, label) do nothing;

-- environment | biodiversity | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'biodiversity'),
    'The only freshwater lake in India that has a floating national park within it is',
    'Keibul Lamjao, the world''s only floating national park, lies within Loktak Lake in Manipur and is the only refuge of the sangai.',
    'medium',
    'Standard Reference',
    null,
    '9dc7cb296b2d907227a71e3c6013e747'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '9dc7cb296b2d907227a71e3c6013e747'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Loktak Lake, Manipur'),
            ('B', 'Gobind Sagar, Himachal Pradesh'),
            ('C', 'Dal Lake, Srinagar'),
            ('D', 'Wular Lake, Jammu and Kashmir')
           ) as v(label, option_text)
 where q.question_hash = '9dc7cb296b2d907227a71e3c6013e747'
on conflict (question_id, label) do nothing;

-- environment | biodiversity | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'biodiversity'),
    'The largest brackish water lagoon in India, designated a Ramsar site, is',
    'Chilika, the largest brackish water lagoon of India, is a Ramsar wetland and an Important Bird Area supporting millions of migratory waterfowl.',
    'easy',
    'Standard Reference',
    null,
    '3b75766c9cfa0b3cd18116cbaadeaf74'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '3b75766c9cfa0b3cd18116cbaadeaf74'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Vembanad Lake, Kerala'),
            ('B', 'Chilika Lake, Odisha'),
            ('C', 'Pulicat Lake, Andhra Pradesh'),
            ('D', 'Sambhar Lake, Rajasthan')
           ) as v(label, option_text)
 where q.question_hash = '3b75766c9cfa0b3cd18116cbaadeaf74'
on conflict (question_id, label) do nothing;

-- environment | biodiversity | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'biodiversity'),
    'Under CITES, species listed in Appendix I are those',
    'Appendix I covers species threatened with extinction and allows trade only in exceptional circumstances; Appendix II lists species that are not currently threatened but could become so.',
    'medium',
    'Standard Reference',
    null,
    '063245dadd7bbcf9b36471c873bb8cda'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '063245dadd7bbcf9b36471c873bb8cda'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Not threatened but likely to become threatened'),
            ('B', 'Protected in at least one party country but not others'),
            ('C', 'Threatened with extinction, for which trade is permitted only in exceptional circumstances'),
            ('D', 'Exempt from all trade control measures')
           ) as v(label, option_text)
 where q.question_hash = '063245dadd7bbcf9b36471c873bb8cda'
on conflict (question_id, label) do nothing;

-- environment | biodiversity | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'biodiversity'),
    'The CITES Convention on International Trade in Endangered Species was signed in',
    'CITES was agreed in Washington D.C. on 3 March 1973 and entered into force in July 1975; the Washington Convention is another name for it.',
    'hard',
    'Standard Reference',
    null,
    '57ac90b2c5a0a843546fdab4e31f83b9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '57ac90b2c5a0a843546fdab4e31f83b9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Washington, 1973'),
            ('B', 'Ramsar, 1971'),
            ('C', 'Geneva, 1973'),
            ('D', 'Stockholm, 1972')
           ) as v(label, option_text)
 where q.question_hash = '57ac90b2c5a0a843546fdab4e31f83b9'
on conflict (question_id, label) do nothing;

-- environment | biodiversity | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'biodiversity'),
    'The sacred groves of India are significant mainly because they',
    'Sacred groves are forest patches traditionally protected by local communities and religious taboos, and they are valuable in-situ conservation sites for endemic species.',
    'easy',
    'NCERT Class XII (Biology)',
    null,
    '8edb27ddc046fe33d04d1e5288b10030'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '8edb27ddc046fe33d04d1e5288b10030'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Provide the largest area for commercial forestry'),
            ('B', 'Preserve pockets of native vegetation in situ and act as refuges for biodiversity'),
            ('C', 'Mark the boundaries of protected areas'),
            ('D', 'Serve as the main source of timber for tribal communities')
           ) as v(label, option_text)
 where q.question_hash = '8edb27ddc046fe33d04d1e5288b10030'
on conflict (question_id, label) do nothing;

-- environment | biodiversity | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'biodiversity'),
    'In India, the state with the largest area under mangrove cover is',
    'West Bengal, with the Sundarbans delta holding the bulk of the mangrove area, has the largest mangrove cover in the country; Odisha''s Mahanadi delta is the second largest.',
    'easy',
    'Forest Survey of India',
    2021,
    '28e9438302d6c57f78cc4fe4477d6f37'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '28e9438302d6c57f78cc4fe4477d6f37'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kerala'),
            ('B', 'Odisha'),
            ('C', 'West Bengal'),
            ('D', 'Tamil Nadu')
           ) as v(label, option_text)
 where q.question_hash = '28e9438302d6c57f78cc4fe4477d6f37'
on conflict (question_id, label) do nothing;

-- environment | biodiversity | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'biodiversity'),
    'The sangai, the state animal of Manipur, is notable because it is',
    'The sangai or Manipur brow-antlered deer is the only free-ranging deer in which both sexes carry antlers, and it survives only in the Loktak wetland landscape of Manipur.',
    'medium',
    'Standard Reference',
    null,
    '35e90dfbef21c45633e1bca40e08ef06'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '35e90dfbef21c45633e1bca40e08ef06'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The only deer found in a tropical rainforest canopy'),
            ('B', 'The only deer species with completely antlerless females'),
            ('C', 'The only deer that swims between the floating islands of a lake'),
            ('D', 'The only deer species in which both males and females bear antlers')
           ) as v(label, option_text)
 where q.question_hash = '35e90dfbef21c45633e1bca40e08ef06'
on conflict (question_id, label) do nothing;

-- environment | biodiversity | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'biodiversity'),
    'The Namdapha flying squirrel of Arunachal Pradesh is distinctive because it is',
    'The Namdapha flying squirrel (Biswamoyopterus namdaphaensis) has a full patagium and is the only Indian flying squirrel with such a complete gliding membrane.',
    'hard',
    'Standard Reference',
    null,
    'd77fdfc070369e994bb1856d62c08522'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd77fdfc070369e994bb1856d62c08522'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The only squirrel capable of true powered flight'),
            ('B', 'The largest flying squirrel in the world'),
            ('C', 'The only flying squirrel in India with a fully developed gliding membrane'),
            ('D', 'The only mammal with a prehensile tail in India')
           ) as v(label, option_text)
 where q.question_hash = 'd77fdfc070369e994bb1856d62c08522'
on conflict (question_id, label) do nothing;

-- environment | biodiversity | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'biodiversity'),
    'The purple frog, endemic to the Western Ghats, is notable because it',
    'The purple frog (Indirana) belongs to the ancient family Micrixalidae, a lineage diverging before the break-up of Gondwana, and breeds in ephemeral pools on forest floors.',
    'hard',
    'Standard Reference',
    null,
    'f7d27b9f511ee8bae45f028fc1c40865'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f7d27b9f511ee8bae45f028fc1c40865'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Belongs to a lineage far removed from other Indian frogs and breeds in seasonal forest pools'),
            ('B', 'Is a brightly coloured arboreal reptile'),
            ('C', 'Lives in high-altitude alpine meadows'),
            ('D', 'Is the largest frog in India')
           ) as v(label, option_text)
 where q.question_hash = 'f7d27b9f511ee8bae45f028fc1c40865'
on conflict (question_id, label) do nothing;

-- environment | biodiversity | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'biodiversity'),
    'Biodiversity at the level of genetic variation within a species is best illustrated by',
    'Genetic diversity exists within a single species, for example among the many landraces and wild relatives of rice; species diversity operates at the level of different species.',
    'medium',
    'NCERT Class XII (Biology)',
    null,
    '8dff774e35fc96ecd3622ab8d7791a15'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '8dff774e35fc96ecd3622ab8d7791a15'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The number of mangrove trees in an estuary'),
            ('B', 'Different sizes of tiger populations in two reserves'),
            ('C', 'The number of different fish species in a river'),
            ('D', 'The variety of rice varieties cultivated by a farmer')
           ) as v(label, option_text)
 where q.question_hash = '8dff774e35fc96ecd3622ab8d7791a15'
on conflict (question_id, label) do nothing;

-- environment | biodiversity | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'biodiversity'),
    'Agro-biodiversity includes',
    'Agro-biodiversity covers cultivated varieties, wild crop relatives, livestock breeds and the farming systems that maintain them, and it is shrinking rapidly with monoculture.',
    'medium',
    'Standard Reference',
    null,
    'b77bfc5e4fab4bf2f43b72ae18fe7f68'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b77bfc5e4fab4bf2f43b72ae18fe7f68'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Only genetically engineered crop varieties'),
            ('B', 'Crop varieties, wild relatives of crops, and the farming practices that sustain them'),
            ('C', 'Only the wild animals of a landscape'),
            ('D', 'Only the soil organisms of a farm')
           ) as v(label, option_text)
 where q.question_hash = 'b77bfc5e4fab4bf2f43b72ae18fe7f68'
on conflict (question_id, label) do nothing;

-- environment | biodiversity | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'biodiversity'),
    'The migratory flyway that passes over the Indian subcontinent and links Siberia with the Indian subcontinent is the',
    'The Central Asian Flyway is one of the three major flyways in India, covering central Asia, the Himalaya and the Indian subcontinent; the other Indian flyway is the East Asian-Australasian.',
    'easy',
    'Standard Reference',
    null,
    'c4ac1deaf3beccd0506590e4dc34a259'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'c4ac1deaf3beccd0506590e4dc34a259'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Central Asian Flyway'),
            ('B', 'Western Palearctic Flyway'),
            ('C', 'East Asian-Australasian Flyway'),
            ('D', 'African-Eurasian Flyway')
           ) as v(label, option_text)
 where q.question_hash = 'c4ac1deaf3beccd0506590e4dc34a259'
on conflict (question_id, label) do nothing;

-- environment | biodiversity | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'biodiversity'),
    'The black-necked crane, a migratory bird of the trans-Himalayan region, breeds in',
    'The black-necked crane breeds in the high-altitude lakes of Ladakh and winters in the Brahmaputra valley, Tibet and Nepal; it is India''s rarest breeding crane.',
    'medium',
    'Standard Reference',
    null,
    'b1f4a167d1f7861f2c8adcfff34cc9bf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'b1f4a167d1f7861f2c8adcfff34cc9bf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Assam''s Kaziranga National Park'),
            ('B', 'Kerala''s Silent Valley'),
            ('C', 'Ladakh, in the Changthang and Pangong lake region'),
            ('D', 'Rajasthan''s Keoladeo sanctuary')
           ) as v(label, option_text)
 where q.question_hash = 'b1f4a167d1f7861f2c8adcfff34cc9bf'
on conflict (question_id, label) do nothing;

-- environment | biodiversity | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'biodiversity'),
    'The Kunming-Montreal Global Biodiversity Framework adopted at COP15 sets a target to protect',
    'The 30x30 target of the Kunming-Montreal GBF calls for conserving at least 30 per cent of terrestrial, inland water and marine areas by 2030.',
    'medium',
    'Standard Reference',
    null,
    'b73a05b0e55ede6a16942c8aeeae474c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b73a05b0e55ede6a16942c8aeeae474c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '20 per cent of terrestrial areas by 2025'),
            ('B', '30 per cent of land and sea by 2030'),
            ('C', '50 per cent of the ocean by 2035'),
            ('D', '10 per cent of land and sea by 2020')
           ) as v(label, option_text)
 where q.question_hash = 'b73a05b0e55ede6a16942c8aeeae474c'
on conflict (question_id, label) do nothing;

-- environment | biodiversity | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'biodiversity'),
    'Which of the following is an example of ex-situ conservation?',
    'Ex-situ conservation keeps material outside the natural habitat, as in seed banks, gene banks, botanical gardens and zoos, whereas protected areas are in-situ conservation.',
    'easy',
    'NCERT Class XII (Biology)',
    null,
    '249d224eb52a24b0292e9bef10f6e83e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '249d224eb52a24b0292e9bef10f6e83e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Grazing by local communities inside a sanctuary'),
            ('B', 'Creation of a national park'),
            ('C', 'Declaration of a biosphere reserve'),
            ('D', 'Storage of seed and pollen in gene banks')
           ) as v(label, option_text)
 where q.question_hash = '249d224eb52a24b0292e9bef10f6e83e'
on conflict (question_id, label) do nothing;

-- environment | biodiversity | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'biodiversity'),
    'According to the 2019 IPBES Global Assessment, the direct drivers of biodiversity loss include',
    'The IPBES assessment identified five direct drivers of change: land and sea use change, direct exploitation, climate change, pollution and introduction of invasive alien species.',
    'hard',
    'Standard Reference',
    null,
    '9df948b76274d2cbc4d834e4c33b9154'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '9df948b76274d2cbc4d834e4c33b9154'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Population growth in developing countries'),
            ('B', 'Only habitat destruction and poaching'),
            ('C', 'Climate change alone as the leading driver'),
            ('D', 'Land and sea use change, direct exploitation, climate change, pollution and invasive alien species')
           ) as v(label, option_text)
 where q.question_hash = '9df948b76274d2cbc4d834e4c33b9154'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'The largest mangrove forest in the world, and India''s most important tiger habitat, is located in',
    'The Sundarbans in West Bengal is the largest mangrove forest in the world and the only mangrove tiger reserve in India, with Royal Bengal tigers adapted to saline conditions.',
    'easy',
    'Standard Reference',
    null,
    '0b41c5732f7c177a7bf033c50c399a1a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '0b41c5732f7c177a7bf033c50c399a1a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Mahanadi delta'),
            ('B', 'The Sundarbans delta'),
            ('C', 'The Gulf of Mannar'),
            ('D', 'The Godavari delta')
           ) as v(label, option_text)
 where q.question_hash = '0b41c5732f7c177a7bf033c50c399a1a'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'Tropical evergreen forests in India occur mainly in areas receiving rainfall above',
    'Tropical evergreen forests need more than 2000 mm of annual rainfall with a short dry season, as on the Western Ghats, north-east India and the Andaman Islands.',
    'easy',
    'NCERT Geography',
    null,
    '81d2a387f4cb087dff57cd41c09468e5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '81d2a387f4cb087dff57cd41c09468e5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2000 mm per year'),
            ('B', '3000 mm per year'),
            ('C', '1000 mm per year'),
            ('D', '1500 mm per year')
           ) as v(label, option_text)
 where q.question_hash = '81d2a387f4cb087dff57cd41c09468e5'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'Tropical deciduous forests in India are found in regions of',
    'Moist deciduous forests occur with 1000-2000 mm rainfall and dry deciduous forests with 700-1000 mm, the latter losing their leaves during the dry season.',
    'easy',
    'NCERT Geography',
    null,
    '1451735bd3bfa4a1b59c0b155b81d5e9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '1451735bd3bfa4a1b59c0b155b81d5e9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Above 3000 mm rainfall with frost'),
            ('B', 'Below 700 mm rainfall'),
            ('C', '1000 to 2000 mm rainfall'),
            ('D', 'Above 2000 mm rainfall')
           ) as v(label, option_text)
 where q.question_hash = '1451735bd3bfa4a1b59c0b155b81d5e9'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'The National Forest Policy of 1988 states that the basic needs of the people should be given priority in the',
    'The 1988 policy declared that the basic needs of the people should be given priority in the use and development of forests, while emphasising sustained yield and conservation.',
    'hard',
    'Standard Reference',
    null,
    '292150611a64a3a02565a21b837710ea'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '292150611a64a3a02565a21b837710ea'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Afforestation of degraded wastelands'),
            ('B', 'Conservation of the existing forest cover'),
            ('C', 'Sustained yield from forests'),
            ('D', 'Use and development of forests')
           ) as v(label, option_text)
 where q.question_hash = '292150611a64a3a02565a21b837710ea'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'The main aim of the Forest (Conservation) Act, 1980 is to',
    'The 1980 Act restricts diversion of forest land for non-forest purposes and provides for compensatory afforestation and net present value for such diversions.',
    'medium',
    'Standard Reference',
    null,
    'be1f069a00893582b0db9ec435183ef4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'be1f069a00893582b0db9ec435183ef4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Prevent inappropriate conversion of forest areas for non-forest uses'),
            ('B', 'Increase the revenue from state forests'),
            ('C', 'Transfer forest lands to the tribal cooperatives'),
            ('D', 'Promote large-scale plantation of commercial species')
           ) as v(label, option_text)
 where q.question_hash = 'be1f069a00893582b0db9ec435183ef4'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'Project Tiger was launched in India in',
    'Project Tiger was launched on 1 April 1973 with nine tiger reserves, of which Corbett in Uttarakhand was the first; the project was merged into the Wildlife (Protection) Act framework later.',
    'easy',
    'Standard Reference',
    null,
    '2f750d249a152aea54d40e6a4885d053'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '2f750d249a152aea54d40e6a4885d053'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1992'),
            ('B', '1987'),
            ('C', '1973'),
            ('D', '1951')
           ) as v(label, option_text)
 where q.question_hash = '2f750d249a152aea54d40e6a4885d053'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'According to the Fourth All-India Tiger Estimation released in 2022, the total number of tigers estimated in India was',
    'The 2022 report estimated 3,682 tigers in India, of which about 3,040 were in tiger reserves, showing a recovery from the 2018 estimate of 2,967.',
    'medium',
    'PIB 2022',
    2022,
    '80dc6e2b8f0c6739ea7e9a8e34aa74d8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '80dc6e2b8f0c6739ea7e9a8e34aa74d8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '4,161'),
            ('B', '3,682'),
            ('C', '2,967'),
            ('D', '5,012')
           ) as v(label, option_text)
 where q.question_hash = '80dc6e2b8f0c6739ea7e9a8e34aa74d8'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'Gir National Park in Gujarat is the only place in the world where one can find',
    'The Gir landscape sustains the entire world population of the Asiatic lion, recovered from a remnant population in the Gir forests; the cheetah has been lost from India.',
    'easy',
    'Standard Reference',
    null,
    '5ab875a465e0f1d029d3b24d987409f7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '5ab875a465e0f1d029d3b24d987409f7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Indian wild ass'),
            ('B', 'The Asiatic lion'),
            ('C', 'The Arabian gazelle'),
            ('D', 'The Asiatic cheetah')
           ) as v(label, option_text)
 where q.question_hash = '5ab875a465e0f1d029d3b24d987409f7'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'Kanha National Park in Madhya Pradesh is particularly renowned for its population of',
    'Kanha supports significant populations of gaur (Indian bison) and barasingha (swamp deer), along with tigers, and it inspired Rudyard Kipling''s The Jungle Book.',
    'medium',
    'Standard Reference',
    null,
    'dbab4b3fbcfe8b75d0dc663183a5dcdb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'dbab4b3fbcfe8b75d0dc663183a5dcdb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sambar and gaur'),
            ('B', 'Wild buffalo and rhino'),
            ('C', 'Gaur and barasingha'),
            ('D', 'Blackbuck and chinkara')
           ) as v(label, option_text)
 where q.question_hash = 'dbab4b3fbcfe8b75d0dc663183a5dcdb'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'Ranthambore National Park in Rajasthan is famous for its',
    'Ranthambore, which also houses the UNESCO listed Ranthambore Fort, is one of the most important tiger reserves in northern India.',
    'easy',
    'Standard Reference',
    null,
    '67243c4563d139ebc685b95a714984ca'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '67243c4563d139ebc685b95a714984ca'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Snow leopards'),
            ('B', 'Himalayan black bears'),
            ('C', 'Asiatic lions'),
            ('D', 'Royal Bengal tigers')
           ) as v(label, option_text)
 where q.question_hash = '67243c4563d139ebc685b95a714984ca'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'Silent Valley National Park in Kerala is especially significant for the conservation of',
    'Silent Valley, an extension of the Western Ghats World Heritage Site, protects the lion-tailed macaque, the Nilgiri langur and the Nilgiri tahr of the Eravikulam area.',
    'hard',
    'Standard Reference',
    null,
    '6f699873d019603a58942c4d59e7abcb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '6f699873d019603a58942c4d59e7abcb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The lion-tailed macaque and Nilgiri langur'),
            ('B', 'The mouse deer and the civet'),
            ('C', 'The gaur and the sambar'),
            ('D', 'The hornbill and the trogon')
           ) as v(label, option_text)
 where q.question_hash = '6f699873d019603a58942c4d59e7abcb'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'The Great Himalayan National Park in Himachal Pradesh was inscribed as a UNESCO World Heritage Site in',
    'It was inscribed in 2014 together with the Valley of Flowers as a natural World Heritage Site, and in 2021 it was designated a UNESCO Biosphere Reserve.',
    'easy',
    'Standard Reference',
    null,
    '08ede93c24e161a6fcdf7f6fa6cc7411'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '08ede93c24e161a6fcdf7f6fa6cc7411'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2019'),
            ('B', '2004'),
            ('C', '2008'),
            ('D', '2014')
           ) as v(label, option_text)
 where q.question_hash = '08ede93c24e161a6fcdf7f6fa6cc7411'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'The one-horned rhinoceros in India is found chiefly in',
    'Kaziranga in Assam holds the largest population of the Indian one-horned rhinoceros, and the Assam Rhino Valley has been a separate conservation site for the species since the 1990s.',
    'easy',
    'Standard Reference',
    null,
    'd098a43877c083843577fc03602f5a3e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd098a43877c083843577fc03602f5a3e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ranthambore and Sariska'),
            ('B', 'Periyar and Bandipur'),
            ('C', 'Kaziranga National Park and the Assam Rhino Valley'),
            ('D', 'Sunderbans and Bhitarkanika')
           ) as v(label, option_text)
 where q.question_hash = 'd098a43877c083843577fc03602f5a3e'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'The snow leopard of India is found predominantly in',
    'Snow leopard occupies the cold desert and alpine habitats of Ladakh, Himachal Pradesh, Uttarakhand and Jammu and Kashmir, where it preys on ibex and wild sheep.',
    'medium',
    'Standard Reference',
    null,
    '49510198fe9e11dedeba7ad9eddf031d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '49510198fe9e11dedeba7ad9eddf031d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Sundarbans and the Brahmaputra delta'),
            ('B', 'Ladakh, Himachal Pradesh and the higher Himalayan ranges'),
            ('C', 'The Western Ghats and the Deccan plateau'),
            ('D', 'The Rann of Kutch')
           ) as v(label, option_text)
 where q.question_hash = '49510198fe9e11dedeba7ad9eddf031d'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'The hangul or Kashmir stag is the state animal of Jammu and Kashmir and is found mainly in',
    'Dachigam in the Kashmir Valley is the last stronghold of the hangul, whose population has recovered from a very low base through conservation breeding.',
    'medium',
    'Standard Reference',
    null,
    '09ffd6af7256b6abce5c4b3157b0e97a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '09ffd6af7256b6abce5c4b3157b0e97a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Dachigam National Park'),
            ('B', 'Nagarjunsagar-Srisailam'),
            ('C', 'Gir National Park'),
            ('D', 'Kanha National Park')
           ) as v(label, option_text)
 where q.question_hash = '09ffd6af7256b6abce5c4b3157b0e97a'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'The musk deer of India occurs in the',
    'The Indian musk deer is found in the high-altitude Himalayan tracts of Uttarakhand, chiefly in Kedarnath Wildlife Sanctuary and the Doda district.',
    'hard',
    'Standard Reference',
    null,
    '85f14dd4e042e6a9d353e24c2a392299'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '85f14dd4e042e6a9d353e24c2a392299'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sahyadri hills of Maharashtra'),
            ('B', 'Garo hills of Meghalaya'),
            ('C', 'Nilgiri hills of Tamil Nadu'),
            ('D', 'Alpine slopes of Uttarakhand near the Nepal border')
           ) as v(label, option_text)
 where q.question_hash = '85f14dd4e042e6a9d353e24c2a392299'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'The Great Indian Hornbill, the state bird of Arunachal Pradesh, is the largest hornbill of',
    'The Great Indian Hornbill is the largest hornbill in Asia and a flagship species of the Eastern Himalaya, found in the forests of Assam, Arunachal Pradesh and the Western Ghats.',
    'easy',
    'Standard Reference',
    null,
    '769f0b9d76def715cf6818e4f6371f3a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '769f0b9d76def715cf6818e4f6371f3a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'South America'),
            ('B', 'Africa'),
            ('C', 'Asia'),
            ('D', 'Australia')
           ) as v(label, option_text)
 where q.question_hash = '769f0b9d76def715cf6818e4f6371f3a'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'The Sarus crane is the state bird of Uttar Pradesh and is noted for being',
    'The Sarus crane is the tallest flying bird in the world, and it breeds in the wetlands of the Terai and the Ganga-Yamuna Doab of Uttar Pradesh.',
    'medium',
    'Standard Reference',
    null,
    '86e51580e37edd78e6f308d4a3a141e1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '86e51580e37edd78e6f308d4a3a141e1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The tallest flying bird'),
            ('B', 'The only crane that nests on floating vegetation'),
            ('C', 'A flightless bird of the wetlands'),
            ('D', 'The heaviest of all flying birds')
           ) as v(label, option_text)
 where q.question_hash = '86e51580e37edd78e6f308d4a3a141e1'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'The Great Indian Bustard, the state bird of Gujarat, is a bird of',
    'The Great Indian Bustard inhabits dry grasslands and semi-desert scrub of Gujarat and Rajasthan; India''s largest flying bird, it is critically endangered.',
    'medium',
    'Standard Reference',
    null,
    'ed88e23bd328305a402af3f4e4bb132b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'ed88e23bd328305a402af3f4e4bb132b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Dense coniferous forests'),
            ('B', 'Grasslands and semi-desert scrub'),
            ('C', 'Mangrove swamps'),
            ('D', 'High-altitude alpine meadows')
           ) as v(label, option_text)
 where q.question_hash = 'ed88e23bd328305a402af3f4e4bb132b'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'Project Elephant, launched to protect elephants and their habitats, was started in',
    'Project Elephant was launched in 1992; India has more than 30 elephant reserves, and the Asian elephant is the state animal of several states including Assam, Jharkhand and Odisha.',
    'easy',
    'Standard Reference',
    null,
    'aaff8388aa4a53c625fadabbf47e56cc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'aaff8388aa4a53c625fadabbf47e56cc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1999'),
            ('B', '1973'),
            ('C', '1986'),
            ('D', '1992')
           ) as v(label, option_text)
 where q.question_hash = 'aaff8388aa4a53c625fadabbf47e56cc'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'The Indian wild ass or khur is found in',
    'Two distinct populations of khur survive, one in the Rann of Kutch and the other in the Ladakh cold desert; the species is the state animal of Gujarat.',
    'medium',
    'Standard Reference',
    null,
    'c1410b3fb9dd5a62a739dbef11418089'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'c1410b3fb9dd5a62a739dbef11418089'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Deccan plateau'),
            ('B', 'The Rann of Kutch and Ladakh'),
            ('C', 'The Andaman Islands'),
            ('D', 'The Sundarbans and the Brahmaputra delta')
           ) as v(label, option_text)
 where q.question_hash = 'c1410b3fb9dd5a62a739dbef11418089'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'Which of the following is the state animal of Assam?',
    'The one-horned rhinoceros is the state animal of Assam and its emblem appears on the state seal; the white-winged wood duck is the state bird of Assam.',
    'easy',
    'Standard Reference',
    null,
    '0336c67eb116c2079988a45261758118'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '0336c67eb116c2079988a45261758118'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The one-horned rhinoceros'),
            ('B', 'The sangai'),
            ('C', 'The hangul'),
            ('D', 'The white-winged wood duck')
           ) as v(label, option_text)
 where q.question_hash = '0336c67eb116c2079988a45261758118'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'Periyar Tiger Reserve in Kerala is named after',
    'The reserve is named after Periyar Lake, the artificial reservoir created by the 1895 Mullaperiyar dam across the Periyar river.',
    'hard',
    'Standard Reference',
    null,
    'e13f8d666338e0563f5bf4eef5106898'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e13f8d666338e0563f5bf4eef5106898'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A local plant called Periyar'),
            ('B', 'The Periyar river'),
            ('C', 'The Periyar lake'),
            ('D', 'The tribal chief Periyar')
           ) as v(label, option_text)
 where q.question_hash = 'e13f8d666338e0563f5bf4eef5106898'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'Buxa Tiger Reserve in West Bengal is notable for the presence of',
    'Buxa in the Dooars region shelters the Bengal tiger and provides refuge to the Indian rock python, and it forms part of the elephant landscape of the north Bengal plains.',
    'medium',
    'Standard Reference',
    null,
    '1e8a209fa02ba747ff270e27e4007496'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '1e8a209fa02ba747ff270e27e4007496'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Chinese fishing cat'),
            ('B', 'A large population of the Indian elephant'),
            ('C', 'The Buxa tiger and the Indian rock python'),
            ('D', 'The Sundarbans tiger population')
           ) as v(label, option_text)
 where q.question_hash = '1e8a209fa02ba747ff270e27e4007496'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'The Indian flying fox, the largest bat in India, is chiefly a',
    'The Indian flying fox (Pteropus medius) is a frugivorous bat that disperses seeds over long distances and is important in the regeneration of tropical forests.',
    'easy',
    'Standard Reference',
    null,
    'c6aa843ff35114edc189f09a370c2651'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'c6aa843ff35114edc189f09a370c2651'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Frugivorous bat feeding on fruit and nectar'),
            ('B', 'Insectivorous bat of cave colonies'),
            ('C', 'Vampire bat feeding on blood'),
            ('D', 'Carnivorous bat feeding on fish')
           ) as v(label, option_text)
 where q.question_hash = 'c6aa843ff35114edc189f09a370c2651'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'The name Sundarbans is derived from',
    'Sundarban takes its name from the Sundari tree (Heritiera littoralis), the dominant mangrove species of the delta, which gives the forest its distinctive character.',
    'easy',
    'Standard Reference',
    null,
    'ce5f7960424c770038c6900dfca8ad1a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'ce5f7960424c770038c6900dfca8ad1a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The ruling dynasty of the region'),
            ('B', 'The Sundari tree that grows abundantly in the delta'),
            ('C', 'The name of the main river of the delta'),
            ('D', 'The word for mangrove mud in Bengali')
           ) as v(label, option_text)
 where q.question_hash = 'ce5f7960424c770038c6900dfca8ad1a'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'Among the IUCN protected area management categories, Category Ia is designated as',
    'Category Ia is a strict nature reserve managed for the protection of nature, Category Ib is a wilderness area, Category II a national park and Category IV a habitat and species management area.',
    'medium',
    'Standard Reference',
    null,
    '0e33f8c6983386530e0de17d83c082e6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '0e33f8c6983386530e0de17d83c082e6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Habitat management area'),
            ('B', 'Protected landscape'),
            ('C', 'National park'),
            ('D', 'Strict nature reserve')
           ) as v(label, option_text)
 where q.question_hash = '0e33f8c6983386530e0de17d83c082e6'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'A wildlife sanctuary differs from a national park in India in that in a sanctuary',
    'In sanctuaries private ownership of land is permitted and grazing, cultivation and other activities continue under regulatory control; hunting is prohibited in both categories.',
    'medium',
    'Standard Reference',
    null,
    'be4dde460308337ecee8e808b3195b62'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'be4dde460308337ecee8e808b3195b62'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Grazing by local communities is entirely prohibited'),
            ('B', 'Only the central government can administer it'),
            ('C', 'Commercial hunting is completely banned'),
            ('D', 'Private ownership of land and activities such as grazing are permitted')
           ) as v(label, option_text)
 where q.question_hash = 'be4dde460308337ecee8e808b3195b62'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'Community reserves under the Wildlife (Protection) Act were introduced through',
    'The 2002 amendment provided for community reserves in areas where traditional communities had customary rights and were not protected as national parks or sanctuaries.',
    'hard',
    'Standard Reference',
    null,
    '597ea4745f2ff0d39605a0366ae1743e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '597ea4745f2ff0d39605a0366ae1743e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Scheduled Tribes and Other Traditional Forest Dwellers Act, 2006'),
            ('B', 'The Wildlife (Protection) Amendment Act, 2002'),
            ('C', 'The Biological Diversity Act, 2002'),
            ('D', 'The Forest (Conservation) Amendment Act, 2004')
           ) as v(label, option_text)
 where q.question_hash = '597ea4745f2ff0d39605a0366ae1743e'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The eco-sensitive zone around a protected area is a concept introduced under',
    'Section 3 of the Wildlife (Protection) Act, 1972 provides for eco-sensitive zones around national parks and sanctuaries to be notified by the state governments.',
    'easy',
    'Standard Reference',
    null,
    '1765bde7d46418e9966e7e891ed0287a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '1765bde7d46418e9966e7e891ed0287a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Biological Diversity Act, 2002'),
            ('B', 'The Environment Protection Act, 1986'),
            ('C', 'The Wildlife (Protection) Act, 1972'),
            ('D', 'The Forest (Conservation) Act, 1980')
           ) as v(label, option_text)
 where q.question_hash = '1765bde7d46418e9966e7e891ed0287a'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'UNESCO''s Man and the Biosphere Programme was launched in',
    'The MAB Programme was launched in 1971 with the aim of reconciling the conservation of nature with the sustained use of natural resources.',
    'easy',
    'Standard Reference',
    null,
    '52a13beca66b40ebdd599591c25d86ef'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '52a13beca66b40ebdd599591c25d86ef'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1971'),
            ('B', '1975'),
            ('C', '1984'),
            ('D', '1965')
           ) as v(label, option_text)
 where q.question_hash = '52a13beca66b40ebdd599591c25d86ef'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The difference between a biosphere reserve and a UNESCO World Heritage Site is that a biosphere reserve',
    'Biosphere reserves are designated through the UNESCO MAB Programme after national nomination; they have no separate statutory status under Indian law, unlike national parks and sanctuaries.',
    'hard',
    'Standard Reference',
    null,
    'f0a9762b8a60423e818efc662a961a7b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'f0a9762b8a60423e818efc662a961a7b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is a Category VI IUCN protected area'),
            ('B', 'Is a legal category created by Indian statute'),
            ('C', 'Is nominated by a national committee and recognised by UNESCO but has no separate legal status in India'),
            ('D', 'Is always a transboundary protected area')
           ) as v(label, option_text)
 where q.question_hash = 'f0a9762b8a60423e818efc662a961a7b'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'As of 2024, the number of UNESCO World Heritage Sites located in India is',
    'India had 43 World Heritage Sites after the inscription of the Maratha Military Landscapes of Pune in 2023, spanning cultural, natural and mixed sites.',
    'medium',
    'Standard Reference',
    null,
    '74def4d35c2dd410c6853d7d030e1ee6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '74def4d35c2dd410c6853d7d030e1ee6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '43'),
            ('B', '47'),
            ('C', '36'),
            ('D', '40')
           ) as v(label, option_text)
 where q.question_hash = '74def4d35c2dd410c6853d7d030e1ee6'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The UNESCO World Heritage Convention, under which sites of outstanding universal value are listed, was adopted in',
    'The Convention concerning the Protection of the World Cultural and Natural Heritage was adopted by UNESCO in 1972 and entered into force in 1975.',
    'easy',
    'Standard Reference',
    null,
    'b0323e4cf2c828f7b0baaab2c836029b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b0323e4cf2c828f7b0baaab2c836029b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1965'),
            ('B', '1972'),
            ('C', '1978'),
            ('D', '1983')
           ) as v(label, option_text)
 where q.question_hash = 'b0323e4cf2c828f7b0baaab2c836029b'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The concept of Other Effective Area-Based Conservation Measures (OECM) is associated with',
    'OECM is a concept formalised by decisions of the Convention on Biological Diversity to complement the existing system of protected areas in conserving biodiversity.',
    'hard',
    'Standard Reference',
    null,
    '772c408559d971e1c021301f10b7e1d2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '772c408559d971e1c021301f10b7e1d2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The World Heritage Convention'),
            ('B', 'The Convention on Migratory Species'),
            ('C', 'The Ramsar Convention'),
            ('D', 'The Convention on Biological Diversity')
           ) as v(label, option_text)
 where q.question_hash = '772c408559d971e1c021301f10b7e1d2'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'Khangchendzonga National Park in Sikkim is important because it is',
    'Khangchendzonga, inscribed as a World Heritage Site in 2016, shelters the snow leopard, musk deer and Himalayan tahr in its high-altitude valleys of the Lepcha and Limbu communities.',
    'hard',
    'Standard Reference',
    null,
    '35e56c5ebd8c44aebeabc0aea819ff1f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '35e56c5ebd8c44aebeabc0aea819ff1f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A biosphere reserve with no human habitation at all'),
            ('B', 'A transboundary park shared with Bhutan and Nepal'),
            ('C', 'A park whose high-altitude valleys provide refuge to the musk deer and snow leopard'),
            ('D', 'The largest mangrove park in the country')
           ) as v(label, option_text)
 where q.question_hash = '35e56c5ebd8c44aebeabc0aea819ff1f'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'Agasthyamalai Biosphere Reserve in Tamil Nadu was inscribed as a UNESCO World Heritage Site in',
    'The reserve was designated a biosphere reserve in 2016 and inscribed as a natural World Heritage Site in 2023, extending the Western Ghats to the Agasthyamalai hills.',
    'medium',
    'Standard Reference',
    null,
    '1cc5cc73ace970912c326f42a2ecbb05'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '1cc5cc73ace970912c326f42a2ecbb05'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2021'),
            ('B', '2023'),
            ('C', '2016'),
            ('D', '2019')
           ) as v(label, option_text)
 where q.question_hash = '1cc5cc73ace970912c326f42a2ecbb05'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The Important Bird Areas (IBA) network in India is coordinated by',
    'The IBA network is coordinated by BirdLife International; India has more than 1,300 IBAs, which form the backbone of the country''s bird area conservation.',
    'easy',
    'Standard Reference',
    null,
    'db6ed2b1ce6003183ef71db2490f1814'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'db6ed2b1ce6003183ef71db2490f1814'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'BirdLife International'),
            ('B', 'Bombay Natural History Society'),
            ('C', 'Centre for Wildlife and Habitat Studies'),
            ('D', 'Wildlife Institute of India')
           ) as v(label, option_text)
 where q.question_hash = 'db6ed2b1ce6003183ef71db2490f1814'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The National Park and Wildlife Sanctuaries in the Andaman and Nicobar Islands lie in one of the world''s biodiversity hotspots named',
    'The Nicobar Islands form part of the Sundaland hotspot, which also covers Malaysia, Indonesia and the Philippines and is rich in endemic species.',
    'easy',
    'Standard Reference',
    null,
    '9e4378d8b0c379f34b32aff6fa9f8a49'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '9e4378d8b0c379f34b32aff6fa9f8a49'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Western Ghats and Sri Lanka'),
            ('B', 'Himalaya'),
            ('C', 'Indo-Burma'),
            ('D', 'Sundaland')
           ) as v(label, option_text)
 where q.question_hash = '9e4378d8b0c379f34b32aff6fa9f8a49'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'Which of the following is a transboundary protected area shared by India and another country?',
    'The W National Park of Niger straddles the Niger-Benin border and is a transboundary tiger reserve; India also shares such ecosystems with Bangladesh and Nepal.',
    'hard',
    'Standard Reference',
    null,
    '6eaeca34acfd5780ecd724d5bb085d50'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '6eaeca34acfd5780ecd724d5bb085d50'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'W National Park in Niger'),
            ('B', 'Sundarbans National Park'),
            ('C', 'Bandipur National Park'),
            ('D', 'Kanha National Park')
           ) as v(label, option_text)
 where q.question_hash = '6eaeca34acfd5780ecd724d5bb085d50'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The concept of a biosphere reserve involves a core zone, a buffer zone and a',
    'A biosphere reserve is divided into a legally protected core, a buffer or multiple-use zone, and a transition zone where sustainable development is encouraged.',
    'medium',
    'Standard Reference',
    null,
    'cd3c0985d086aefbadceaf905bce56e5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'cd3c0985d086aefbadceaf905bce56e5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Settlement zone'),
            ('B', 'Transition zone'),
            ('C', 'Exclusion zone'),
            ('D', 'Commercial zone')
           ) as v(label, option_text)
 where q.question_hash = 'cd3c0985d086aefbadceaf905bce56e5'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'Protected Planet, the global database of protected areas, is maintained by',
    'Protected Planet, the UNEP-WCMC World Database on Protected Areas, records all nationally designated marine and terrestrial protected areas and is updated with national submissions.',
    'hard',
    'Standard Reference',
    null,
    '61c847d5af32ad773dec9089359932ff'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '61c847d5af32ad773dec9089359932ff'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'World Bank and UNDP'),
            ('B', 'IUCN alone'),
            ('C', 'UNFCCC secretariat'),
            ('D', 'UNEP and the World Database on Protected Areas')
           ) as v(label, option_text)
 where q.question_hash = '61c847d5af32ad773dec9089359932ff'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The Kanheri Caves and the SGNP together form one of the largest protected urban areas in the world. This protected area lies in',
    'Sanjay Gandhi National Park at Borivali in Mumbai and the adjoining SGNP Bioreserve form a large protected green lung within the metropolis of Maharashtra.',
    'medium',
    'Standard Reference',
    null,
    '79b747563ef0cedd35b2c1e0d14819b4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '79b747563ef0cedd35b2c1e0d14819b4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Gujarat'),
            ('B', 'Karnataka'),
            ('C', 'Maharashtra'),
            ('D', 'Tamil Nadu')
           ) as v(label, option_text)
 where q.question_hash = '79b747563ef0cedd35b2c1e0d14819b4'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'Joint forest management in India is a form of',
    'Joint forest management involves forest departments sharing protection and usufruct rights with Gram Panchayats, a widely used community-based conservation approach.',
    'medium',
    'Standard Reference',
    null,
    'ad286dbeac9323c2d80578bc6f806ea7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ad286dbeac9323c2d80578bc6f806ea7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Community-based conservation of forests'),
            ('B', 'Commercial plantation management'),
            ('C', 'Diverting forest revenue to states'),
            ('D', 'Ex-situ conservation of timber species')
           ) as v(label, option_text)
 where q.question_hash = 'ad286dbeac9323c2d80578bc6f806ea7'
on conflict (question_id, label) do nothing;

-- environment | pollution | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'The National Ambient Air Quality Standards notified in India specify limits for how many parameters?',
    'The NAAQS notified in 2009 prescribe standards for twelve parameters, including PM2.5, PM10, SO2, NO2, NH3, CO, lead, ozone, benzene, benzo(a)pyrene, ethylene dibromide and arsenic.',
    'medium',
    'Standard Reference',
    null,
    '8202abfcd7d8a26b992af4746d562ac5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '8202abfcd7d8a26b992af4746d562ac5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sixteen'),
            ('B', 'Twenty'),
            ('C', 'Eight'),
            ('D', 'Twelve')
           ) as v(label, option_text)
 where q.question_hash = '8202abfcd7d8a26b992af4746d562ac5'
on conflict (question_id, label) do nothing;

-- environment | pollution | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'In India''s air quality reporting, the pollutant designated as PM2.5 refers to particulate matter with an aerodynamic diameter of',
    'PM2.5 denotes particles of 2.5 micrometres or less, which penetrate deep into the lungs and enter the bloodstream, while PM10 denotes coarse particles up to 10 micrometres.',
    'easy',
    'CPCB',
    null,
    'f46f86cd3c70364823f6991307528042'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f46f86cd3c70364823f6991307528042'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Less than 10 micrometres'),
            ('B', 'Less than 2.5 micrometres'),
            ('C', 'Between 2.5 and 10 micrometres'),
            ('D', 'Less than 100 micrometres')
           ) as v(label, option_text)
 where q.question_hash = 'f46f86cd3c70364823f6991307528042'
on conflict (question_id, label) do nothing;

-- environment | pollution | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'The Air Quality Index category ''Severe'' in India''s National AQI corresponds to an AQI value of',
    'The six AQI categories are Good (0-50), Satisfactory (51-100), Moderately Polluted (101-200), Poor (201-300), Very Poor (301-400) and Severe (401-500).',
    'easy',
    'CPCB',
    null,
    '7d2525ad324b305e13f51cc20300d0d2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '7d2525ad324b305e13f51cc20300d0d2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '201 to 300'),
            ('B', '301 to 400'),
            ('C', '401 to 500'),
            ('D', '101 to 200')
           ) as v(label, option_text)
 where q.question_hash = '7d2525ad324b305e13f51cc20300d0d2'
on conflict (question_id, label) do nothing;

-- environment | pollution | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'Photochemical or Los Angeles type smog is chiefly characterised by',
    'Photochemical smog forms when sunlight reacts with vehicle exhaust oxides of nitrogen and volatile organic compounds, producing ground level ozone and PAN; London type smog is driven by SO2 and smoke.',
    'medium',
    'Standard Reference',
    null,
    '69c812c21d7046ccfb9bd4bed31430fd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '69c812c21d7046ccfb9bd4bed31430fd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'High concentrations of sulphur dioxide and particulate matter during winter inversion'),
            ('B', 'Ozone and peroxyacetyl nitrate formed by sunlight acting on oxides of nitrogen and hydrocarbons'),
            ('C', 'Dense fog with freezing conditions near industrial areas'),
            ('D', 'Acid deposition on buildings and monuments')
           ) as v(label, option_text)
 where q.question_hash = '69c812c21d7046ccfb9bd4bed31430fd'
on conflict (question_id, label) do nothing;

-- environment | pollution | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'London type smog is associated with which set of conditions?',
    'London smog forms in winter when cold, humid, stagnant air combines with SO2 and soot, forming sulphurous acid that irritates the respiratory system.',
    'medium',
    'Standard Reference',
    null,
    '52b2a31d39486245f1aeaf8d3ca942f9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '52b2a31d39486245f1aeaf8d3ca942f9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Low humidity and very cold winds'),
            ('B', 'High temperature, strong sunlight and vehicle exhaust'),
            ('C', 'High wind speed and dust storms'),
            ('D', 'Low temperature, high humidity and emissions of sulphur dioxide and smoke')
           ) as v(label, option_text)
 where q.question_hash = '52b2a31d39486245f1aeaf8d3ca942f9'
on conflict (question_id, label) do nothing;

-- environment | pollution | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'The major cause of depletion of the stratospheric ozone layer is the release of',
    'Chlorofluorocarbons, halons, carbon tetrachloride and methyl chloroform release chlorine and bromine radicals in the stratosphere that catalytically destroy ozone.',
    'easy',
    'Standard Reference',
    null,
    '45b66e0418aedcd993514dbc098f8404'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '45b66e0418aedcd993514dbc098f8404'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Methane and nitrous oxide'),
            ('B', 'Sulphur dioxide and nitrogen oxides'),
            ('C', 'Chlorofluorocarbons and other ozone-depleting substances'),
            ('D', 'Carbon monoxide and unburnt hydrocarbons')
           ) as v(label, option_text)
 where q.question_hash = '45b66e0418aedcd993514dbc098f8404'
on conflict (question_id, label) do nothing;

-- environment | pollution | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'The Montreal Protocol, which phases out ozone depleting substances, was adopted in',
    'The Montreal Protocol on Substances that Deplete the Ozone Layer was adopted in September 1987; the Kigali Amendment of 2016 brought hydrofluorocarbons under its control.',
    'easy',
    'Standard Reference',
    null,
    'c7347e4335b7c7695a9c87ea7a07955d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'c7347e4335b7c7695a9c87ea7a07955d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1987'),
            ('B', '2005'),
            ('C', '1992'),
            ('D', '1997')
           ) as v(label, option_text)
 where q.question_hash = 'c7347e4335b7c7695a9c87ea7a07955d'
on conflict (question_id, label) do nothing;

-- environment | pollution | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'Acid rain is primarily caused by the atmospheric emission of',
    'Sulphur dioxide and nitrogen oxides are oxidised in the atmosphere to sulphuric and nitric acids, which return to the surface as acid deposition and cause damage to crops, soil and buildings.',
    'easy',
    'Standard Reference',
    null,
    '065ef7cbe8688e0ca55d5fb38b49ee41'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '065ef7cbe8688e0ca55d5fb38b49ee41'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Oxides of carbon and hydrogen'),
            ('B', 'Chlorofluorocarbons and methane'),
            ('C', 'Oxides of sulphur and nitrogen'),
            ('D', 'Particulate matter and dust')
           ) as v(label, option_text)
 where q.question_hash = '065ef7cbe8688e0ca55d5fb38b49ee41'
on conflict (question_id, label) do nothing;

-- environment | pollution | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'Biochemical Oxygen Demand is a measure of',
    'BOD is the amount of dissolved oxygen needed by aerobic microorganisms to decompose organic matter in a litre of water, standardly measured over five days at 20 degrees Celsius.',
    'easy',
    'Standard Reference',
    null,
    'd4a95d92fc8ec5687367db82256370d9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd4a95d92fc8ec5687367db82256370d9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Oxygen required by microorganisms to decompose organic matter in a water sample'),
            ('B', 'Oxygen consumed by fish in a pond'),
            ('C', 'Oxygen used by plants during photosynthesis'),
            ('D', 'Oxygen dissolved in water at a given temperature')
           ) as v(label, option_text)
 where q.question_hash = 'd4a95d92fc8ec5687367db82256370d9'
on conflict (question_id, label) do nothing;

-- environment | pollution | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'A high ratio of BOD to COD in an industrial effluent indicates that the effluent is',
    'A BOD/COD ratio of about 0.3 or higher indicates good biodegradability, while a ratio below 0.3 shows that the organic matter is largely non-biodegradable and requires other treatment methods.',
    'hard',
    'Standard Reference',
    null,
    '355a41a23b8fb94d58c06f08ac5cbdab'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '355a41a23b8fb94d58c06f08ac5cbdab'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Free of any suspended solids'),
            ('B', 'Almost entirely non-biodegradable'),
            ('C', 'Highly toxic to aquatic life'),
            ('D', 'Highly biodegradable with a low concentration of toxic substances')
           ) as v(label, option_text)
 where q.question_hash = '355a41a23b8fb94d58c06f08ac5cbdab'
on conflict (question_id, label) do nothing;

-- environment | pollution | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'The permissible noise level in an industrial zone in India during day time, as prescribed by the CPCB, is',
    'CPCB standards allow 75 dB in the day and 70 dB at night for industrial areas, 55 dB and 45 dB for residential areas, and 50 dB in silence zones around hospitals and educational institutions.',
    'medium',
    'CPCB',
    null,
    '7778386c13f3816fd4f37ef27f15c0db'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '7778386c13f3816fd4f37ef27f15c0db'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '65 dB'),
            ('B', '75 dB'),
            ('C', '50 dB'),
            ('D', '55 dB')
           ) as v(label, option_text)
 where q.question_hash = '7778386c13f3816fd4f37ef27f15c0db'
on conflict (question_id, label) do nothing;

-- environment | pollution | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'The Hazardous Waste (Management and Handling) Rules were first notified in India in',
    'The Hazardous Waste Rules were notified in 1989 and later amended, most significantly in 2003 and 2016, and are administered by the CPCB and the state pollution control boards.',
    'easy',
    'Standard Reference',
    null,
    '411ae74b6f2626c077f5d3d94e101a90'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '411ae74b6f2626c077f5d3d94e101a90'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2016'),
            ('B', '1986'),
            ('C', '1989'),
            ('D', '1998')
           ) as v(label, option_text)
 where q.question_hash = '411ae74b6f2626c077f5d3d94e101a90'
on conflict (question_id, label) do nothing;

-- environment | pollution | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'Radioactive waste disposal in India is governed primarily by',
    'The Atomic Energy Act, 1962 vests waste disposal and safety regulation in the Atomic Energy Regulatory Board, which approves disposal facilities and monitors waste management.',
    'medium',
    'Standard Reference',
    null,
    '411a01501131a315c2692eb06f694d48'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '411a01501131a315c2692eb06f694d48'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Hazardous Waste Rules, 1989'),
            ('B', 'The National Environmental Policy, 2006'),
            ('C', 'The Environment Protection Act, 1986'),
            ('D', 'The Atomic Energy Act, 1962 and the directives of the Atomic Energy Regulatory Board')
           ) as v(label, option_text)
 where q.question_hash = '411a01501131a315c2692eb06f694d48'
on conflict (question_id, label) do nothing;

-- environment | pollution | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'The Torrey Canyon oil spill of 1967 and the Exxon Valdez spill of 1989 are classic cases of',
    'Both were tanker accidents, the Torrey Canyon off England and the Exxon Valdez off Alaska, which prompted the establishment of the International Convention for the Prevention of Pollution from Ships.',
    'medium',
    'Standard Reference',
    null,
    'b40e37fa75dbcf32c8e02fb7b32cbf9b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'b40e37fa75dbcf32c8e02fb7b32cbf9b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Marine pollution caused by tanker accidents'),
            ('B', 'Industrial effluents causing eutrophication'),
            ('C', 'Atmospheric deposition of persistent pesticides'),
            ('D', 'Radioactive contamination of coastal waters')
           ) as v(label, option_text)
 where q.question_hash = 'b40e37fa75dbcf32c8e02fb7b32cbf9b'
on conflict (question_id, label) do nothing;

-- environment | pollution | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'The Environment Impact Assessment Notification in India was first issued in',
    'The EIA Notification of 2006, issued under the Environment Protection Act, 1986, lists projects requiring prior environmental clearance and was later amended several times, notably in 2011 and 2014.',
    'easy',
    'Standard Reference',
    null,
    '33ec4f1d9cc5ed2085d6dd0ae79710fc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '33ec4f1d9cc5ed2085d6dd0ae79710fc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1994'),
            ('B', '2006'),
            ('C', '2011'),
            ('D', '1986')
           ) as v(label, option_text)
 where q.question_hash = '33ec4f1d9cc5ed2085d6dd0ae79710fc'
on conflict (question_id, label) do nothing;

-- environment | pollution | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'Household air pollution in rural and low-income households is mainly caused by',
    'Solid fuel combustion in poorly ventilated cookstoves releases fine particles and carbon monoxide and is a leading cause of respiratory illness, prompting clean cooking measures such as PM Surya Ghar.',
    'easy',
    'Standard Reference',
    null,
    '1d5e718317adcc3c8d600752d33369c4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '1d5e718317adcc3c8d600752d33369c4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Leakage of LPG from cylinders'),
            ('B', 'Use of kerosene lamps'),
            ('C', 'Burning of solid fuels such as wood, coal and cow dung in cookstoves'),
            ('D', 'Use of electric induction cookers')
           ) as v(label, option_text)
 where q.question_hash = '1d5e718317adcc3c8d600752d33369c4'
on conflict (question_id, label) do nothing;

-- environment | pollution | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'The benzene pollution in urban India is mainly associated with',
    'Benzene, a Group 1 carcinogen, is emitted from vehicular exhaust, coke ovens and the petroleum and chemical industries; it is one of the twelve NAAQS parameters.',
    'medium',
    'CPCB',
    null,
    'c24b43b3b2c2a2c0111a3dc6406ccf61'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'c24b43b3b2c2a2c0111a3dc6406ccf61'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Fly ash from thermal power stations'),
            ('B', 'Use of DDT in agriculture'),
            ('C', 'Burning of crop residue'),
            ('D', 'Coking plants and vehicular exhaust')
           ) as v(label, option_text)
 where q.question_hash = 'c24b43b3b2c2a2c0111a3dc6406ccf61'
on conflict (question_id, label) do nothing;

-- environment | pollution | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'Which of the following is a thermal pollution indicator that affects aquatic life?',
    'Warm water discharged from industries and power plants holds less dissolved oxygen and raises the metabolic oxygen demand of aquatic organisms, stressing fish populations.',
    'medium',
    'Standard Reference',
    null,
    'abc706357f5d823f3174bb689b0ee852'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'abc706357f5d823f3174bb689b0ee852'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A sharp fall in the dissolved oxygen at night'),
            ('B', 'A rise in water temperature that lowers dissolved oxygen solubility'),
            ('C', 'A decrease in the salinity of coastal waters'),
            ('D', 'An increase in the turbidity of river water')
           ) as v(label, option_text)
 where q.question_hash = 'abc706357f5d823f3174bb689b0ee852'
on conflict (question_id, label) do nothing;

-- environment | pollution | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'The Control of Transboundary Movements of Hazardous Wastes and their Disposal is governed by the',
    'The Basel Convention on the Control of Transboundary Movements of Hazardous Wastes and their Disposal was adopted in Basel in 1989 and India is a party to it.',
    'easy',
    'Standard Reference',
    null,
    '2f6fd30cbf47e3e653c0f522324c6a5b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '2f6fd30cbf47e3e653c0f522324c6a5b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Basel Convention'),
            ('B', 'Vienna Convention'),
            ('C', 'Stockholm Convention'),
            ('D', 'Rotterdam Convention')
           ) as v(label, option_text)
 where q.question_hash = '2f6fd30cbf47e3e653c0f522324c6a5b'
on conflict (question_id, label) do nothing;

-- environment | pollution | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'Which of the following statements regarding the Central Pollution Control Board is correct?',
    'The CPCB was constituted in 1974 under the Water Act and is a statutory body that coordinates with state boards, sets standards and monitors the national air and water quality programmes.',
    'hard',
    'Standard Reference',
    null,
    '79f7b7800bea98470a6204ea2dcda78e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '79f7b7800bea98470a6204ea2dcda78e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is chaired by the Prime Minister'),
            ('B', 'It is a statutory body set up under the Water (Prevention and Control of Pollution) Act, 1974'),
            ('C', 'It has no powers to enforce environmental standards'),
            ('D', 'It is a non-statutory advisory body created in 1974')
           ) as v(label, option_text)
 where q.question_hash = '79f7b7800bea98470a6204ea2dcda78e'
on conflict (question_id, label) do nothing;

-- environment | waste-management | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'waste-management'),
    'Under the Municipal Solid Waste (Management and Handling) Rules, 2016, which of the following is the correct division of responsibility for waste collection and disposal?',
    'The Rules place the duty of segregation at source on waste generators and the duty of collection, transport and disposal on the municipal body, with private collectors allowed under contract.',
    'hard',
    'Standard Reference',
    null,
    '9e64228fe64094428646d2c2c723fefc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '9e64228fe64094428646d2c2c723fefc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The municipal body alone is responsible for segregation and collection of all waste'),
            ('B', 'Waste generators must dispose of all waste themselves without municipal involvement'),
            ('C', 'Waste generators must segregate waste at source and the municipal body must collect and dispose of it'),
            ('D', 'The state pollution control board must segregate and collect every category of waste')
           ) as v(label, option_text)
 where q.question_hash = '9e64228fe64094428646d2c2c723fefc'
on conflict (question_id, label) do nothing;

-- environment | waste-management | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'waste-management'),
    'The practice of converting kitchen and garden waste into compost with the help of earthworms is known as',
    'Vermicomposting uses earthworms such as Eisenia fetida to convert organic residues into vermicompost, a nutrient-rich soil conditioner; vermiculture refers to culturing the worms themselves.',
    'easy',
    'Standard Reference',
    null,
    '0baeed4171bc4903dff9c52028ed5ae9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '0baeed4171bc4903dff9c52028ed5ae9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Vermicomposting'),
            ('B', 'Incineration'),
            ('C', 'Vermiculture'),
            ('D', 'Anaerobic digestion')
           ) as v(label, option_text)
 where q.question_hash = '0baeed4171bc4903dff9c52028ed5ae9'
on conflict (question_id, label) do nothing;

-- environment | waste-management | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'waste-management'),
    'The Solid Waste Management Rules in India for plastic waste were notified in',
    'The Plastic Waste (Management and Handling) Rules, 2016 were notified in 2016, with amendments in 2018 and 2022 that extended producer responsibility and banned identified single-use plastic items from July 2022.',
    'easy',
    'Standard Reference',
    null,
    '65caa2eb1d2f3ddb0da66bb66799fbb8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '65caa2eb1d2f3ddb0da66bb66799fbb8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2021'),
            ('B', '2003'),
            ('C', '2011'),
            ('D', '2016')
           ) as v(label, option_text)
 where q.question_hash = '65caa2eb1d2f3ddb0da66bb66799fbb8'
on conflict (question_id, label) do nothing;

-- environment | waste-management | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'waste-management'),
    'Extended Producer Responsibility in India under the plastic waste rules requires producers to',
    'EPR makes producers responsible for the end-of-life management of their products through collection, recycling targets and, for identified items, deposit return and back-end responsibility systems.',
    'medium',
    'Standard Reference',
    null,
    '602df7970b4d4ef408ee4ba44084ab63'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '602df7970b4d4ef408ee4ba44084ab63'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Pay the full cost of municipal solid waste collection'),
            ('B', 'Establish plastic waste collection centres in every village'),
            ('C', 'Collect and manage the end-of-life of the plastic they introduce into the market'),
            ('D', 'Ban the manufacture of all plastic products')
           ) as v(label, option_text)
 where q.question_hash = '602df7970b4d4ef408ee4ba44084ab63'
on conflict (question_id, label) do nothing;

-- environment | waste-management | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'waste-management'),
    'The single-use plastic items banned in India from July 2022 include',
    'The banned list covers plastic carry bags, disposable cups and plates, straws, cutlery, ear buds, toothpicks and packaging straps; PET bottles and food packaging are covered by EPR instead.',
    'medium',
    'PIB 2022',
    2022,
    'e13241dcf16999221cd93512de1e6289'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e13241dcf16999221cd93512de1e6289'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Plastic syringes and medical tubes'),
            ('B', 'All plastic food packaging'),
            ('C', 'Plastic water bottles and PET containers'),
            ('D', 'Plastic bags, disposable cups, straws, cutlery and ear buds')
           ) as v(label, option_text)
 where q.question_hash = 'e13241dcf16999221cd93512de1e6289'
on conflict (question_id, label) do nothing;

-- environment | waste-management | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'waste-management'),
    'The waste pickers who collect recyclables from municipal waste streams are formally recognised in India through',
    'The 2022 amendment recognises waste pickers as an essential part of the waste management chain and requires their formal integration, identity cards and access to safety equipment.',
    'hard',
    'Standard Reference',
    null,
    '7aa7b23c1c73bf0f702df7bb7f069403'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '7aa7b23c1c73bf0f702df7bb7f069403'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Solid Waste Management Rules amendment of 2022 that recognises them as an essential service'),
            ('B', 'The National Urban Sanitation Policy of 2008'),
            ('C', 'The National Skill Development Mission'),
            ('D', 'The Building and Other Construction Workers Act, 1996')
           ) as v(label, option_text)
 where q.question_hash = '7aa7b23c1c73bf0f702df7bb7f069403'
on conflict (question_id, label) do nothing;

-- environment | waste-management | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'waste-management'),
    'Waste-to-energy plants that incinerate municipal solid waste must comply with the emission norms laid down by',
    'CPCB lays down stack emission and ash disposal norms for waste-to-energy and incineration facilities, including limits on dioxins, particulates and bottom ash disposal.',
    'medium',
    'CPCB',
    null,
    'a6dab3a46cfdf91c7f86396903f7a672'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a6dab3a46cfdf91c7f86396903f7a672'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Bureau of Energy Efficiency'),
            ('B', 'The Central Pollution Control Board'),
            ('C', 'The Bureau of Standards'),
            ('D', 'The Ministry of Power')
           ) as v(label, option_text)
 where q.question_hash = 'a6dab3a46cfdf91c7f86396903f7a672'
on conflict (question_id, label) do nothing;

-- environment | waste-management | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'waste-management'),
    'Greywater reuse for gardening and flushing is generally encouraged because it',
    'Greywater is wastewater from baths, kitchens and laundry that can be treated and reused for non-potable purposes, cutting freshwater abstraction and sewer load.',
    'easy',
    'Standard Reference',
    null,
    '6bdb909cf0c3d22b1783a16fc38d26f3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '6bdb909cf0c3d22b1783a16fc38d26f3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Reduces the demand for potable water and the load on sewage treatment plants'),
            ('B', 'Converts sewage directly into biogas'),
            ('C', 'Eliminates the need for septic tanks in urban areas'),
            ('D', 'Increases the oxygen content of rivers')
           ) as v(label, option_text)
 where q.question_hash = '6bdb909cf0c3d22b1783a16fc38d26f3'
on conflict (question_id, label) do nothing;

-- environment | waste-management | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'waste-management'),
    'A circular economy approach to waste differs from the linear economy in that it',
    'The circular economy keeps products and materials in use for as long as possible, designing out waste and regeneration, in contrast to the take-make-dispose linear model.',
    'easy',
    'Standard Reference',
    null,
    'b081aeacdae43305ddc8454dc66fb903'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b081aeacdae43305ddc8454dc66fb903'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Increases the use of virgin raw materials'),
            ('B', 'Values the entire life cycle of products and emphasises reuse, repair and recycling'),
            ('C', 'Relies entirely on disposal in landfills'),
            ('D', 'Applies only to organic waste')
           ) as v(label, option_text)
 where q.question_hash = 'b081aeacdae43305ddc8454dc66fb903'
on conflict (question_id, label) do nothing;

-- environment | waste-management | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'waste-management'),
    'The Waste Pickers Bill 2019 proposed in India sought to',
    'The Bill aimed at integrating waste pickers into the formal recycling chain through cooperatives, identity cards and welfare measures, though it was withdrawn before being enacted.',
    'hard',
    'Standard Reference',
    null,
    'bbbf7934626693b370a24f3822f53e68'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'bbbf7934626693b370a24f3822f53e68'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Impose a cess on all plastic packaging'),
            ('B', 'Ban the informal waste picking sector'),
            ('C', 'Recognise waste pickers, cooperatives and recyclers and provide them identity and social security'),
            ('D', 'Privatise municipal solid waste collection')
           ) as v(label, option_text)
 where q.question_hash = 'bbbf7934626693b370a24f3822f53e68'
on conflict (question_id, label) do nothing;

-- environment | waste-management | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'waste-management'),
    'Biodegradable waste should preferably be processed by',
    'Composting converts biodegradable waste into a soil conditioner and anaerobic digestion produces biogas, thereby reducing the volume reaching landfills and avoiding methane emissions.',
    'easy',
    'Standard Reference',
    null,
    'b28d16e153f387565ca99a829d7476be'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'b28d16e153f387565ca99a829d7476be'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Deep burial in secured landfills'),
            ('B', 'Landfilling'),
            ('C', 'Incineration without energy recovery'),
            ('D', 'Composting or anaerobic digestion')
           ) as v(label, option_text)
 where q.question_hash = 'b28d16e153f387565ca99a829d7476be'
on conflict (question_id, label) do nothing;

-- environment | waste-management | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'waste-management'),
    'The Used Battery (Management and Handling) Rules were notified in India in',
    'The Used Battery Rules, 2022 brought all types of batteries, including lithium and lead-acid, under a producer responsibility framework with collection centres and recycling obligations.',
    'easy',
    'Standard Reference',
    null,
    '2191a8e80eb16540c05cfefe6a3cd7c8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '2191a8e80eb16540c05cfefe6a3cd7c8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2022'),
            ('B', '2024'),
            ('C', '2016'),
            ('D', '2018')
           ) as v(label, option_text)
 where q.question_hash = '2191a8e80eb16540c05cfefe6a3cd7c8'
on conflict (question_id, label) do nothing;

-- environment | waste-management | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'waste-management'),
    'Which of the following is the most appropriate method for the final disposal of hospital liquid waste after proper treatment?',
    'Treated liquid biomedical waste is discharged into designated sewage treatment systems, while sharps and solid clinical waste are autoclaved or incinerated with ash disposed of authoritatively.',
    'medium',
    'Standard Reference',
    null,
    '8cde72af6f11e65292c292de0ac42a6a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '8cde72af6f11e65292c292de0ac42a6a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Dilution in a pit outside the hospital'),
            ('B', 'Discharge into a nearby water body'),
            ('C', 'Incineration followed by disposal of ash in an authorised facility'),
            ('D', 'Burning in an open dump')
           ) as v(label, option_text)
 where q.question_hash = '8cde72af6f11e65292c292de0ac42a6a'
on conflict (question_id, label) do nothing;

-- environment | waste-management | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'waste-management'),
    'The concept of circular economy in the waste sector in India is promoted prominently by',
    'NITI Aayog has published a circular economy strategy for India with priority sectors including waste management, and promotes resource efficiency across the economy.',
    'medium',
    'NITI Aayog',
    null,
    '4bc73c9c66f9e19d3e2d40f9ad7e1902'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '4bc73c9c66f9e19d3e2d40f9ad7e1902'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Election Commission of India'),
            ('B', 'NITI Aayog'),
            ('C', 'The Planning Commission''s erstwhile disinvestment programme'),
            ('D', 'The Reserve Bank of India')
           ) as v(label, option_text)
 where q.question_hash = '4bc73c9c66f9e19d3e2d40f9ad7e1902'
on conflict (question_id, label) do nothing;

-- environment | waste-management | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'waste-management'),
    'Waste segregation at source in Indian cities is encouraged mainly to',
    'Segregation at source keeps recyclables and hazardous fractions out of the landfill stream, enabling resource recovery, compost production and lower disposal costs.',
    'easy',
    'Standard Reference',
    null,
    '5fa970fee2b11ded8bc60116f5bd5630'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '5fa970fee2b11ded8bc60116f5bd5630'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Reduce the number of waste pickers in the city'),
            ('B', 'Simplify the work of the municipal sanitation department'),
            ('C', 'Increase the tonnage of waste sent to landfills'),
            ('D', 'Recover materials such as paper, plastic, glass and metal and keep organic waste out of landfills')
           ) as v(label, option_text)
 where q.question_hash = '5fa970fee2b11ded8bc60116f5bd5630'
on conflict (question_id, label) do nothing;

-- environment | waste-management | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'waste-management'),
    'The National Waste Management Policy in India was launched in',
    'The National Waste Management Policy, 2017 replaced the National Solid Waste Management Policy of 2009 and is aligned with the Swachh Bharat mission and the circular economy goal.',
    'hard',
    'Standard Reference',
    null,
    'a65cbb57b786aa1c235695cb1c191fb3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a65cbb57b786aa1c235695cb1c191fb3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2016'),
            ('B', '2017'),
            ('C', '2019'),
            ('D', '2014')
           ) as v(label, option_text)
 where q.question_hash = 'a65cbb57b786aa1c235695cb1c191fb3'
on conflict (question_id, label) do nothing;

-- environment | waste-management | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'waste-management'),
    'Under the Municipal Solid Waste (Management and Handling) Rules, 2016, waste generators must segregate waste at source into which two streams?',
    'Rule 5 requires segregation into biodegradable and non-biodegradable streams, with the latter further divided into recyclable, hazardous and inert fractions for processing.',
    'easy',
    'Standard Reference',
    null,
    'ba79d1a4f5055bb38f431eba542dcd0f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'ba79d1a4f5055bb38f431eba542dcd0f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Hazardous and non-hazardous'),
            ('B', 'Domestic and industrial'),
            ('C', 'Solid and liquid'),
            ('D', 'Biodegradable and non-biodegradable')
           ) as v(label, option_text)
 where q.question_hash = 'ba79d1a4f5055bb38f431eba542dcd0f'
on conflict (question_id, label) do nothing;

-- environment | ocean-and-marine | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ocean-and-marine'),
    'The oceans cover roughly what proportion of the Earth''s surface?',
    'The ocean covers about 71 per cent of the Earth''s surface, contains 97 per cent of its water and holds the great majority of the planet''s habitable volume.',
    'easy',
    'Standard Reference',
    null,
    '5c0c546685a3448c2ff19bfc3d5262fd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '5c0c546685a3448c2ff19bfc3d5262fd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '51 per cent'),
            ('B', '61 per cent'),
            ('C', '71 per cent'),
            ('D', '81 per cent')
           ) as v(label, option_text)
 where q.question_hash = '5c0c546685a3448c2ff19bfc3d5262fd'
on conflict (question_id, label) do nothing;

-- environment | ocean-and-marine | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ocean-and-marine'),
    'The zone of the ocean in which sunlight penetrates and photosynthesis is possible is called the',
    'The photic zone is the sunlit surface layer, roughly the upper 200 metres, where marine plants and phytoplankton carry out photosynthesis; below it lies the aphotic zone.',
    'easy',
    'Standard Reference',
    null,
    '0acb951e893b3e90ce6eaf84de37c6a8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '0acb951e893b3e90ce6eaf84de37c6a8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Photic zone'),
            ('B', 'Benthic zone'),
            ('C', 'Abyssal zone'),
            ('D', 'Aphotic zone')
           ) as v(label, option_text)
 where q.question_hash = '0acb951e893b3e90ce6eaf84de37c6a8'
on conflict (question_id, label) do nothing;

-- environment | ocean-and-marine | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ocean-and-marine'),
    'Ocean acidification results mainly from the ocean''s absorption of',
    'Dissolved CO2 forms carbonic acid, lowering seawater pH and reducing carbonate ions, which weakens coral skeleton formation and shell formation in molluscs and plankton.',
    'easy',
    'Standard Reference',
    null,
    'a5e1977027f0ac2e8516757fe11864b4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'a5e1977027f0ac2e8516757fe11864b4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Methane seeps from the seabed'),
            ('B', 'Excess nitrogen and phosphorus'),
            ('C', 'Carbon dioxide dissolved from the atmosphere'),
            ('D', 'Sulphur dioxide from shipping')
           ) as v(label, option_text)
 where q.question_hash = 'a5e1977027f0ac2e8516757fe11864b4'
on conflict (question_id, label) do nothing;

-- environment | ocean-and-marine | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ocean-and-marine'),
    'Coral bleaching occurs when corals expel their symbiotic zooxanthellae under stress such as',
    'Thermal stress from warm anomalies causes corals to expel their algal symbionts, losing their colour and their main food source; pollution and sedimentation aggravate the damage.',
    'medium',
    'Standard Reference',
    null,
    '4211661a65b6d3852e316bbc35a80176'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '4211661a65b6d3852e316bbc35a80176'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Higher salinity of the sea water'),
            ('B', 'Excessive sedimentation and rising seawater temperature'),
            ('C', 'Reduced water currents'),
            ('D', 'An increase in the number of zooxanthellae')
           ) as v(label, option_text)
 where q.question_hash = '4211661a65b6d3852e316bbc35a80176'
on conflict (question_id, label) do nothing;

-- environment | ocean-and-marine | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ocean-and-marine'),
    'MARPOL is the international convention dealing with',
    'The International Convention for the Prevention of Pollution from Ships (MARPOL) sets standards for discharges from ships, including Annexes on oil, bulk chemicals, packaged goods, sewage, garbage and air emissions.',
    'easy',
    'Standard Reference',
    null,
    '496c377c9f20f168b75eeac027595f64'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '496c377c9f20f168b75eeac027595f64'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Prevention of pollution from ships'),
            ('B', 'Exploration of the continental shelf'),
            ('C', 'Prevention of dumping of waste at sea'),
            ('D', 'Marine pollution from land-based sources')
           ) as v(label, option_text)
 where q.question_hash = '496c377c9f20f168b75eeac027595f64'
on conflict (question_id, label) do nothing;

-- environment | ocean-and-marine | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ocean-and-marine'),
    'The Ballast Water Management Convention aims to',
    'The convention, adopted in 2004 and in force since 2017, requires ships to treat and control ballast water to avoid introducing harmful aquatic organisms into new environments.',
    'medium',
    'Standard Reference',
    null,
    '15e8cf7b6076b50c364a0b5c47d1d0e8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '15e8cf7b6076b50c364a0b5c47d1d0e8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Set standards for the disposal of fishing gear'),
            ('B', 'Control the dumping of radioactive waste at sea'),
            ('C', 'Regulate the discharge of oil from tankers'),
            ('D', 'Prevent the transfer of invasive non-native organisms through ballast water')
           ) as v(label, option_text)
 where q.question_hash = '15e8cf7b6076b50c364a0b5c47d1d0e8'
on conflict (question_id, label) do nothing;

-- environment | ocean-and-marine | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ocean-and-marine'),
    'The National Ocean Policy of India was released in',
    'The National Ocean Policy released in 2004 encouraged exploration of marine resources and proposed an Island Development Authority and integrated coastal zone management.',
    'hard',
    'Standard Reference',
    null,
    'eb959db25895e6798dd4b9bfc033cc01'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'eb959db25895e6798dd4b9bfc033cc01'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2004'),
            ('B', '2020'),
            ('C', '2008'),
            ('D', '2015')
           ) as v(label, option_text)
 where q.question_hash = 'eb959db25895e6798dd4b9bfc033cc01'
on conflict (question_id, label) do nothing;

-- environment | ocean-and-marine | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ocean-and-marine'),
    'Marine Protected Areas in India are notified under the',
    'Marine Protected Areas such as the Gulf of Mannar, Gulf of Kachchh and the Andaman marine reserves are notified under the Wildlife (Protection) Act, 1972.',
    'medium',
    'Standard Reference',
    null,
    '3717c768a8fd8dfbe836dcab11c53511'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '3717c768a8fd8dfbe836dcab11c53511'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Marine Fisheries Act, 1957'),
            ('B', 'Wildlife (Protection) Act, 1972'),
            ('C', 'Coastal Zone Regulation Management Act, 2010'),
            ('D', 'Environment Protection Act, 1986')
           ) as v(label, option_text)
 where q.question_hash = '3717c768a8fd8dfbe836dcab11c53511'
on conflict (question_id, label) do nothing;

-- environment | ocean-and-marine | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ocean-and-marine'),
    'Seagrass meadows are significant because they',
    'Seagrass meadows are highly efficient blue carbon sinks, sequestering carbon in sediments for centuries while providing nursery habitat, coastal protection and carbon storage services.',
    'medium',
    'Standard Reference',
    null,
    '5fbda7614e4ea48676511b24f9e90b07'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '5fbda7614e4ea48676511b24f9e90b07'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Are the main source of atmospheric oxygen'),
            ('B', 'Provide the only food for dugongs'),
            ('C', 'Grow only in the deep ocean beyond the continental shelf'),
            ('D', 'Store large amounts of carbon in marine sediments')
           ) as v(label, option_text)
 where q.question_hash = '5fbda7614e4ea48676511b24f9e90b07'
on conflict (question_id, label) do nothing;

-- environment | ocean-and-marine | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ocean-and-marine'),
    'Noise pollution in the ocean affects marine life chiefly by',
    'Shipping, sonar and construction noise mask the low-frequency sounds used by cetaceans for communication and navigation, causing stress, behavioural change and loss of feeding efficiency.',
    'medium',
    'Standard Reference',
    null,
    '438124f24ab7b360d4db034b203a0290'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '438124f24ab7b360d4db034b203a0290'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Reducing the oxygen content of deep water'),
            ('B', 'Reducing the salinity of seawater'),
            ('C', 'Disrupting the acoustic communication and navigation of whales, dolphins and fish'),
            ('D', 'Increasing the temperature of the surface layer')
           ) as v(label, option_text)
 where q.question_hash = '438124f24ab7b360d4db034b203a0290'
on conflict (question_id, label) do nothing;

-- environment | ocean-and-marine | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ocean-and-marine'),
    'Deep sea or polymetallic nodule mining is controversial chiefly because',
    'Nodules grow extremely slowly and support unique abyssal ecosystems, so removing them can cause long-lasting damage, a major reason for the mining moratorium requested by island states.',
    'medium',
    'Standard Reference',
    null,
    '2e0ad4b5ddfcaa51db04367597db9157'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '2e0ad4b5ddfcaa51db04367597db9157'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It consumes more oxygen than can be replenished'),
            ('B', 'It is restricted only to frozen polar waters'),
            ('C', 'It would destroy the ecosystems of the abyssal plain that are poorly known and slow to recover'),
            ('D', 'It produces no economic benefit whatsoever')
           ) as v(label, option_text)
 where q.question_hash = '2e0ad4b5ddfcaa51db04367597db9157'
on conflict (question_id, label) do nothing;

-- environment | ocean-and-marine | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ocean-and-marine'),
    'The continental shelf of an ocean is the shallow, gently sloping extension of the landmass that',
    'The continental shelf carries the world''s richest fisheries, holds most of the offshore oil and gas resources and is legally the basis of India''s extended continental shelf claims.',
    'medium',
    'Standard Reference',
    null,
    '519691a102fafc86f9af3b85e62b80e2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '519691a102fafc86f9af3b85e62b80e2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Forms where ocean plates are created at mid-ocean ridges'),
            ('B', 'Reaches generally up to 200 metres depth and is the most productive zone for fisheries'),
            ('C', 'Is the flat-floored basin of the deep ocean'),
            ('D', 'Is the deepest part of the ocean where trenches occur')
           ) as v(label, option_text)
 where q.question_hash = '519691a102fafc86f9af3b85e62b80e2'
on conflict (question_id, label) do nothing;

-- environment | ocean-and-marine | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ocean-and-marine'),
    'Hydrothermal vents on mid-ocean ridges support unusual ecosystems because they',
    'At the ridges the hot water carries dissolved sulphides that bacteria use to synthesise organic matter chemosynthetically, forming the unique vent communities studied in the deep sea.',
    'medium',
    'Standard Reference',
    null,
    '0b2d2bf3a61592fa5e04bc33f2a749c7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '0b2d2bf3a61592fa5e04bc33f2a749c7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Release mineral-rich water that sustains chemosynthetic organisms without sunlight'),
            ('B', 'Are caused by underwater volcanic eruptions of lava'),
            ('C', 'Receive continuous sunlight on the ocean floor'),
            ('D', 'Form where the ocean floor is covered by thick ice')
           ) as v(label, option_text)
 where q.question_hash = '0b2d2bf3a61592fa5e04bc33f2a749c7'
on conflict (question_id, label) do nothing;

-- environment | ocean-and-marine | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ocean-and-marine'),
    'The global conveyor belt or thermohaline circulation of the ocean is driven mainly by',
    'Cold saline water sinks in the polar regions and flows along the seabed before surfacing again, creating a slow global circulation that stores and redistributes heat and carbon.',
    'hard',
    'Standard Reference',
    null,
    'ce5c60ae8495f06dac0f3c2aa9b52c1e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'ce5c60ae8495f06dac0f3c2aa9b52c1e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The heating of the equatorial waters by the sun'),
            ('B', 'The rotation of the earth and the Coriolis force alone'),
            ('C', 'The pull of the moon on the ocean surface'),
            ('D', 'Differences in temperature and salinity that alter water density')
           ) as v(label, option_text)
 where q.question_hash = 'ce5c60ae8495f06dac0f3c2aa9b52c1e'
on conflict (question_id, label) do nothing;

-- environment | ocean-and-marine | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ocean-and-marine'),
    'The Coral Triangle, the global centre of marine biodiversity, is located in',
    'The Coral Triangle holds the world''s greatest diversity of reef-building corals and reef-associated species and is the focus of global marine conservation efforts.',
    'easy',
    'Standard Reference',
    null,
    'bd8a5084bcd48b026e617ce6270b07b4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'bd8a5084bcd48b026e617ce6270b07b4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Red Sea and the Persian Gulf'),
            ('B', 'The Baltic Sea and the North Sea'),
            ('C', 'The Caribbean and the Gulf of Mexico'),
            ('D', 'Indonesia, Malaysia, the Philippines, Papua New Guinea and the Solomon Islands')
           ) as v(label, option_text)
 where q.question_hash = 'bd8a5084bcd48b026e617ce6270b07b4'
on conflict (question_id, label) do nothing;

-- environment | ocean-and-marine | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ocean-and-marine'),
    'Thermal expansion of seawater contributes to sea level rise because',
    'As the ocean warms the density of water falls and the same mass occupies a greater volume; this accounted for about 40 per cent of sea level rise between 1971 and 2018 in the IPCC assessment.',
    'medium',
    'Standard Reference',
    null,
    '6529277fa4704e6433243a100b94bab3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '6529277fa4704e6433243a100b94bab3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Warm water evaporates and reduces the mass of the ocean'),
            ('B', 'Salt dissolves faster in warm water'),
            ('C', 'Warm water is less dense and therefore occupies a larger volume'),
            ('D', 'Cold water sinks and pushes the surface layer down')
           ) as v(label, option_text)
 where q.question_hash = '6529277fa4704e6433243a100b94bab3'
on conflict (question_id, label) do nothing;

-- environment | ocean-and-marine | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ocean-and-marine'),
    'The red tide bloom of Karenia brevis in the Gulf of Mexico is damaging mainly because it',
    'The bloom releases brevetoxins that cause fish kills and respiratory problems in humans and can be carried ashore by wind, threatening the livelihoods of fishing communities.',
    'medium',
    'Standard Reference',
    null,
    '368cc6f0d1e12066822ee010bbd4c2f1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '368cc6f0d1e12066822ee010bbd4c2f1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Accelerates the growth of mangrove roots'),
            ('B', 'Produces neurotoxins that kill fish and marine mammals'),
            ('C', 'Increases the oxygen content of the seabed'),
            ('D', 'Raises the salinity of the coastal water')
           ) as v(label, option_text)
 where q.question_hash = '368cc6f0d1e12066822ee010bbd4c2f1'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The United Nations Decade on Ecosystem Restoration, proclaimed by the General Assembly, covers the period',
    'The UN Decade on Ecosystem Restoration runs from 2021 to 2030 and supports restoration of degraded ecosystems worldwide, aligning with the Kunming-Montreal biodiversity targets.',
    'medium',
    'Standard Reference',
    null,
    '326e920a9984083461b13c79d068ba8f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '326e920a9984083461b13c79d068ba8f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2021 to 2030'),
            ('B', '2030 to 2040'),
            ('C', '2002 to 2012'),
            ('D', '2015 to 2024')
           ) as v(label, option_text)
 where q.question_hash = '326e920a9984083461b13c79d068ba8f'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'National parks and sanctuaries in India are notified by the',
    'Section 3 of the Wildlife (Protection) Act, 1972 empowers the state government to notify national parks, sanctuaries and conservation reserves, though listing also requires central concurrence.',
    'medium',
    'Standard Reference',
    null,
    'd4614afeb195ec1b8b104f9e57e14db9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd4614afeb195ec1b8b104f9e57e14db9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The state government'),
            ('B', 'The National Biodiversity Authority'),
            ('C', 'The National Board for Wildlife'),
            ('D', 'The Union Ministry of Environment, Forest and Climate Change')
           ) as v(label, option_text)
 where q.question_hash = 'd4614afeb195ec1b8b104f9e57e14db9'
on conflict (question_id, label) do nothing;

-- environment | climate-change | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'climate-change'),
    'The Paris Agreement on climate change was adopted at which conference and in which year?',
    'The Paris Agreement was adopted at COP21 in Paris in December 2015 and entered into force on 4 November 2016, bringing nearly every country into a common framework with NDCs.',
    'easy',
    'Standard Reference',
    null,
    '2318b89d6d6c063aee4515eb525c828a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '2318b89d6d6c063aee4515eb525c828a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'COP15, Kyoto, 1997'),
            ('B', 'COP19, Warsaw, 2013'),
            ('C', 'COP26, Glasgow, 2021'),
            ('D', 'COP21, Paris, 2015')
           ) as v(label, option_text)
 where q.question_hash = '2318b89d6d6c063aee4515eb525c828a'
on conflict (question_id, label) do nothing;

-- environment | climate-change | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'climate-change'),
    'The Kyoto Protocol was adopted in 1997 and',
    'The Kyoto Protocol placed binding targets only on industrialised Annex I countries, leaving developing countries to take non-binding steps, a point of contention that shaped the later Paris Agreement.',
    'easy',
    'Standard Reference',
    null,
    '8a7fd15c828bc60694b03b0ff1895c8e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '8a7fd15c828bc60694b03b0ff1895c8e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Applied emission cuts to all countries from the start'),
            ('B', 'Created the carbon market under Article 6'),
            ('C', 'Set binding emissions targets only for developed countries listed in Annex I'),
            ('D', 'Was the first treaty to use the term net zero')
           ) as v(label, option_text)
 where q.question_hash = '8a7fd15c828bc60694b03b0ff1895c8e'
on conflict (question_id, label) do nothing;

-- environment | climate-change | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'climate-change'),
    'The United Nations Framework Convention on Climate Change was opened for signature at',
    'The UNFCCC was opened for signature at the Rio Earth Summit in June 1992 and entered into force in 1994; its conference of parties has met annually since COP1 in Berlin in 1995.',
    'easy',
    'Standard Reference',
    null,
    'c973fba08ae369c73a30fd9d21674fcf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'c973fba08ae369c73a30fd9d21674fcf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The 1997 Kyoto Conference'),
            ('B', 'The 1992 Rio Earth Summit'),
            ('C', 'The 2002 Johannesburg Summit'),
            ('D', 'The 1972 Stockholm Conference')
           ) as v(label, option_text)
 where q.question_hash = 'c973fba08ae369c73a30fd9d21674fcf'
on conflict (question_id, label) do nothing;

-- environment | climate-change | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'climate-change'),
    'The Intergovernmental Panel on Climate Change was established in 1988 by',
    'The IPCC was created jointly by WMO and UNEP to assess the science, impacts, adaptation and mitigation of climate change; it does not conduct research itself.',
    'easy',
    'Standard Reference',
    null,
    'e18948ff68c77d531207ab65fd95698c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e18948ff68c77d531207ab65fd95698c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The World Bank and the International Monetary Fund'),
            ('B', 'The World Meteorological Organization and the United Nations Environment Programme'),
            ('C', 'The European Commission and the World Trade Organization'),
            ('D', 'The United Nations Framework Convention on Climate Change')
           ) as v(label, option_text)
 where q.question_hash = 'e18948ff68c77d531207ab65fd95698c'
on conflict (question_id, label) do nothing;

-- environment | climate-change | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'climate-change'),
    'The Kigali Amendment to the Montreal Protocol, adopted in 2016, deals with',
    'The Kigali Amendment, adopted at COP22 in Doha, added hydrofluorocarbons to the Montreal Protocol and required their phasedown, a measure that also curbs climate warming.',
    'easy',
    'Standard Reference',
    null,
    '5f74f931e415a33e6a1017a3066448cc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '5f74f931e415a33e6a1017a3066448cc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Regulation of carbon credit markets'),
            ('B', 'Control of ozone-depleting CFC production'),
            ('C', 'Reduction of sulphur emissions from shipping'),
            ('D', 'Phase-out of hydrofluorocarbons')
           ) as v(label, option_text)
 where q.question_hash = '5f74f931e415a33e6a1017a3066448cc'
on conflict (question_id, label) do nothing;

-- environment | climate-change | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'climate-change'),
    'India''s pledge of net zero emissions by 2070 was announced in',
    'At the Glasgow summit in November 2021 India announced a Panchamrit including net zero by 2070, presented as a long-term low emission development strategy rather than a treaty obligation.',
    'medium',
    'Standard Reference',
    null,
    '83d62f986cb5680a137c0c023c8fa2a9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '83d62f986cb5680a137c0c023c8fa2a9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2021 at the Glasgow climate summit'),
            ('B', '2022 at COP27'),
            ('C', '2023 at COP28'),
            ('D', '2015 at COP21')
           ) as v(label, option_text)
 where q.question_hash = '83d62f986cb5680a137c0c023c8fa2a9'
on conflict (question_id, label) do nothing;

-- environment | climate-change | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'climate-change'),
    'Under India''s updated Nationally Determined Contribution, the country has committed to',
    'India''s updated NDC set a 45 per cent cut in emissions intensity of GDP from 2005 by 2030, about 50 per cent cumulative installed electric power capacity from non-fossil sources by 2030 and net zero by 2070.',
    'hard',
    'Standard Reference',
    null,
    'a4907342de9ea8cbee57c0d88358edd6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'a4907342de9ea8cbee57c0d88358edd6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A 70 per cent reduction in absolute emissions by 2030 from 2005 levels'),
            ('B', 'A 35 per cent cut in emissions intensity by 2025'),
            ('C', 'A 45 per cent reduction in emissions intensity of GDP by 2030 from the 2005 level and about 50 per cent non-fossil installed electric capacity'),
            ('D', 'A 100 per cent non-fossil capacity target by 2040')
           ) as v(label, option_text)
 where q.question_hash = 'a4907342de9ea8cbee57c0d88358edd6'
on conflict (question_id, label) do nothing;

-- environment | climate-change | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'climate-change'),
    'Climate adaptation differs from climate mitigation in that adaptation',
    'Adaptation adjusts systems to actual or expected climate and its effects, for example flood defences or drought-resistant crops, whereas mitigation tackles the causes by cutting emissions.',
    'medium',
    'Standard Reference',
    null,
    'b086eab1ac31d1718b37aec5c0f9fdd4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'b086eab1ac31d1718b37aec5c0f9fdd4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Reduces greenhouse gas emissions or enhances sinks'),
            ('B', 'Is financed only through carbon credits'),
            ('C', 'Reduces vulnerability to the impacts of climate change that has already occurred or is unavoidable'),
            ('D', 'Applies only to coastal states')
           ) as v(label, option_text)
 where q.question_hash = 'b086eab1ac31d1718b37aec5c0f9fdd4'
on conflict (question_id, label) do nothing;

-- environment | climate-change | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'climate-change'),
    'The principle of Common But Differentiated Responsibilities and Respective Capabilities in the UNFCCC implies that',
    'CBDR-RC, elaborated in the Kyoto Protocol, recognises a common responsibility for climate protection with differentiated obligations reflecting historical responsibility and the differing capacities of states.',
    'hard',
    'Standard Reference',
    null,
    'ba9ba182ce61ce05c9a34639c6f6d0e0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ba9ba182ce61ce05c9a34639c6f6d0e0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'All states share the goal of climate protection but have different obligations according to their capacities'),
            ('B', 'Developing states must accept binding targets immediately'),
            ('C', 'All countries must adopt identical emission reduction targets'),
            ('D', 'Only industrialised states are responsible for climate protection')
           ) as v(label, option_text)
 where q.question_hash = 'ba9ba182ce61ce05c9a34639c6f6d0e0'
on conflict (question_id, label) do nothing;

-- environment | climate-change | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'climate-change'),
    'Article 6 of the Paris Agreement provides for',
    'Article 6 covers internationally transferred mitigation outcomes, including the mechanism for sustainable development and the Paris Agreement Crediting Mechanism, which underpin international carbon markets.',
    'hard',
    'Standard Reference',
    null,
    '59e7d1ea48b925a6ba8516069a527a3e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '59e7d1ea48b925a6ba8516069a527a3e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A fund for the rehabilitation of coal mines'),
            ('B', 'Cooperative approaches in the trading of emission reduction credits between countries'),
            ('C', 'A global carbon tax on fossil fuel producers'),
            ('D', 'Mandatory emission caps for all countries')
           ) as v(label, option_text)
 where q.question_hash = '59e7d1ea48b925a6ba8516069a527a3e'
on conflict (question_id, label) do nothing;

-- environment | climate-change | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'climate-change'),
    'The global warming potential of methane over a hundred-year period is roughly how many times that of carbon dioxide?',
    'The IPCC Sixth Assessment Report gives methane a 100-year global warming potential of about 27 to 30 and nitrous oxide about 273 relative to carbon dioxide, though methane''s 20-year value is far higher.',
    'easy',
    'IPCC AR6',
    2021,
    'd6530ec7ec0531bee3e1618b49b3ee3d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'd6530ec7ec0531bee3e1618b49b3ee3d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'About 100'),
            ('B', 'About 500'),
            ('C', 'About 5'),
            ('D', 'About 28')
           ) as v(label, option_text)
 where q.question_hash = 'd6530ec7ec0531bee3e1618b49b3ee3d'
on conflict (question_id, label) do nothing;

-- environment | climate-change | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'climate-change'),
    'Thawing of permafrost is a climate concern mainly because it',
    'Permafrost soils hold vast stores of organic carbon; thawing converts this into a carbon source through microbial decomposition, creating a positive feedback that accelerates warming.',
    'medium',
    'Standard Reference',
    null,
    'f08ea8b9644a1014c56c8d110aadd24f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'f08ea8b9644a1014c56c8d110aadd24f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Increases the reflection of sunlight off the ground'),
            ('B', 'Reduces the albedo of Arctic ice'),
            ('C', 'Releases stored carbon dioxide and methane into the atmosphere'),
            ('D', 'Creates new fish-rich rivers in the Arctic')
           ) as v(label, option_text)
 where q.question_hash = 'f08ea8b9644a1014c56c8d110aadd24f'
on conflict (question_id, label) do nothing;

-- environment | climate-change | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'climate-change'),
    'The term climate refugee is used for persons who',
    'Climate refugees or climate migrants are forced to move because of the adverse effects of climate change, a category not yet covered by a dedicated international legal instrument.',
    'medium',
    'Standard Reference',
    null,
    '7eebba544b2a960f444cd7d4fe00b2ee'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '7eebba544b2a960f444cd7d4fe00b2ee'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Are granted asylum by the Geneva Convention of 1951'),
            ('B', 'Move temporarily to escape a cyclone season'),
            ('C', 'Are internally displaced due to a dam project'),
            ('D', 'Must move because climate change has seriously degraded their livelihoods or living conditions')
           ) as v(label, option_text)
 where q.question_hash = '7eebba544b2a960f444cd7d4fe00b2ee'
on conflict (question_id, label) do nothing;

-- environment | climate-change | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'climate-change'),
    'The first Global Stocktake under the Paris Agreement was concluded at COP28 in Dubai with the call to',
    'The 2023 UAE Consensus called for transitioning away from fossil fuels, tripling renewable capacity and doubling energy efficiency by 2030, and accelerating action in this critical decade.',
    'medium',
    'Standard Reference',
    null,
    'd0f822428851bcba04c75cfd728c7a9b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd0f822428851bcba04c75cfd728c7a9b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Transition away from fossil fuels in energy systems and triple renewables by 2030'),
            ('B', 'Impose a global carbon price of 100 dollars a tonne'),
            ('C', 'Expand the use of coal for energy security'),
            ('D', 'Create a global climate migration compact')
           ) as v(label, option_text)
 where q.question_hash = 'd0f822428851bcba04c75cfd728c7a9b'
on conflict (question_id, label) do nothing;

-- environment | climate-change | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'climate-change'),
    'The Loss and Damage Fund for countries most affected by climate change was agreed at',
    'COP27 in Sharm el-Sheikh agreed to establish a fund to assist developing countries with loss and damage from climate impacts, operationalised after COP28 in Dubai.',
    'medium',
    'Standard Reference',
    null,
    'cee4b4c9093f321c51712004bb4d57d3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'cee4b4c9093f321c51712004bb4d57d3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'COP26, Glasgow, 2021'),
            ('B', 'COP27, Sharm el-Sheikh, 2022'),
            ('C', 'COP28, Dubai, 2023'),
            ('D', 'COP29, Baku, 2024')
           ) as v(label, option_text)
 where q.question_hash = 'cee4b4c9093f321c51712004bb4d57d3'
on conflict (question_id, label) do nothing;

-- environment | climate-change | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'climate-change'),
    'Which conference adopted the Glasgow Climate Pact and saw India present its Panchamrit of climate action?',
    'At COP26 in Glasgow in 2021 India presented five-fold action spanning clean energy, decarbonisation of transport and industry, climate resilient agriculture, sustainable natural resources and disaster preparedness.',
    'medium',
    'Standard Reference',
    null,
    '0e53e76e6f75a86ba01597473e630a83'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '0e53e76e6f75a86ba01597473e630a83'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'COP25, Madrid, 2019'),
            ('B', 'COP26, Glasgow, 2021'),
            ('C', 'COP27, Sharm el-Sheikh, 2022'),
            ('D', 'COP29, Baku, 2024')
           ) as v(label, option_text)
 where q.question_hash = '0e53e76e6f75a86ba01597473e630a83'
on conflict (question_id, label) do nothing;

-- environment | renewable-energy | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'renewable-energy'),
    'Concentrated solar power differs from photovoltaic solar technology because CSP',
    'CSP plants concentrate solar radiation onto a receiver, typically in a parabolic trough or central tower, and thermal storage lets them run after sunset, unlike PV systems.',
    'easy',
    'Standard Reference',
    null,
    '40afddda1cbd1cadae4fbbecb1ed723f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '40afddda1cbd1cadae4fbbecb1ed723f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Converts sunlight directly into electricity through semiconductor cells'),
            ('B', 'Requires no direct sunlight and works only in cloudy weather'),
            ('C', 'Is used only for cooking and water heating'),
            ('D', 'Uses mirrors to produce steam that drives turbines and can store heat for use after sunset')
           ) as v(label, option_text)
 where q.question_hash = '40afddda1cbd1cadae4fbbecb1ed723f'
on conflict (question_id, label) do nothing;

-- environment | renewable-energy | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'renewable-energy'),
    'The Jawaharlal Nehru National Solar Mission was launched in India in',
    'The JNNSM, launched in 2009, aimed at a hundred megawatt of large solar capacity and setting up decentralised solar capacity for rural electrification, and was later renamed the National Solar Mission.',
    'easy',
    'Standard Reference',
    null,
    '89b166177bff65e6714b93fc92cb54c1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '89b166177bff65e6714b93fc92cb54c1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2015'),
            ('B', '2006'),
            ('C', '2009'),
            ('D', '2013')
           ) as v(label, option_text)
 where q.question_hash = '89b166177bff65e6714b93fc92cb54c1'
on conflict (question_id, label) do nothing;

-- environment | renewable-energy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'renewable-energy'),
    'The PM Surya Ghar Muft Bijli Yojana, launched in 2024, is aimed at',
    'The scheme, announced in the Union Budget of 2024, offers subsidy for rooftop solar to households without an existing connection and allows up to 300 units of free electricity a month.',
    'medium',
    'PIB 2024',
    2024,
    'e2ddb53126a49e1ef38e95d42b4dae32'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'e2ddb53126a49e1ef38e95d42b4dae32'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Providing rooftop solar installations to households with up to 300 units of free electricity a month'),
            ('B', 'Setting up large solar parks in desert states'),
            ('C', 'Electrifying every agricultural pump in the country'),
            ('D', 'Buying back rooftop solar power from households')
           ) as v(label, option_text)
 where q.question_hash = 'e2ddb53126a49e1ef38e95d42b4dae32'
on conflict (question_id, label) do nothing;

-- environment | renewable-energy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'renewable-energy'),
    'India''s first offshore wind project is being developed off the coast of',
    'The first offshore wind project of about 100 MW is being set up at Pipavav in Gujarat, while the Tamil Nadu coast has been identified for a larger offshore wind zone.',
    'hard',
    'Standard Reference',
    null,
    '08dac278d2f7593a3b577a27a88d41d4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '08dac278d2f7593a3b577a27a88d41d4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kerala'),
            ('B', 'Odisha'),
            ('C', 'Gujarat'),
            ('D', 'Tamil Nadu')
           ) as v(label, option_text)
 where q.question_hash = '08dac278d2f7593a3b577a27a88d41d4'
on conflict (question_id, label) do nothing;

-- environment | renewable-energy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'renewable-energy'),
    'Known geothermal prospects in India include',
    'Puga in Lahaul and Spiti, Mani in Kullu and Tattapani are among the principal geothermal fields explored for direct use and power generation in India.',
    'hard',
    'Standard Reference',
    null,
    'da4cffbaad3e30b3649d5727346a8bb2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'da4cffbaad3e30b3649d5727346a8bb2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Puga and Mani in Himachal Pradesh and Tattapani in Chhattisgarh'),
            ('B', 'The Rann of Kutch and the Gulf of Cambay'),
            ('C', 'The Sundarbans and the Godavari delta'),
            ('D', 'The Bhotia thermal fields of Ladakh')
           ) as v(label, option_text)
 where q.question_hash = 'da4cffbaad3e30b3649d5727346a8bb2'
on conflict (question_id, label) do nothing;

-- environment | renewable-energy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'renewable-energy'),
    'Tidal energy in India is considered most feasible in the',
    'The narrow and shallow gulfs of Kutch and Cambay have the tidal ranges and geology needed for tidal barrages, and detailed projects have been prepared for the Kutch region.',
    'medium',
    'Standard Reference',
    null,
    '9b138f93b8084afa52d4d30ebe4ca0f4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '9b138f93b8084afa52d4d30ebe4ca0f4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Gulf of Mannar and Palk Bay'),
            ('B', 'Gulf of Kutch and Gulf of Cambay'),
            ('C', 'Bay of Bengal and the Andaman Sea'),
            ('D', 'Arabian Sea off Kerala')
           ) as v(label, option_text)
 where q.question_hash = '9b138f93b8084afa52d4d30ebe4ca0f4'
on conflict (question_id, label) do nothing;

-- environment | renewable-energy | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'renewable-energy'),
    'Kudankulam, the largest nuclear power installation in India, is located in',
    'The Kudankulam nuclear power project in Tamil Nadu, built with Russian collaboration, is India''s largest nuclear power station and a flagship example of the Russia-India nuclear cooperation agreement.',
    'easy',
    'Standard Reference',
    null,
    '9c61f0e4249e8a55805899e712a8dd4f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '9c61f0e4249e8a55805899e712a8dd4f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kerala'),
            ('B', 'Karnataka'),
            ('C', 'Gujarat'),
            ('D', 'Tamil Nadu')
           ) as v(label, option_text)
 where q.question_hash = '9c61f0e4249e8a55805899e712a8dd4f'
on conflict (question_id, label) do nothing;

-- environment | renewable-energy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'renewable-energy'),
    'Kadamattom in Kerala is known for India''s',
    'The Kadamattom pumped storage project, with a large underground powerhouse and reservoirs, stores energy by pumping water uphill when surplus power is available and releases it at peak demand.',
    'hard',
    'Standard Reference',
    null,
    'cc1cfced09034ccb8bc6c0eb9b520f92'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'cc1cfced09034ccb8bc6c0eb9b520f92'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Only tidal barrage'),
            ('B', 'Largest pumped storage hydroelectric project'),
            ('C', 'First offshore wind farm'),
            ('D', 'Largest solar park')
           ) as v(label, option_text)
 where q.question_hash = 'cc1cfced09034ccb8bc6c0eb9b520f92'
on conflict (question_id, label) do nothing;

-- environment | renewable-energy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'renewable-energy'),
    'Renewable purchase obligations and renewable energy certificates in India are',
    'Under the mechanism, designated consumers must meet a renewable purchase obligation, either by installing renewable capacity or by buying renewable energy certificates issued for renewable generation.',
    'medium',
    'Standard Reference',
    null,
    '383491b8348c07486ec4af7aa9f2039a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '383491b8348c07486ec4af7aa9f2039a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Instruments that compel obligated entities to buy a specified share of renewable power or the certificates issued for it'),
            ('B', 'Tax rebates granted to companies that install rooftop solar'),
            ('C', 'Quotas fixed for states to build hydro dams'),
            ('D', 'Penalties levied on coal plants for using fossil fuels')
           ) as v(label, option_text)
 where q.question_hash = '383491b8348c07486ec4af7aa9f2039a'
on conflict (question_id, label) do nothing;

-- environment | renewable-energy | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'renewable-energy'),
    'The Energy Conservation Act, 2002 provided for the creation of the',
    'The Act enabled the Bureau of Energy Efficiency to set standards and labels for appliances and to run the Perform, Achieve, Trade scheme for energy-intensive industries.',
    'easy',
    'Standard Reference',
    null,
    '3669f55b97143ce8653adaf29eb30993'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '3669f55b97143ce8653adaf29eb30993'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Central Electricity Authority only'),
            ('B', 'Renewable Energy Centre'),
            ('C', 'Bureau of Energy Standards'),
            ('D', 'Bureau of Energy Efficiency')
           ) as v(label, option_text)
 where q.question_hash = '3669f55b97143ce8653adaf29eb30993'
on conflict (question_id, label) do nothing;

-- environment | renewable-energy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'renewable-energy'),
    'The Solar Energy Corporation of India and the Indian Renewable Energy Development Agency are the nodal agencies for',
    'SECI implements government solar and renewable schemes while IREDA provides financing for renewable projects through loans and refinance support from banks and institutions.',
    'medium',
    'Standard Reference',
    null,
    'ae2f708cd9b28fcf90eac4f55cf9c01b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'ae2f708cd9b28fcf90eac4f55cf9c01b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Hydroelectric development and transmission'),
            ('B', 'Biogas and waste-to-energy only'),
            ('C', 'Renewable energy promotion and finance respectively'),
            ('D', 'Coal procurement and grid operations')
           ) as v(label, option_text)
 where q.question_hash = 'ae2f708cd9b28fcf90eac4f55cf9c01b'
on conflict (question_id, label) do nothing;

-- environment | renewable-energy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'renewable-energy'),
    'The Bhadla solar park in Madhya Pradesh is significant because it is',
    'The Bhadla park in the Rewa district was developed on degraded government land and became one of the largest photovoltaic parks in Asia when expanded.',
    'medium',
    'Standard Reference',
    null,
    '6a15a37bf3a08998f8b774c20bbdf80e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '6a15a37bf3a08998f8b774c20bbdf80e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The largest rooftop solar project in the world'),
            ('B', 'A floating solar park on the Narmada'),
            ('C', 'An offshore solar installation in the Gulf of Kutch'),
            ('D', 'One of the largest solar parks in Asia, built on degraded land')
           ) as v(label, option_text)
 where q.question_hash = '6a15a37bf3a08998f8b774c20bbdf80e'
on conflict (question_id, label) do nothing;

-- environment | renewable-energy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'renewable-energy'),
    'The three components of the PM-KUSUM scheme relate to',
    'PM-KUSUM focuses on providing solar power to agricultural users, including standalone solar pumps, solarisation of existing grid pumps and solar plants on barren and degraded land.',
    'medium',
    'Standard Reference',
    null,
    '1f72bc0aa5f212789a7efc59d720d97d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '1f72bc0aa5f212789a7efc59d720d97d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Wind farms, tidal energy and geothermal heating'),
            ('B', 'Electric vehicles, energy storage and hydrogen'),
            ('C', 'Solar pumps, solarisation of grid-connected pumps and solar power on barren land'),
            ('D', 'Rooftop solar for households, biogas plants and small hydro')
           ) as v(label, option_text)
 where q.question_hash = '1f72bc0aa5f212789a7efc59d720d97d'
on conflict (question_id, label) do nothing;

-- environment | renewable-energy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'renewable-energy'),
    'Net metering as provided in Indian electricity rules allows a rooftop solar consumer to',
    'Under net metering the excess solar power injected into the grid is adjusted against the consumer''s consumption, which encourages rooftop installations and reduces payback time.',
    'medium',
    'Standard Reference',
    null,
    '717d49c00a78582d46946f030c5d6ee2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '717d49c00a78582d46946f030c5d6ee2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Claim a subsidy for every unit generated'),
            ('B', 'Export surplus generated power to the grid and receive credit against the electricity bill'),
            ('C', 'Sell electricity at wholesale market rates to any consumer'),
            ('D', 'Avoid the need for a grid connection')
           ) as v(label, option_text)
 where q.question_hash = '717d49c00a78582d46946f030c5d6ee2'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'The Environment (Protection) Act, 1986 is described as an',
    'The 1986 Act is an umbrella legislation that empowers the Centre to set standards, notifications and oversight for air, water, noise, waste and industrial pollution.',
    'medium',
    'Standard Reference',
    null,
    'fc38b6fb641d82ea6b30098b63f3dace'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'fc38b6fb641d82ea6b30098b63f3dace'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Umbrella law that gives the central government broad powers to set standards and oversee environmental protection'),
            ('B', 'Act that primarily deals with the pricing of carbon credits'),
            ('C', 'Law that regulates only the discharge of effluents into rivers'),
            ('D', 'Statute that deals exclusively with wildlife trade')
           ) as v(label, option_text)
 where q.question_hash = 'fc38b6fb641d82ea6b30098b63f3dace'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'The Air (Prevention and Control of Pollution) Act, 1981 was India''s',
    'The Air Act of 1981 provided for the Central and State Pollution Control Boards and for the National Air Quality Monitoring and Standards programmes.',
    'easy',
    'Standard Reference',
    null,
    'bc9e43c260978c7f2a2991a87b3b7ab7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'bc9e43c260978c7f2a2991a87b3b7ab7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Statute that regulates the export of e-waste'),
            ('B', 'First pollution control statute, which led to the creation of the pollution control boards'),
            ('C', 'Law that deals only with industrial safety'),
            ('D', 'Act that created the National Green Tribunal')
           ) as v(label, option_text)
 where q.question_hash = 'bc9e43c260978c7f2a2991a87b3b7ab7'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'The Water (Prevention and Control of Pollution) Act, 1974 provides for',
    'The Water Act established the CPCB and SPCBs and gave them powers to control and abate water pollution and to set standards for effluents in streams and wells.',
    'easy',
    'Standard Reference',
    null,
    '84ab30389f448602b95ff5c74c800011'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '84ab30389f448602b95ff5c74c800011'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The management of municipal solid waste'),
            ('B', 'The control of marine dumping of dredged material'),
            ('C', 'The constitution of pollution control boards and the prevention and control of water pollution'),
            ('D', 'The regulation of groundwater extraction by tubewells')
           ) as v(label, option_text)
 where q.question_hash = '84ab30389f448602b95ff5c74c800011'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'The Wildlife (Protection) Act was substantially amended in 2022 to',
    'The 2022 amendment inserted sections on record of rights and duties of forest dwellers in protected areas, expanded schedules and increased penalties for offences.',
    'hard',
    'Standard Reference',
    null,
    '2389fcbae7faaa19e833e6e0fcd6aa3c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '2389fcbae7faaa19e833e6e0fcd6aa3c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Strengthen protection of habitats, expand the Schedule I list and implement the Forest Rights Act provisions in protected areas'),
            ('B', 'Ban all wildlife trade in the country'),
            ('C', 'Transfer management of national parks to the private sector'),
            ('D', 'Create the National Board for Wildlife')
           ) as v(label, option_text)
 where q.question_hash = '2389fcbae7faaa19e833e6e0fcd6aa3c'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'The National Biodiversity Authority is a statutory body set up under',
    'The NBA, headquartered in Chennai, implements the Biological Diversity Act of 2002 and deals with access and benefit sharing, species and habitats, and the management of protected areas.',
    'easy',
    'Standard Reference',
    null,
    '0554e5088c363970dbb4c5f2d3b86ccf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '0554e5088c363970dbb4c5f2d3b86ccf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Wildlife (Protection) Act, 1972'),
            ('B', 'The Environment Protection Act, 1986'),
            ('C', 'The Biological Diversity Rules of 2006 only'),
            ('D', 'The Biological Diversity Act, 2002')
           ) as v(label, option_text)
 where q.question_hash = '0554e5088c363970dbb4c5f2d3b86ccf'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'The Scheduled Tribes and Other Traditional Forest Dwellers (Recognition of Forest Rights) Act, 2006 recognises rights over forest resources for',
    'The 2006 Act as amended in 2021 recognises three categories of rights holders and titles such as community forest resource rights, habitat rights and individual rights.',
    'hard',
    'Standard Reference',
    null,
    '3588f682b0eb5d455116d7a33b1cc8fd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '3588f682b0eb5d455116d7a33b1cc8fd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'All inhabitants of a district irrespective of residence'),
            ('B', 'Only members of the revenue forest staff'),
            ('C', 'Scheduled tribes, other traditional forest dwellers and other forest dwellers living in forest areas'),
            ('D', 'Only those who own documented land titles in the forest')
           ) as v(label, option_text)
 where q.question_hash = '3588f682b0eb5d455116d7a33b1cc8fd'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'The National Green Tribunal was constituted under the',
    'The NGT Act, 2010 created an independent body for effective enforcement of environmental rights and for redressal of environmental disputes, with the tribunal becoming operational in 2011.',
    'easy',
    'Standard Reference',
    null,
    'ea7d60784a8e1338d443ef9d15e272c8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'ea7d60784a8e1338d443ef9d15e272c8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Environment Protection Act, 1986'),
            ('B', 'Water Act, 1974'),
            ('C', 'Air Act, 1981'),
            ('D', 'National Green Tribunal Act, 2010')
           ) as v(label, option_text)
 where q.question_hash = 'ea7d60784a8e1338d443ef9d15e272c8'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'An appeal against the orders of the National Green Tribunal lies to the',
    'Section 22 of the NGT Act provides for appeals to the Supreme Court, and the tribunal is expected to dispose of cases as expeditiously as possible, ordinarily within six months.',
    'medium',
    'Standard Reference',
    null,
    '005d9185e1c80d687e4bf9bc2e3c2bd7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '005d9185e1c80d687e4bf9bc2e3c2bd7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Supreme Court'),
            ('B', 'High Court'),
            ('C', 'Central Board of Revenue'),
            ('D', 'District Court')
           ) as v(label, option_text)
 where q.question_hash = '005d9185e1c80d687e4bf9bc2e3c2bd7'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'The funds raised as compensatory afforestation for diversion of forest land are managed by',
    'CAMPA, created by amending the Forest Conservation Act, holds the money and the state authorities plan and execute the compensatory afforestation works on unnotified forest land.',
    'medium',
    'Standard Reference',
    null,
    '6209774c89b623ce9bfa90e717a78429'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '6209774c89b623ce9bfa90e717a78429'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Reserve Bank of India'),
            ('B', 'The state-level Compensatory Afforestation Fund Management and Planning Authority'),
            ('C', 'The National Green Tribunal'),
            ('D', 'The Central Board of Direct Taxes')
           ) as v(label, option_text)
 where q.question_hash = '6209774c89b623ce9bfa90e717a78429'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'The Coastal Zone Regulation Management Rules, 2010 classify the Indian coast into how many coastal regulatory zones?',
    'The CRZ rules of 2010, notified under the Environment Protection Act, divide the coast into CRZ-I to CRZ-V with progressively relaxed norms on construction from the ecologically sensitive CRZ-I.',
    'hard',
    'Standard Reference',
    null,
    'aa70e9cb22a472f3a4848f93f604407d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'aa70e9cb22a472f3a4848f93f604407d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Two'),
            ('B', 'Three'),
            ('C', 'Five'),
            ('D', 'Seven')
           ) as v(label, option_text)
 where q.question_hash = 'aa70e9cb22a472f3a4848f93f604407d'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'The right to a clean environment in India is derived from',
    'Article 48A makes it a fundamental duty of the citizen to protect the environment, and Article 21A provides a right to a clean environment, both read together with Article 21.',
    'medium',
    'Standard Reference',
    null,
    'f20ee55aefb9cfbb8e2ba1b94506fa5a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f20ee55aefb9cfbb8e2ba1b94506fa5a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Article 21A read with Article 48A of the Constitution'),
            ('B', 'Article 19(1)(g) alone'),
            ('C', 'Article 44 only'),
            ('D', 'Article 262 alone')
           ) as v(label, option_text)
 where q.question_hash = 'f20ee55aefb9cfbb8e2ba1b94506fa5a'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'The National Environment Policy of India was released in',
    'The National Environment Policy 2006 provided the vision, principles and a framework of action for integrating environmental concerns into the national development process.',
    'medium',
    'Standard Reference',
    null,
    '8759143acb2513a7ea6499881ce268ea'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '8759143acb2513a7ea6499881ce268ea'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1999'),
            ('B', '2006'),
            ('C', '2012'),
            ('D', '1992')
           ) as v(label, option_text)
 where q.question_hash = '8759143acb2513a7ea6499881ce268ea'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'The Wildlife Crime Control Act, as amended in 2022, provides for',
    'The amended Act strengthens the Wildlife Crime Control Bureau, provides for state-level bureaus and special designated courts, and raises penalties for offences under the wildlife laws.',
    'medium',
    'Standard Reference',
    null,
    '0c4f16140f12e857139983664ec08f4d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '0c4f16140f12e857139983664ec08f4d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A moratorium on all trade in rare plants'),
            ('B', 'The creation of a separate wildlife crime force in every district'),
            ('C', 'Mandatory community radio stations in tiger reserves'),
            ('D', 'Special courts for wildlife offences and a central inter-agency wildlife crime control bureau')
           ) as v(label, option_text)
 where q.question_hash = '0c4f16140f12e857139983664ec08f4d'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'Environmental clearance for a project is granted by the Ministry of Environment, Forest and Climate Change on the recommendation of',
    'The EIA process requires scrutiny by the SEAC at the state level and the SAC at the central level before the ministry issues a final environmental clearance.',
    'medium',
    'Standard Reference',
    null,
    'a4fd5dc8b43331eefbe9b464c3ba2966'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a4fd5dc8b43331eefbe9b464c3ba2966'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Supreme Court alone'),
            ('B', 'The National Biodiversity Authority alone'),
            ('C', 'The Central Pollution Control Board alone'),
            ('D', 'The State Environment Impact Assessment Authority and the Expert Appraisal Committee')
           ) as v(label, option_text)
 where q.question_hash = 'a4fd5dc8b43331eefbe9b464c3ba2966'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'The polluter pays principle was articulated in the Indian context in',
    'In the Oleum Gas Leak case the Supreme Court laid down that the cost of remedying the harm caused by industrial pollution lies with the industrial unit responsible for it.',
    'hard',
    'Standard Reference',
    null,
    'dd1a8b4d52bf9a747383d635191bf785'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'dd1a8b4d52bf9a747383d635191bf785'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Oleum Gas Leak case of 1985'),
            ('B', 'The Goa mining case of 1991'),
            ('C', 'The Vellore church case of 1996'),
            ('D', 'The Nairobi waste case of 2001')
           ) as v(label, option_text)
 where q.question_hash = 'dd1a8b4d52bf9a747383d635191bf785'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'Under the Companies Act, 2013, corporate social responsibility includes an obligation relating to',
    'Schedule VII of the Companies Act lists environmental sustainability among the CSR activities that qualifying companies may undertake, along with education, health and rural development.',
    'medium',
    'Standard Reference',
    null,
    'd823922bcde0a7c37e9833775d7000b2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd823922bcde0a7c37e9833775d7000b2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Procurement from a single vendor'),
            ('B', 'Environmental sustainability'),
            ('C', 'Promotion of a particular political party'),
            ('D', 'Payment of dividends')
           ) as v(label, option_text)
 where q.question_hash = 'd823922bcde0a7c37e9833775d7000b2'
on conflict (question_id, label) do nothing;

-- environment | international-conventions | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'international-conventions'),
    'The Convention on Biological Diversity was opened for signature at the Rio Earth Summit in',
    'The CBD was opened for signature at the 1992 Rio Earth Summit and entered into force in 1993, with the first Conference of the Parties held in Nassau, Bahamas, in 1994.',
    'easy',
    'Standard Reference',
    null,
    '1c666904b90cd73b9020b99ddd49c51e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '1c666904b90cd73b9020b99ddd49c51e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2000'),
            ('B', '1985'),
            ('C', '1992'),
            ('D', '1997')
           ) as v(label, option_text)
 where q.question_hash = '1c666904b90cd73b9020b99ddd49c51e'
on conflict (question_id, label) do nothing;

-- environment | international-conventions | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'international-conventions'),
    'The first Conference of the Parties to the Convention on Biological Diversity was held at',
    'COP1 of the CBD was held in Nassau in November 1994 and adopted a decision on the Convention''s programme of work and the global biodiversity strategy.',
    'hard',
    'Standard Reference',
    null,
    '67bf22ba7f341649ae470d55e45f8ee9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '67bf22ba7f341649ae470d55e45f8ee9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Nairobi, Kenya, 1995'),
            ('B', 'Montreal, Canada, 1996'),
            ('C', 'Bali, Indonesia, 1997'),
            ('D', 'Nassau, Bahamas, 1994')
           ) as v(label, option_text)
 where q.question_hash = '67bf22ba7f341649ae470d55e45f8ee9'
on conflict (question_id, label) do nothing;

-- environment | international-conventions | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'international-conventions'),
    'The Nagoya Protocol adopted in 2010 under the Convention on Biological Diversity deals with',
    'The Nagoya Protocol, adopted at COP10 in Nagoya, is the CBD''s instrument on access and benefit sharing and is implemented in India through the Biological Diversity Act.',
    'medium',
    'Standard Reference',
    null,
    '22e8eae17215ca736dbc5a95bdb29876'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '22e8eae17215ca736dbc5a95bdb29876'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The regulation of marine navigation'),
            ('B', 'Access to genetic resources and the fair sharing of benefits arising from their utilisation'),
            ('C', 'Transboundary movement of hazardous wastes'),
            ('D', 'The phaseout of ozone depleting substances')
           ) as v(label, option_text)
 where q.question_hash = '22e8eae17215ca736dbc5a95bdb29876'
on conflict (question_id, label) do nothing;

-- environment | international-conventions | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'international-conventions'),
    'The Cartagena Protocol on Biosafety regulates',
    'The Biosafety Protocol, adopted in 2000 and in force since 2003, deals with the risks of genetically modified organisms and sets procedures for their transboundary movement.',
    'medium',
    'Standard Reference',
    null,
    '44a45f15a47b57b5b972342603bd0112'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '44a45f15a47b57b5b972342603bd0112'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The transboundary movement, handling and use of living modified organisms'),
            ('B', 'The conservation of migratory birds'),
            ('C', 'The dumping of radioactive waste in the ocean'),
            ('D', 'The trading of endangered plants in Appendix I')
           ) as v(label, option_text)
 where q.question_hash = '44a45f15a47b57b5b972342603bd0112'
on conflict (question_id, label) do nothing;

-- environment | international-conventions | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'international-conventions'),
    'The Cartagena Convention of 1982 relates to',
    'The Cartagena Convention on the Protection and Development of the Marine and Coastal Environment of the Seas and Oceans covers regional seas and provides for the designation of particularly sensitive areas.',
    'hard',
    'Standard Reference',
    null,
    'f38573a55356e1d673f1f8e4562edd99'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'f38573a55356e1d673f1f8e4562edd99'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The control of transboundary movement of hazardous wastes'),
            ('B', 'The conservation of the ozone layer'),
            ('C', 'Protection and development of the marine and coastal environment of the seas and oceans'),
            ('D', 'The international trade in endangered species')
           ) as v(label, option_text)
 where q.question_hash = 'f38573a55356e1d673f1f8e4562edd99'
on conflict (question_id, label) do nothing;

-- environment | international-conventions | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'international-conventions'),
    'The Vienna Convention for the Protection of the Ozone Layer was adopted in',
    'The Vienna Convention was adopted in March 1985 and provided the framework within which the Montreal Protocol and its amendments were negotiated to phase out ozone depleting substances.',
    'medium',
    'Standard Reference',
    null,
    '48ba91915070cb0a7b813429f65972e0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '48ba91915070cb0a7b813429f65972e0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1992'),
            ('B', '1999'),
            ('C', '1985'),
            ('D', '1987')
           ) as v(label, option_text)
 where q.question_hash = '48ba91915070cb0a7b813429f65972e0'
on conflict (question_id, label) do nothing;

-- environment | international-conventions | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'international-conventions'),
    'The Stockholm Convention on Persistent Organic Pollutants was adopted in',
    'The Stockholm Convention, adopted in May 2001, lists persistent organic pollutants such as aldrin, dieldrin and DDT for elimination or restriction of production and use.',
    'medium',
    'Standard Reference',
    null,
    '0d03b88188deac8533db39fcb856b098'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '0d03b88188deac8533db39fcb856b098'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2001'),
            ('B', '2005'),
            ('C', '2009'),
            ('D', '1998')
           ) as v(label, option_text)
 where q.question_hash = '0d03b88188deac8533db39fcb856b098'
on conflict (question_id, label) do nothing;

-- environment | international-conventions | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'international-conventions'),
    'The Rotterdam Convention deals with',
    'The Rotterdam Convention on the Prior Informed Consent Procedure requires importing parties to be informed and to give consent before importing listed chemicals and pesticides, many of them persistent organic pollutants.',
    'hard',
    'Standard Reference',
    null,
    '516800053b57d2042afc5d2afd87cfd8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '516800053b57d2042afc5d2afd87cfd8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The regulation of trade in timber'),
            ('B', 'Prior informed consent procedure for the import of certain hazardous chemicals and pesticides'),
            ('C', 'The reduction of sulphur dioxide emissions from ships'),
            ('D', 'The protection of plant genetic resources')
           ) as v(label, option_text)
 where q.question_hash = '516800053b57d2042afc5d2afd87cfd8'
on conflict (question_id, label) do nothing;

-- environment | international-conventions | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'international-conventions'),
    'The Ban Amendment to the Basel Convention prohibits',
    'The Ban Amendment, in force since 2019, bars exporting hazardous waste from developed to developing countries for landfill, incineration and recycling, so that such waste cannot be dumped.',
    'medium',
    'Standard Reference',
    null,
    'f4670f98a65c81fbf164f0c191bf2ad0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'f4670f98a65c81fbf164f0c191bf2ad0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'All trade in recyclable plastics between developed countries'),
            ('B', 'The export of agricultural produce from developing countries'),
            ('C', 'Imports of e-waste into any country'),
            ('D', 'Transboundary shipments of hazardous waste destined for landfill or incineration')
           ) as v(label, option_text)
 where q.question_hash = 'f4670f98a65c81fbf164f0c191bf2ad0'
on conflict (question_id, label) do nothing;

-- environment | international-conventions | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'international-conventions'),
    'The United Nations Convention on the Law of the Sea was adopted in',
    'UNCLOS was adopted at Montego Bay, Jamaica, in 1982 and entered into force in 1994; it codifies the rights of coastal and flag states, including the 200-mile exclusive economic zone.',
    'medium',
    'Standard Reference',
    null,
    '4e66ebee00ac8bd2ef4105204a31e67a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '4e66ebee00ac8bd2ef4105204a31e67a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1972'),
            ('B', '1982'),
            ('C', '1994'),
            ('D', '2000')
           ) as v(label, option_text)
 where q.question_hash = '4e66ebee00ac8bd2ef4105204a31e67a'
on conflict (question_id, label) do nothing;

-- environment | international-conventions | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'international-conventions'),
    'The Convention on the Conservation of Migratory Species of Wild Animals, also called the Bonn Convention, was adopted in',
    'The Bonn Convention was adopted in June 1979 and operates through memoranda of understanding on specific species groups, such as for the African-Eurasian and Asian-Australasian flyways.',
    'medium',
    'Standard Reference',
    null,
    '0c458af7fc784dcdfbb50442681ec5f4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '0c458af7fc784dcdfbb50442681ec5f4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1979'),
            ('B', '1985'),
            ('C', '1992'),
            ('D', '1971')
           ) as v(label, option_text)
 where q.question_hash = '0c458af7fc784dcdfbb50442681ec5f4'
on conflict (question_id, label) do nothing;

-- environment | international-conventions | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'international-conventions'),
    'The Montreux Amendment to the Ramsar Convention, adopted in 2022,',
    'The Montreux Amendment explicitly recognises that wetlands are integral to the climate system and that their loss or degradation can contribute to greenhouse gas emissions and climate change impacts.',
    'hard',
    'Standard Reference',
    null,
    '5438fef200ffb8ff056a18f0e137d381'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '5438fef200ffb8ff056a18f0e137d381'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Created a new category of World Heritage Sites'),
            ('B', 'Set limits on wetland tourism'),
            ('C', 'Required Ramsar sites to become biosphere reserves'),
            ('D', 'Introduced climate change considerations into the definition of wetlands')
           ) as v(label, option_text)
 where q.question_hash = '5438fef200ffb8ff056a18f0e137d381'
on conflict (question_id, label) do nothing;

-- environment | international-conventions | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'international-conventions'),
    'The United Nations Convention to Combat Desertification addresses',
    'UNCCD, adopted in 1994, aims at preventing desertification, mitigating land degradation and improving the livelihoods of people in dryland areas.',
    'medium',
    'Standard Reference',
    null,
    '6b9f79a5a79e9d8e3f0c4f758eaf75b1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '6b9f79a5a79e9d8e3f0c4f758eaf75b1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Regulation of greenhouse gas emissions from shipping'),
            ('B', 'Conservation of migratory birds in wetlands'),
            ('C', 'Land degradation and desertification in drylands and the reduction of poverty'),
            ('D', 'Protection of marine mammals in polar waters')
           ) as v(label, option_text)
 where q.question_hash = '6b9f79a5a79e9d8e3f0c4f758eaf75b1'
on conflict (question_id, label) do nothing;

-- environment | international-conventions | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'international-conventions'),
    'The Agreement under the United Nations Convention on the Law of the Sea on the conservation and sustainable use of marine biological diversity of areas beyond national jurisdiction, known as the High Seas Treaty, was adopted in',
    'The BBNJ Agreement, known as the High Seas Treaty, was adopted in June 2023 and opens for signature and ratification, enabling marine protected areas in international waters.',
    'hard',
    'Standard Reference',
    null,
    'b58c1d26e66180e9c9db3b5145bc9ac9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'b58c1d26e66180e9c9db3b5145bc9ac9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2018'),
            ('B', '2020'),
            ('C', '2023'),
            ('D', '2025')
           ) as v(label, option_text)
 where q.question_hash = 'b58c1d26e66180e9c9db3b5145bc9ac9'
on conflict (question_id, label) do nothing;

-- environment | international-conventions | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'international-conventions'),
    'The International Seabed Authority, which regulates activities in the deep seabed beyond national jurisdiction, was established under',
    'The ISA was established by UNCLOS in 1994 to administer the mineral resources of the deep seabed and issues exploitation regulations; the 1994 agreement harmonised the convention with the interests of developing states.',
    'hard',
    'Standard Reference',
    null,
    '810d9e2706dcc965b164a1ae10523230'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '810d9e2706dcc965b164a1ae10523230'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The UNCLOS Part XI Agreement of 1994'),
            ('B', 'The United Nations Convention on the Law of the Sea'),
            ('C', 'The Rio Declaration on Environment and Development'),
            ('D', 'The Convention on Biological Diversity')
           ) as v(label, option_text)
 where q.question_hash = '810d9e2706dcc965b164a1ae10523230'
on conflict (question_id, label) do nothing;

-- environment | international-conventions | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'international-conventions'),
    'The Aarhus Convention, adopted in 1998, concerns',
    'The Aarhus Convention of the UN Economic Commission for Europe established the pillars of environmental democracy, often called the Aarhus Convention, and inspired Indian environmental legislation on public participation.',
    'medium',
    'Standard Reference',
    null,
    'f0e12ceb7ef15b4456d8d4c79ca671db'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f0e12ceb7ef15b4456d8d4c79ca671db'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Access to information, public participation and access to justice in environmental matters'),
            ('B', 'The pricing of carbon credits in international markets'),
            ('C', 'The protection of cultural heritage sites under water'),
            ('D', 'The regulation of fisheries subsidies')
           ) as v(label, option_text)
 where q.question_hash = 'f0e12ceb7ef15b4456d8d4c79ca671db'
on conflict (question_id, label) do nothing;

-- environment | disasters-and-management | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'disasters-and-management'),
    'The Disaster Management Act, 2005 in India was enacted following the',
    'The experience of the Gujarat earthquake and the December 2004 tsunami led to the enactment of the Disaster Management Act in 2005, creating the NDMA, SDMA and DDMA structure.',
    'medium',
    'Standard Reference',
    null,
    'ff2ec7bc2f7c262866e8d5f76ea6a690'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'ff2ec7bc2f7c262866e8d5f76ea6a690'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bhopal gas tragedy of 1984'),
            ('B', 'Super cyclone of 1999 in Odisha'),
            ('C', 'Kashmir earthquake of 2005'),
            ('D', 'Gujarat earthquake of 2001 and the Indian Ocean tsunami of 2004')
           ) as v(label, option_text)
 where q.question_hash = 'ff2ec7bc2f7c262866e8d5f76ea6a690'
on conflict (question_id, label) do nothing;

-- environment | disasters-and-management | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'disasters-and-management'),
    'The four priorities for disaster risk reduction of the Sendai Framework for Disaster Risk Reduction 2015-2030 are',
    'The Sendai Framework, adopted in March 2015, has four priorities for action: understanding risk, strengthening governance, investing in resilience and enhancing preparedness for effective response and build back better.',
    'medium',
    'Standard Reference',
    null,
    '844c53ae0b270dbd31ba4886bf530500'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '844c53ae0b270dbd31ba4886bf530500'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Assessment, mapping, warning and evacuation'),
            ('B', 'Understanding disaster risk, strengthening governance, investing in resilience, and building back better in recovery'),
            ('C', 'Prevention, mitigation, response and rehabilitation'),
            ('D', 'Preparedness, response, recovery and reconstruction')
           ) as v(label, option_text)
 where q.question_hash = '844c53ae0b270dbd31ba4886bf530500'
on conflict (question_id, label) do nothing;

-- environment | disasters-and-management | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'disasters-and-management'),
    'The National Response Framework in India is a part of',
    'The NDMA''s National Disaster Management Guidelines of 2016 include the National Response Framework, which lays out the roles of all responders in an incident and the standard operating procedures for different hazards.',
    'hard',
    'Standard Reference',
    null,
    '1995579fb3fd04e9ccc716a12d460f19'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '1995579fb3fd04e9ccc716a12d460f19'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Sendai Framework of the United Nations'),
            ('B', 'The National Water Policy'),
            ('C', 'The National Urban Sanitation Policy'),
            ('D', 'The national disaster management guidelines issued by the NDMA in 2016')
           ) as v(label, option_text)
 where q.question_hash = '1995579fb3fd04e9ccc716a12d460f19'
on conflict (question_id, label) do nothing;

-- environment | disasters-and-management | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'disasters-and-management'),
    'The State Disaster Response Fund is constituted and administered by',
    'The SDRF is a centrally funded pool with the state in charge of its utilisation, while the NDRF is maintained by the central government for response to severe calamities, as provided under the DM Act.',
    'medium',
    'Standard Reference',
    null,
    'a435e8520f8dd8a2b6f35937e538eabe'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'a435e8520f8dd8a2b6f35937e538eabe'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The National Disaster Management Authority'),
            ('B', 'The Reserve Bank of India'),
            ('C', 'The state government, with the Chief Executive Committee chaired by the Chief Minister'),
            ('D', 'The central government directly')
           ) as v(label, option_text)
 where q.question_hash = 'a435e8520f8dd8a2b6f35937e538eabe'
on conflict (question_id, label) do nothing;

-- environment | disasters-and-management | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'disasters-and-management'),
    'The PM CARES Fund was created in 2020 for',
    'The PM''s Citizen Assistance and Relief in Emergency Situations Fund was created in March 2020 and has since been used for relief work and for responding to the COVID-19 pandemic and other emergencies.',
    'medium',
    'Standard Reference',
    null,
    'e0995b7f144f4adde5d638d491593341'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'e0995b7f144f4adde5d638d491593341'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Health, disaster relief and other charitable works during the COVID-19 pandemic and similar emergencies'),
            ('B', 'Funding of all state disaster response funds'),
            ('C', 'Establishment of the National Disaster Response Force'),
            ('D', 'Financing of the India Carbon Credit Trading Scheme')
           ) as v(label, option_text)
 where q.question_hash = 'e0995b7f144f4adde5d638d491593341'
on conflict (question_id, label) do nothing;

-- environment | disasters-and-management | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'disasters-and-management'),
    'The National Disaster Response Force is raised and commanded by',
    'The NDRF, with sixteen battalions, is a centrally armed force under the Ministry of Home Affairs directed by a Director General and deployed by the state authorities for rescue and response operations.',
    'medium',
    'Standard Reference',
    null,
    '8d7b0c8eb130371f30cf5cfdf76cbe64'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '8d7b0c8eb130371f30cf5cfdf76cbe64'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Chief Minister of the affected state'),
            ('B', 'The Governor of the state'),
            ('C', 'The Chairman of the National Development Council'),
            ('D', 'The Director General of the NDRF under the Ministry of Home Affairs')
           ) as v(label, option_text)
 where q.question_hash = '8d7b0c8eb130371f30cf5cfdf76cbe64'
on conflict (question_id, label) do nothing;

-- environment | disasters-and-management | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'disasters-and-management'),
    'According to the India Meteorological Department, a heat wave is declared over a plain region when the maximum temperature is at least',
    'IMD declares a heat wave when the maximum temperature in a plain exceeds 40 degrees Celsius, or 30 degrees Celsius for hilly areas, with a departure of at least 4.5 degrees Celsius from the normal.',
    'medium',
    'IMD',
    null,
    '345aabb315175b2c0918407a446d1b7a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '345aabb315175b2c0918407a446d1b7a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '40 degrees Celsius'),
            ('B', '42 degrees Celsius'),
            ('C', '45 degrees Celsius'),
            ('D', '35 degrees Celsius')
           ) as v(label, option_text)
 where q.question_hash = '345aabb315175b2c0918407a446d1b7a'
on conflict (question_id, label) do nothing;

-- environment | disasters-and-management | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'disasters-and-management'),
    'The Indian Tsunami Early Warning Centre and the ocean forecast services of India are operated by',
    'INCOIS, under the Ministry of Earth Sciences, operates the Indian Tsunami Early Warning Centre and issues forecasts for storm surges, ocean waves and cyclone tracks for the Indian Ocean.',
    'medium',
    'Standard Reference',
    null,
    '8756c752e671091032b4773d5e480be9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '8756c752e671091032b4773d5e480be9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The National Institute of Oceanography at Goa'),
            ('B', 'The Indian National Centre of Ocean Information Services at Chennai'),
            ('C', 'The National Remote Sensing Centre at Hyderabad'),
            ('D', 'The Geological Survey of India at Kolkata')
           ) as v(label, option_text)
 where q.question_hash = '8756c752e671091032b4773d5e480be9'
on conflict (question_id, label) do nothing;

-- environment | disasters-and-management | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'disasters-and-management'),
    'Cyclones in the north Indian Ocean are given names by',
    'Since 2004 the IMD has been naming north Indian Ocean cyclones using a list of 169 names suggested by the eight member countries of the WMO/ESCAP Panel on Tropical Cyclones.',
    'medium',
    'Standard Reference',
    null,
    '773647ea2f6e8a7be43940f0dcb75a29'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '773647ea2f6e8a7be43940f0dcb75a29'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The World Bank'),
            ('B', 'The Intergovernmental Oceanographic Commission'),
            ('C', 'The India Meteorological Department from a regional list of names agreed by the WMO/ESCAP Panel'),
            ('D', 'The United Nations Security Council')
           ) as v(label, option_text)
 where q.question_hash = '773647ea2f6e8a7be43940f0dcb75a29'
on conflict (question_id, label) do nothing;

-- environment | disasters-and-management | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'disasters-and-management'),
    'The Indian Ocean tsunami of December 2004 first hit the Indian coast at',
    'The waves generated by the magnitude 8.1 undersea earthquake off Sumatra struck the Odisha coast near Nagapatnam on 26 December 2004 before reaching the Tamil Nadu and Andhra coasts.',
    'medium',
    'Standard Reference',
    null,
    '84bec007f8cfded5f0395296b14a6757'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '84bec007f8cfded5f0395296b14a6757'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Chennai in Tamil Nadu'),
            ('B', 'The Meenachil beach at Nagapatnam in Odisha'),
            ('C', 'Kochi in Kerala'),
            ('D', 'Digha in West Bengal')
           ) as v(label, option_text)
 where q.question_hash = '84bec007f8cfded5f0395296b14a6757'
on conflict (question_id, label) do nothing;

-- environment | disasters-and-management | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'disasters-and-management'),
    'The 2013 Cyclone Phailin in Odisha is remembered for',
    'Massive evacuation ahead of landfall, guided by the IMD forecasts and the state administration, kept the death toll in the low tens compared with about ten thousand deaths in the 1999 super cyclone.',
    'medium',
    'Standard Reference',
    null,
    '6379258b47e5977696c199eb3b9263cb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '6379258b47e5977696c199eb3b9263cb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The largest evacuation of about ten lakh people from the coastal districts with very few deaths'),
            ('B', 'The highest wind speed ever recorded on the Indian coast'),
            ('C', 'The destruction of the Chilika lake ecosystem'),
            ('D', 'The first use of satellite navigation by the NDRF')
           ) as v(label, option_text)
 where q.question_hash = '6379258b47e5977696c199eb3b9263cb'
on conflict (question_id, label) do nothing;

-- environment | disasters-and-management | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'disasters-and-management'),
    'Which of the following is a well known instance of a cloudburst disaster in India?',
    'The August 2010 cloudburst over Leh in Ladakh caused flash floods and mudslides with heavy loss of life, and the 2013 Kedarnath disaster in Uttarakhand was similarly linked to intense cloudbursts.',
    'medium',
    'Standard Reference',
    null,
    '839db6fdeef1dc5de1653656363b2c1b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '839db6fdeef1dc5de1653656363b2c1b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The earthquake of 1934 in Bihar'),
            ('B', 'The tsunami of 2004 in Odisha'),
            ('C', 'The Leh cloudburst of 2010'),
            ('D', 'The cyclone of 1999 in Odisha')
           ) as v(label, option_text)
 where q.question_hash = '839db6fdeef1dc5de1653656363b2c1b'
on conflict (question_id, label) do nothing;

-- environment | disasters-and-management | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'disasters-and-management'),
    'Urban flooding in Indian cities has been aggravated chiefly by',
    'Concrete surfaces, filled wetlands and encroached floodplains reduce infiltration and storage, so even moderate cloudbursts over cities such as Chennai in 2015 and Mumbai cause severe waterlogging.',
    'medium',
    'Standard Reference',
    null,
    '7c8d9f877b719b7fe56fac8a3eac512c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '7c8d9f877b719b7fe56fac8a3eac512c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The failure of nuclear power plants'),
            ('B', 'Overuse of groundwater for irrigation'),
            ('C', 'The expansion of coastal fisheries'),
            ('D', 'Encroachment of natural drainage channels and impervious surfaces coupled with short-duration heavy rainfall')
           ) as v(label, option_text)
 where q.question_hash = '7c8d9f877b719b7fe56fac8a3eac512c'
on conflict (question_id, label) do nothing;

-- environment | disasters-and-management | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'disasters-and-management'),
    'The Wayanad landslides of July 2024 occurred in',
    'The intensely heavy monsoon rain of July 2024 triggered landslides in the Wayanad district of Kerala, causing widespread destruction in the villages of Chooralmala, Mundakkai and Chooralmala region.',
    'easy',
    'Standard Reference',
    null,
    'c5cecf5545719ed26492d635b962b398'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c5cecf5545719ed26492d635b962b398'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Tamil Nadu'),
            ('B', 'Goa'),
            ('C', 'Kerala'),
            ('D', 'Karnataka')
           ) as v(label, option_text)
 where q.question_hash = 'c5cecf5545719ed26492d635b962b398'
on conflict (question_id, label) do nothing;

-- environment | disasters-and-management | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'disasters-and-management'),
    'Drought management in India is principally the responsibility of the',
    'The Department of Drinking Water and Sanitation handles drought mitigation through drinking water supply and the National Rural Drinking Water Programme, while NDMA issues drought guidelines.',
    'hard',
    'Standard Reference',
    null,
    '3fc8017c81f84aa388de7f0fa48792f7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '3fc8017c81f84aa388de7f0fa48792f7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ministry of Agriculture and Farmers Welfare'),
            ('B', 'Ministry of Rural Development'),
            ('C', 'Ministry of Earth Sciences'),
            ('D', 'Department of Drinking Water and Sanitation under the Ministry of Jal Shakti')
           ) as v(label, option_text)
 where q.question_hash = '3fc8017c81f84aa388de7f0fa48792f7'
on conflict (question_id, label) do nothing;

-- environment | disasters-and-management | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'disasters-and-management'),
    'The National Building Code of India, which provides for disaster resistant construction, was published by',
    'The NBC 2005, developed by the BIS with inputs from eleven technical agencies, deals with earthquake, wind and flood safety provisions for buildings across the country.',
    'medium',
    'Standard Reference',
    null,
    '4aa72a85fe387dd75f26b5d0fe258c24'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '4aa72a85fe387dd75f26b5d0fe258c24'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Indian Institute of Technology'),
            ('B', 'The Bureau of Indian Standards'),
            ('C', 'The Ministry of Housing and Urban Affairs only'),
            ('D', 'The National Remote Sensing Centre')
           ) as v(label, option_text)
 where q.question_hash = '4aa72a85fe387dd75f26b5d0fe258c24'
on conflict (question_id, label) do nothing;

-- environment | disasters-and-management | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'disasters-and-management'),
    'The Chamoli disaster of February 2021 in Uttarakhand was a',
    'A massive rock-ice avalanche from the Ronti Peak area struck the Rishiganga and Dhauliganga rivers, causing flash floods and debris flows with hundreds of deaths.',
    'hard',
    'Standard Reference',
    null,
    '39964c0b11ade03aa27113520814d236'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '39964c0b11ade03aa27113520814d236'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rock and ice avalanche triggered by a rock-ice avalanche from a glacier'),
            ('B', 'Cyclone induced storm surge'),
            ('C', 'Cloudburst leading to a dam failure'),
            ('D', 'Submarine landslide generating a tsunami')
           ) as v(label, option_text)
 where q.question_hash = '39964c0b11ade03aa27113520814d236'
on conflict (question_id, label) do nothing;

-- environment | disasters-and-management | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'disasters-and-management'),
    'The global initiative Early Warnings for All seeks to',
    'The UN initiative launched in 2022 aims for universal multi-hazard early warning coverage by 2027, supported by the Early Warnings for All Executive Group and the Global Multi-Hazard Early Warning System.',
    'medium',
    'Standard Reference',
    null,
    'ceb49926e3a9288dfb5a0b8f5141b579'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'ceb49926e3a9288dfb5a0b8f5141b579'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Provide insurance to all disaster affected households'),
            ('B', 'Standardise cyclone nomenclature worldwide'),
            ('C', 'Ensure that every country has multi-hazard early warning systems by 2027'),
            ('D', 'Ban all construction in hazard prone zones by 2030')
           ) as v(label, option_text)
 where q.question_hash = 'ceb49926e3a9288dfb5a0b8f5141b579'
on conflict (question_id, label) do nothing;

-- environment | disasters-and-management | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'disasters-and-management'),
    'In India, the National Fire Service and civil defence measures are administered by the',
    'Fire prevention and fire services, including the National Fire Service and the National Disaster Management Authority''s fire guidelines, fall within the Home Ministry, while state disaster management authorities handle local response.',
    'medium',
    'Standard Reference',
    null,
    '0d52ef2d4061fa316c225d4ee5b00756'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '0d52ef2d4061fa316c225d4ee5b00756'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ministry of Home Affairs'),
            ('B', 'Ministry of Environment, Forest and Climate Change'),
            ('C', 'Ministry of Housing and Urban Affairs'),
            ('D', 'Ministry of Earth Sciences')
           ) as v(label, option_text)
 where q.question_hash = '0d52ef2d4061fa316c225d4ee5b00756'
on conflict (question_id, label) do nothing;

-- environment | ocean-and-marine | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ocean-and-marine'),
    'The term blue economy refers to',
    'Blue economy covers the sustainable use of marine and coastal resources including fisheries, aquaculture, tourism, renewable energy and ocean observation, and is central to India''s maritime economy.',
    'medium',
    'Standard Reference',
    null,
    '44abafeb3cbe7b3b6cb089584be71ca7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '44abafeb3cbe7b3b6cb089584be71ca7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The high seas area beyond national jurisdiction'),
            ('B', 'The fisheries sector alone'),
            ('C', 'Only the tourism potential of beaches'),
            ('D', 'The sustainable use of ocean and coastal resources for economic activity, livelihoods and resilience')
           ) as v(label, option_text)
 where q.question_hash = '44abafeb3cbe7b3b6cb089584be71ca7'
on conflict (question_id, label) do nothing;

-- environment | renewable-energy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'renewable-energy'),
    'Energy storage is critical in a renewable-dominated electricity grid mainly because it',
    'Because solar and wind output varies with weather and time of day, storage in batteries, pumped hydro or thermal form shifts surplus generation to periods of peak demand and steadies the grid.',
    'medium',
    'Standard Reference',
    null,
    '21c60ccdf162af0caace0193d92fb1dd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '21c60ccdf162af0caace0193d92fb1dd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Eliminates the need for forecasting of wind resources'),
            ('B', 'Balances the intermittent nature of solar and wind generation against hourly demand'),
            ('C', 'Increases the calorific value of coal'),
            ('D', 'Reduces the need for transmission lines')
           ) as v(label, option_text)
 where q.question_hash = '21c60ccdf162af0caace0193d92fb1dd'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'Ecosystem services are conventionally classified into four broad groups, which are',
    'Provisioning services supply food and water, regulating services such as carbon sequestration control climate, cultural services give recreational value and supporting services underpin the other three.',
    'easy',
    'NCERT Class XII (Biology)',
    null,
    '6ad4ff5784aa15e5d1b2cc4c27dd7eda'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '6ad4ff5784aa15e5d1b2cc4c27dd7eda'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Public, private, common and club goods'),
            ('B', 'Rural, urban, coastal and mountain services'),
            ('C', 'Provisioning, regulating, cultural and supporting services'),
            ('D', 'Direct, indirect, tangible and intangible services')
           ) as v(label, option_text)
 where q.question_hash = '6ad4ff5784aa15e5d1b2cc4c27dd7eda'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'In a single tree ecosystem, the pyramid of numbers is inverted because',
    'Numbers pyramids can be inverted when a few large producers support many small consumers, whereas the energy pyramid always remains upright because of energy loss at each transfer.',
    'medium',
    'NCERT Class XII (Biology)',
    null,
    'c9045aca55657e485aba211242c73ffe'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'c9045aca55657e485aba211242c73ffe'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A single large tree supports thousands of herbivorous insects but only a few insectivorous birds'),
            ('B', 'Trees produce far less energy than insects'),
            ('C', 'Insects are longer lived than trees'),
            ('D', 'Birds feed only on seeds produced by the tree')
           ) as v(label, option_text)
 where q.question_hash = 'c9045aca55657e485aba211242c73ffe'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'The pyramid of biomass in an aquatic ecosystem is often inverted because',
    'A small standing crop of phytoplankton can support a larger biomass of zooplankton and fish because the algae reproduce and are consumed very rapidly, inverting the biomass pyramid.',
    'hard',
    'NCERT Class XII (Biology)',
    null,
    '6826cf935d4f3457f227b0e783fabdf2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '6826cf935d4f3457f227b0e783fabdf2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Fishes have a greater biomass than the water they live in'),
            ('B', 'Zooplankton consume all the phytoplankton produced'),
            ('C', 'Deep sea water contains almost no organic matter'),
            ('D', 'Phytoplankton have a low standing biomass but a very high rate of turnover')
           ) as v(label, option_text)
 where q.question_hash = '6826cf935d4f3457f227b0e783fabdf2'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'Secondary productivity in an ecosystem refers to',
    'Primary productivity is the production of biomass by autotrophs, whereas secondary productivity is the conversion of assimilated food into new biomass by heterotrophs such as animals.',
    'easy',
    'NCERT Class XII (Biology)',
    null,
    'b3c9563c11719d838b476fcfe8920233'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b3c9563c11719d838b476fcfe8920233'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The total biomass present in the community'),
            ('B', 'The rate of production of biomass by consumers from the food they ingest'),
            ('C', 'The rate of energy fixation by plants through photosynthesis'),
            ('D', 'The rate of decomposition of dead matter')
           ) as v(label, option_text)
 where q.question_hash = 'b3c9563c11719d838b476fcfe8920233'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'A succession that proceeds from the margins of a pond towards its centre is termed',
    'Hydrarchic succession proceeds from wetter to drier conditions, as in the infilling of a pond, while xerarchic succession moves towards drier habitats in response to decreasing moisture.',
    'hard',
    'NCERT Class XII (Biology)',
    null,
    '380a16e2d21ea7770fbbe4f28aa245d2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '380a16e2d21ea7770fbbe4f28aa245d2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Xerarchic succession'),
            ('B', 'Primary sere'),
            ('C', 'Autogenic succession'),
            ('D', 'Hydrarchic succession')
           ) as v(label, option_text)
 where q.question_hash = '380a16e2d21ea7770fbbe4f28aa245d2'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'The maximum population size that an environment can sustain indefinitely is called',
    'Carrying capacity is the ceiling on population size set by resources and environmental conditions; it is not fixed and changes with the availability of food, water and space.',
    'easy',
    'NCERT Class XII (Biology)',
    null,
    'd950771eb78760d6290f890bbd8ba560'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd950771eb78760d6290f890bbd8ba560'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ecological efficiency'),
            ('B', 'Productivity'),
            ('C', 'Carrying capacity'),
            ('D', 'Biotic potential')
           ) as v(label, option_text)
 where q.question_hash = 'd950771eb78760d6290f890bbd8ba560'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'Gause''s competitive exclusion principle states that',
    'Experiments with Paramecium showed that two species with identical niches could not coexist in the same culture, one eliminating the other unless they partitioned the resources.',
    'medium',
    'NCERT Class XII (Biology)',
    null,
    'bf76d20117aa12c46d4e0a91c2539308'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'bf76d20117aa12c46d4e0a91c2539308'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Two species competing for the same limiting resource cannot coexist indefinitely in the same habitat'),
            ('B', 'Two species can never share the same habitat'),
            ('C', 'Competition always benefits both competing species'),
            ('D', 'Species with larger body size always outcompete smaller ones')
           ) as v(label, option_text)
 where q.question_hash = 'bf76d20117aa12c46d4e0a91c2539308'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'The relationship between a fig tree and its fig wasp is an example of',
    'The wasp pollinates the fig and gains food and a site to lay eggs, so both partners are affected and neither can complete its life cycle alone, making it obligate mutualism.',
    'easy',
    'NCERT Class XII (Biology)',
    null,
    '330ff9dbd98b80ed3a6c9938e04e6b79'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '330ff9dbd98b80ed3a6c9938e04e6b79'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Competition'),
            ('B', 'Obligate mutualism'),
            ('C', 'Commensalism'),
            ('D', 'Amensalism')
           ) as v(label, option_text)
 where q.question_hash = '330ff9dbd98b80ed3a6c9938e04e6b79'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'Nitrification in the nitrogen cycle is the process of',
    'Nitrification oxidises ammonia to nitrites and then to nitrates by Nitrosomonas and Nitrobacter, while denitrification returns nitrogen to the atmosphere.',
    'easy',
    'NCERT Class XII (Biology)',
    null,
    '07d16649b42921867daa1c6735683f1e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '07d16649b42921867daa1c6735683f1e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Conversion of atmospheric nitrogen into ammonia'),
            ('B', 'Reduction of nitrates into nitrogen gas'),
            ('C', 'Breakdown of organic nitrogen into ammonia'),
            ('D', 'Conversion of ammonia into nitrites and then nitrates by nitrifying bacteria')
           ) as v(label, option_text)
 where q.question_hash = '07d16649b42921867daa1c6735683f1e'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'Ammonification in the nitrogen cycle is carried out by',
    'Decomposers break down proteins, urea and other organic nitrogen compounds and release ammonia, which can then be nitrified or reassimilated.',
    'easy',
    'NCERT Class XII (Biology)',
    null,
    '64ad6ad383f5ec78bda68d7e52513be7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '64ad6ad383f5ec78bda68d7e52513be7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Decomposer bacteria and fungi that convert organic nitrogen into ammonia'),
            ('B', 'Phototrophic cyanobacteria in paddy fields'),
            ('C', 'Nitrifying bacteria in the soil'),
            ('D', 'Symbiotic bacteria in root nodules')
           ) as v(label, option_text)
 where q.question_hash = '64ad6ad383f5ec78bda68d7e52513be7'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'Denitrification in the nitrogen cycle is the process by which',
    'Denitrifying bacteria such as Pseudomonas reduce nitrates to nitrogen gas in oxygen-poor soil and water, completing the nitrogen cycle.',
    'easy',
    'NCERT Class XII (Biology)',
    null,
    '3042d6b1e1911ec2aaa1099b2118b6d5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '3042d6b1e1911ec2aaa1099b2118b6d5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Nitrogen gas is converted into ammonia'),
            ('B', 'Nitrogen is absorbed by plant roots'),
            ('C', 'Nitrates are reduced to nitrogen gas by bacteria, returning nitrogen to the atmosphere'),
            ('D', 'Ammonia is oxidised to nitrites')
           ) as v(label, option_text)
 where q.question_hash = '3042d6b1e1911ec2aaa1099b2118b6d5'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'The ecological footprint of a population is best described as',
    'Introduced by Mathis Wackernagel and William Rees, the ecological footprint measures humanity''s demand on nature in hectares of global productive land.',
    'medium',
    'Standard Reference',
    null,
    '3cf98ad1dc98c2c795bf9cda869b5bfd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '3cf98ad1dc98c2c795bf9cda869b5bfd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The area covered by the urban built-up form'),
            ('B', 'The area of biologically productive land and water required to supply its resources and absorb its wastes'),
            ('C', 'The total area of land protected for biodiversity'),
            ('D', 'The population density of a city')
           ) as v(label, option_text)
 where q.question_hash = '3cf98ad1dc98c2c795bf9cda869b5bfd'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'Simpson''s diversity index is used to measure',
    'Simpson''s index incorporates both the number of species and their relative abundances, unlike simple species counts, and a third-order form also captures the evenness of the community.',
    'medium',
    'Standard Reference',
    null,
    '80eea4d892c3da88ac5915a46f751c08'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '80eea4d892c3da88ac5915a46f751c08'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The genetic diversity within a single species'),
            ('B', 'Both species richness and the evenness of their distribution'),
            ('C', 'Only the total biomass of a community'),
            ('D', 'The rate of primary production')
           ) as v(label, option_text)
 where q.question_hash = '80eea4d892c3da88ac5915a46f751c08'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'Bioremediation refers to',
    'Biostimulation and bioaugmentation use naturally occurring or added microbes to break down hydrocarbons, heavy metals and other contaminants in soil and water.',
    'easy',
    'Standard Reference',
    null,
    '197b9ef7da8708b1b5c950929457a2f4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '197b9ef7da8708b1b5c950929457a2f4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The physical removal of topsoil from a dumpsite'),
            ('B', 'The dilution of contaminated effluent with clean water'),
            ('C', 'The incineration of hazardous waste at high temperature'),
            ('D', 'The use of microorganisms to degrade or remove pollutants from a contaminated site')
           ) as v(label, option_text)
 where q.question_hash = '197b9ef7da8708b1b5c950929457a2f4'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'In the top-down control of an ecosystem, the abundance of a species is controlled mainly by',
    'Bottom-up control works from resources upwards, whereas top-down control, as in the classic sea otter and sea urchin example, works through predation from higher trophic levels.',
    'medium',
    'Standard Reference',
    null,
    '113a5e2cb2ed0991e7abc627b0da6e35'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '113a5e2cb2ed0991e7abc627b0da6e35'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The rate of photosynthesis by producers'),
            ('B', 'The number of species in the community'),
            ('C', 'Its predators at higher trophic levels'),
            ('D', 'The quantity of resources available to it')
           ) as v(label, option_text)
 where q.question_hash = '113a5e2cb2ed0991e7abc627b0da6e35'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'Resource partitioning between two sympatric species usually results in',
    'When two species use the same habitat, they can reduce overlap by differing in feeding zone, diet or time of activity, which allows coexistence.',
    'medium',
    'Standard Reference',
    null,
    '2f32836cc3a60de8ceca052014149799'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '2f32836cc3a60de8ceca052014149799'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Reduced competition by using different parts of the same resource'),
            ('B', 'Complete elimination of one of the species'),
            ('C', 'An increase in the total available resource'),
            ('D', 'A breakdown of the food web')
           ) as v(label, option_text)
 where q.question_hash = '2f32836cc3a60de8ceca052014149799'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'The species-area relationship in ecology shows that',
    'The relationship is usually expressed as a log-linear curve, so that a ten-fold increase in area yields roughly double the number of species in many communities.',
    'medium',
    'NCERT Class XII (Biology)',
    null,
    'ca1981041a2a52500ded1446f3dab016'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ca1981041a2a52500ded1446f3dab016'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Larger areas generally support more species'),
            ('B', 'Species richness is unrelated to area'),
            ('C', 'Smaller areas always have more species'),
            ('D', 'Species richness depends only on latitude')
           ) as v(label, option_text)
 where q.question_hash = 'ca1981041a2a52500ded1446f3dab016'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'Ecological resilience refers to the ability of an ecosystem to',
    'Resilience is the capacity to absorb disturbance and reorganise while retaining structure and function, whereas resistance is the ability to remain essentially unchanged.',
    'medium',
    'Standard Reference',
    null,
    '8d3ab96f6b11de85474c6c6fb932bbe7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '8d3ab96f6b11de85474c6c6fb932bbe7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Increase its primary productivity'),
            ('B', 'Withstand disturbance and return to its original state'),
            ('C', 'Resist every disturbance without any change'),
            ('D', 'Maintain a constant species composition')
           ) as v(label, option_text)
 where q.question_hash = '8d3ab96f6b11de85474c6c6fb932bbe7'
on conflict (question_id, label) do nothing;

commit;
