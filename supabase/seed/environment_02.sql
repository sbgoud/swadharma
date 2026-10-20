-- =============================================================================
-- environment_02.sql — environment question pack, part 02
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
    'In conservation biology, an umbrella species is one whose protection',
    'Protecting a large-ranging flagship or umbrella species such as the tiger or the elephant indirectly protects the community and habitat on which many other species depend.',
    'easy',
    'Standard Reference',
    null,
    'd7309a67f938f0159edc0adc24a1badf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'd7309a67f938f0159edc0adc24a1badf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Has no conservation value of its own'),
            ('B', 'Is a non-living indicator of pollution'),
            ('C', 'Refers to species protected in captivity only'),
            ('D', 'Also safeguards a wide range of other organisms sharing its habitat')
           ) as v(label, option_text)
 where q.question_hash = 'd7309a67f938f0159edc0adc24a1badf'
on conflict (question_id, label) do nothing;

-- environment | biodiversity | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'biodiversity'),
    'The Red List of India was released in 2015 by',
    'The Red List of India, prepared by the Zoological Survey of India with help from the IUCN, assessed about 1,300 species and placed a majority of them in threatened categories.',
    'medium',
    'Standard Reference',
    null,
    '67878e99389d4e982661da635d17e54c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '67878e99389d4e982661da635d17e54c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Wildlife Institute of India'),
            ('B', 'The National Biodiversity Authority'),
            ('C', 'The Zoological Survey of India'),
            ('D', 'The Botanical Survey of India')
           ) as v(label, option_text)
 where q.question_hash = '67878e99389d4e982661da635d17e54c'
on conflict (question_id, label) do nothing;

-- environment | biodiversity | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'biodiversity'),
    'In India, the scientific authority for the CITES convention on fauna is',
    'The Zoological Survey of India acts as the CITES scientific authority for fauna and the Botanical Survey of India for flora, with the Wildlife Crime Control Bureau as the nodal enforcement agency.',
    'hard',
    'Standard Reference',
    null,
    '905edf4a2f9f8544558b0e57f157a981'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '905edf4a2f9f8544558b0e57f157a981'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Zoological Survey of India'),
            ('B', 'The Botanical Survey of India'),
            ('C', 'The Wildlife Institute of India'),
            ('D', 'The Bureau of Police Research and Development')
           ) as v(label, option_text)
 where q.question_hash = '905edf4a2f9f8544558b0e57f157a981'
on conflict (question_id, label) do nothing;

-- environment | biodiversity | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'biodiversity'),
    'The Bugun liocichla, described as a new bird species from Arunachal Pradesh in 2006, is notable because it was',
    'The Bugun liocichla, found in the Eaglenest Wildlife Sanctuary, was the first new bird species described from India since 1885 and is globally threatened.',
    'medium',
    'Standard Reference',
    null,
    'a742587b59add6d551696fbf886f0a0f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'a742587b59add6d551696fbf886f0a0f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The only songbird ever to be bred in captivity'),
            ('B', 'A species rediscovered after 80 years'),
            ('C', 'The first new bird species recorded in India in more than a century'),
            ('D', 'The first bird species to be cloned in India')
           ) as v(label, option_text)
 where q.question_hash = 'a742587b59add6d551696fbf886f0a0f'
on conflict (question_id, label) do nothing;

-- environment | biodiversity | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'biodiversity'),
    'Mass nesting of the olive ridley sea turtle in India takes place mainly at',
    'Rushikonda in Odisha hosts one of the largest mass nesting sites of the olive ridley turtle in the world, with the Arambal beach nearby also a major nesting site.',
    'medium',
    'Standard Reference',
    null,
    '52f15191fc07b70ca41e07639f125d75'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '52f15191fc07b70ca41e07639f125d75'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The beaches of Diu'),
            ('B', 'The Bhitarkanika mangroves'),
            ('C', 'The Gulf of Mannar islands'),
            ('D', 'Rushikonda in Odisha')
           ) as v(label, option_text)
 where q.question_hash = '52f15191fc07b70ca41e07639f125d75'
on conflict (question_id, label) do nothing;

-- environment | biodiversity | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'biodiversity'),
    'The global decline of amphibians has been linked chiefly to',
    'The pathogenic chytrid fungus attacks the keratinised skin of amphibians and has caused catastrophic population crashes in frogs, newts and salamanders worldwide.',
    'medium',
    'Standard Reference',
    null,
    'd8c287d415aef6de6f0c6fb9693a23f2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd8c287d415aef6de6f0c6fb9693a23f2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Excessive grazing by wild herbivores'),
            ('B', 'The chytrid fungus Batrachochytrium dendrobatidis'),
            ('C', 'Acid rain in the tropics'),
            ('D', 'The ozone hole over Antarctica')
           ) as v(label, option_text)
 where q.question_hash = 'd8c287d415aef6de6f0c6fb9693a23f2'
on conflict (question_id, label) do nothing;

-- environment | biodiversity | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'biodiversity'),
    'Lantana camara, one of the worst invasive alien species in India, was originally brought in as',
    'Introduced in the nineteenth century as an ornamental, Lantana now forms dense thickets that suppress regeneration of native forests across the country.',
    'easy',
    'Standard Reference',
    null,
    '68255cfa4737e28b76209e183d2e1524'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '68255cfa4737e28b76209e183d2e1524'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A timber tree from Australia'),
            ('B', 'An ornamental shrub from Central and South America'),
            ('C', 'A fodder grass from Africa'),
            ('D', 'A medicinal herb from South-East Asia')
           ) as v(label, option_text)
 where q.question_hash = '68255cfa4737e28b76209e183d2e1524'
on conflict (question_id, label) do nothing;

-- environment | biodiversity | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'biodiversity'),
    'Biological control of the water hyacinth in India is carried out using the',
    'The exotic weevil Neochetina bruchi and the moth Sameodes parthusalis are the approved biological control agents for water hyacinth in Indian water bodies.',
    'hard',
    'Standard Reference',
    null,
    '3bc2569b013c9f6db86927dbefc1ba0b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '3bc2569b013c9f6db86927dbefc1ba0b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Feeding beetle Neochetina bruchi and the moth Sameodes parthusalis'),
            ('B', 'Repeated spraying of chemical herbicides'),
            ('C', 'Draining of the water bodies'),
            ('D', 'Introduction of large water buffaloes')
           ) as v(label, option_text)
 where q.question_hash = '3bc2569b013c9f6db86927dbefc1ba0b'
on conflict (question_id, label) do nothing;

-- environment | biodiversity | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'biodiversity'),
    'The golden apple snail is a serious pest of rice in India because it',
    'Pomacea canaliculata, introduced from South America, feeds on seedlings at the vegetative stage and is also a host for the liver fluke that causes fascioliasis in humans.',
    'medium',
    'Standard Reference',
    null,
    'a592a44c9c53b5d812b3a987002c85cc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'a592a44c9c53b5d812b3a987002c85cc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It blocks irrigation canals and causes floods'),
            ('B', 'It feeds on the stem of the mature crop only'),
            ('C', 'Its adults and eggs damage young seedlings and it competes for food and space'),
            ('D', 'It transmits malaria to human beings')
           ) as v(label, option_text)
 where q.question_hash = 'a592a44c9c53b5d812b3a987002c85cc'
on conflict (question_id, label) do nothing;

-- environment | biodiversity | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'biodiversity'),
    'The well known sacred groves of Devavana, Sarala Kothara and Moti Vavani are located in',
    'These village groves in Gujarat are protected by community tradition and are celebrated examples of in-situ conservation of plant diversity, including many rare medicinal species.',
    'hard',
    'Standard Reference',
    null,
    '5ee6e0cbdfe40ee0fbf87f89baa44c75'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '5ee6e0cbdfe40ee0fbf87f89baa44c75'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Bastar district of Chhattisgarh'),
            ('B', 'The Wayanad district of Kerala'),
            ('C', 'The Sirmaur district of Himachal Pradesh'),
            ('D', 'The Dangs district of Gujarat')
           ) as v(label, option_text)
 where q.question_hash = '5ee6e0cbdfe40ee0fbf87f89baa44c75'
on conflict (question_id, label) do nothing;

-- environment | biodiversity | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'biodiversity'),
    'According to the Russian botanist Nikolai Vavilov, the centre of origin of wheat is',
    'Vavilov identified eight centres of origin of cultivated plants, with the Fertile Crescent the source of wheat, barley, peas and lentils, and the Andes the source of potatoes and quinoa.',
    'medium',
    'Standard Reference',
    null,
    'a3338e8ad9596865a13faca2bf5cc22a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'a3338e8ad9596865a13faca2bf5cc22a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Andes of South America'),
            ('B', 'Ethiopia and the Abyssinian highlands'),
            ('C', 'The Fertile Crescent of south-west Asia'),
            ('D', 'South China')
           ) as v(label, option_text)
 where q.question_hash = 'a3338e8ad9596865a13faca2bf5cc22a'
on conflict (question_id, label) do nothing;

-- environment | biodiversity | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'biodiversity'),
    'The Siberian crane, one of the rarest migratory birds in the world, has in India a major wintering population at',
    'A small number of Siberian cranes winter in the Keoladeo wetlands, and the species, barely two hundred birds in the world, has been critically endangered for decades.',
    'medium',
    'Standard Reference',
    null,
    'fb9b760e3b0c25e6f5a32efe67b2b42c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'fb9b760e3b0c25e6f5a32efe67b2b42c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Loktak Lake in Manipur'),
            ('B', 'Sultanpur National Park in Haryana'),
            ('C', 'Koonthankulam Bird Sanctuary in Tamil Nadu'),
            ('D', 'Keoladeo National Park in Bharatpur')
           ) as v(label, option_text)
 where q.question_hash = 'fb9b760e3b0c25e6f5a32efe67b2b42c'
on conflict (question_id, label) do nothing;

-- environment | biodiversity | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'biodiversity'),
    'The Amur falcon is notable in India because it',
    'Thousands of Amur falcons pass over Khewra in Punjab each September on their way from Siberia to Africa, making it a spectacular raptor migration site.',
    'hard',
    'Standard Reference',
    null,
    'cc83807c39e100a457dcb3d068a2070f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'cc83807c39e100a457dcb3d068a2070f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Forms one of the world''s largest falcon congregations at Khewra in Punjab during its autumn passage'),
            ('B', 'Breeds in the high-altitude lakes of Ladakh'),
            ('C', 'Is the only raptor that migrates across the Indian Ocean'),
            ('D', 'Nests in the mangrove swamps of the Sundarbans')
           ) as v(label, option_text)
 where q.question_hash = 'cc83807c39e100a457dcb3d068a2070f'
on conflict (question_id, label) do nothing;

-- environment | biodiversity | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'biodiversity'),
    'The sociable lapwing, a rare migratory wader, has a small breeding population in',
    'A small population of sociable lapwings breeds in the high-altitude wetlands of eastern Ladakh and migrates to the Gangetic plain and South-East Asia in winter.',
    'hard',
    'Standard Reference',
    null,
    'd6c1aa784639a9adb499525e7192b090'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd6c1aa784639a9adb499525e7192b090'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Coromandel coast'),
            ('B', 'Eastern Ladakh'),
            ('C', 'The Rann of Kutch'),
            ('D', 'The Sundarbans delta')
           ) as v(label, option_text)
 where q.question_hash = 'd6c1aa784639a9adb499525e7192b090'
on conflict (question_id, label) do nothing;

-- environment | biodiversity | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'biodiversity'),
    'The Indian star tortoise is heavily protected in India because it',
    'The star tortoise is listed in Schedule I of the Wildlife Protection Act and its shell is traded for use in ayurvedic preparations, which has sharply reduced wild populations.',
    'medium',
    'Standard Reference',
    null,
    '31bf8246b03313563ff1d9d49f0b31cb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '31bf8246b03313563ff1d9d49f0b31cb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is an extinct species surviving in one temple pond'),
            ('B', 'Is a Schedule I species and a target of illegal pet trade in India'),
            ('C', 'Is a freshwater species found only in the Ganga delta'),
            ('D', 'Is the largest tortoise of the Indian subcontinent')
           ) as v(label, option_text)
 where q.question_hash = '31bf8246b03313563ff1d9d49f0b31cb'
on conflict (question_id, label) do nothing;

-- environment | biodiversity | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'biodiversity'),
    'The near extinction of the white-rumped vulture in India was caused mainly by',
    'Diclofenac, widely used to treat cattle, caused kidney failure in vultures that fed on dead cattle; its ban in veterinary use from 2006 and later a cattle-safe alternative allowed the birds to stage a recovery.',
    'medium',
    'Standard Reference',
    null,
    '8d548509b6f6132f1f4c3e2579036b2c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '8d548509b6f6132f1f4c3e2579036b2c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The spread of avian influenza'),
            ('B', 'Over-collection of eggs for trade'),
            ('C', 'The veterinary use of diclofenac, which is toxic to vultures'),
            ('D', 'The use of DDT in plantations')
           ) as v(label, option_text)
 where q.question_hash = '8d548509b6f6132f1f4c3e2579036b2c'
on conflict (question_id, label) do nothing;

-- environment | biodiversity | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'biodiversity'),
    'The national tree of India is',
    'The Indian laurel, Ficus benghalensis, was declared the national tree in 1979; the neem is often called the village tree and the peepal is culturally the most sacred.',
    'medium',
    'Standard Reference',
    null,
    '1a94571463e50d2c12e307b1aeb3015d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '1a94571463e50d2c12e307b1aeb3015d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Indian laurel or banyan'),
            ('B', 'The teak'),
            ('C', 'The neem'),
            ('D', 'The Himalayan cedar')
           ) as v(label, option_text)
 where q.question_hash = '1a94571463e50d2c12e307b1aeb3015d'
on conflict (question_id, label) do nothing;

-- environment | biodiversity | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'biodiversity'),
    'The gharial or long-snouted crocodile of the Indian rivers is notable because it',
    'Gavialis gangeticus has an extremely narrow snout with interlocking teeth for catching fish, and it is a Schedule I species whose populations have declined sharply due to river modification and poaching.',
    'medium',
    'Standard Reference',
    null,
    '26ca866ff6e61881ddf9c6317df1d43d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '26ca866ff6e61881ddf9c6317df1d43d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the largest crocodile in the world'),
            ('B', 'Lives in mangrove swamps and feeds on crabs'),
            ('C', 'Is a sea-going species that migrates along the coast'),
            ('D', 'Is the most elongated of the crocodilians and feeds almost exclusively on fish')
           ) as v(label, option_text)
 where q.question_hash = '26ca866ff6e61881ddf9c6317df1d43d'
on conflict (question_id, label) do nothing;

-- environment | biodiversity | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'biodiversity'),
    'The peacock or Indian peafowl is the national bird of India and the two recognised species of peafowl in the world are',
    'Pavo cristatus, the blue peafowl, is the national bird of India while the green peafowl, Pavo muticus, survives mainly in South-East Asia.',
    'medium',
    'Standard Reference',
    null,
    'abe811ae0093ed5a3560f8e0eb1edb8d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'abe811ae0093ed5a3560f8e0eb1edb8d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The blue peafowl and the Congo peafowl'),
            ('B', 'The Indian peafowl and the African grey peafowl'),
            ('C', 'The blue peafowl and the Himalayan peafowl'),
            ('D', 'The blue or Indian peafowl and the green peafowl')
           ) as v(label, option_text)
 where q.question_hash = 'abe811ae0093ed5a3560f8e0eb1edb8d'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'As per the Forest Survey of India, the state with the highest forest cover as a percentage of its geographical area is',
    'Mizoram records the highest proportion of forest cover in the country, closely followed by Manipur, Arunachal Pradesh and Meghalaya in the north-eastern hill states.',
    'medium',
    'Forest Survey of India',
    2021,
    '7c8a53d2e0970b38240903e17ad92d06'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '7c8a53d2e0970b38240903e17ad92d06'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kerala'),
            ('B', 'Sikkim'),
            ('C', 'Mizoram'),
            ('D', 'Arunachal Pradesh')
           ) as v(label, option_text)
 where q.question_hash = '7c8a53d2e0970b38240903e17ad92d06'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'The Green India Mission, launched in 2014, aims to',
    'The mission, aligned with the UN Decade on Ecosystem Restoration, works through afforestation, agroforestry, phytosanitation and restoration of degraded ecosystems, with a target set in 2019.',
    'medium',
    'Standard Reference',
    null,
    '2136a465830201bd659091ef0792c2d7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '2136a465830201bd659091ef0792c2d7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ban all felling of trees for commercial purposes'),
            ('B', 'Green additional area through afforestation, restore degraded forests and improve tree cover to 100 million hectares by 2030'),
            ('C', 'Plant one crore fruit trees in every district'),
            ('D', 'Consolidate all village forests into state forests')
           ) as v(label, option_text)
 where q.question_hash = '2136a465830201bd659091ef0792c2d7'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'The Muli bamboo of the north-eastern hills is notable because it',
    'Melocanna baccifera flowers in a highly synchronised cycle with long intervals, a rhythm studied by ecologists and which causes periodic famine among bamboo-dependent fauna.',
    'medium',
    'Standard Reference',
    null,
    '28f3b4006a885539dfb60662c9eb1323'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '28f3b4006a885539dfb60662c9eb1323'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Flowers on a cyclical rhythm with a very long gap between flowering cycles'),
            ('B', 'Grows only in saline soils'),
            ('C', 'Is the only bamboo that can be grown from seed'),
            ('D', 'Provides the main food of the golden langur')
           ) as v(label, option_text)
 where q.question_hash = '28f3b4006a885539dfb60662c9eb1323'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'The Indian sandalwood tree is valued for its aromatic oil and its illegal felling is a serious problem in',
    'Santalum album grows mainly in Mysore and the surrounding dry forests, and the smuggling of sandalwood has been a long running conservation and law enforcement issue.',
    'medium',
    'Standard Reference',
    null,
    'b0545563a346132133928e72265be063'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'b0545563a346132133928e72265be063'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Karnataka and its surrounding states'),
            ('B', 'Rajasthan and Gujarat'),
            ('C', 'Assam and Meghalaya'),
            ('D', 'Tamil Nadu and Kerala')
           ) as v(label, option_text)
 where q.question_hash = 'b0545563a346132133928e72265be063'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'Shola grasslands of the Western Ghats are characterised by',
    'These montane meadow patches are surrounded by dense stunted shola forest and support a distinctive flora and fauna with a large number of narrow endemics.',
    'hard',
    'Standard Reference',
    null,
    'db3792eeb08c79ec790751b1b98d6163'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'db3792eeb08c79ec790751b1b98d6163'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Mangrove scrub on the eastern coast'),
            ('B', 'Pockets of high-altitude grassy openings within shola forest, harbouring many endemic species'),
            ('C', 'Extensive plantations of teak in the Nilgiris'),
            ('D', 'Freshwater marshes in the coastal belt')
           ) as v(label, option_text)
 where q.question_hash = 'db3792eeb08c79ec790751b1b98d6163'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'Valmiki Tiger Reserve in Bihar was created in',
    'Valmiki, formed in 1988, was the first tiger reserve of Bihar and together with the adjoining forests of Nepal it forms one of the key tiger habitats of the Terai.',
    'hard',
    'Standard Reference',
    null,
    'a8a79fd538c464f67752f384afccafc4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'a8a79fd538c464f67752f384afccafc4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2001'),
            ('B', '2010'),
            ('C', '1988'),
            ('D', '1994')
           ) as v(label, option_text)
 where q.question_hash = 'a8a79fd538c464f67752f384afccafc4'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'Dudhwa National Park in Uttar Pradesh is famous for its',
    'Dudhwa, along with Pilibhit and the adjoining Dudhwa forest, supports one of the most important tiger populations of the northern Terai and a rich grassland bird and herbivore fauna.',
    'medium',
    'Standard Reference',
    null,
    '3c2d3b62e1698baaea0d5651dff6d3d1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '3c2d3b62e1698baaea0d5651dff6d3d1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Asiatic lions of the Gir forest'),
            ('B', 'Snow leopards of the Himalayan ranges'),
            ('C', 'Marine dugongs of the Gulf of Mannar'),
            ('D', 'Swamp tiger population and the rich biodiversity of the Terai grasslands')
           ) as v(label, option_text)
 where q.question_hash = '3c2d3b62e1698baaea0d5651dff6d3d1'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'Eravikulam National Park in Kerala is the only place in India where the',
    'The park, near Idukki, protects the endemic Nilgiri tahr together with the shola-grassland ecosystem of the Anamalai hills and the endemic Nilgiri langur and lion-tailed macaque.',
    'medium',
    'Standard Reference',
    null,
    '3d088cda8ff9c041e78989a86cfb45b4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '3d088cda8ff9c041e78989a86cfb45b4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Grizzled giant squirrel occurs'),
            ('B', 'Nilgiri tahr can be seen in the wild'),
            ('C', 'Snow leopard survives'),
            ('D', 'Musk deer is found')
           ) as v(label, option_text)
 where q.question_hash = '3d088cda8ff9c041e78989a86cfb45b4'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'Bannerghatta National Park in Karnataka is significant because it is',
    'Bannerghatta combines a tiger reserve with a national park and a biological park, and together with Bandipur, Nagarhole and Mudumalai it forms the larger Nilgiri landscape.',
    'medium',
    'Standard Reference',
    null,
    '8f04ce9ccd97075271afb3a1958e2809'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '8f04ce9ccd97075271afb3a1958e2809'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The only mangrove park of the country'),
            ('B', 'The largest tiger reserve of Madhya Pradesh'),
            ('C', 'A biosphere reserve of international stature in Assam'),
            ('D', 'A large protected area adjoining the Nilgiri Biosphere Reserve')
           ) as v(label, option_text)
 where q.question_hash = '8f04ce9ccd97075271afb3a1958e2809'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'Kalakad Mundanthurai Tiger Reserve is located in',
    'The reserve straddles the Tirunelveli and Kattabomman districts in the extreme south of Tamil Nadu and forms a continuous elephant and tiger habitat with the Mudumalai and Srivilliputhur forests.',
    'medium',
    'Standard Reference',
    null,
    '2138245d36ea0ddf19c74654a78e4682'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '2138245d36ea0ddf19c74654a78e4682'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Karnataka'),
            ('B', 'Andhra Pradesh'),
            ('C', 'Tamil Nadu'),
            ('D', 'Kerala')
           ) as v(label, option_text)
 where q.question_hash = '2138245d36ea0ddf19c74654a78e4682'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'Bhitarkanika National Park in Odisha is important chiefly as',
    'Bhitarkanika supports the largest population of Indian grey wolves in Odisha and a rich wetland fauna, and it was inscribed as a UNESCO World Heritage Site in 2019.',
    'medium',
    'Standard Reference',
    null,
    '43222c069e631883ed7abde22ceaf706'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '43222c069e631883ed7abde22ceaf706'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A major wetland and mangrove habitat of the Mahanadi delta'),
            ('B', 'The only place where the Asiatic lion survives'),
            ('C', 'A cold desert sanctuary of high-altitude lakes'),
            ('D', 'A community forest reserve in the Western Ghats')
           ) as v(label, option_text)
 where q.question_hash = '43222c069e631883ed7abde22ceaf706'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'The Nandita Devi National Park, also called the Sessa Orchid Sanctuary, in Arunachal Pradesh is',
    'Established in 1982 in the Ziro valley, the sanctuary protects some 450 species of orchids and is surrounded by the wildlife-rich Eaglenest landscape.',
    'hard',
    'Standard Reference',
    null,
    '98a3dce760048a5ab32c2b22312b7e57'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '98a3dce760048a5ab32c2b22312b7e57'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The largest orchid sanctuary in India'),
            ('B', 'A wetland sanctuary of the Brahmaputra delta'),
            ('C', 'A tiger reserve of the Assam plains'),
            ('D', 'A mangrove reserve of the Andaman Islands')
           ) as v(label, option_text)
 where q.question_hash = '98a3dce760048a5ab32c2b22312b7e57'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'The Desert National Park of Rajasthan is notable because it',
    'The park spreads across Jaisalmer, Barmer and Bikaner and is an important site for the chinkara, caracal, desert fox and great Indian bustard, with an ecologically sound dune-fixing programme.',
    'medium',
    'Standard Reference',
    null,
    'de60dc3181560fb7ea6e9148f78b3722'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'de60dc3181560fb7ea6e9148f78b3722'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Protects the only population of the sangai'),
            ('B', 'Is a large protected area of shifting dunes and salt flats in the Thar desert'),
            ('C', 'Contains the largest mangrove forest of the country'),
            ('D', 'Is a high-altitude meadow reserve of the Himalaya')
           ) as v(label, option_text)
 where q.question_hash = 'de60dc3181560fb7ea6e9148f78b3722'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'Mount Abu Wildlife Sanctuary in Rajasthan is the only place in the state where the',
    'Mount Abu, the only hill station of Rajasthan, supports a mixed deciduous forest with the white-bellied flying squirrel, the largest gliding mammal of India, and a rich avifauna.',
    'hard',
    'Standard Reference',
    null,
    '0292b668afd9bbe4ae7ea1f046421a94'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '0292b668afd9bbe4ae7ea1f046421a94'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sarus crane breeds'),
            ('B', 'Snow leopard is recorded'),
            ('C', 'White-bellied flying squirrel is found'),
            ('D', 'Chinkara survives in the wild')
           ) as v(label, option_text)
 where q.question_hash = '0292b668afd9bbe4ae7ea1f046421a94'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'Tal Chhapar Wildlife Sanctuary in Rajasthan is chiefly known for its',
    'Tal Chhapar near Sriganganagar protects a large herd of blackbuck in a typical semi-desert thorn scrub habitat of the Shekhawati region.',
    'medium',
    'Standard Reference',
    null,
    'b392f93882b2e3dc329063717262294d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'b392f93882b2e3dc329063717262294d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Asiatic lions'),
            ('B', 'Migratory cranes of the Keoladeo type'),
            ('C', 'Mangrove cover'),
            ('D', 'Blackbuck and desert grassland fauna')
           ) as v(label, option_text)
 where q.question_hash = 'b392f93882b2e3dc329063717262294d'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'The rusty-spotted cat, the smallest cat of the Indian subcontinent, is',
    'Felis rubiginosa is a small, elusive cat recorded from a number of protected areas including the Gir forest and national parks, and is listed in Schedule I of the Wildlife Protection Act.',
    'hard',
    'Standard Reference',
    null,
    'ba19e897d699fdc9e397c89e7863a4f4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'ba19e897d699fdc9e397c89e7863a4f4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'An extinct species surviving in captivity'),
            ('B', 'A cat of the high-altitude alpine zone'),
            ('C', 'A Schedule I species found in dry deciduous forests and scrub'),
            ('D', 'A large cat of the mangrove swamps')
           ) as v(label, option_text)
 where q.question_hash = 'ba19e897d699fdc9e397c89e7863a4f4'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'Red sanders, an internationally protected timber tree, grows naturally mainly in',
    'Pterocarpus santalinus occurs in a restricted range in the Eastern Ghats, and its illegal felling for export has made it a target of the Wildlife Crime Control Bureau.',
    'medium',
    'Standard Reference',
    null,
    '8a66b415883f83fdd483a92479b27dae'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '8a66b415883f83fdd483a92479b27dae'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Eastern Ghats of Andhra Pradesh'),
            ('B', 'The Western Ghats of Maharashtra'),
            ('C', 'The Himalayan foothills of Uttarakhand'),
            ('D', 'The Aravalli hills of Rajasthan')
           ) as v(label, option_text)
 where q.question_hash = '8a66b415883f83fdd483a92479b27dae'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'The reintroduction of the cheetah to India, from cheetahs taken from Namibia, was approved in',
    'In September 2022 the National Steering Committee cleared the translocation of eight cheetahs from Namibia to the Kuno National Park in Madhya Pradesh, the first intercontinental translocation of a large carnivore.',
    'medium',
    'PIB 2022',
    2022,
    '6699838f519e98025b2715788523f777'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '6699838f519e98025b2715788523f777'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2016'),
            ('B', '2010'),
            ('C', '2005'),
            ('D', '2022')
           ) as v(label, option_text)
 where q.question_hash = '6699838f519e98025b2715788523f777'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'The National Wildlife Research Institute is located at',
    'The NWRI at Hazaribagh conducts research on wildlife and supports the management of protected areas, while the Wildlife Institute of India is located at Dehradun.',
    'medium',
    'Standard Reference',
    null,
    '29caa09dd704826644364dcf419c49e6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '29caa09dd704826644364dcf419c49e6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Jodhpur, Rajasthan'),
            ('B', 'Hazaribagh, Jharkhand'),
            ('C', 'Dehradun, Uttarakhand'),
            ('D', 'Bhubaneswar, Odisha')
           ) as v(label, option_text)
 where q.question_hash = '29caa09dd704826644364dcf419c49e6'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'Among the IUCN protected area categories, Category II is assigned to',
    'Category II covers large natural or near-natural areas set aside to protect large-scale ecological processes, along with a complement of environmentally and culturally compatible features; wilderness areas fall under Category Ib.',
    'easy',
    'Standard Reference',
    null,
    'fb8a88d8ef5ed7e9991b21d9787c535f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'fb8a88d8ef5ed7e9991b21d9787c535f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Strict nature reserves'),
            ('B', 'Protected landscapes'),
            ('C', 'Wilderness areas'),
            ('D', 'National parks')
           ) as v(label, option_text)
 where q.question_hash = 'fb8a88d8ef5ed7e9991b21d9787c535f'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'IUCN Category Ib, the wilderness area category, is intended for',
    'Wilderness areas are large, virtually undisturbed areas where human activity is minimal and which are protected from modern technology, differing from Category Ia strict nature reserves that admit only visitors with a strong scientific purpose.',
    'medium',
    'Standard Reference',
    null,
    'a9a9481f84e8f24bf0f8d0e0b287b000'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a9a9481f84e8f24bf0f8d0e0b287b000'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Strict reserves with no visitors'),
            ('B', 'Large unmodified areas with minimal human intervention'),
            ('C', 'Protected landscapes with settled communities'),
            ('D', 'Sites managed for species recovery')
           ) as v(label, option_text)
 where q.question_hash = 'a9a9481f84e8f24bf0f8d0e0b287b000'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'IUCN Category V, the protected landscape category, is characterised by',
    'Protected landscapes typically cover inhabited areas where sustainable use and farming continue, protecting scenic and cultural values along with nature, such as parts of the Nilgiri hills.',
    'medium',
    'Standard Reference',
    null,
    '515b6c6274554ed358d3bb14d3bc7dd4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '515b6c6274554ed358d3bb14d3bc7dd4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Inhabited landscapes where communities continue traditional livelihoods'),
            ('B', 'Areas kept for strict scientific research'),
            ('C', 'Marine zones closed to all fishing'),
            ('D', 'Large reserves with no human presence')
           ) as v(label, option_text)
 where q.question_hash = '515b6c6274554ed358d3bb14d3bc7dd4'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The IUCN Green List is a',
    'The Green List, launched in 2017, uses standard criteria on governance, sound management and conservation outcomes to assess and certify protected area management.',
    'hard',
    'Standard Reference',
    null,
    '19da3f507727fa7318ce82ff3e894d85'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '19da3f507727fa7318ce82ff3e894d85'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Certification scheme for organic farming'),
            ('B', 'Framework for measuring carbon stocks in forests'),
            ('C', 'Performance-based global standard for the management of protected areas'),
            ('D', 'Register of sites eligible for World Heritage listing')
           ) as v(label, option_text)
 where q.question_hash = '19da3f507727fa7318ce82ff3e894d85'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'Indigenous and community conserved areas, or ICCAs, are recognised in the Convention on Biological Diversity as',
    'ICCA territories, governed and conserved by indigenous peoples and local communities, are recognised alongside other effective area-based conservation measures and support the 30x30 target.',
    'hard',
    'Standard Reference',
    null,
    '7f95326d0fb46c487e0127d9f915b454'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '7f95326d0fb46c487e0127d9f915b454'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A substitute for national parks'),
            ('B', 'A category of marine protected area'),
            ('C', 'A mechanism for carbon credit trading'),
            ('D', 'A complement to officially designated protected areas')
           ) as v(label, option_text)
 where q.question_hash = '7f95326d0fb46c487e0127d9f915b454'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The Nilgiri Biosphere Reserve was the first biosphere reserve of India and covers parts of',
    'Designated in 2001, the reserve is a UNESCO recognised biosphere reserve that includes the Nilgiri, Mudumalai, Bandipur and Nagarhole areas of the Western Ghats.',
    'medium',
    'Standard Reference',
    null,
    '570b2401a8c2ea5322a445af2ab0cd67'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '570b2401a8c2ea5322a445af2ab0cd67'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Tamil Nadu, Kerala and Karnataka'),
            ('B', 'Kerala, Karnataka and Goa'),
            ('C', 'Tamil Nadu, Andhra Pradesh and Puducherry'),
            ('D', 'Karnataka, Maharashtra and Goa')
           ) as v(label, option_text)
 where q.question_hash = '570b2401a8c2ea5322a445af2ab0cd67'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The number of biosphere reserves in India recognised by UNESCO is',
    'After six new designations in 2021, including the Great Himalayan, Kachchh, Panna, Satpura, Khangchendzonga and Guru Ghasidas-Tamor Pinglang, India has eighteen UNESCO biosphere reserves.',
    'medium',
    'Standard Reference',
    null,
    '85dda5c0c36e430d20e8fbe3fd786c51'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '85dda5c0c36e430d20e8fbe3fd786c51'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '24'),
            ('B', '28'),
            ('C', '18'),
            ('D', '12')
           ) as v(label, option_text)
 where q.question_hash = '85dda5c0c36e430d20e8fbe3fd786c51'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The UNESCO World Heritage sites are classified into',
    'A site is listed as cultural, natural or mixed, and the World Heritage Committee assesses each against the criteria under which it possesses outstanding universal value.',
    'easy',
    'Standard Reference',
    null,
    '18bee8d05aca23de4bdd4a51567bd837'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '18bee8d05aca23de4bdd4a51567bd837'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Protected, buffer and transition categories'),
            ('B', 'Cultural, natural and mixed categories'),
            ('C', 'Natural, industrial and archaeological categories'),
            ('D', 'Regional, national and international categories')
           ) as v(label, option_text)
 where q.question_hash = '18bee8d05aca23de4bdd4a51567bd837'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'Outstanding universal value, the standard for listing a site on the World Heritage List, means that',
    'The term is the heart of the World Heritage Convention, requiring a site to be of such importance that its loss would be a loss for humanity and for future generations.',
    'medium',
    'Standard Reference',
    null,
    '411b06c0595552f64a30c1ce74f1b565'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '411b06c0595552f64a30c1ce74f1b565'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The site is under an active conservation programme'),
            ('B', 'The site is of national importance only'),
            ('C', 'The site is so important that its loss would be a loss to humanity as a whole'),
            ('D', 'The site has the highest tourist potential')
           ) as v(label, option_text)
 where q.question_hash = '411b06c0595552f64a30c1ce74f1b565'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The Tentative List maintained by UNESCO for India consists of sites that',
    'States submit tentative lists of sites that they may nominate in the future, allowing the Committee to consider them before formal nominations are made.',
    'medium',
    'Standard Reference',
    null,
    '1110ccb0295d3b4b351ca011c5e14044'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '1110ccb0295d3b4b351ca011c5e14044'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'India intends to nominate for inscription in the future'),
            ('B', 'Have been rejected by the World Heritage Committee'),
            ('C', 'Are already inscribed but under threat'),
            ('D', 'Belong only to the natural heritage category')
           ) as v(label, option_text)
 where q.question_hash = '1110ccb0295d3b4b351ca011c5e14044'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The first Marine National Park of India, the Gulf of Kachchh, was notified in',
    'The Gulf of Kachchh Marine National Park was the first of its kind in the country, and the Gulf of Mannar Marine National Park followed in 1986.',
    'hard',
    'Standard Reference',
    null,
    '286aa9fbe1e46b6e132df2c414bfbf1a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '286aa9fbe1e46b6e132df2c414bfbf1a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1986'),
            ('B', '1992'),
            ('C', '1997'),
            ('D', '1982')
           ) as v(label, option_text)
 where q.question_hash = '286aa9fbe1e46b6e132df2c414bfbf1a'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The Gulf of Mannar Marine National Park in Tamil Nadu is particularly noted for',
    'The islands of the Gulf of Mannar harbour fringing reefs, dugongs and nesting green turtles, and the area was declared a biosphere reserve in 2004.',
    'medium',
    'Standard Reference',
    null,
    '593393c56c0ecfc69d37e405cf429c3c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '593393c56c0ecfc69d37e405cf429c3c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Its freshwater lily ponds'),
            ('B', 'Its coral reefs and the presence of dugongs and green turtles'),
            ('C', 'Its mangrove swamps and mudskippers'),
            ('D', 'Its high-altitude cold desert fauna')
           ) as v(label, option_text)
 where q.question_hash = '593393c56c0ecfc69d37e405cf429c3c'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The largest tiger reserve in India is',
    'The Nagarjunsagar-Srisailam Tiger Reserve in Andhra Pradesh and Telangana is the largest in the country by area, and it recorded a high density of tigers in recent counts.',
    'medium',
    'Standard Reference',
    null,
    '60a91312cdab54a5b143efb46e7d21d7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '60a91312cdab54a5b143efb46e7d21d7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Corbett'),
            ('B', 'Nagarjunsagar-Srisailam'),
            ('C', 'Kanha'),
            ('D', 'Bandhavgarh')
           ) as v(label, option_text)
 where q.question_hash = '60a91312cdab54a5b143efb46e7d21d7'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The Amrabad Tiger Reserve of Andhra Pradesh is now part of',
    'Amrabad, formerly a separate reserve, was merged with Nagarjunsagar-Srisailam to create one of the largest contiguous tiger habitats of the country.',
    'hard',
    'Standard Reference',
    null,
    '3c3f856a02841f883180ad1cb07ea0b8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '3c3f856a02841f883180ad1cb07ea0b8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Bhadrachalam Wildlife Sanctuary'),
            ('B', 'The Papikonda National Park'),
            ('C', 'The Nagarjunsagar-Srisailam Tiger Reserve'),
            ('D', 'The Kawal Tiger Reserve')
           ) as v(label, option_text)
 where q.question_hash = '3c3f856a02841f883180ad1cb07ea0b8'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The corridor formed by the Dudhwa, Pilibhit and Rajaji tiger reserves is significant for',
    'The Dudhwa-Pilibhit-Rajaji corridor is one of the most important elephant corridors in northern India, allowing herds to move between the Himalayan foothills and the Terai landscape.',
    'hard',
    'Standard Reference',
    null,
    '5cf89afa4310ae50df8d83d6f02bff37'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '5cf89afa4310ae50df8d83d6f02bff37'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Migratory bird arrivals from Siberia'),
            ('B', 'The last population of the sangai'),
            ('C', 'Mangrove cover along the Ganga'),
            ('D', 'Elephant movement between the forests of Uttarakhand and the Terai plains')
           ) as v(label, option_text)
 where q.question_hash = '5cf89afa4310ae50df8d83d6f02bff37'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The Vikramshila Gangetic Dolphin Sanctuary in Bihar is significant for',
    'The sanctuary on the Ganga at Vikramshila houses the largest population of the Gangetic dolphin, and a separate national park in Assam is named after the river dolphin found in the Brahmaputra.',
    'medium',
    'Standard Reference',
    null,
    '48bd99e2d1d14f595f20354dfe92bf95'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '48bd99e2d1d14f595f20354dfe92bf95'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The conservation of the Ganges river dolphin, the national aquatic animal'),
            ('B', 'The breeding of the gharial'),
            ('C', 'The protection of the mangrove creeks'),
            ('D', 'The conservation of the dugong')
           ) as v(label, option_text)
 where q.question_hash = '48bd99e2d1d14f595f20354dfe92bf95'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The Karnala Bird Sanctuary, the first bird sanctuary of Maharashtra, is located near',
    'Karnala, near Alibag, is an evergreen forest sanctuary on the Konkan coast and is a key site for forest birds of the Western Ghats.',
    'hard',
    'Standard Reference',
    null,
    'c8488645241538e36750475d797e4160'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'c8488645241538e36750475d797e4160'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Alibag on the Konkan coast'),
            ('B', 'Nagpur in the Vidarbha region'),
            ('C', 'Kolhapur in the Sahyadri hills'),
            ('D', 'Aurangabad in the Deccan')
           ) as v(label, option_text)
 where q.question_hash = 'c8488645241538e36750475d797e4160'
on conflict (question_id, label) do nothing;

-- environment | pollution | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'The National Clean Air Programme, launched in 2019, works through',
    'The NCAP was started with twenty non-attainment cities and requires each to prepare a city-level clean air action plan with timelines, source-wise emission inventories and monitoring.',
    'medium',
    'PIB 2019',
    2019,
    'a83c67e219f04bff0bd4783f0f2bc533'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a83c67e219f04bff0bd4783f0f2bc533'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The banning of coal power plants'),
            ('B', 'Graded response action plans for cities that fail to meet the national air quality standards'),
            ('C', 'The closure of all polluting industries'),
            ('D', 'A uniform carbon tax on vehicles')
           ) as v(label, option_text)
 where q.question_hash = 'a83c67e219f04bff0bd4783f0f2bc533'
on conflict (question_id, label) do nothing;

-- environment | pollution | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'The Commission for Air Quality Management in the National Capital Region is a',
    'The CAQM, notified in 2018, coordinates air quality management in the NCR by compiling data, issuing directions and monitoring the non-attainment cities of the region.',
    'medium',
    'Standard Reference',
    null,
    '4aeb38c8406008c1be1cc575d76a88fc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '4aeb38c8406008c1be1cc575d76a88fc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Judicial body of the National Green Tribunal'),
            ('B', 'Agency of the Ministry of Petroleum'),
            ('C', 'Statutory body set up to oversee air quality improvement in the NCR'),
            ('D', 'Research institute of the Indian Institute of Science')
           ) as v(label, option_text)
 where q.question_hash = '4aeb38c8406008c1be1cc575d76a88fc'
on conflict (question_id, label) do nothing;

-- environment | pollution | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'The ozone that constitutes the harmful component of photochemical smog is',
    'Stratospheric ozone shields the earth from ultraviolet radiation and is beneficial, whereas tropospheric ozone, formed from vehicle exhaust in sunlight, is a respiratory pollutant.',
    'medium',
    'Standard Reference',
    null,
    '927794f1eb59308bfdaf5f10140cabee'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '927794f1eb59308bfdaf5f10140cabee'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Stratospheric ozone'),
            ('B', 'Ozone in the upper troposphere over the poles'),
            ('C', 'Ozone produced by lightning only'),
            ('D', 'Ground level or tropospheric ozone')
           ) as v(label, option_text)
 where q.question_hash = '927794f1eb59308bfdaf5f10140cabee'
on conflict (question_id, label) do nothing;

-- environment | pollution | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'Leaded petrol was phased out of India because',
    'Leaded petrol was withdrawn from Indian cities in the 1990s and from the rest of the country in 2000, and unleaded fuel reduces the deposition of lead that causes neurological harm in children.',
    'medium',
    'Standard Reference',
    null,
    '5d48546429ce61e533c3c2d9ee373c6e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '5d48546429ce61e533c3c2d9ee373c6e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It corroded the engines of vehicles'),
            ('B', 'The lead emitted from tetraethyl lead was found to be harmful to health, especially children'),
            ('C', 'It produced too much sulphur dioxide'),
            ('D', 'It could not be stored for long periods')
           ) as v(label, option_text)
 where q.question_hash = '5d48546429ce61e533c3c2d9ee373c6e'
on conflict (question_id, label) do nothing;

-- environment | pollution | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'Carbon monoxide, one of the twelve national ambient air quality parameters, is emitted mainly by',
    'Carbon monoxide is a colourless, odourless gas that binds haemoglobin with far greater affinity than oxygen, so it is a serious hazard in closed garages and congested traffic.',
    'easy',
    'CPCB',
    null,
    'bd8bc9c7e4ab4b8c012587e01a433e61'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'bd8bc9c7e4ab4b8c012587e01a433e61'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Plants during photosynthesis'),
            ('B', 'Volatile organic compounds in paint'),
            ('C', 'Chlorofluorocarbon refrigeration'),
            ('D', 'Incomplete combustion of fuels in vehicles and industries')
           ) as v(label, option_text)
 where q.question_hash = 'bd8bc9c7e4ab4b8c012587e01a433e61'
on conflict (question_id, label) do nothing;

-- environment | pollution | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'Ammonia, a notified national ambient air quality parameter, has as its principal source',
    'Ammonia is released mainly from agricultural soils, animal husbandry and fertiliser application, and it contributes to secondary particulate matter formation and to nitrification of lakes.',
    'medium',
    'CPCB',
    null,
    '1d890cd2f76fe11795d3b28c9684c28f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '1d890cd2f76fe11795d3b28c9684c28f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Agriculture and livestock, including fertiliser use and animal waste'),
            ('B', 'Motor vehicles'),
            ('C', 'Thermal power stations'),
            ('D', 'Cement kilns')
           ) as v(label, option_text)
 where q.question_hash = '1d890cd2f76fe11795d3b28c9684c28f'
on conflict (question_id, label) do nothing;

-- environment | pollution | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'The coliform count used in water quality testing is measured in',
    'Coliform counts expressed as MPN per 100 ml indicate faecal contamination and are the standard test for the potability of drinking water.',
    'hard',
    'Standard Reference',
    null,
    'a0ebc1a8ca018a531d0b0d22d54911f7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'a0ebc1a8ca018a531d0b0d22d54911f7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Units of radioactivity per litre'),
            ('B', 'Turbidity units'),
            ('C', 'Most probable number of coliform organisms per 100 millilitres of water'),
            ('D', 'Milligrams of dissolved oxygen per litre')
           ) as v(label, option_text)
 where q.question_hash = 'a0ebc1a8ca018a531d0b0d22d54911f7'
on conflict (question_id, label) do nothing;

-- environment | pollution | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'The self-purification of a river depends mainly on',
    'Self-purification depends on the BOD to COD ratio, dilution by clean water, sunlight, aeration and microbial action; it fails when organic or thermal loads exceed the river''s assimilative capacity.',
    'medium',
    'Standard Reference',
    null,
    'b8355e68ef360366ae3eeb9eb6b84570'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b8355e68ef360366ae3eeb9eb6b84570'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The salinity of the water'),
            ('B', 'Dilution, sedimentation, oxidation and the activity of organisms that break down the pollutants'),
            ('C', 'The depth of the river alone'),
            ('D', 'The presence of aquatic plants only')
           ) as v(label, option_text)
 where q.question_hash = 'b8355e68ef360366ae3eeb9eb6b84570'
on conflict (question_id, label) do nothing;

-- environment | pollution | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'The National River Conservation Plan in India is aimed at',
    'Under the plan, towns along the Ganga set up sewage treatment capacity, control industrial effluents and undertake riverfront development; the programme was later subsumed in Namami Gange.',
    'medium',
    'Standard Reference',
    null,
    '45575a8dbade5dd53f82a2eb7377da0b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '45575a8dbade5dd53f82a2eb7377da0b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Linking all rivers by canals'),
            ('B', 'Raising the minimum flow of rivers for navigation'),
            ('C', 'Abating pollution in the Ganga and other river systems and improving river water quality'),
            ('D', 'Building large dams on the major rivers')
           ) as v(label, option_text)
 where q.question_hash = '45575a8dbade5dd53f82a2eb7377da0b'
on conflict (question_id, label) do nothing;

-- environment | pollution | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'The Namami Gange programme interlinks which of the following with the cleaning of the river?',
    'The programme follows a four-pillar approach of sewage treatment, industrial effluents, riverfront development and biodiversity conservation, supported by the Ganga River Conservation Authority.',
    'easy',
    'Standard Reference',
    null,
    '82c829d6c1d13f2d11df778e0e43f20e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '82c829d6c1d13f2d11df778e0e43f20e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Only the construction of dams'),
            ('B', 'The development of inland waterways'),
            ('C', 'The desalination of river water'),
            ('D', 'Sewage treatment capacity, industrial effluent control, riverfront development and biodiversity')
           ) as v(label, option_text)
 where q.question_hash = '82c829d6c1d13f2d11df778e0e43f20e'
on conflict (question_id, label) do nothing;

-- environment | pollution | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'Arsenic contamination of groundwater is a serious problem in',
    'Arsenic leached from young alluvial sediments affects millions of tube well users in Bengal and Bangladesh, causing chronic arsenicosis, and is managed by the National Arsenic Mitigation Programme.',
    'medium',
    'Standard Reference',
    null,
    'e410ed58577fd258affdd3a9c9be4694'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'e410ed58577fd258affdd3a9c9be4694'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Parts of West Bengal and Bangladesh'),
            ('B', 'The floodplains of Kerala'),
            ('C', 'The alluvial plains of Punjab'),
            ('D', 'The desert areas of Rajasthan')
           ) as v(label, option_text)
 where q.question_hash = 'e410ed58577fd258affdd3a9c9be4694'
on conflict (question_id, label) do nothing;

-- environment | pollution | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'Excess fluoride in drinking water causes',
    'Fluoride levels above the permissible limit of 1.0 mg per litre cause dental mottling in children and, in severe cases, crippling skeletal fluorosis, a problem reported from parts of Rajasthan, Punjab and Haryana.',
    'easy',
    'Standard Reference',
    null,
    '5d3dca74c1f1b642c76264c284a0a638'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '5d3dca74c1f1b642c76264c284a0a638'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Dental fluorosis and skeletal fluorosis'),
            ('B', 'Typhoid and dysentery'),
            ('C', 'Arsenicosis'),
            ('D', 'Methaemoglobinaemia')
           ) as v(label, option_text)
 where q.question_hash = '5d3dca74c1f1b642c76264c284a0a638'
on conflict (question_id, label) do nothing;

-- environment | pollution | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'Waterlogging and the resulting salinisation of soil in irrigated tracts are primarily caused by',
    'When irrigation water exceeds the drainage capacity, the water table rises and salts accumulate at the surface as water evaporates, a serious problem in parts of Punjab, Haryana and Rajasthan.',
    'medium',
    'Standard Reference',
    null,
    '2b219d6da1d5976243b4b32e59f43aba'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '2b219d6da1d5976243b4b32e59f43aba'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Excessive rainfall'),
            ('B', 'Deforestation of catchments'),
            ('C', 'Use of chemical fertilisers'),
            ('D', 'Over-irrigation and poor drainage')
           ) as v(label, option_text)
 where q.question_hash = '2b219d6da1d5976243b4b32e59f43aba'
on conflict (question_id, label) do nothing;

-- environment | pollution | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'Land degradation caused by wind and water that reduces soil fertility and leads to desertification is termed',
    'Desertification refers to the degradation of land in arid, semi-arid and dry sub-humid areas through the combined effects of climate variability and human activity, and it affects large tracts of Rajasthan.',
    'easy',
    'Standard Reference',
    null,
    '2789508463da6132067679c9b83f7e4c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '2789508463da6132067679c9b83f7e4c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Salinisation'),
            ('B', 'Desertification'),
            ('C', 'Acidification'),
            ('D', 'Eutrophication')
           ) as v(label, option_text)
 where q.question_hash = '2789508463da6132067679c9b83f7e4c'
on conflict (question_id, label) do nothing;

-- environment | pollution | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'Stubble burning of paddy crop residue in Punjab contributes to air pollution mainly by releasing',
    'Burning about five million tonnes of paddy stubble each autumn releases fine particulate matter and smoke that are transported to the National Capital Region and add to its winter smog.',
    'easy',
    'Standard Reference',
    null,
    '7e47edbe2ca1e3ad0fea3747cba191e4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '7e47edbe2ca1e3ad0fea3747cba191e4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Nitrous oxide that forms acid rain'),
            ('B', 'Unburnt hydrocarbons that form photochemical smog only'),
            ('C', 'Particulate matter and smoke that aggravate the Delhi smog'),
            ('D', 'Chlorofluorocarbons that deplete ozone')
           ) as v(label, option_text)
 where q.question_hash = '7e47edbe2ca1e3ad0fea3747cba191e4'
on conflict (question_id, label) do nothing;

-- environment | pollution | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'The decibel scale of sound intensity is',
    'Because the decibel is a logarithmic unit, a 10 dB rise doubles perceived loudness while sound energy increases tenfold, which is why small decibel differences matter for health standards.',
    'hard',
    'Standard Reference',
    null,
    'f7261c5a83b04f08b7480dba13ceb75f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'f7261c5a83b04f08b7480dba13ceb75f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Based only on sound frequency'),
            ('B', 'Based only on the loudness perceived by the human ear'),
            ('C', 'Logarithmic, so a ten decibel rise represents a tenfold increase in sound energy'),
            ('D', 'Linear, so each decibel equals a fixed fraction of sound energy')
           ) as v(label, option_text)
 where q.question_hash = 'f7261c5a83b04f08b7480dba13ceb75f'
on conflict (question_id, label) do nothing;

-- environment | pollution | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'Prolonged exposure to noise levels above 85 decibels can cause',
    'Continuous exposure above 85 dB, as in industrial shops, traffic corridors and airports, causes permanent cochlear damage and hearing loss, and also contributes to stress, insomnia and hypertension.',
    'medium',
    'Standard Reference',
    null,
    '45e5c158f4e9ad327d69c5f33bbcc4c2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '45e5c158f4e9ad327d69c5f33bbcc4c2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Noise-induced hearing loss'),
            ('B', 'Anaemia'),
            ('C', 'Diabetes'),
            ('D', 'Short-sightedness')
           ) as v(label, option_text)
 where q.question_hash = '45e5c158f4e9ad327d69c5f33bbcc4c2'
on conflict (question_id, label) do nothing;

-- environment | pollution | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'The maximum permissible level of pesticide residues in food in India is fixed by',
    'FSSAI, under the Food Safety and Standards Act, lays down the maximum residue limits and the food safety standards that regulate pesticides, heavy metals and contaminants in food.',
    'medium',
    'Standard Reference',
    null,
    '6f82e2223f91223a9d72be8fb58b4952'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '6f82e2223f91223a9d72be8fb58b4952'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Indian Council of Agricultural Research'),
            ('B', 'The Food Safety and Standards Authority of India'),
            ('C', 'The Central Drugs Control Administration'),
            ('D', 'The Bureau of Indian Standards')
           ) as v(label, option_text)
 where q.question_hash = '6f82e2223f91223a9d72be8fb58b4952'
on conflict (question_id, label) do nothing;

-- environment | pollution | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'Brick kilns in the Gangetic plain contribute to river pollution through',
    'Thousands of chimney brick kilns burn low-grade coal and release particulate matter and effluents, degrading air and water quality in the middle Ganga basin and adding to the load on the river.',
    'medium',
    'Standard Reference',
    null,
    '0adbf82d8089c5e2e90cc76b8d6a3bc5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '0adbf82d8089c5e2e90cc76b8d6a3bc5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Discharge of high volume of sewage'),
            ('B', 'Disposal of nuclear waste'),
            ('C', 'Release of ozone into the troposphere'),
            ('D', 'Emission of smoke, dust and effluents into rivers and the atmosphere')
           ) as v(label, option_text)
 where q.question_hash = '0adbf82d8089c5e2e90cc76b8d6a3bc5'
on conflict (question_id, label) do nothing;

-- environment | pollution | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'Microplastics in the marine food chain are a concern chiefly because they',
    'Particles smaller than five millimetres are taken up by zooplankton and transferred up the food web, and because they absorb persistent contaminants they can be found in the tissues of commercial fish and in human blood.',
    'medium',
    'Standard Reference',
    null,
    '303a3fc0d2f20b76df9ee9f1716d26a6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '303a3fc0d2f20b76df9ee9f1716d26a6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Increase the oxygen content of the deep ocean'),
            ('B', 'Are ingested by plankton and fish and can carry adsorbed chemicals into organisms'),
            ('C', 'Dissolve rapidly in sea water'),
            ('D', 'Raise the salinity of coastal waters')
           ) as v(label, option_text)
 where q.question_hash = '303a3fc0d2f20b76df9ee9f1716d26a6'
on conflict (question_id, label) do nothing;

-- environment | waste-management | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'waste-management'),
    'The largest single component of the municipal solid waste generated in Indian cities is the',
    'Organic waste forms the largest share of Indian municipal solid waste, often close to half the total, which is why composting and vermicomposting offer the biggest diversion from landfills.',
    'easy',
    'Standard Reference',
    null,
    '70d4311c9f69e598f91146c900e200ac'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '70d4311c9f69e598f91146c900e200ac'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Biodegradable or organic fraction such as food and garden waste'),
            ('B', 'Plastic waste'),
            ('C', 'Inert and non-recyclable material'),
            ('D', 'Glass and metal packaging')
           ) as v(label, option_text)
 where q.question_hash = '70d4311c9f69e598f91146c900e200ac'
on conflict (question_id, label) do nothing;

-- environment | waste-management | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'waste-management'),
    'The Swachh Bharat Mission for Urban Areas was launched in 2014 and its successor SBM-U 2.0 was approved in',
    'SBM-U 2.0, approved in 2021, built on the legacy of the first urban mission and focused on complete waste management, source segregation, and sustainability of the earlier achievements.',
    'medium',
    'Standard Reference',
    null,
    '3599dc4c5976a893115ebaa59b12d02c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '3599dc4c5976a893115ebaa59b12d02c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2019'),
            ('B', '2023'),
            ('C', '2021'),
            ('D', '2017')
           ) as v(label, option_text)
 where q.question_hash = '3599dc4c5976a893115ebaa59b12d02c'
on conflict (question_id, label) do nothing;

-- environment | waste-management | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'waste-management'),
    'The Swachh Bharat Mission for Gramin was launched in',
    'The rural mission launched in 2014 aimed at achieving freedom from open defecation and at providing a clean and healthy village environment through solid and liquid waste management.',
    'easy',
    'Standard Reference',
    null,
    '2a31d1d874d923aea16a6e55e959309c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '2a31d1d874d923aea16a6e55e959309c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2011'),
            ('B', '2016'),
            ('C', '2019'),
            ('D', '2014')
           ) as v(label, option_text)
 where q.question_hash = '2a31d1d874d923aea16a6e55e959309c'
on conflict (question_id, label) do nothing;

-- environment | waste-management | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'waste-management'),
    'A modern engineered landfill is distinguished from a dump by',
    'Sanitary landfills are engineered with impermeable liners, drainage and leachate treatment, and gas collection that captures methane for energy, unlike unscientific open dumping.',
    'medium',
    'Standard Reference',
    null,
    '58929bff46b7e485350180af801890e5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '58929bff46b7e485350180af801890e5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'An open burning section for residuals'),
            ('B', 'A complete absence of any fencing'),
            ('C', 'The absence of any weighing of incoming waste'),
            ('D', 'A bottom liner, leachate collection and a gas management system')
           ) as v(label, option_text)
 where q.question_hash = '58929bff46b7e485350180af801890e5'
on conflict (question_id, label) do nothing;

-- environment | waste-management | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'waste-management'),
    'Landfill gas recovered from municipal solid waste is rich in',
    'Anaerobic decomposition of organic waste in a landfill releases methane and carbon dioxide; collecting the gas prevents its escape to the atmosphere and allows it to be used for power generation.',
    'easy',
    'Standard Reference',
    null,
    '5226e19c91bde2a03b071081d87a2839'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '5226e19c91bde2a03b071081d87a2839'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Chlorine and bromine'),
            ('B', 'Methane'),
            ('C', 'Carbon dioxide and sulphur dioxide'),
            ('D', 'Nitrogen and ammonia')
           ) as v(label, option_text)
 where q.question_hash = '5226e19c91bde2a03b071081d87a2839'
on conflict (question_id, label) do nothing;

-- environment | waste-management | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'waste-management'),
    'Under the Municipal Solid Waste Rules, 2016, a waste generator is required to',
    'Rule 6 makes segregation at source the duty of the generator and the segregation of recyclables and hazardous waste the responsibility of the collector who must hand them over for processing.',
    'easy',
    'Standard Reference',
    null,
    'fa7f8e5913d6db076a8504f6075a5078'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'fa7f8e5913d6db076a8504f6075a5078'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Handle only hazardous waste'),
            ('B', 'Set up its own incineration facility'),
            ('C', 'Segregate waste at source and hand it over to the authorised waste picker or the municipal body'),
            ('D', 'Dispose of all waste in the nearest landfill without segregation')
           ) as v(label, option_text)
 where q.question_hash = 'fa7f8e5913d6db076a8504f6075a5078'
on conflict (question_id, label) do nothing;

-- environment | waste-management | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'waste-management'),
    'Under the Biomedical Waste Rules, 1998, the yellow colour coding is used for',
    'Under the colour code, yellow containers hold anatomical and soiled waste, red holds contaminated recyclable items, white holds sharps, blue holds glassware and black holds general waste.',
    'hard',
    'Standard Reference',
    null,
    '5c7b5d1a37ab69224479698ea745c4f4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '5c7b5d1a37ab69224479698ea745c4f4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Soiled, expired and chemical-contaminated waste'),
            ('B', 'Sharps including needles and blades'),
            ('C', 'Glassware and metallic body implants'),
            ('D', 'General household or office waste')
           ) as v(label, option_text)
 where q.question_hash = '5c7b5d1a37ab69224479698ea745c4f4'
on conflict (question_id, label) do nothing;

-- environment | waste-management | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'waste-management'),
    'Autoclaving is preferred over incineration for biomedical waste because it',
    'Autoclaving is a low-temperature, low-cost sterilization method preferred for wet waste, while incineration is used for anatomical waste, sharps and high-risk infectious material.',
    'medium',
    'Standard Reference',
    null,
    '96e02fd0a6df53f5a3122b0e2af67279'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '96e02fd0a6df53f5a3122b0e2af67279'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Requires no segregation of the waste'),
            ('B', 'Produces ash that can be used as manure'),
            ('C', 'Uses steam under pressure to sterilise waste at lower cost with less air pollution'),
            ('D', 'Burns waste at very high temperatures')
           ) as v(label, option_text)
 where q.question_hash = '96e02fd0a6df53f5a3122b0e2af67279'
on conflict (question_id, label) do nothing;

-- environment | waste-management | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'waste-management'),
    'The Plastic Packaging Rules, notified in 2022, extend to India the concept of',
    'The rules shift responsibility for managing packaging waste to producers and brand owners through EPR, with minimum recycling and reuse obligations and a ban on identified single-use items.',
    'medium',
    'Standard Reference',
    null,
    '90ee3db427d5be08d919e195e50db56a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '90ee3db427d5be08d919e195e50db56a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Complete ban on all plastic packaging'),
            ('B', 'Deposit of packaging waste in municipal bins'),
            ('C', 'Import duties on plastic film'),
            ('D', 'Extended producer responsibility for packaging waste with specified recycling targets')
           ) as v(label, option_text)
 where q.question_hash = '90ee3db427d5be08d919e195e50db56a'
on conflict (question_id, label) do nothing;

-- environment | waste-management | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'waste-management'),
    'Producers and importers under the plastic waste rules have to register their entities on the portal of',
    'Registration on the CPCB portal enables producers to fulfil their extended producer responsibility obligations through the collection centres and registered recyclers of the system.',
    'hard',
    'CPCB',
    null,
    '2a409da9fb84664e08d76d47c94b37d9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '2a409da9fb84664e08d76d47c94b37d9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Central Pollution Control Board'),
            ('B', 'The Reserve Bank of India'),
            ('C', 'The Bureau of Energy Efficiency'),
            ('D', 'The Unique Identification Authority of India')
           ) as v(label, option_text)
 where q.question_hash = '2a409da9fb84664e08d76d47c94b37d9'
on conflict (question_id, label) do nothing;

-- environment | waste-management | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'waste-management'),
    'The core obligation of extended producer responsibility for electronic waste in India is that',
    'Under the E-waste Rules, 2016 producers are responsible for the end-of-life management of their equipment through collection centres and registered recyclers, and for achieving prescribed recycling targets.',
    'medium',
    'Standard Reference',
    null,
    'c5398dafa16fc4a46d3b40a56203ef49'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'c5398dafa16fc4a46d3b40a56203ef49'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The government funds the recycling of electronics'),
            ('B', 'Producers finance the collection and recycling of their products at the end of their life'),
            ('C', 'Municipalities dispose of all e-waste in landfills'),
            ('D', 'Consumers deposit old appliances in the nearest waste bin')
           ) as v(label, option_text)
 where q.question_hash = 'c5398dafa16fc4a46d3b40a56203ef49'
on conflict (question_id, label) do nothing;

-- environment | waste-management | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'waste-management'),
    'The E-waste Rules, 2016 define e-waste as',
    'E-waste covers discarded electrical and electronic equipment, including computers, televisions, appliances and components, whether or not it is reusable, and excludes some categories of used equipment.',
    'easy',
    'Standard Reference',
    null,
    '87bd9988a7dfafef4646f81161865b5f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '87bd9988a7dfafef4646f81161865b5f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'All household plastic containers'),
            ('B', 'Battery waste from lead acid accumulators only'),
            ('C', 'Waste generated by the electronics industry only'),
            ('D', 'Electrical and electronic equipment that has become unusable or has become scrap')
           ) as v(label, option_text)
 where q.question_hash = '87bd9988a7dfafef4646f81161865b5f'
on conflict (question_id, label) do nothing;

-- environment | waste-management | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'waste-management'),
    'Lead acid battery recycling in India is regulated under the',
    'The 2022 battery rules bring all battery chemistries under producer responsibility, with collection centres and registered recyclers, and prohibit the informal practices that caused lead poisoning.',
    'medium',
    'Standard Reference',
    null,
    'dcb3206437d0800a99680de7d0d80525'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'dcb3206437d0800a99680de7d0d80525'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Hazardous Waste Rules, 1989 only'),
            ('B', 'Biomedical Waste Rules, 1998'),
            ('C', 'Used Battery (Management and Handling) Rules, 2022'),
            ('D', 'E-waste Rules, 2016 only')
           ) as v(label, option_text)
 where q.question_hash = 'dcb3206437d0800a99680de7d0d80525'
on conflict (question_id, label) do nothing;

-- environment | waste-management | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'waste-management'),
    'An industrial unit generating hazardous waste in India must obtain consent from the',
    'Consent for establishing and operating from the state board and consent to operate are mandatory, and the unit must also set up an in-house collection, storage and treatment facility for the hazardous waste.',
    'medium',
    'Standard Reference',
    null,
    '769753951169041dbb3618197f40422c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '769753951169041dbb3618197f40422c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'State Pollution Control Board for establishing and operating the unit'),
            ('B', 'Central Pollution Control Board only'),
            ('C', 'Municipal corporation of the locality'),
            ('D', 'District collector')
           ) as v(label, option_text)
 where q.question_hash = '769753951169041dbb3618197f40422c'
on conflict (question_id, label) do nothing;

-- environment | waste-management | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'waste-management'),
    'Treated sewage water is increasingly reused in Indian cities for',
    'Reuse of treated wastewater for non-potable purposes reduces the stress on freshwater sources and the load on sewer networks, and is encouraged under the water reuse guidelines.',
    'easy',
    'Standard Reference',
    null,
    '37938ae4bcc1995a07f013301ddf87e7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '37938ae4bcc1995a07f013301ddf87e7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Discharging into the sea'),
            ('B', 'Irrigation, industrial use and flushing, conserving freshwater for drinking'),
            ('C', 'Direct potable use without any further treatment'),
            ('D', 'Filling of swimming pools only')
           ) as v(label, option_text)
 where q.question_hash = '37938ae4bcc1995a07f013301ddf87e7'
on conflict (question_id, label) do nothing;

-- environment | waste-management | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'waste-management'),
    'Decentralised wastewater treatment is preferred in small towns and peri-urban settlements because it',
    'Decentralised plants such as packaged treatment units are economical for scattered settlements, reduce conveyance losses and improve the recovery of water and nutrients close to the source.',
    'medium',
    'Standard Reference',
    null,
    '1d5fcc16b19c18a5c83cc39ef724e34a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '1d5fcc16b19c18a5c83cc39ef724e34a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Eliminates the need for septic tanks'),
            ('B', 'Avoids the cost of laying long sewer networks and treats sewage close to where it is generated'),
            ('C', 'Requires more land than a centralised plant'),
            ('D', 'Produces potable water directly')
           ) as v(label, option_text)
 where q.question_hash = '1d5fcc16b19c18a5c83cc39ef724e34a'
on conflict (question_id, label) do nothing;

-- environment | waste-management | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'waste-management'),
    'Sewage sludge, a by-product of wastewater treatment, must be managed by',
    'Sludge may carry heavy metals and pathogens, so it needs stabilisation, hygienisation and controlled disposal or agricultural use, with the details laid down in the sludge management guidelines.',
    'medium',
    'Standard Reference',
    null,
    'be6b718187737880e118d5db56eadf78'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'be6b718187737880e118d5db56eadf78'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Being dried and used without any testing'),
            ('B', 'Being mixed with household solid waste'),
            ('C', 'Ensuring safe treatment, disposal or utilisation as fertiliser with monitoring for contaminants'),
            ('D', 'Being dumped in any nearby vacant land')
           ) as v(label, option_text)
 where q.question_hash = 'be6b718187737880e118d5db56eadf78'
on conflict (question_id, label) do nothing;

-- environment | waste-management | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'waste-management'),
    'Refuse derived fuel is produced from',
    'RDF is made from dried and shredded non-biodegradable waste such as plastics and paper and is used in cement kilns and industrial boilers as a fuel in place of coal.',
    'medium',
    'Standard Reference',
    null,
    '8946793bc6d2b0b8509ea108c0b915b8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '8946793bc6d2b0b8509ea108c0b915b8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Raw sewage sludge'),
            ('B', 'Ash from incinerators'),
            ('C', 'E-waste cables'),
            ('D', 'The combustible fraction of sorted municipal solid waste processed and pelletised')
           ) as v(label, option_text)
 where q.question_hash = '8946793bc6d2b0b8509ea108c0b915b8'
on conflict (question_id, label) do nothing;

-- environment | waste-management | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'waste-management'),
    'Pyrolysis and gasification are advanced methods of plastic waste treatment that work by',
    'Both processes heat plastic in limited or no oxygen, converting it into synthesis gas, liquid fuel and char, though the emission profile of pyrolysis plants requires strict monitoring.',
    'medium',
    'Standard Reference',
    null,
    '74cd2443d1b9963a4e2e5e4c74ebadc8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '74cd2443d1b9963a4e2e5e4c74ebadc8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Heating waste in the absence of oxygen to produce fuel gas, oil and char'),
            ('B', 'Burning waste at high temperature with full oxygen supply'),
            ('C', 'Dissolving plastics in organic solvents'),
            ('D', 'Mechanical shredding of plastics only')
           ) as v(label, option_text)
 where q.question_hash = '74cd2443d1b9963a4e2e5e4c74ebadc8'
on conflict (question_id, label) do nothing;

-- environment | waste-management | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'waste-management'),
    'Composting converts biodegradable waste into',
    'Composting is an aerobic process in which microorganisms decompose the organic fraction into a stable humus material, while anaerobic digestion of the same waste yields biogas and a digestate.',
    'easy',
    'Standard Reference',
    null,
    '8ead685b575eaa539d3365c466c2c3f7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '8ead685b575eaa539d3365c466c2c3f7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A fuel for power generation'),
            ('B', 'A hazardous residue for incineration'),
            ('C', 'A liquid that can be discharged into rivers'),
            ('D', 'A stable humus-rich material that improves soil fertility')
           ) as v(label, option_text)
 where q.question_hash = '8ead685b575eaa539d3365c466c2c3f7'
on conflict (question_id, label) do nothing;

-- environment | waste-management | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'waste-management'),
    'Compostable plastics intended for food packaging in India have to conform to standards such as',
    'Compostable plastics must meet BIS specifications and the IS 17088 standard, and certified compostable items are accepted in the organic waste stream only if they can be composted in the specified facilities.',
    'hard',
    'BIS',
    null,
    'a20088cac6ce906f73435271f5801163'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a20088cac6ce906f73435271f5801163'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'IS 17088 and the relevant BIS specifications for compostable plastics'),
            ('B', 'The Standards and Labelling Rules for packaged commodities only'),
            ('C', 'The Energy Conservation Act norms'),
            ('D', 'The Automobile Standards Rules')
           ) as v(label, option_text)
 where q.question_hash = 'a20088cac6ce906f73435271f5801163'
on conflict (question_id, label) do nothing;

-- environment | ocean-and-marine | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ocean-and-marine'),
    'The pelagic zone of the ocean is subdivided vertically into which main layers?',
    'The pelagic realm is divided by depth and light into the sunlit epipelagic, twilight mesopelagic, bathypelagic, abyssopelagic and the hadal zone of the trenches.',
    'medium',
    'Standard Reference',
    null,
    'a1b73b471a9e4943995816020112447b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a1b73b471a9e4943995816020112447b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Littoral, neritic and oceanic zones'),
            ('B', 'Epipelagic, mesopelagic, bathypelagic, abyssopelagic and hadal zones'),
            ('C', 'Intertidal, subtidal and abyssal zones only'),
            ('D', 'Continental shelf, continental slope and trench only')
           ) as v(label, option_text)
 where q.question_hash = 'a1b73b471a9e4943995816020112447b'
on conflict (question_id, label) do nothing;

-- environment | ocean-and-marine | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ocean-and-marine'),
    'Organisms of the ocean are broadly grouped as plankton, nekton and benthos according to',
    'Plankton float passively with the water, nekton actively swim and can overcome currents, and benthos live on or in the sea floor; the first two belong to the pelagic realm and benthos to the benthic realm.',
    'easy',
    'NCERT Class XI (Biology)',
    null,
    '1b1fd9f7ca8cf12ddee4d5b7e8b16461'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '1b1fd9f7ca8cf12ddee4d5b7e8b16461'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The salinity of the water they inhabit'),
            ('B', 'The depth of the sea in which they live'),
            ('C', 'Whether they drift with the currents, swim actively, or live on the sea floor'),
            ('D', 'Their size and feeding habit')
           ) as v(label, option_text)
 where q.question_hash = '1b1fd9f7ca8cf12ddee4d5b7e8b16461'
on conflict (question_id, label) do nothing;

-- environment | ocean-and-marine | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ocean-and-marine'),
    'Spring tides and neap tides differ because',
    'When the sun, moon and earth are in a straight line the tidal forces reinforce and the range is greatest, giving spring tides; at right angles the forces partly cancel and neap tides result.',
    'medium',
    'NCERT Class XI (Biology)',
    null,
    '70510c8198fef2169230b4169ff0f240'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '70510c8198fef2169230b4169ff0f240'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Neap tides are caused by ocean currents'),
            ('B', 'Spring tides occur only in the Southern Hemisphere'),
            ('C', 'Spring tides occur at new and full moon when sun and moon pull together, while neap tides occur at quarter moons'),
            ('D', 'Spring tides occur only in spring season')
           ) as v(label, option_text)
 where q.question_hash = '70510c8198fef2169230b4169ff0f240'
on conflict (question_id, label) do nothing;

-- environment | ocean-and-marine | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ocean-and-marine'),
    'El Nino is associated with',
    'During an El Nino the trade winds weaken and warm water shifts eastwards, which can disrupt the monsoon rainfall over India and alter weather patterns across South Asia.',
    'medium',
    'Standard Reference',
    null,
    '6d383c60133b6face040aaeb0d4f6689'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '6d383c60133b6face040aaeb0d4f6689'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Weakening of the trade winds and unusual warming of the central and eastern equatorial Pacific'),
            ('B', 'Unusual cooling of the Pacific Ocean'),
            ('C', 'The northward migration of the ITCZ'),
            ('D', 'A strengthening of the Indian Ocean Dipole')
           ) as v(label, option_text)
 where q.question_hash = '6d383c60133b6face040aaeb0d4f6689'
on conflict (question_id, label) do nothing;

-- environment | ocean-and-marine | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ocean-and-marine'),
    'The Indian Ocean Dipole is the difference in sea surface temperature anomaly between',
    'A positive dipole, with the western Indian Ocean warmer than the eastern, generally supports a stronger monsoon, while a negative dipole tends to weaken it.',
    'hard',
    'Standard Reference',
    null,
    '7c55b666b6e5b35a1406d7ed6a26ea22'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '7c55b666b6e5b35a1406d7ed6a26ea22'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Southern and the Northern Atlantic'),
            ('B', 'The western and the eastern Indian Ocean'),
            ('C', 'The Arabian Sea and the Bay of Bengal'),
            ('D', 'The equatorial Pacific and the Indian Ocean')
           ) as v(label, option_text)
 where q.question_hash = '7c55b666b6e5b35a1406d7ed6a26ea22'
on conflict (question_id, label) do nothing;

-- environment | ocean-and-marine | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ocean-and-marine'),
    'The Great Pacific Garbage Patch is a concentration of',
    'Currents concentrate floating plastic and fishing gear in the calm centre of the great subtropical gyres, forming large debris zones in the North and South Pacific.',
    'medium',
    'Standard Reference',
    null,
    '3d46fd79f439e917cb933b5e4f544573'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '3d46fd79f439e917cb933b5e4f544573'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Volcanic ash in the deep sea trenches'),
            ('B', 'Coral fragments near the equator'),
            ('C', 'Ice sheets in the Arctic Ocean'),
            ('D', 'Marine debris and microplastics in the North Pacific subtropical gyre')
           ) as v(label, option_text)
 where q.question_hash = '3d46fd79f439e917cb933b5e4f544573'
on conflict (question_id, label) do nothing;

-- environment | ocean-and-marine | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ocean-and-marine'),
    'Dugongs and manatees are protected under',
    'Dugongs are listed in Appendix I of the CMS and also in Annex I of the EU Habitats Directive, and Indian populations are protected along the Gulf of Mannar and the Gulf of Kachchh.',
    'hard',
    'Standard Reference',
    null,
    '5c1a978877d4ddc6af301796e69ef6a4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '5c1a978877d4ddc6af301796e69ef6a4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Convention on Migratory Species'),
            ('B', 'The Basel Convention'),
            ('C', 'The Rotterdam Convention'),
            ('D', 'The Vienna Convention')
           ) as v(label, option_text)
 where q.question_hash = '5c1a978877d4ddc6af301796e69ef6a4'
on conflict (question_id, label) do nothing;

-- environment | ocean-and-marine | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ocean-and-marine'),
    'Avicennia trees in mangrove swamps are characterised by',
    'Avicennia species develop pencil-like pneumatophores to absorb oxygen in waterlogged anaerobic mud, while Rhizophora species produce prominent stilt roots.',
    'hard',
    'Standard Reference',
    null,
    '047522f07d9dd50a3fed6e7dce35ce6b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '047522f07d9dd50a3fed6e7dce35ce6b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Buttress roots like those of the teak'),
            ('B', 'Pneumatophores, or breathing roots, that grow vertically out of the mud'),
            ('C', 'Stilt roots that prop up the trunk'),
            ('D', 'Viviparous seeds germinating on the parent tree')
           ) as v(label, option_text)
 where q.question_hash = '047522f07d9dd50a3fed6e7dce35ce6b'
on conflict (question_id, label) do nothing;

-- environment | ocean-and-marine | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ocean-and-marine'),
    'Rhizophora species of mangrove are notable for',
    'Viviparous germination allows the propagule to drop and establish in the mud quickly, a characteristic adaptation of the Rhizophora family of mangroves.',
    'medium',
    'Standard Reference',
    null,
    'e04c5d49e1f0181f4ecf77ffe6b5e2c9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e04c5d49e1f0181f4ecf77ffe6b5e2c9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Freshwater floating leaves'),
            ('B', 'Aerial roots that absorb rainfall'),
            ('C', 'Vivipary, in which the seed germinate while still attached to the parent plant'),
            ('D', 'Pneumatophores for breathing')
           ) as v(label, option_text)
 where q.question_hash = 'e04c5d49e1f0181f4ecf77ffe6b5e2c9'
on conflict (question_id, label) do nothing;

-- environment | ocean-and-marine | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ocean-and-marine'),
    'According to the IPCC Sixth Assessment Report, global mean sea level is projected to rise by 2100 relative to 1900 by about',
    'The AR6 projects a likely range of 0.28 to 0.55 metres of rise by 2100, with much higher values possible under a very high emissions scenario, posing serious risks to coastal cities and low-lying islands.',
    'hard',
    'IPCC AR6',
    2021,
    '66c781f987a10a87e539555249d07cf0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '66c781f987a10a87e539555249d07cf0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '0.02 to 0.05 metres'),
            ('B', '1.20 to 1.80 metres'),
            ('C', '5 to 10 metres'),
            ('D', '0.28 to 0.55 metres')
           ) as v(label, option_text)
 where q.question_hash = '66c781f987a10a87e539555249d07cf0'
on conflict (question_id, label) do nothing;

-- environment | ocean-and-marine | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ocean-and-marine'),
    'Marine fisheries in the territorial waters of India are regulated under the',
    'The Marine Fisheries Act of 1957 provides for the conservation of marine fish and for the regulation of fishing, and it was later supplemented by the Coastal Zone Management rules.',
    'medium',
    'Standard Reference',
    null,
    '3faa270c3c11a2c8e0e94f2771183936'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '3faa270c3c11a2c8e0e94f2771183936'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Marine Fisheries Act, 1957'),
            ('B', 'The Wildlife Protection Act, 1972'),
            ('C', 'The Coastal Zone Regulation Management Act, 2010'),
            ('D', 'The Merchant Shipping Act, 1958')
           ) as v(label, option_text)
 where q.question_hash = '3faa270c3c11a2c8e0e94f2771183936'
on conflict (question_id, label) do nothing;

-- environment | ocean-and-marine | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ocean-and-marine'),
    'Seaweed farming in India is being promoted mainly for',
    'Seaweed culture in the Gulf of Mannar, Gujarat and the Andaman region yields food, industrial colloids and biofertilisers while providing nursery habitat and taking up carbon dioxide.',
    'medium',
    'Standard Reference',
    null,
    '528768f78f4cf79bff79202810ad87ff'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '528768f78f4cf79bff79202810ad87ff'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Replacing mangrove forests'),
            ('B', 'Controlling coastal erosion'),
            ('C', 'Sustainable aquaculture, carbon sequestration and the production of agar, alginate and biofertilisers'),
            ('D', 'Reducing the salinity of coastal waters')
           ) as v(label, option_text)
 where q.question_hash = '528768f78f4cf79bff79202810ad87ff'
on conflict (question_id, label) do nothing;

-- environment | ocean-and-marine | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ocean-and-marine'),
    'Coastal erosion in India is aggravated by',
    'Sediment starvation from river-side mining and barrages, together with hard structures that interrupt longshore drift and rising seas, has caused severe retreat of beaches such as those in Odisha and Kerala.',
    'medium',
    'Standard Reference',
    null,
    '61b960487f41308698ee1ff0ffbcab31'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '61b960487f41308698ee1ff0ffbcab31'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Reduction of cyclone frequency'),
            ('B', 'Sand mining in rivers, construction of ports and dams that starve the coast of sediment, and rising sea levels'),
            ('C', 'The presence of mangroves'),
            ('D', 'Restoration of beach vegetation')
           ) as v(label, option_text)
 where q.question_hash = '61b960487f41308698ee1ff0ffbcab31'
on conflict (question_id, label) do nothing;

-- environment | ocean-and-marine | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ocean-and-marine'),
    'A marine heatwave is defined as',
    'Marine heatwaves are sustained anomalies in sea surface temperature that cause coral bleaching, mass mortality of plankton and fish, and amplify the impacts of marine heatwaves on fisheries.',
    'medium',
    'Standard Reference',
    null,
    '4f9b4440b439ce6627979603acee6759'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '4f9b4440b439ce6627979603acee6759'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Any period when a cyclone is active in the ocean'),
            ('B', 'The warming of the deep ocean caused by geothermal vents'),
            ('C', 'A rapid rise in sea level along a coast'),
            ('D', 'A prolonged period of unusually warm sea surface temperature in a particular region')
           ) as v(label, option_text)
 where q.question_hash = '4f9b4440b439ce6627979603acee6759'
on conflict (question_id, label) do nothing;

-- environment | ocean-and-marine | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ocean-and-marine'),
    'Ocean acidification particularly threatens shell-forming organisms such as pteropods and oysters because',
    'Carbonic acid lowers the pH and reduces carbonate ions, so calcifiers must expend more energy to build and maintain their shells, which weakens the marine food web.',
    'hard',
    'Standard Reference',
    null,
    '039585785f44852d12f597a64c4490dd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '039585785f44852d12f597a64c4490dd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Lower carbonate ion availability makes it harder to build calcium carbonate shells and skeletons'),
            ('B', 'Warmer water dissolves their shells directly'),
            ('C', 'Higher salinity prevents calcification'),
            ('D', 'Rising oxygen levels dissolve calcium carbonate')
           ) as v(label, option_text)
 where q.question_hash = '039585785f44852d12f597a64c4490dd'
on conflict (question_id, label) do nothing;

-- environment | ocean-and-marine | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ocean-and-marine'),
    'The biological pump in the ocean refers to the',
    'Sinking faecal pellets and dead plankton carry carbon into the deep ocean, and the biological carbon pump is one of the largest natural sinks of atmospheric carbon dioxide.',
    'hard',
    'Standard Reference',
    null,
    'a9bb3690569c3ddd93cb0d2b0ae1f19c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'a9bb3690569c3ddd93cb0d2b0ae1f19c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The pumping of water by whales and dolphins'),
            ('B', 'The circulation of heat from the equator to the poles'),
            ('C', 'The transfer of carbon from the surface to the deep ocean through sinking organic particles'),
            ('D', 'The movement of nutrients from the deep sea to the surface by upwelling')
           ) as v(label, option_text)
 where q.question_hash = 'a9bb3690569c3ddd93cb0d2b0ae1f19c'
on conflict (question_id, label) do nothing;

-- environment | ocean-and-marine | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ocean-and-marine'),
    'The moratorium on commercial whaling was imposed by',
    'The IWC agreed a moratorium in 1986 on commercial whaling and the killing of whales for research, which was widely observed by coastal states, though Japan and Iceland continue limited coastal whaling.',
    'medium',
    'Standard Reference',
    null,
    '33c2f6e6354246cbeae2b7d98c660fa7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '33c2f6e6354246cbeae2b7d98c660fa7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Convention on Biological Diversity in 1994'),
            ('B', 'The International Whaling Commission in 1986'),
            ('C', 'The United Nations Environment Programme in 1992'),
            ('D', 'The IMO in 1980')
           ) as v(label, option_text)
 where q.question_hash = '33c2f6e6354246cbeae2b7d98c660fa7'
on conflict (question_id, label) do nothing;

-- environment | ocean-and-marine | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ocean-and-marine'),
    'The largest share of the world''s evaporation from water surfaces comes from',
    'The oceans account for about 86 per cent of global evaporation and about 70 per cent of global precipitation, and therefore dominate the water cycle of the planet.',
    'medium',
    'Standard Reference',
    null,
    'ab44155f459c3d2737a2fc2d68d22d34'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'ab44155f459c3d2737a2fc2d68d22d34'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rainforests'),
            ('B', 'Glacier and snow melt'),
            ('C', 'Inland lakes and reservoirs'),
            ('D', 'The oceans')
           ) as v(label, option_text)
 where q.question_hash = 'ab44155f459c3d2737a2fc2d68d22d34'
on conflict (question_id, label) do nothing;

-- environment | climate-change | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'climate-change'),
    'The new collective quantified goal agreed at COP29 in Baku in 2024 commits developed countries to',
    'The NCQG raises the earlier 100 billion dollar annual goal to at least 300 billion dollars a year by 2035, while calling for efforts to scale up finance from all sources to 1.3 trillion dollars.',
    'medium',
    'Standard Reference',
    null,
    '5fe6737fa9204620af49ab19bf1075ad'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '5fe6737fa9204620af49ab19bf1075ad'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Provide 100 billion dollars a year until 2020'),
            ('B', 'Transfer 500 billion dollars a year immediately'),
            ('C', 'Cancel all climate finance to developing countries'),
            ('D', 'Mobilise at least 300 billion dollars a year by 2035 for climate finance to developing countries')
           ) as v(label, option_text)
 where q.question_hash = '5fe6737fa9204620af49ab19bf1075ad'
on conflict (question_id, label) do nothing;

-- environment | climate-change | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'climate-change'),
    'The Conference of the Parties serving as the meeting of the Parties to the Paris Agreement is known as',
    'The CMA is the supreme body of the Paris Agreement and its decisions are taken at the conference of the parties, with the first CMA held in Paris in 2015 alongside COP21.',
    'hard',
    'Standard Reference',
    null,
    'a3542c35da2f011daf2c2fb92c1b8229'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a3542c35da2f011daf2c2fb92c1b8229'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The CMA'),
            ('B', 'The COP'),
            ('C', 'The CDM'),
            ('D', 'The GEF Assembly')
           ) as v(label, option_text)
 where q.question_hash = 'a3542c35da2f011daf2c2fb92c1b8229'
on conflict (question_id, label) do nothing;

-- environment | climate-change | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'climate-change'),
    'Under the Paris Agreement, the first Biennial Transparency Reports were due to be submitted by',
    'Biennial Transparency Reports, which replace the reporting obligations of the UNFCCC, were due on 31 December 2024, with the first global synthesis of these reports published thereafter.',
    'hard',
    'Standard Reference',
    null,
    'a882543d437f95b3b90eb34a4dd4ea15'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'a882543d437f95b3b90eb34a4dd4ea15'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '31 December 2022'),
            ('B', '31 December 2026'),
            ('C', '31 December 2024'),
            ('D', '31 December 2020')
           ) as v(label, option_text)
 where q.question_hash = 'a882543d437f95b3b90eb34a4dd4ea15'
on conflict (question_id, label) do nothing;

-- environment | climate-change | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'climate-change'),
    'The Green Climate Fund, the main UN body funding climate adaptation and mitigation in developing countries, was established at',
    'The GCF was established at COP16 in Cancun in 2010 to channel and manage international climate finance, with the Adaptation Fund having been created earlier under the UNFCCC at Copenhagen.',
    'hard',
    'Standard Reference',
    null,
    'c564238fb9b5818a399cdc78914e76a1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'c564238fb9b5818a399cdc78914e76a1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'COP19 in Warsaw, Poland'),
            ('B', 'COP16 in Cancun, Mexico'),
            ('C', 'COP10 in Copenhagen, Denmark'),
            ('D', 'COP21 in Paris, France')
           ) as v(label, option_text)
 where q.question_hash = 'c564238fb9b5818a399cdc78914e76a1'
on conflict (question_id, label) do nothing;

-- environment | climate-change | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'climate-change'),
    'The Adaptation Fund of the UNFCCC was established in 2009 at',
    'The Adaptation Fund was established at COP10 in Copenhagen and was operationalised at COP16 in Cancun, and it is funded mainly by a share of proceeds from the carbon market.',
    'hard',
    'Standard Reference',
    null,
    '1f6b70fa4664fc14ce37722073f3aee7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '1f6b70fa4664fc14ce37722073f3aee7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'COP10 in Copenhagen'),
            ('B', 'COP15 in Copenhagen'),
            ('C', 'COP16 in Cancun'),
            ('D', 'COP17 in Durban')
           ) as v(label, option_text)
 where q.question_hash = '1f6b70fa4664fc14ce37722073f3aee7'
on conflict (question_id, label) do nothing;

-- environment | climate-change | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'climate-change'),
    'The Emissions Gap Report is published by',
    'UNEP''s annual Emissions Gap Report quantifies the gap between national pledges and the emission reductions needed to meet the Paris temperature goals, while the IEA publishes the Energy Outlook.',
    'medium',
    'UNEP',
    null,
    '3935db24ffd042699d8e0dbd07b7cf44'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '3935db24ffd042699d8e0dbd07b7cf44'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The International Energy Agency'),
            ('B', 'The World Bank'),
            ('C', 'The OECD'),
            ('D', 'The United Nations Environment Programme')
           ) as v(label, option_text)
 where q.question_hash = '3935db24ffd042699d8e0dbd07b7cf44'
on conflict (question_id, label) do nothing;

-- environment | climate-change | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'climate-change'),
    'The Adaptation Gap Report of the UNEP assesses',
    'The report shows that international public adaptation finance to developing countries remains far below the levels required, and it is published alongside the Emissions Gap Report.',
    'medium',
    'UNEP',
    null,
    '235b3a50de64e4d734a27ff738ac44a4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '235b3a50de64e4d734a27ff738ac44a4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The trend in global renewable capacity'),
            ('B', 'The gap between the adaptation needs of developing countries and the finance available for adaptation'),
            ('C', 'The difference between the emissions of developed and developing countries'),
            ('D', 'The pace of growth of the global carbon market')
           ) as v(label, option_text)
 where q.question_hash = '235b3a50de64e4d734a27ff738ac44a4'
on conflict (question_id, label) do nothing;

-- environment | climate-change | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'climate-change'),
    'Measurement, reporting and verification in the climate regime refers to',
    'MRV underpins the credibility of the Paris Agreement, since the comparability and transparency of national greenhouse gas data determine whether the global stocktake can assess collective progress.',
    'medium',
    'Standard Reference',
    null,
    '29b24e23763498b61d7da16df4a9c04e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '29b24e23763498b61d7da16df4a9c04e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The verification of carbon offsets by NGOs'),
            ('B', 'The peer review of national adaptation plans'),
            ('C', 'The system used to assess whether reported emissions and progress are accurate'),
            ('D', 'The financial audit of adaptation funds')
           ) as v(label, option_text)
 where q.question_hash = '29b24e23763498b61d7da16df4a9c04e'
on conflict (question_id, label) do nothing;

-- environment | climate-change | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'climate-change'),
    'India is the third largest emitter of greenhouse gases in the world after',
    'In absolute terms India ranks after China and the United States, though its per capita emissions are among the lowest, which is why equity and capacity are central to the CBDR principle.',
    'medium',
    'Standard Reference',
    null,
    'f21f20b83cca97acf70f31f26ded2d54'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f21f20b83cca97acf70f31f26ded2d54'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'China and Brazil'),
            ('B', 'China and the United States'),
            ('C', 'China and the European Union'),
            ('D', 'The United States and Russia')
           ) as v(label, option_text)
 where q.question_hash = 'f21f20b83cca97acf70f31f26ded2d54'
on conflict (question_id, label) do nothing;

-- environment | climate-change | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'climate-change'),
    'A major argument in favour of India''s climate obligations is that',
    'India''s per capita emissions of about two tonnes of carbon dioxide a year are a fraction of the global average, and its growth in emissions continues from a low base, which is the basis of its equity argument.',
    'easy',
    'Standard Reference',
    null,
    '3b758bce42e1bc5a343b96e03915d425'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '3b758bce42e1bc5a343b96e03915d425'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Its per capita greenhouse gas emissions are far below the global average'),
            ('B', 'It is already the world''s largest emitter'),
            ('C', 'It has no adaptation needs'),
            ('D', 'Its emissions have already stopped growing')
           ) as v(label, option_text)
 where q.question_hash = '3b758bce42e1bc5a343b96e03915d425'
on conflict (question_id, label) do nothing;

-- environment | climate-change | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'climate-change'),
    'The ocean has absorbed more than ninety per cent of the excess heat trapped in the climate system because',
    'The huge thermal inertia of the oceans has buffered the rise in atmospheric temperature, at the cost of marine heatwaves, sea level rise, and the loss of coral reefs and ice shelves.',
    'medium',
    'IPCC AR6',
    2021,
    'e3461516f460cd7e142b9e3fb4444cee'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e3461516f460cd7e142b9e3fb4444cee'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ice caps melt and release cold water'),
            ('B', 'Deep sea vents release heat'),
            ('C', 'Rainfall absorbs the heat directly'),
            ('D', 'Water has a high heat capacity and the world''s oceans cover about seventy per cent of the surface')
           ) as v(label, option_text)
 where q.question_hash = 'e3461516f460cd7e142b9e3fb4444cee'
on conflict (question_id, label) do nothing;

-- environment | climate-change | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'climate-change'),
    'The National Action Plan on Climate Change for India was prepared under the',
    'The NAPCC was prepared in the light of the National Environment Policy of 2006 and launched in 2008, and it set out eight missions to address climate change in the country.',
    'medium',
    'Standard Reference',
    null,
    '9be97af4170ac1f00c74488760f8dbf5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '9be97af4170ac1f00c74488760f8dbf5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'National Forest Policy, 1988'),
            ('B', 'National Urban Sanitation Policy, 2008'),
            ('C', 'National Environment Policy, 2006 and launched in 2008'),
            ('D', 'National Water Policy, 2012')
           ) as v(label, option_text)
 where q.question_hash = '9be97af4170ac1f00c74488760f8dbf5'
on conflict (question_id, label) do nothing;

-- environment | climate-change | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'climate-change'),
    'State Action Plans on Climate Change in India are prepared by',
    'SAPCCs are framed around the eight NAPCC missions and the national targets, with each state mapping its own vulnerabilities, mitigation options and adaptation plans.',
    'hard',
    'Standard Reference',
    null,
    'c648a5a01ae7d46dabacf82fc5c690f1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'c648a5a01ae7d46dabacf82fc5c690f1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'State governments in consultation with the Ministry of Environment, Forest and Climate Change and the Ministry of Earth Sciences'),
            ('B', 'The central government alone'),
            ('C', 'The National Green Tribunal'),
            ('D', 'The Reserve Bank of India')
           ) as v(label, option_text)
 where q.question_hash = 'c648a5a01ae7d46dabacf82fc5c690f1'
on conflict (question_id, label) do nothing;

-- environment | climate-change | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'climate-change'),
    'The Clean Development Mechanism under the Kyoto Protocol allows',
    'Under the CDM, an annex I country can gain CERs from projects such as renewable energy or afforestation in a developing country and apply them towards its Kyoto commitment.',
    'medium',
    'Standard Reference',
    null,
    '20a311af96fb960968d42bb58716d3a4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '20a311af96fb960968d42bb58716d3a4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Developing countries to sell carbon credits without any monitoring'),
            ('B', 'Any country to offset its emissions without limits'),
            ('C', 'Companies to claim carbon neutrality without verification'),
            ('D', 'Industrialised countries to earn carbon credits from emission reduction projects in developing countries')
           ) as v(label, option_text)
 where q.question_hash = '20a311af96fb960968d42bb58716d3a4'
on conflict (question_id, label) do nothing;

-- environment | climate-change | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'climate-change'),
    'The Article 6.4 mechanism of the Paris Agreement creates',
    'Article 6.4 sets out a supervisory body and an independent standard-setting body to certify emission reduction projects, while Article 6.2 allows trading between countries without a centralised mechanism.',
    'hard',
    'Standard Reference',
    null,
    'e25d7ac34f5cf8da370f5f38dd97c41c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e25d7ac34f5cf8da370f5f38dd97c41c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A fund for loss and damage'),
            ('B', 'A registry of carbon sinks under the Ramsar Convention'),
            ('C', 'A Paris Agreement Crediting Mechanism for internationally transferred mitigation outcomes'),
            ('D', 'A levy on carbon emissions of shipping')
           ) as v(label, option_text)
 where q.question_hash = 'e25d7ac34f5cf8da370f5f38dd97c41c'
on conflict (question_id, label) do nothing;

-- environment | climate-change | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'climate-change'),
    'The Carbon Credit Trading Scheme, notified in India in 2023, works through',
    'The scheme sets targets for sectors such as cement, steel, aluminium, refineries and fertilisers, with a compliance mechanism, a registry and an online trading platform for carbon credit certificates.',
    'medium',
    'PIB 2023',
    2023,
    'c61c46abb7da53420be9681826ea1e05'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'c61c46abb7da53420be9681826ea1e05'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'An auction of emission allowances by the Reserve Bank of India'),
            ('B', 'Compliance targets for energy-intensive sectors, with accredited agencies verifying emissions and issuing credits'),
            ('C', 'A voluntary carbon offset registry run by NGOs'),
            ('D', 'A direct tax on the emissions of thermal power plants')
           ) as v(label, option_text)
 where q.question_hash = 'c61c46abb7da53420be9681826ea1e05'
on conflict (question_id, label) do nothing;

-- environment | climate-change | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'climate-change'),
    'The first sovereign carbon credit sale by India, involving an eight-year agreement with Panama, is significant because',
    'The 2023 agreement under the Article 6.2 mechanism with Panama generated credits against UNFCCC-registered projects such as biofuel and mangrove restoration and helped build India''s carbon market.',
    'hard',
    'Standard Reference',
    null,
    'a76069a67a5453d87cdbb0c7fc5af5c1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a76069a67a5453d87cdbb0c7fc5af5c1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It was the world''s first carbon credit auction'),
            ('B', 'It involved the sale of carbon credits from mangrove restoration only'),
            ('C', 'It was a bilateral agreement to phase out coal'),
            ('D', 'It was the first such large-scale transaction by a country and generated internationally certified credits')
           ) as v(label, option_text)
 where q.question_hash = 'a76069a67a5453d87cdbb0c7fc5af5c1'
on conflict (question_id, label) do nothing;

-- environment | climate-change | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'climate-change'),
    'Black carbon, a short-lived climate forcing agent, is emitted chiefly from',
    'Black carbon absorbs sunlight and heats the atmosphere while also darkening snow and ice, speeding their melt; agricultural residue burning and diesel vehicles are important Indian sources.',
    'medium',
    'Standard Reference',
    null,
    'a40d9c85c5012dd4f9ed8af3fc2d6948'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a40d9c85c5012dd4f9ed8af3fc2d6948'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Incomplete burning of biomass, coal and crop residue and from diesel exhaust'),
            ('B', 'Evaporation of water from the ocean'),
            ('C', 'Reflection of sunlight off ice sheets'),
            ('D', 'Nitrification of agricultural soils')
           ) as v(label, option_text)
 where q.question_hash = 'a40d9c85c5012dd4f9ed8af3fc2d6948'
on conflict (question_id, label) do nothing;

-- environment | climate-change | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'climate-change'),
    'The major sources of methane emissions in India include',
    'Cattle, buffalo, rice paddies, municipal solid waste and sewage together account for most of India''s methane, and cutting them offers a relatively low-cost near-term reduction.',
    'medium',
    'Standard Reference',
    null,
    'e36fdf20a252f80c73b4244155b43e44'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e36fdf20a252f80c73b4244155b43e44'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Aerosols from crop burning'),
            ('B', 'Sulphur dioxide from smelters'),
            ('C', 'Enteric fermentation in livestock, paddy cultivation and landfills'),
            ('D', 'Cement kilns only')
           ) as v(label, option_text)
 where q.question_hash = 'e36fdf20a252f80c73b4244155b43e44'
on conflict (question_id, label) do nothing;

-- environment | climate-change | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'climate-change'),
    'The urban heat island effect is caused by',
    'Dense construction absorbs and re-radiates heat and reduces evapotranspirative cooling, so city centres can be several degrees warmer than the surrounding countryside, raising heat-related illness and energy demand.',
    'medium',
    'Standard Reference',
    null,
    '11277973649a62ffed50fc9b31f15d35'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '11277973649a62ffed50fc9b31f15d35'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The reduction in atmospheric humidity by air conditioning'),
            ('B', 'The replacement of vegetation and permeable surfaces by concrete and asphalt that store and release heat'),
            ('C', 'The reflection of sunlight by glass buildings only'),
            ('D', 'The increased frequency of cyclones in cities')
           ) as v(label, option_text)
 where q.question_hash = '11277973649a62ffed50fc9b31f15d35'
on conflict (question_id, label) do nothing;

-- environment | climate-change | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'climate-change'),
    'Climate-smart agriculture combines food production with',
    'Practices such as conservation agriculture, agroforestry, residue management and drip irrigation build soil carbon, cut emissions and improve the resilience of farmers to drought and heat.',
    'medium',
    'Standard Reference',
    null,
    '321a8cccc42f1ad72a8f4cf4dd96872f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '321a8cccc42f1ad72a8f4cf4dd96872f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Only higher yields from chemical inputs'),
            ('B', 'Complete dependence on groundwater irrigation'),
            ('C', 'The removal of all crop diversity'),
            ('D', 'Adaptation to climate risks, mitigation through lower emissions and improved soil carbon')
           ) as v(label, option_text)
 where q.question_hash = '321a8cccc42f1ad72a8f4cf4dd96872f'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'An ecosystem is a functional unit of:',
    'An ecosystem is a functional unit of nature where living organisms interact with each other and with the physical environment in a defined area.',
    'easy',
    'NCERT Class XII (Biology)',
    null,
    'f967d3b70b52d083aed1f56a95ab42c5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'f967d3b70b52d083aed1f56a95ab42c5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The climate of a region'),
            ('B', 'A single species in a habitat'),
            ('C', 'Biotic and abiotic components interacting in an area'),
            ('D', 'Only the plants of a forest')
           ) as v(label, option_text)
 where q.question_hash = 'f967d3b70b52d083aed1f56a95ab42c5'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'The ''biotic components'' of an ecosystem include:',
    'The biotic components are the living parts of the ecosystem, namely the producers, the consumers and the decomposers.',
    'easy',
    'NCERT Class XII (Biology)',
    null,
    '820dc5cdf0d241954a1f8694f166222f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '820dc5cdf0d241954a1f8694f166222f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sunlight, water and soil'),
            ('B', 'Producers, consumers and decomposers'),
            ('C', 'Temperature and wind'),
            ('D', 'Rock and minerals')
           ) as v(label, option_text)
 where q.question_hash = '820dc5cdf0d241954a1f8694f166222f'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'In an ecosystem, the ''producers'' are:',
    'Producers are the autotrophs that synthesise their own food using sunlight or chemical energy and form the base of the food chain.',
    'easy',
    'NCERT Class XII (Biology)',
    null,
    'd374356beb4b72cdb4c649bfffe897b9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd374356beb4b72cdb4c649bfffe897b9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Autotrophic organisms like plants'),
            ('B', 'Heterotrophic animals'),
            ('C', 'Fungi and bacteria'),
            ('D', 'Carnivores')
           ) as v(label, option_text)
 where q.question_hash = 'd374356beb4b72cdb4c649bfffe897b9'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'The ''10 per cent law'' of ecological energy transfer states that:',
    'Lindeman''s 10 per cent law states that only about 10 per cent of the energy of one trophic level is transferred to the next, the rest being lost as heat and used in metabolism.',
    'medium',
    'NCERT Class XII (Biology)',
    null,
    '6a4011323277baf30569f5f7ae3fad9f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '6a4011323277baf30569f5f7ae3fad9f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Plants capture 10 per cent of the sunlight'),
            ('B', 'Only 10 per cent of the energy passes to the next trophic level'),
            ('C', 'All the energy passes to the next level'),
            ('D', '90 per cent of the energy is lost as heat at each level')
           ) as v(label, option_text)
 where q.question_hash = '6a4011323277baf30569f5f7ae3fad9f'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'The ''pyramid of energy'' in an ecosystem is:',
    'The pyramid of energy is always upright because energy always decreases at successive trophic levels, whatever the ecosystem.',
    'medium',
    'NCERT Class XII (Biology)',
    null,
    'b64ff7bc94849a1cf0730ed23d6f2e3f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'b64ff7bc94849a1cf0730ed23d6f2e3f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Always inverted'),
            ('B', 'Sometimes inverted'),
            ('C', 'Upright in terrestrial and inverted in aquatic ecosystems'),
            ('D', 'Always upright')
           ) as v(label, option_text)
 where q.question_hash = 'b64ff7bc94849a1cf0730ed23d6f2e3f'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'The ''pyramid of numbers'' in a tree ecosystem is:',
    'In a tree ecosystem a single tree supports many herbivores, so the pyramid of numbers is inverted, whereas the pyramid of biomass remains upright.',
    'medium',
    'NCERT Class XII (Biology)',
    null,
    'dc34c967e02f7d9764ddca26bbfacc95'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'dc34c967e02f7d9764ddca26bbfacc95'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Always rectangular'),
            ('B', 'Upright'),
            ('C', 'Inverted'),
            ('D', 'Spindle shaped')
           ) as v(label, option_text)
 where q.question_hash = 'dc34c967e02f7d9764ddca26bbfacc95'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    '''G Gross primary productivity'' refers to:',
    'Gross primary productivity is the rate of production of biomass by plants during photosynthesis, and net primary productivity is what is left after the plants meet their own respiratory needs.',
    'medium',
    'NCERT Class XII (Biology)',
    null,
    'da4145fd1c811be7a941268c57fa1436'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'da4145fd1c811be7a941268c57fa1436'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The rate of production of biomass by plants during photosynthesis'),
            ('B', 'The rate of decomposition'),
            ('C', 'The total energy stored in the soil'),
            ('D', 'The rate of production of biomass by consumers')
           ) as v(label, option_text)
 where q.question_hash = 'da4145fd1c811be7a941268c57fa1436'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    '''Secondary succession'' occurs:',
    'Secondary succession starts where a community has previously existed and the soil is left behind, as on abandoned farmland, while primary succession begins on bare rock or in water.',
    'easy',
    'NCERT Class XII (Biology)',
    null,
    '4a0a633c72aca4c7be947b95c59aa389'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '4a0a633c72aca4c7be947b95c59aa389'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'On an area where the soil is already present'),
            ('B', 'In a newly formed pond'),
            ('C', 'After a volcanic eruption'),
            ('D', 'On a freshly exposed rock')
           ) as v(label, option_text)
 where q.question_hash = '4a0a633c72aca4c7be947b95c59aa389'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'The pioneer species in primary succession on bare rock are usually:',
    'Lichens, which can grow on bare rock and help weather it, are the pioneer species of primary succession, followed by mosses and herbs.',
    'medium',
    'NCERT Class XII (Biology)',
    null,
    '0f07ba1299ce913c3b606cbfac324cfd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '0f07ba1299ce913c3b606cbfac324cfd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Grasses'),
            ('B', 'Shrubs'),
            ('C', 'Large trees'),
            ('D', 'Lichens and mosses')
           ) as v(label, option_text)
 where q.question_hash = '0f07ba1299ce913c3b606cbfac324cfd'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    '''Bioaccumulation'' differs from biomagnification in that it refers to:',
    'Bioaccumulation is the uptake of a substance faster than its elimination within a single organism, whereas biomagnification is the increase in concentration across the food chain.',
    'hard',
    'Standard Reference',
    null,
    'bf4bb373dca650bbb3598e06c6b30c6e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'bf4bb373dca650bbb3598e06c6b30c6e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The breakdown of waste'),
            ('B', 'The loss of habitat'),
            ('C', 'The accumulation of a pollutant in an organism over time'),
            ('D', 'The increase across trophic levels')
           ) as v(label, option_text)
 where q.question_hash = 'bf4bb373dca650bbb3598e06c6b30c6e'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    '''Eutrophication'' of a water body is caused by:',
    'Eutrophication results from the excessive enrichment of water with nutrients, leading to algal blooms, the depletion of dissolved oxygen and the death of aquatic life.',
    'medium',
    'NCERT Class XII (Biology)',
    null,
    'b0bb94213c741ceef020427464d108fd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b0bb94213c741ceef020427464d108fd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Cold temperatures'),
            ('B', 'Excess nutrients like nitrogen and phosphorus'),
            ('C', 'Excess oxygen'),
            ('D', 'High salinity')
           ) as v(label, option_text)
 where q.question_hash = 'b0bb94213c741ceef020427464d108fd'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'The ''carbon cycle'' in the ecosystem:',
    'The carbon cycle is the gaseous cycle in which carbon dioxide moves between the atmosphere, the living organisms, the soil and the oceans.',
    'medium',
    'NCERT Class XII (Biology)',
    null,
    '5aa292df6d461ca7d74437d791421408'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '5aa292df6d461ca7d74437d791421408'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Occurs only in the oceans'),
            ('B', 'Is a recent phenomenon'),
            ('C', 'Has no atmospheric component'),
            ('D', 'Involves the exchange of carbon dioxide between the biotic and the abiotic components')
           ) as v(label, option_text)
 where q.question_hash = '5aa292df6d461ca7d74437d791421408'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'The ''phosphorus cycle'' is:',
    'Phosphorus is a sedimentary cycle because it enters the ecosystem through weathering of rocks and returns to the geosphere through sedimentation, with no significant atmospheric component.',
    'medium',
    'NCERT Class XII (Biology)',
    null,
    'e909225edc207153e08ed6e6b680a3f2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e909225edc207153e08ed6e6b680a3f2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A seasonal cycle'),
            ('B', 'A gaseous cycle'),
            ('C', 'A sedimentary cycle'),
            ('D', 'An atmospheric cycle')
           ) as v(label, option_text)
 where q.question_hash = 'e909225edc207153e08ed6e6b680a3f2'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    '''Keystone species'' in an ecosystem:',
    'Keystone species exert a controlling influence on the community structure and their removal can cause a major change in the ecosystem.',
    'hard',
    'Standard Reference',
    null,
    '6775514c197bfd3721fd5fbdae997b16'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '6775514c197bfd3721fd5fbdae997b16'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Have a disproportionately large effect on the ecosystem structure'),
            ('B', 'Are always the largest species'),
            ('C', 'Are the primary producers'),
            ('D', 'Are the most numerous species')
           ) as v(label, option_text)
 where q.question_hash = '6775514c197bfd3721fd5fbdae997b16'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'The ''functional diversity'' of an ecosystem refers to:',
    'Functional diversity measures the range of processes, roles and ecological functions performed by the species of a community, and it is often a better predictor of resilience than species richness.',
    'hard',
    'Standard Reference',
    null,
    '3631a012007d5b9ee6c6799397a24e60'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '3631a012007d5b9ee6c6799397a24e60'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The number of species present'),
            ('B', 'The variety of processes and roles performed by the species'),
            ('C', 'The size of the species'),
            ('D', 'The genetic variation within a species')
           ) as v(label, option_text)
 where q.question_hash = '3631a012007d5b9ee6c6799397a24e60'
on conflict (question_id, label) do nothing;

-- environment | biodiversity | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'biodiversity'),
    'The ''biodiversity hotspot'' is a region with:',
    'A biodiversity hotspot must have at least 1,500 endemic vascular plants and have lost at least 70 per cent of its original vegetation.',
    'medium',
    'Standard Reference',
    null,
    'd65fc91c8af85b4441c7e6a6f4f9d85b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'd65fc91c8af85b4441c7e6a6f4f9d85b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The highest population density'),
            ('B', 'A large number of exotic species'),
            ('C', 'Maximum industrial output'),
            ('D', 'High endemic species and a large habitat loss')
           ) as v(label, option_text)
 where q.question_hash = 'd65fc91c8af85b4441c7e6a6f4f9d85b'
on conflict (question_id, label) do nothing;

-- environment | biodiversity | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'biodiversity'),
    'How many biodiversity hotspots are there in India?',
    'India has four recognised biodiversity hotspots: the Himalaya, the Indo-Burma region, the Western Ghats and Sri Lanka, and the Nicobar Islands.',
    'medium',
    'Standard Reference',
    null,
    '20af0b9261db0311fba51c5cdbe7854f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '20af0b9261db0311fba51c5cdbe7854f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Four'),
            ('B', 'Six'),
            ('C', 'Eight'),
            ('D', 'Twelve')
           ) as v(label, option_text)
 where q.question_hash = '20af0b9261db0311fba51c5cdbe7854f'
on conflict (question_id, label) do nothing;

-- environment | biodiversity | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'biodiversity'),
    'The ''Sundaland'' biodiversity hotspot includes:',
    'The Sundaland hotspot covers the Nicobar Islands and the Malay Peninsula, and is the most species rich hotspot in the world.',
    'hard',
    'Standard Reference',
    null,
    '182c39f797a5220ec9db5efe9b0a246a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '182c39f797a5220ec9db5efe9b0a246a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Himalaya'),
            ('B', 'The Western Ghats'),
            ('C', 'The Nicobar Islands and the Malay Peninsula'),
            ('D', 'The Eastern Himalaya')
           ) as v(label, option_text)
 where q.question_hash = '182c39f797a5220ec9db5efe9b0a246a'
on conflict (question_id, label) do nothing;

-- environment | biodiversity | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'biodiversity'),
    'The IUCN Red List categories include:',
    'The IUCN Red List of Threatened Species has eight categories ranging from Extinct and Extinct in the Wild through to Data Deficient.',
    'medium',
    'Standard Reference',
    null,
    '5048264594e4d88ae6e0a6cddcfda27b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '5048264594e4d88ae6e0a6cddcfda27b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Endangered and Vulnerable only'),
            ('B', 'Extinct, Extinct in the Wild, Critically Endangered, Endangered, Vulnerable, Near Threatened, Least Concern and Data Deficient'),
            ('C', 'Only Critically Endangered'),
            ('D', 'Only Vulnerable')
           ) as v(label, option_text)
 where q.question_hash = '5048264594e4d88ae6e0a6cddcfda27b'
on conflict (question_id, label) do nothing;

-- environment | biodiversity | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'biodiversity'),
    'The IUCN Red List of Threatened Species is maintained by:',
    'The IUCN, assisted by the Species Survival Commission, maintains the Red List which is the world''s most comprehensive inventory of the conservation status of species.',
    'medium',
    'Standard Reference',
    null,
    'ab74fdc801cc0a78aae4d6487d13d6a7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'ab74fdc801cc0a78aae4d6487d13d6a7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The CITES Secretariat'),
            ('B', 'The UNEP'),
            ('C', 'The IUCN and the Species Survival Commission'),
            ('D', 'The WWF')
           ) as v(label, option_text)
 where q.question_hash = 'ab74fdc801cc0a78aae4d6487d13d6a7'
on conflict (question_id, label) do nothing;

-- environment | biodiversity | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'biodiversity'),
    'The ''Ramsar Convention'' is concerned with:',
    'The Ramsar Convention, signed in 1971 at Ramsar in Iran, is an intergovernmental treaty on the conservation and wise use of wetlands and their resources.',
    'easy',
    'Standard Reference',
    null,
    'e0c265af2c4e82144a5dc7efb81144a8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'e0c265af2c4e82144a5dc7efb81144a8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Wetlands of international importance'),
            ('B', 'Endangered species'),
            ('C', 'Ozone layer'),
            ('D', 'Trade in endangered species')
           ) as v(label, option_text)
 where q.question_hash = 'e0c265af2c4e82144a5dc7efb81144a8'
on conflict (question_id, label) do nothing;

-- environment | biodiversity | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'biodiversity'),
    'Which of the following is NOT a Ramsar site in India?',
    'The Sundarban Tiger Reserve is a wildlife sanctuary and a biosphere reserve, but it is not included in the Ramsar list of wetlands of India.',
    'hard',
    'Standard Reference',
    null,
    'f86eb74ba4402ddb9c10d84e7a3f212b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'f86eb74ba4402ddb9c10d84e7a3f212b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Chilika Lake in Odisha'),
            ('B', 'Loktak Lake in Manipur'),
            ('C', 'Sasthamcotta Lake in Kerala'),
            ('D', 'Sundarban Tiger Reserve')
           ) as v(label, option_text)
 where q.question_hash = 'f86eb74ba4402ddb9c10d84e7a3f212b'
on conflict (question_id, label) do nothing;

-- environment | biodiversity | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'biodiversity'),
    'The ''CITES'' Convention is concerned with:',
    'The Convention on International Trade in Endangered Species of Wild Fauna and Flora regulates the international trade in endangered species through three appendices.',
    'easy',
    'Standard Reference',
    null,
    'e4a3f01aae60ce2a7436f13d3c448f14'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e4a3f01aae60ce2a7436f13d3c448f14'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Climate change'),
            ('B', 'International trade in endangered species of wild fauna and flora'),
            ('C', 'Wetlands'),
            ('D', 'Ozone')
           ) as v(label, option_text)
 where q.question_hash = 'e4a3f01aae60ce2a7436f13d3c448f14'
on conflict (question_id, label) do nothing;

-- environment | biodiversity | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'biodiversity'),
    'The ''CMS'' or Bonn Convention is concerned with:',
    'The Convention on the Conservation of Migratory Species of Wild Animals, known as the Bonn or CMS Convention, protects migratory species and their habitats.',
    'medium',
    'Standard Reference',
    null,
    '689f0f62f23be15d7d04370a4e303cf9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '689f0f62f23be15d7d04370a4e303cf9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Trade in species'),
            ('B', 'Wetlands'),
            ('C', 'Coral reefs'),
            ('D', 'Migratory species of wild animals')
           ) as v(label, option_text)
 where q.question_hash = '689f0f62f23be15d7d04370a4e303cf9'
on conflict (question_id, label) do nothing;

-- environment | biodiversity | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'biodiversity'),
    'The ''Central Asian Flyway'' passes through India and covers:',
    'The Central Asian Flyway covers the Arctic and Central Asia and extends through South Asia, hosting more than 280 migratory bird species.',
    'medium',
    'Standard Reference',
    null,
    'bd6a2f7161c57315cbd0c4b6e4f8e0f7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'bd6a2f7161c57315cbd0c4b6e4f8e0f7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Arctic region of Europe'),
            ('B', 'The Arctic, Central Asia and South Asia'),
            ('C', 'Only the African continent'),
            ('D', 'Australia')
           ) as v(label, option_text)
 where q.question_hash = 'bd6a2f7161c57315cbd0c4b6e4f8e0f7'
on conflict (question_id, label) do nothing;

-- environment | biodiversity | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'biodiversity'),
    'The ''East Asian-Australasian Flyway'' is significant for India because:',
    'The East Asian-Australasian Flyway passes through the coastal and wetland regions of eastern and southern India and supports a rich diversity of migratory shorebirds and waterbirds.',
    'medium',
    'Standard Reference',
    null,
    '0c15c8e5add9a7c768020815c79410bd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '0c15c8e5add9a7c768020815c79410bd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It passes through parts of eastern and southern India and supports the birdlife of the wetlands and the coast'),
            ('B', 'It concerns only high altitude species'),
            ('C', 'It is a fish migration'),
            ('D', 'It does not pass through India')
           ) as v(label, option_text)
 where q.question_hash = '0c15c8e5add9a7c768020815c79410bd'
on conflict (question_id, label) do nothing;

-- environment | biodiversity | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'biodiversity'),
    'The ''sacred groves'' of India are:',
    'Sacred groves are patches of forest preserved by tribal communities in the name of local deities, and they are among the oldest forms of community conservation.',
    'medium',
    'Standard Reference',
    null,
    '6bda6aea3526c79f1f08bb9bda6fa7e6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '6bda6aea3526c79f1f08bb9bda6fa7e6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Grazing reserves'),
            ('B', 'Commercial plantations'),
            ('C', 'Protected forest patches preserved by indigenous communities in the name of gods'),
            ('D', 'Large state forests')
           ) as v(label, option_text)
 where q.question_hash = '6bda6aea3526c79f1f08bb9bda6fa7e6'
on conflict (question_id, label) do nothing;

-- environment | biodiversity | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'biodiversity'),
    'The ''mangroves'' of India are best developed in the:',
    'The Sundarbans mangrove forest, in West Bengal, is the largest in the world and the most important breeding ground of the Royal Bengal tiger.',
    'easy',
    'Standard Reference',
    null,
    '3ad23fe3603980decb74b568a6f8f037'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '3ad23fe3603980decb74b568a6f8f037'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Godavari delta'),
            ('B', 'Sundarbans'),
            ('C', 'Rann of Kutch'),
            ('D', 'Chilika')
           ) as v(label, option_text)
 where q.question_hash = '3ad23fe3603980decb74b568a6f8f037'
on conflict (question_id, label) do nothing;

-- environment | biodiversity | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'biodiversity'),
    'The ''coral reefs'' of India are found mainly in:',
    'India''s fringing coral reefs are in the Gulf of Kutch, the Gulf of Mannar, the Palk Bay and the islands of the Andaman and Nicobar, with four coral reef Protected Areas.',
    'medium',
    'Standard Reference',
    null,
    '2fdf48d9dee11604c7532bc79c291b62'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '2fdf48d9dee11604c7532bc79c291b62'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Gulf of Kutch and the Gulf of Mannar'),
            ('B', 'The Bay of Bengal only'),
            ('C', 'The Arabian Sea only'),
            ('D', 'The river deltas')
           ) as v(label, option_text)
 where q.question_hash = '2fdf48d9dee11604c7532bc79c291b62'
on conflict (question_id, label) do nothing;

-- environment | biodiversity | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'biodiversity'),
    'The ''Great Barrier Reef'' is located in:',
    'The Great Barrier Reef, the largest coral reef system in the world, lies in the Coral Sea off the coast of Queensland, Australia.',
    'easy',
    'Standard Reference',
    null,
    '24d2ac0d45d47e712cec6cd414d7f17b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '24d2ac0d45d47e712cec6cd414d7f17b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Atlantic Ocean'),
            ('B', 'The Red Sea'),
            ('C', 'The Indian Ocean'),
            ('D', 'The Pacific Ocean off Australia')
           ) as v(label, option_text)
 where q.question_hash = '24d2ac0d45d47e712cec6cd414d7f17b'
on conflict (question_id, label) do nothing;

-- environment | biodiversity | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'biodiversity'),
    'The ''Schedule I'' of the Wildlife Protection Act contains:',
    'Schedule I lists the species with the highest degree of protection, and Schedule II lists other animals, while the birds are covered by a separate schedule.',
    'medium',
    'Standard Reference',
    null,
    'c239045bdabd419e469c2d41dd915db7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c239045bdabd419e469c2d41dd915db7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Plants'),
            ('B', 'Insects'),
            ('C', 'Animals with the highest degree of protection'),
            ('D', 'Birds protected under the Act')
           ) as v(label, option_text)
 where q.question_hash = 'c239045bdabd419e469c2d41dd915db7'
on conflict (question_id, label) do nothing;

-- environment | biodiversity | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'biodiversity'),
    'The ''Bengal Tiger'' and the ''One-horned Rhinoceros'' are listed in which schedule of the Wildlife Protection Act?',
    'Both the tiger and the one-horned rhinoceros are in Schedule I, which provides the highest protection, and the 2022 amendment added the cheetah and the hippopotamus to Schedule I.',
    'medium',
    'Standard Reference',
    null,
    '73538a356081ac7ffdf78d008201c9b6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '73538a356081ac7ffdf78d008201c9b6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Schedule III'),
            ('B', 'Schedule VI'),
            ('C', 'Schedule I'),
            ('D', 'Schedule II')
           ) as v(label, option_text)
 where q.question_hash = '73538a356081ac7ffdf78d008201c9b6'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'The ''Asiatic lion'' is found in the:',
    'The Gir forest in Gujarat is the last refuge of the Asiatic lion, whose entire wild population is concentrated there.',
    'easy',
    'Standard Reference',
    null,
    '47c863c6eba64d45be976dc452bf091c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '47c863c6eba64d45be976dc452bf091c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kanha forest of Madhya Pradesh'),
            ('B', 'Periyar of Kerala'),
            ('C', 'Sundarbans of West Bengal'),
            ('D', 'Gir forest of Gujarat')
           ) as v(label, option_text)
 where q.question_hash = '47c863c6eba64d45be976dc452bf091c'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'The ''Project Tiger'' was launched in:',
    'Project Tiger was launched in 1973 to save the tiger and its habitat, and the Wildlife Protection Act was enacted in 1972.',
    'medium',
    'NCERT Class XII (Biology)',
    null,
    '7fe9b811a76965f217a64dca23a45b55'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '7fe9b811a76965f217a64dca23a45b55'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1973'),
            ('B', '1983'),
            ('C', '1973 under the Wildlife Protection Act'),
            ('D', '1990')
           ) as v(label, option_text)
 where q.question_hash = '7fe9b811a76965f217a64dca23a45b55'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'The ''Project Elephant'' was launched in:',
    'Project Elephant was launched in 1992 to protect the elephant, its habitat and its corridors across the country.',
    'medium',
    'Standard Reference',
    null,
    '17f38f7f9e4967d32487c5ca13fee310'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '17f38f7f9e4967d32487c5ca13fee310'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1990'),
            ('B', '1992'),
            ('C', '1987'),
            ('D', '1995')
           ) as v(label, option_text)
 where q.question_hash = '17f38f7f9e4967d32487c5ca13fee310'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'The ''Vulture and Pygmy Hog'' project of the 1990s was aimed at:',
    'Both projects are classic examples of the IUCN''s species-based conservation approach targeting a single species and its habitat.',
    'hard',
    'Standard Reference',
    null,
    'fe38ba8572c928a87e5a9de706e40743'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'fe38ba8572c928a87e5a9de706e40743'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Protecting vultures in the Punjab forests and the pygmy hog in the Assam grasslands'),
            ('B', 'Reintroducing the cheetah'),
            ('C', 'Protecting the Himalayan tahr'),
            ('D', 'Saving the dugong')
           ) as v(label, option_text)
 where q.question_hash = 'fe38ba8572c928a87e5a9de706e40743'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'The ''Sarus crane'' is the state bird of:',
    'The Sarus crane, the tallest flying bird, is the state bird of Uttar Pradesh and is protected in the wetlands of the state.',
    'medium',
    'Standard Reference',
    null,
    '05aa5d5fc3d12146476153b0a95b998d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '05aa5d5fc3d12146476153b0a95b998d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Gujarat'),
            ('B', 'Assam'),
            ('C', 'Uttar Pradesh'),
            ('D', 'Rajasthan')
           ) as v(label, option_text)
 where q.question_hash = '05aa5d5fc3d12146476153b0a95b998d'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'The ''Snow Leopard'' is found in:',
    'The snow leopard is found in the high-altitude regions of the Himalayas, and Ladakh''s Hemis and Nubra valleys are important strongholds.',
    'easy',
    'Standard Reference',
    null,
    '6a62728ac597fa8ed1c2a3aa5dce28b7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '6a62728ac597fa8ed1c2a3aa5dce28b7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Western Ghats'),
            ('B', 'The Sundarbans'),
            ('C', 'The Deccan Plateau'),
            ('D', 'The Himalayan regions of Ladakh, Himachal Pradesh, Uttarakhand and Sikkim')
           ) as v(label, option_text)
 where q.question_hash = '6a62728ac597fa8ed1c2a3aa5dce28b7'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'The ''Sangai'' or the brow-antlered deer is the state animal of:',
    'The sangai, a unique brow-antlered deer, is the state animal of Manipur and the only such deer in the world.',
    'medium',
    'Standard Reference',
    null,
    '89e26914f3aceb9bf591154ecad341bd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '89e26914f3aceb9bf591154ecad341bd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Assam'),
            ('B', 'Manipur'),
            ('C', 'Nagaland'),
            ('D', 'Mizoram')
           ) as v(label, option_text)
 where q.question_hash = '89e26914f3aceb9bf591154ecad341bd'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'The ''Hangul'' or the Kashmir stag is the state animal of:',
    'The hangul, or the Kashmir stag, was the state animal of Jammu and Kashmir and the Tibetan red deer.',
    'medium',
    'Standard Reference',
    null,
    '67a682c58d31ec93aa446ffbbd3ffeb2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '67a682c58d31ec93aa446ffbbd3ffeb2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Jammu and Kashmir'),
            ('B', 'Ladakh'),
            ('C', 'Himachal Pradesh'),
            ('D', 'Punjab')
           ) as v(label, option_text)
 where q.question_hash = '67a682c58d31ec93aa446ffbbd3ffeb2'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'The ''Peacock'' is the national bird of India and the state bird of:',
    'The Indian peafowl is the national bird of India and the state bird of Maharashtra, Karnataka, Gujarat, Tamil Nadu and others.',
    'easy',
    'Standard Reference',
    null,
    '93a960f0fe85dec3b6ca4a6570aa4f63'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '93a960f0fe85dec3b6ca4a6570aa4f63'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Karnataka'),
            ('B', 'Tamil Nadu'),
            ('C', 'Maharashtra'),
            ('D', 'Gujarat')
           ) as v(label, option_text)
 where q.question_hash = '93a960f0fe85dec3b6ca4a6570aa4f63'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'The ''Western Ghats'' have about 90 per cent of India''s:',
    'The Western Ghats harbour an extraordinary diversity of tree frogs and amphibians, and their endemicity makes the region a global biodiversity hotspot.',
    'medium',
    'Standard Reference',
    null,
    '3e8093af8ac13041e14033b38d8c03d9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '3e8093af8ac13041e14033b38d8c03d9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Camels'),
            ('B', 'Tigers'),
            ('C', 'Tree frogs and amphibians'),
            ('D', 'Elephants')
           ) as v(label, option_text)
 where q.question_hash = '3e8093af8ac13041e14033b38d8c03d9'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'The ''Silent Valley'' of Kerala is a haven for the:',
    'The Silent Valley National Park, part of the Nilgiri Biosphere Reserve, is the last refuge of the lion-tailed macaque.',
    'medium',
    'Standard Reference',
    null,
    'e06c0e4f6d315d3d658a2ba5a65f1742'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e06c0e4f6d315d3d658a2ba5a65f1742'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Snow leopard'),
            ('B', 'Markhor'),
            ('C', 'Asiatic lion'),
            ('D', 'Lion-tailed macaque')
           ) as v(label, option_text)
 where q.question_hash = 'e06c0e4f6d315d3d658a2ba5a65f1742'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'The ''Khangchendzonga National Park'' in Sikkim is famous for the:',
    'Khangchendzonga National Park, a UNESCO World Heritage site, is a major refuge of the snow leopard and the red panda.',
    'medium',
    'Standard Reference',
    null,
    '1c57ac0860271dc7d22e7aeba6b48277'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '1c57ac0860271dc7d22e7aeba6b48277'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Snow leopard'),
            ('B', 'Bengal tiger'),
            ('C', 'Red panda'),
            ('D', 'Asiatic elephant')
           ) as v(label, option_text)
 where q.question_hash = '1c57ac0860271dc7d22e7aeba6b48277'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'The ''Ranthambore National Park'' is famous for:',
    'Ranthambore in Rajasthan was one of the first tiger reserves and is a major tourist attraction in the state.',
    'easy',
    'Standard Reference',
    null,
    'f498b8d8c4050d64d30740918e495a6a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'f498b8d8c4050d64d30740918e495a6a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Lions'),
            ('B', 'Rhinos'),
            ('C', 'Birds of prey'),
            ('D', 'Tigers')
           ) as v(label, option_text)
 where q.question_hash = 'f498b8d8c4050d64d30740918e495a6a'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'The ''Corbett National Park'' is named after:',
    'The park was renamed Hailey National Park and then Corbett National Park after Jim Corbett, who hunted man-eaters and was a naturalist and wildlife photographer.',
    'medium',
    'Standard Reference',
    null,
    'd2d63f0fc4455e24e43ca3f67902addf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd2d63f0fc4455e24e43ca3f67902addf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The village of Corbett'),
            ('B', 'Jim Corbett, a British hunter and naturalist'),
            ('C', 'The Corbett river'),
            ('D', 'Sir Henry Corbett')
           ) as v(label, option_text)
 where q.question_hash = 'd2d63f0fc4455e24e43ca3f67902addf'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'The ''Dachigam National Park'' in Jammu and Kashmir is famous for the:',
    'Dachigam is the last refuge of the hangul or the Kashmir stag and was the original site of the(Project Tiger) in India.',
    'medium',
    'Standard Reference',
    null,
    'c82da8b49faedf2dfd690691340b4f77'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c82da8b49faedf2dfd690691340b4f77'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Musk deer'),
            ('B', 'Himalayan tahr'),
            ('C', 'Hangul or Kashmir stag'),
            ('D', 'Black bear')
           ) as v(label, option_text)
 where q.question_hash = 'c82da8b49faedf2dfd690691340b4f77'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'The ''Bison'' or ''gaur'' is the state animal of:',
    'The gaur or Indian bison is the state animal of Karnataka and the state animal of Assam is the one-horned rhinoceros.',
    'medium',
    'Standard Reference',
    null,
    'aecf0b777719f1a8e96a4fbe34775fea'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'aecf0b777719f1a8e96a4fbe34775fea'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Assam'),
            ('B', 'Karnataka'),
            ('C', 'Kerala'),
            ('D', 'Tamil Nadu')
           ) as v(label, option_text)
 where q.question_hash = 'aecf0b777719f1a8e96a4fbe34775fea'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'The ''Grizzled Giant Squirrel'' is found in the:',
    'The grizzled giant squirrel, an endangered species, is found in the Western Ghats, and it is the state animal of Kerala.',
    'hard',
    'Standard Reference',
    null,
    'eaa21a8c5aaed81d749ed44424963d49'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'eaa21a8c5aaed81d749ed44424963d49'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Western Ghats'),
            ('B', 'Himalayas'),
            ('C', 'Sundarbans'),
            ('D', 'Eastern Ghats')
           ) as v(label, option_text)
 where q.question_hash = 'eaa21a8c5aaed81d749ed44424963d49'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'The ''Margay'' and the ''Fishing Cat'' are the names of:',
    'The margay, fishing cat, leopard cat and jungle cat are wild cats of the Indian forests that are often confused with the leopard.',
    'medium',
    'Standard Reference',
    null,
    '8f6334af85875906db96658eb46d9ccf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '8f6334af85875906db96658eb46d9ccf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Reptiles of the Rann'),
            ('B', 'Birds of the Western Ghats'),
            ('C', 'Wild cats of the Indian jungles'),
            ('D', 'Fishes of the Ganga')
           ) as v(label, option_text)
 where q.question_hash = '8f6334af85875906db96658eb46d9ccf'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'The ''Nilgiri langur'' is a:',
    'The Nilgiri langur, or the lion-tailed macaque, is listed as Endangered and is found in the Western Ghats.',
    'medium',
    'Standard Reference',
    null,
    '19ad8b853c8d6799ce9b540f02ce48a3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '19ad8b853c8d6799ce9b540f02ce48a3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Critically Endangered bird'),
            ('B', 'A tree species'),
            ('C', 'A fish'),
            ('D', 'Endangered primate of the Western Ghats')
           ) as v(label, option_text)
 where q.question_hash = '19ad8b853c8d6799ce9b540f02ce48a3'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'The ''White winged wood duck'' is found in:',
    'The white winged wood duck is a critically endangered wetland bird found in the foothills of the eastern Himalaya and in the northeastern states.',
    'hard',
    'Standard Reference',
    null,
    'e331b984de4bae673e4a335835fc288e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e331b984de4bae673e4a335835fc288e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Western Ghats only'),
            ('B', 'The Andaman islands only'),
            ('C', 'The Himalayan foothills and the northeast'),
            ('D', 'The Thar Desert')
           ) as v(label, option_text)
 where q.question_hash = 'e331b984de4bae673e4a335835fc288e'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''IUCN categories'' of protected areas include:',
    'The IUCN has six categories of protected areas, from Category I, a strict nature reserve, to Category VI, a protected landscape or seascape.',
    'medium',
    'Standard Reference',
    null,
    'b28c441b33fc25186e80b1f5b1681325'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'b28c441b33fc25186e80b1f5b1681325'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Category I, II, III, IV, V and VI'),
            ('B', 'Category I to IV only'),
            ('C', 'National parks and sanctuaries only'),
            ('D', 'Biosphere reserves and national parks')
           ) as v(label, option_text)
 where q.question_hash = 'b28c441b33fc25186e80b1f5b1681325'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Category I'' of the IUCN protected areas includes:',
    'Category I, the strict nature reserve, is the highest and most protected category, and it includes the national parks and the wilderness areas.',
    'medium',
    'Standard Reference',
    null,
    'd093dcb563ef72c50ef2cc16b0b8e2a0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'd093dcb563ef72c50ef2cc16b0b8e2a0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Wildlife sanctuaries'),
            ('B', 'Biosphere reserves'),
            ('C', 'National parks'),
            ('D', 'Strict nature reserves')
           ) as v(label, option_text)
 where q.question_hash = 'd093dcb563ef72c50ef2cc16b0b8e2a0'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'A biosphere reserve in India has how many zones?',
    'A biosphere reserve has a core zone, a buffer zone and a transition zone, and the legal status of the zones differs from that of a national park.',
    'medium',
    'NCERT Class XII (Biology)',
    null,
    'd6f2f8204af021400e53a95f8e1832d2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd6f2f8204af021400e53a95f8e1832d2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Two'),
            ('B', 'Three'),
            ('C', 'Four'),
            ('D', 'One')
           ) as v(label, option_text)
 where q.question_hash = 'd6f2f8204af021400e53a95f8e1832d2'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Nanda Devi and Valley of Flowers'' national parks are in:',
    'Both the Nanda Devi and the Valley of Flowers national parks in Uttarakhand were inscribed as UNESCO World Heritage sites in 2005.',
    'easy',
    'Standard Reference',
    null,
    '82713580d7a3e66a460e13bd13472cdb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '82713580d7a3e66a460e13bd13472cdb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Jammu and Kashmir'),
            ('B', 'Uttarakhand'),
            ('C', 'Himachal Pradesh'),
            ('D', 'Sikkim')
           ) as v(label, option_text)
 where q.question_hash = '82713580d7a3e66a460e13bd13472cdb'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Manas'' and the ''Kaziranga'' national parks are:',
    'Kaziranga and Manas were inscribed as UNESCO World Heritage sites in 1985, and both are protected areas for the one-horned rhinoceros and the tiger.',
    'medium',
    'Standard Reference',
    null,
    '048d5b835f2bfdc13381fcc7078b6f5d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '048d5b835f2bfdc13381fcc7078b6f5d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ramsar sites only'),
            ('B', 'Reserved forests'),
            ('C', 'Ecological sensitive zones'),
            ('D', 'UNESCO World Heritage sites')
           ) as v(label, option_text)
 where q.question_hash = '048d5b835f2bfdc13381fcc7078b6f5d'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Sun Temple, Konark'' and the ''Group of Monuments at Mahabalipuram'' are:',
    'Both were inscribed as UNESCO World Heritage cultural sites in 1984 and 2004 respectively.',
    'easy',
    'Standard Reference',
    null,
    'ebc6f3ed3e9356c005d205efc3ace93d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'ebc6f3ed3e9356c005d205efc3ace93d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Eco-sensitive zones'),
            ('B', 'Biosphere reserves'),
            ('C', 'UNESCO World Heritage sites'),
            ('D', 'Ramsar sites')
           ) as v(label, option_text)
 where q.question_hash = 'ebc6f3ed3e9356c005d205efc3ace93d'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Sundarbans'' and the ''Chilika'' are:',
    'The Sundarbans, the Chilika Lake, the Vembanad Lake, the Loktak Lake, the Keoladeo Ghana and many others are Ramsar sites in India.',
    'easy',
    'Standard Reference',
    null,
    '689d3b74f5fb432eeece9e5fd98ec5b0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '689d3b74f5fb432eeece9e5fd98ec5b0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ramsar sites'),
            ('B', 'National parks'),
            ('C', 'Sanctuaries only'),
            ('D', 'Tiger reserves')
           ) as v(label, option_text)
 where q.question_hash = '689d3b74f5fb432eeece9e5fd98ec5b0'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''UNESCO World Heritage List'' was started in:',
    'The World Heritage Convention was adopted in 1972, and the list was inscribed in 1978 with the first sites including the Ajanta Caves and the Ellora Caves of India.',
    'medium',
    'Standard Reference',
    null,
    '9426b5ed13ffc31f9965f0d0958c6e8d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '9426b5ed13ffc31f9965f0d0958c6e8d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1975'),
            ('B', '1965'),
            ('C', '1972'),
            ('D', '1978')
           ) as v(label, option_text)
 where q.question_hash = '9426b5ed13ffc31f9965f0d0958c6e8d'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Man and the Biosphere Programme'' of UNESCO designates:',
    'The MAB Programme, launched in 1971, designates biosphere reserves which combine conservation with sustainable development.',
    'medium',
    'Standard Reference',
    null,
    '7c5a494b05377d224e09acc0ee719b7d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '7c5a494b05377d224e09acc0ee719b7d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ramsar sites'),
            ('B', 'Migratory bird sanctuaries'),
            ('C', 'World Heritage sites'),
            ('D', 'Biosphere reserves')
           ) as v(label, option_text)
 where q.question_hash = '7c5a494b05377d224e09acc0ee719b7d'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Nilgiri Biosphere Reserve'' is the first biosphere reserve of India. It was designated in:',
    'The Nilgiri Biosphere Reserve, comprising the Nilgiri, Nagarhole and Bandipur areas, was the first biosphere reserve of India, designated in 1986.',
    'hard',
    'Standard Reference',
    null,
    '4b695991b2efd8b5bc0925249c7e9bd3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '4b695991b2efd8b5bc0925249c7e9bd3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1986'),
            ('B', '1990'),
            ('C', '1988'),
            ('D', '1984')
           ) as v(label, option_text)
 where q.question_hash = '4b695991b2efd8b5bc0925249c7e9bd3'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Agasthyamalai Biosphere Reserve'' is in:',
    'The Agasthyamalai Biosphere Reserve, in the Western Ghats, straddles the Kerala and Tamil Nadu border and includes the Periyar Tiger Reserve.',
    'medium',
    'Standard Reference',
    null,
    'd82faa0d0f5f1d388e702b0b5e510b83'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd82faa0d0f5f1d388e702b0b5e510b83'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Andhra Pradesh'),
            ('B', 'Kerala and Tamil Nadu'),
            ('C', 'Karnataka'),
            ('D', 'Kerala only')
           ) as v(label, option_text)
 where q.question_hash = 'd82faa0d0f5f1d388e702b0b5e510b83'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Nanda Devi Biosphere Reserve'' is a trans-boundary biosphere reserve of India and:',
    'The Nanda Devi Biosphere Reserve extends into the Dhaulagiri region of Nepal, making it a trans-boundary reserve and part of the World Network of Biosphere Reserves.',
    'hard',
    'Standard Reference',
    null,
    'fc2466efb7172a5ec6caf9813212b89b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'fc2466efb7172a5ec6caf9813212b89b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'China'),
            ('B', 'Bangladesh'),
            ('C', 'Nepal'),
            ('D', 'Bhutan')
           ) as v(label, option_text)
 where q.question_hash = 'fc2466efb7172a5ec6caf9813212b89b'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Gulf of Mannar Marine Biosphere Reserve'' was designated in:',
    'The Gulf of Mannar Marine Biosphere Reserve was the first marine biosphere reserve of India, designated in 1989, and it was later expanded.',
    'hard',
    'Standard Fame Reference',
    null,
    '872d949a0364005ac0b8606201bc3aa9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '872d949a0364005ac0b8606201bc3aa9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2004'),
            ('B', '1989'),
            ('C', '1990'),
            ('D', '2001')
           ) as v(label, option_text)
 where q.question_hash = '872d949a0364005ac0b8606201bc3aa9'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Important Bird Areas'' of India are identified by:',
    'BirdLife International identifies the Important Bird Areas of India, a network of sites that support a significant share of the world''s birds.',
    'medium',
    'Standard Reference',
    null,
    '45b2307f1c9f90578973026e52610545'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '45b2307f1c9f90578973026e52610545'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The IUCN'),
            ('B', 'The UNEP'),
            ('C', 'The WHO'),
            ('D', 'BirdLife International')
           ) as v(label, option_text)
 where q.question_hash = '45b2307f1c9f90578973026e52610545'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''green belt'' around a national park in India:',
    'The green belt around a protected area is an instruction of the Central Government under the Wildlife Protection Act, and it is not notified as a separate protected area.',
    'hard',
    'Standard Reference',
    null,
    '11132d8702c6483343e7c0d51c9d4e88'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '11132d8702c6483343e7c0d51c9d4e88'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is a general instruction of the Central Government'),
            ('B', 'Is notified by the state government'),
            ('C', 'Is a Ramsar concept'),
            ('D', 'Is notified under the Wildlife Protection Act')
           ) as v(label, option_text)
 where q.question_hash = '11132d8702c6483343e7c0d51c9d4e88'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''National Parks'' in India are notified under:',
    'National parks, sanctuaries and other categories of protected areas are notified under the Wildlife Protection Act, 1972, as amended in 2022.',
    'easy',
    'Standard Reference',
    null,
    '02d91c95ef20290582982e1f31545cee'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '02d91c95ef20290582982e1f31545cee'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Environment Protection Act, 1986'),
            ('B', 'The Biodiversity Act, 2002'),
            ('C', 'The Wildlife Protection Act, 1972'),
            ('D', 'The Forest Conservation Act, 1980')
           ) as v(label, option_text)
 where q.question_hash = '02d91c95ef20290582982e1f31545cee'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''National Wildlife Board'' of India is:',
    'The National Wildlife Board was constituted as a statutory body under the Wildlife Protection Act, 1972, and the National Biodiversity Authority was the non-statutory counterpart.',
    'hard',
    'Standard Reference',
    null,
    '6ba4a72dad81cd072fdcd57cbafa800d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '6ba4a72dad81cd072fdcd57cbafa800d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A non-statutory advisory body'),
            ('B', 'A judicial body'),
            ('C', 'An international organisation'),
            ('D', 'A statutory body under the Wildlife Protection Act')
           ) as v(label, option_text)
 where q.question_hash = '6ba4a72dad81cd072fdcd57cbafa800d'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Indian Biodiversity Portal'' and the ''Biodiversity of India'' portal are:',
    'The Biodiversity of India portal and the Indian Biodiversity Portal are online facilities maintained for the registration of the biodiversity and the documentation of the species.',
    'hard',
    'Standard Reference',
    null,
    '3294db09ba695e50839231022fd44c9b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '3294db09ba695e50839231022fd44c9b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Facilities for the registration of the biodiversity and the documentation of the species'),
            ('B', 'International bodies'),
            ('C', 'Universities'),
            ('D', 'Statutory bodies')
           ) as v(label, option_text)
 where q.question_hash = '3294db09ba695e50839231022fd44c9b'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Community Reserve'' category of protected area was introduced in:',
    'The community reserve category, along with the conservation reserve, was introduced by the 2012 amendment to the Wildlife Protection Act, decentralising conservation to the community.',
    'hard',
    'Standard Reference',
    null,
    'bcd23aabe4fe6d3ecf4ce0f7153f2329'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'bcd23aabe4fe6d3ecf4ce0f7153f2329'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1989'),
            ('B', '2012'),
            ('C', '2004'),
            ('D', '1990')
           ) as v(label, option_text)
 where q.question_hash = 'bcd23aabe4fe6d3ecf4ce0f7153f2329'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''green building'' and the ''eco-sensitive zone'' around a sanctuary:',
    'Eco-sensitive zones around sanctuaries and national parks are larger and more restrictive than the green belt around a sanctuary.',
    'hard',
    'Standard Reference',
    null,
    'a6a005084879ae0cd1082f9b91813355'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a6a005084879ae0cd1082f9b91813355'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Are the same'),
            ('B', 'Differ in their extent and the activities permitted'),
            ('C', 'Apply only to the marine areas'),
            ('D', 'Were abolished in 2022')
           ) as v(label, option_text)
 where q.question_hash = 'a6a005084879ae0cd1082f9b91813355'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Great Indian Bustard'' conservation and the ''Khichan'' village are associated with:',
    'The Khichan village in Rajasthan, where the bustard hunters became conservationists, and the Jassdan in Gujarat are associated with the conservation of the Great Indian Bustard.',
    'hard',
    'Standard Reference',
    null,
    '04726a8b6e00b73473bcbd8f5c87d500'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '04726a8b6e00b73473bcbd8f5c87d500'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Maharashtra'),
            ('B', 'Karnataka'),
            ('C', 'Rajasthan'),
            ('D', 'Gujarat')
           ) as v(label, option_text)
 where q.question_hash = '04726a8b6e00b73473bcbd8f5c87d500'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Siberian Crane'' and the ''Black-necked Crane'' in India are:',
    'Both are winter visitors from Central Asia that are found in the wetlands of Gujarat, Rajasthan and Madhya Pradesh.',
    'medium',
    'Standard Reference',
    null,
    'cb4913ff5d5a366323c8cb54966b7bcf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'cb4913ff5d5a366323c8cb54966b7bcf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Endemic species'),
            ('B', 'Extinct species'),
            ('C', 'Vagrants from Central Asia'),
            ('D', 'Resident birds')
           ) as v(label, option_text)
 where q.question_hash = 'cb4913ff5d5a366323c8cb54966b7bcf'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Salim Ali Centre for Ornithology and Natural History'' is at:',
    'The SCON is at Pune and is named after the famous Indian ornithologist Dr. Salim Ali, who also founded the BNHS in Bombay.',
    'medium',
    'Standard Reference',
    null,
    'e18512491ef5c7b8387f2a7972cede5a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'e18512491ef5c7b8387f2a7972cede5a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Pune'),
            ('B', 'Kochi'),
            ('C', 'Shimla'),
            ('D', 'Dehradun')
           ) as v(label, option_text)
 where q.question_hash = 'e18512491ef5c7b8387f2a7972cede5a'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Bombay Natural History Society'' was founded in:',
    'The Bombay Natural History Society was founded in 1883 by eight naturalists including Dr. Salim Ali''s mentor, and it now runs the magazine ''Birds''.',
    'hard',
    'Standard Reference',
    null,
    '39df2b7514374ae91cf4684ad348cd68'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '39df2b7514374ae91cf4684ad348cd68'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1905'),
            ('B', '1930'),
            ('C', '1883'),
            ('D', '1889')
           ) as v(label, option_text)
 where q.question_hash = '39df2b7514374ae91cf4684ad348cd68'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Gondwana'' and the ''Tethys'' are:',
    'Gondwana was the ancient supercontinent that included India, Antarctica, Africa, South America and Australia, and the Tethys was the ancient sea between them.',
    'hard',
    'Standard Reference',
    null,
    '2b78cacbdc85a43f943ec2fc2471e1ee'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '2b78cacbdc85a43f943ec2fc2471e1ee'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'National parks of India'),
            ('B', 'Ancient supercontinents and ancient seas in geology'),
            ('C', 'Biosphere reserves'),
            ('D', 'Rivers')
           ) as v(label, option_text)
 where q.question_hash = '2b78cacbdc85a43f943ec2fc2471e1ee'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''coral triangle'' with the highest marine biodiversity is in:',
    'The Coral Triangle, in the waters of Indonesia, the Philippines, Malaysia, Papua New Guinea, the Solomon Islands and Timor-Leste, is the global centre of marine biodiversity.',
    'hard',
    'Standard Reference',
    null,
    '5309008aae93d32b9ca26f2f7f837f9d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '5309008aae93d32b9ca26f2f7f837f9d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Mediterranean Sea'),
            ('B', 'The Arctic Ocean'),
            ('C', 'The Caribbean Sea'),
            ('D', 'The Indo-Pacific region')
           ) as v(label, option_text)
 where q.question_hash = '5309008aae93d32b9ca26f2f7f837f9d'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Western Ghats'' were declared a World Heritage Site in:',
    'The Western Ghats were inscribed as a UNESCO World Heritage site in 1983, along with the Group of Monuments at Mahabalipuram, the Buddhist Monuments at Sanchi and the Ellora and Ajanta caves.',
    'medium',
    'Standard Reference',
    null,
    'f307460f12ed9ff6c3d7d559c00a707a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f307460f12ed9ff6c3d7d559c00a707a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1983'),
            ('B', '1985'),
            ('C', '2010'),
            ('D', '2012')
           ) as v(label, option_text)
 where q.question_hash = 'f307460f12ed9ff6c3d7d559c00a707a'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''greatest'' number of Ramsar sites in India is in:',
    'Tamil Nadu has the highest number of Ramsar sites in India, with more than a dozen including the Vembanad and the Suchindram Theroor wetlands.',
    'medium',
    'Standard Reference',
    null,
    '8f43606c17b29a71e17e090eeeb89d83'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '8f43606c17b29a71e17e090eeeb89d83'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Gujarat'),
            ('B', 'Uttar Pradesh'),
            ('C', 'Tamil Nadu'),
            ('D', 'Kerala')
           ) as v(label, option_text)
 where q.question_hash = '8f43606c17b29a71e17e090eeeb89d83'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Bhitarkanika Mangroves'' were designated a Ramsar site in:',
    'The Bhitarkanika mangroves, the second largest mangrove forest in India, were designated a Ramsar site in 2002.',
    'hard',
    'Standard Reference',
    null,
    '1a001d02119f14130cc91f13e8adbc97'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '1a001d02119f14130cc91f13e8adbc97'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2002'),
            ('B', '1996'),
            ('C', '2010'),
            ('D', '2015')
           ) as v(label, option_text)
 where q.question_hash = '1a001d02119f14130cc91f13e8adbc97'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Loktak Lake'' of Manipur was designated a Ramsar site in:',
    'Loktak Lake was designated a Ramsar site in 1992, the thirteenth such site in India at that time, and it hosts the only floating national park in the world.',
    'hard',
    'Standard Reference',
    null,
    '049accdd98b6440f93ada32c4cc842f6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '049accdd98b6440f93ada32c4cc842f6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1993'),
            ('B', '1990'),
            ('C', '1995'),
            ('D', '1992')
           ) as v(label, option_text)
 where q.question_hash = '049accdd98b6440f93ada32c4cc842f6'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Point Calimere'' and the ''Gulf of Mannar'' marine areas are:',
    'The Gulf of Mannar and the Point Calimere bird sanctuary are among the Ramsar sites of Tamil Nadu on the Coromandel coast.',
    'medium',
    'Standard Reference',
    null,
    '092d56de7c9765800906a94c4f4c2906'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '092d56de7c9765800906a94c4f4c2906'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bird sanctuaries'),
            ('B', 'Ramsar sites'),
            ('C', 'National parks'),
            ('D', 'Mangrove reserves')
           ) as v(label, option_text)
 where q.question_hash = '092d56de7c9765800906a94c4f4c2906'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Bhitarkanika'' and the ''Chandoli Dam'' in Odisha are:',
    'The Chilika Lake, the Bhitarkanika Mangroves and the Chandoli Dam in Odisha are Ramsar sites.',
    'hard',
    'Standard Reference',
    null,
    '16deb5a27e4bc706d55f07deecc171ba'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '16deb5a27e4bc706d55f07deecc171ba'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'National parks'),
            ('B', 'Research stations'),
            ('C', 'Wildlife sanctuaries'),
            ('D', 'Ramsar sites')
           ) as v(label, option_text)
 where q.question_hash = '16deb5a27e4bc706d55f07deecc171ba'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Sindhudurg and the Malvan'' areas of Maharashtra are:',
    'The Vembanad, the Chilika, the Keoladeo, the Bhitarkanika, the Point Calimere and the Sindhudurg and the Malvan areas are among the Ramsar sites.',
    'hard',
    'Standard Reference',
    null,
    '129d56f6d15164d26664f8fa2d9930e3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '129d56f6d15164d26664f8fa2d9930e3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Tiger reserves'),
            ('B', 'Wildlife sanctuaries'),
            ('C', 'Ramsar sites'),
            ('D', 'National parks')
           ) as v(label, option_text)
 where q.question_hash = '129d56f6d15164d26664f8fa2d9930e3'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''National Park'' category of protected area in India allows:',
    'National parks have the highest degree of protection, with human interference minimised, whereas wildlife sanctuaries allow some use such as grazing and the collection of minor forest produce.',
    'easy',
    'Standard Reference',
    null,
    '90bd5e2bcba0a2efbd8fa2dc40ad797e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '90bd5e2bcba0a2efbd8fa2dc40ad797e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Hunting and grazing'),
            ('B', 'Strict protection with limited human use'),
            ('C', 'Grazing by the local communities'),
            ('D', 'Collection of minor forest produce')
           ) as v(label, option_text)
 where q.question_hash = '90bd5e2bcba0a2efbd8fa2dc40ad797e'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Ecological sensitive zone'' around a national park:',
    'The eco-sensitive zone notified around a national park or a sanctuary prohibits the activities listed in the notification, such as quarrying and industrial expansion.',
    'medium',
    'Standard Reference',
    null,
    'ac13ddd775fd6f051f76bf0314e74c5a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ac13ddd775fd6f051f76bf0314e74c5a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Prohibits certain activities listed in the notification'),
            ('B', 'Is the same as the core zone'),
            ('C', 'Is notified only after the state government''s request'),
            ('D', 'Allows all commercial activities')
           ) as v(label, option_text)
 where q.question_hash = 'ac13ddd775fd6f051f76bf0314e74c5a'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Mt. Harriet Island National Park'' and the ''Rani Jhansi Marine National Park'' are in:',
    'The Mt. Harriet Island National Park and the Rani Jhansi Marine National Park are protected areas in the Andaman and Nicobar Islands.',
    'medium',
    'Standard Reference',
    null,
    'ce50607520aca949293d87b919904139'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ce50607520aca949293d87b919904139'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Andaman and Nicobar Islands'),
            ('B', 'Kerala'),
            ('C', 'Gujarat'),
            ('D', 'Tamil Nadu')
           ) as v(label, option_text)
 where q.question_hash = 'ce50607520aca949293d87b919904139'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Kalakad-Mundanthurai Tiger Reserve'' and the ''Nelliyampathy'' are in:',
    'The Kalakad-Mundanthurai Tiger Reserve in the Western Ghats of Tamil Nadu adjoins the Nelliyampathy sacred forest of the Palani hills.',
    'hard',
    'Standard Reference',
    null,
    '32cb83faa147f6bb80c5cfa47d963c05'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '32cb83faa147f6bb80c5cfa47d963c05'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Andhra Pradesh'),
            ('B', 'Karnataka'),
            ('C', 'Tamil Nadu'),
            ('D', 'Kerala')
           ) as v(label, option_text)
 where q.question_hash = '32cb83faa147f6bb80c5cfa47d963c05'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Pilibhit Tiger Reserve'' and the ''Seshachalam Hills'' are in:',
    'The Pilibhit Tiger Reserve and the Seshachalam Hills, with its Sri Chundruvarayula and Bhagiratha temples, are in Andhra Pradesh.',
    'hard',
    'Standard Reference',
    null,
    'edec5b09191d98a4b34d5062034e8509'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'edec5b09191d98a4b34d5062034e8509'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kerala'),
            ('B', 'Andhra Pradesh'),
            ('C', 'Tamil Nadu'),
            ('D', 'Karnataka')
           ) as v(label, option_text)
 where q.question_hash = 'edec5b09191d98a4b34d5062034e8509'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Indira Gandhi Wildlife Sanctuary'' and the ''Talakona'' are in:',
    'The Indira Gandhi Wildlife Sanctuary, which includes the Talakona forest, is the largest protected area of Andhra Pradesh.',
    'hard',
    'Standard Reference',
    null,
    '160b010775488a77b7f1259fd2ffe716'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '160b010775488a77b7f1259fd2ffe716'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Karnataka'),
            ('B', 'Odisha'),
            ('C', 'Telangana'),
            ('D', 'Andhra Pradesh')
           ) as v(label, option_text)
 where q.question_hash = '160b010775488a77b7f1259fd2ffe716'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Nagarjunsagar-Srisailam'' and the ''Amrabad Tiger Reserve'' are in:',
    'The Nagarjunsagar-Srisailam Wildlife Sanctuary is spread over Andhra Pradesh and Telangana, and the Amrabad Tiger Reserve is in Andhra Pradesh.',
    'hard',
    'Standard Reference',
    null,
    'cceed28a6638389162276f700375ade6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'cceed28a6638389162276f700375ade6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Telangana and Andhra Pradesh'),
            ('B', 'Karnataka'),
            ('C', 'Tamil Nadu'),
            ('D', 'Kerala')
           ) as v(label, option_text)
 where q.question_hash = 'cceed28a6638389162276f700375ade6'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Nandankanan Zoological Park'' is in:',
    'The Nandankanan Zoological Park, near Bhubaneswar in Odisha, is famous for its white tiger and the successful breeding of the gharial.',
    'medium',
    'Standard Reference',
    null,
    '2df459ad59a9615ef84d196b86b1e1dd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '2df459ad59a9615ef84d196b86b1e1dd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Jharkhand'),
            ('B', 'Odisha'),
            ('C', 'West Bengal'),
            ('D', 'Assam')
           ) as v(label, option_text)
 where q.question_hash = '2df459ad59a9615ef84d196b86b1e1dd'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Sepahijala Bird Sanctuary'' and the ''Sethusamudram'' islands of Tamil Nadu are important for:',
    'The Sepahijala Bird Sanctuary in the Gulf of Mannar and the Sethusamudram islands are key wintering grounds for migratory shorebirds.',
    'hard',
    'Standard Reference',
    null,
    '63bc88c1f7a76c3ccd5242dd1f9df7ff'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '63bc88c1f7a76c3ccd5242dd1f9df7ff'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Elephants'),
            ('B', 'Bengal tiger'),
            ('C', 'Snakes'),
            ('D', 'Migratory shorebirds')
           ) as v(label, option_text)
 where q.question_hash = '63bc88c1f7a76c3ccd5242dd1f9df7ff'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Pongal'' and the ''Mudumalai Tiger Reserve'' are in:',
    'The Mudumalai Tiger Reserve, adjoining the Bandipur and the Nagarjunsagar areas, is in Tamil Nadu.',
    'medium',
    'Standard Reference',
    null,
    '08e74c9b5a70957f09214f0a9684a1de'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '08e74c9b5a70957f09214f0a9684a1de'
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
 where q.question_hash = '08e74c9b5a70957f09214f0a9684a1de'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Sathyamangalam Tiger Reserve'' is in:',
    'The Sathyamangalam Tiger Reserve and the Anamalai Tiger Reserve are in Tamil Nadu, and the Sathyamangalam forests hold a major elephant population.',
    'medium',
    'Standard Reference',
    null,
    '7105c7a6cf1dd27b81e195fd02e9834a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '7105c7a6cf1dd27b81e195fd02e9834a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kerala'),
            ('B', 'Tamil Nadu'),
            ('C', 'Karnataka'),
            ('D', 'Andhra Pradesh')
           ) as v(label, option_text)
 where q.question_hash = '7105c7a6cf1dd27b81e195fd02e9834a'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Kudremukh National Park'' and the ''Mookambika Wildlife Sanctuary'' are in:',
    'Both the Kudremukh National Park and the Mookambika Wildlife Sanctuary are in Karnataka, in the Western Ghats.',
    'medium',
    'Standard Reference',
    null,
    'f72b45a7f266a264eb4c8371b1eed318'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'f72b45a7f266a264eb4c8371b1eed318'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Tamil Nadu'),
            ('B', 'Goa'),
            ('C', 'Karnataka'),
            ('D', 'Kerala')
           ) as v(label, option_text)
 where q.question_hash = 'f72b45a7f266a264eb4c8371b1eed318'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Bhadra Wildlife Sanctuary'' and the ''Nagarhole National Park'' are in:',
    'The Bhadra Wildlife Sanctuary and the Nagarhole National Park are both in Karnataka and are part of the Nilgiri Biosphere Reserve.',
    'medium',
    'Standard Reference',
    null,
    '22ba06735cbe721df091c7885570ac90'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '22ba06735cbe721df091c7885570ac90'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Karnataka'),
            ('B', 'Tamil Nadu'),
            ('C', 'Kerala'),
            ('D', 'Telangana')
           ) as v(label, option_text)
 where q.question_hash = '22ba06735cbe721df091c7885570ac90'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Bannerghatta National Park'' is near:',
    'The Bannerghatta National Park near Bengaluru is one of the earliest tiger reserves of Karnataka and was the first to have a butterfly park.',
    'medium',
    'Standard Reference',
    null,
    'e585c803f0d14ff0faec0311eccadafb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e585c803f0d14ff0faec0311eccadafb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Hubli'),
            ('B', 'Mangalore'),
            ('C', 'Mysore'),
            ('D', 'Bengaluru')
           ) as v(label, option_text)
 where q.question_hash = 'e585c803f0d14ff0faec0311eccadafb'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Ranganathittu Bird Sanctuary'' is in:',
    'The Ranganathittu Bird Sanctuary near Mysore is a popular wetland sanctuary with large congregations of migratory birds.',
    'medium',
    'Standard Reference',
    null,
    '35bfaa84df21021ed5810db86542bf53'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '35bfaa84df21021ed5810db86542bf53'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Alipur in Tamil Nadu'),
            ('B', 'Mysore in Karnataka'),
            ('C', 'Ooty in Tamil Nadu'),
            ('D', 'Bhubaneswar in Odisha')
           ) as v(label, option_text)
 where q.question_hash = '35bfaa84df21021ed5810db86542bf53'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Indira Gandhi Wildlife Sanctuary'' and the ''Kawal Tiger Reserve'' are in:',
    'The Indira Gandhi Wildlife Sanctuary, the Kawal Tiger Reserve and the Kinnersa Sanctuary are the key tiger reserves of Telangana.',
    'medium',
    'Standard Reference',
    null,
    'fffff7e22c9daa927fa739bac997589d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'fffff7e22c9daa927fa739bac997589d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Andhra Pradesh'),
            ('B', 'Karnataka'),
            ('C', 'Telangana'),
            ('D', 'Odisha')
           ) as v(label, option_text)
 where q.question_hash = 'fffff7e22c9daa927fa739bac997589d'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Amarkantak Biosphere Reserve'' is in:',
    'The Amarkantak Biosphere Reserve, the source of the Narmada, lies in Madhya Pradesh and is a UNESCO World Heritage site.',
    'medium',
    'Standard Reference',
    null,
    '2e6eda48b94c0474d068287435410c62'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '2e6eda48b94c0474d068287435410c62'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Chhattisgarh'),
            ('B', 'Odisha'),
            ('C', 'Gujarat'),
            ('D', 'Madhya Pradesh')
           ) as v(label, option_text)
 where q.question_hash = '2e6eda48b94c0474d068287435410c62'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Panna Tiger Reserve'' is in:',
    'The Panna Tiger Reserve in Madhya Pradesh, declared in 1994, is a major tiger reserve and the state animal is the tiger.',
    'easy',
    'Standard Reference',
    null,
    '78c3edcff0f7f84e6524a269eee7d139'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '78c3edcff0f7f84e6524a269eee7d139'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Madhya Pradesh'),
            ('B', 'Rajasthan'),
            ('C', 'Uttar Pradesh'),
            ('D', 'Gujarat')
           ) as v(label, option_text)
 where q.question_hash = '78c3edcff0f7f84e6524a269eee7d139'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Sanjay Gandhi National Park'' of Mumbai is adjacent to the:',
    'The Sanjay Gandhi National Park lies in the Borivali and the Aarey area of suburban Mumbai and is home to the leopard.',
    'medium',
    'Standard Reference',
    null,
    '3fdf0bb9d1aea3feec758bec8056c231'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '3fdf0bb9d1aea3feec758bec8056c231'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Elephanta island'),
            ('B', 'The Sanjay Gandhi railway line'),
            ('C', 'Borivali and the Aarey area'),
            ('D', 'Thane Creek')
           ) as v(label, option_text)
 where q.question_hash = '3fdf0bb9d1aea3feec758bec8056c231'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Rani Durgavati National Park'' and the ''Kanha'' are in:',
    'The Rani Durgavati, the Kanha, the Pench, the Satpura and the Bandhavgarh are the principal tiger reserves of Madhya Pradesh.',
    'easy',
    'Standard Reference',
    null,
    '4eec51ed3361fd3ca4f3cdfac4c87538'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '4eec51ed3361fd3ca4f3cdfac4c87538'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Chhattisgarh'),
            ('B', 'Uttar Pradesh'),
            ('C', 'Rajasthan'),
            ('D', 'Madhya Pradesh')
           ) as v(label, option_text)
 where q.question_hash = '4eec51ed3361fd3ca4f3cdfac4c87538'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Toranmal Reserve Forest'' and the ''Melghat'' are in:',
    'The Melghat Tiger Reserve and the Toranmal Reserve Forest are important tiger habitats in Maharashtra.',
    'hard',
    'Standard Reference',
    null,
    '14f40f8bc5b07ad5c891aa5494fd8769'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '14f40f8bc5b07ad5c891aa5494fd8769'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Maharashtra'),
            ('B', 'Gujarat'),
            ('C', 'Rajasthan'),
            ('D', 'Madhya Pradesh')
           ) as v(label, option_text)
 where q.question_hash = '14f40f8bc5b07ad5c891aa5494fd8769'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Tansa Wildlife Sanctuary'' and the ''Karnala'' are in:',
    'The Tansa Wildlife Sanctuary in the Sahyadris and the Karnala Bird Sanctuary near Navi Mumbai are protected areas of Maharashtra.',
    'hard',
    'Standard Reference',
    null,
    '2c580658f706f8107b6d666809411d49'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '2c580658f706f8107b6d666809411d49'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Madhya Pradesh'),
            ('B', 'Gujarat'),
            ('C', 'Maharashtra'),
            ('D', 'Karnataka')
           ) as v(label, option_text)
 where q.question_hash = '2c580658f706f8107b6d666809411d49'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Sanjay Gandhi Bird Sanctuary'' and the ''Kasu Brahmananda Reddy'' are in:',
    'The Sanjay Gandhi Bird Sanctuary near Hyderabad, also called the Kasu Brahmananda Reddy National Park, is an important wetland bird sanctuary.',
    'hard',
    'Standard Reference',
    null,
    '608710138f8495f7b10df4b5ad72b988'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '608710138f8495f7b10df4b5ad72b988'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Andhra Pradesh'),
            ('B', 'Telangana'),
            ('C', 'Tamil Nadu'),
            ('D', 'Karnataka')
           ) as v(label, option_text)
 where q.question_hash = '608710138f8495f7b10df4b5ad72b988'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Ramsar site'' of the Loktak Lake in Manipur hosts the:',
    'Keibul Lamjao, on the southern-eastern fringe of Loktak Lake, is the only floating national park in the world and preserves the sangai deer.',
    'medium',
    'Standard Reference',
    null,
    '699e1fe7c6128da7c5e87bf0b0a115e6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '699e1fe7c6128da7c5e87bf0b0a115e6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sultanpur'),
            ('B', 'Bharatpur bird sanctuary'),
            ('C', 'Keibul Lamjao, the only floating national park'),
            ('D', 'Kaziranga')
           ) as v(label, option_text)
 where q.question_hash = '699e1fe7c6128da7c5e87bf0b0a115e6'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Sunderbans Tiger Reserve'' is the only mangrove tiger reserve in:',
    'The Sundarbans Tiger Reserve in West Bengal is the only mangrove tiger reserve in the world.',
    'medium',
    'Standard Reference',
    null,
    '233726e9826f30b93f6ce4661e2e9892'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '233726e9826f30b93f6ce4661e2e9892'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bangladesh only'),
            ('B', 'India'),
            ('C', 'The world'),
            ('D', 'Asia')
           ) as v(label, option_text)
 where q.question_hash = '233726e9826f30b93f6ce4661e2e9892'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Indus Valley'' sites and the ''Rakhigarhi'' are in:',
    'Rakhigarhi in Haryana is the largest of the Indus Valley sites, and most of the Harappan sites lie in Punjab, Haryana and Sindh.',
    'medium',
    'Standard Reference',
    null,
    '96218bc7293758e8b468a38b272e97cd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '96218bc7293758e8b468a38b272e97cd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Gujarat'),
            ('B', 'Rajasthan'),
            ('C', 'Maharashtra'),
            ('D', 'Punjab and Haryana')
           ) as v(label, option_text)
 where q.question_hash = '96218bc7293758e8b468a38b272e97cd'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Pangong Tso'' and the ''Changthang'' are:',
    'The Pangong Tso and the Changthang wetlands of Ladakh are important breeding grounds for the migratory bar-headed geese and other high-altitude birds.',
    'hard',
    'Standard Reference',
    null,
    '61bfe30336ae56fd725d607767f3ee87'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '61bfe30336ae56fd725d607767f3ee87'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Wildlife sanctuaries'),
            ('B', 'National parks'),
            ('C', 'Rivers of Ladakh'),
            ('D', 'Wetlands and lakes of Ladakh')
           ) as v(label, option_text)
 where q.question_hash = '61bfe30336ae56fd725d607767f3ee87'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Keoladeo National Park'' of Bharatpur is famous for:',
    'The Keoladeo Ghana, a UNESCO World Heritage site, is one of the world''s finest bird sanctuaries with over 350 species of wetland birds.',
    'easy',
    'Standard Reference',
    null,
    'ca9548280b445cba3198f15cd5b33204'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'ca9548280b445cba3198f15cd5b33204'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Marine life'),
            ('B', 'Migratory birds'),
            ('C', 'Tigers'),
            ('D', 'Lions')
           ) as v(label, option_text)
 where q.question_hash = 'ca9548280b445cba3198f15cd5b33204'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Sultanpur National Park'' of Haryana is a:',
    'The Sultanpur National Park, a Ramsar site, is a wetland that attracts large congregations of migratory waterfowl on the Haryana-Delhi border.',
    'medium',
    'Standard Reference',
    null,
    '0b5e6b6a881095e8fce4ad2e10983044'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '0b5e6b6a881095e8fce4ad2e10983044'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ramsar wetland for migratory birds'),
            ('B', 'Tiger reserve'),
            ('C', 'Desert park'),
            ('D', 'Elephant reserve')
           ) as v(label, option_text)
 where q.question_hash = '0b5e6b6a881095e8fce4ad2e10983044'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''KhalISarovar'' and the ''Bhindawas'' are:',
    'The Khalsarovar and the Bhindawas lakes of Rajasthan are among the Ramsar sites of the state.',
    'medium',
    'Standard Reference',
    null,
    '5838bab447f0f571379b5bd3826ac419'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '5838bab447f0f571379b5bd3826ac419'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'National parks in Punjab'),
            ('B', 'Tigress reserves in Haryana'),
            ('C', 'Ramsar sites in Rajasthan'),
            ('D', 'Bird sanctuaries in Gujarat')
           ) as v(label, option_text)
 where q.question_hash = '5838bab447f0f571379b5bd3826ac419'
on conflict (question_id, label) do nothing;

commit;
