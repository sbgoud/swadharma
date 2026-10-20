-- =============================================================================
-- science_tech_03.sql — science_tech question pack, part 03
-- 250 questions. Applied after supabase/migrations/004_reference_data.sql
-- =============================================================================

begin;

-- science_tech | biology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The blind spot of the human eye is located where:',
    'At the point where the optic nerve fibres converge there are no rods or cones, so this region cannot receive light and forms the physiological blind spot, which is normally not noticed because the other eye compensates.',
    'medium',
    'NCERT Class XI',
    null,
    'b895b121ae783f12bd3592bde58c16da'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b895b121ae783f12bd3592bde58c16da'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The fovea is located'),
            ('B', 'The optic nerve leaves the retina'),
            ('C', 'The lens meets the vitreous humour'),
            ('D', 'The iris meets the ciliary body')
           ) as v(label, option_text)
 where q.question_hash = 'b895b121ae783f12bd3592bde58c16da'
on conflict (question_id, label) do nothing;

-- science_tech | biology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The organ of Corti in the human ear:',
    'The organ of Corti lies on the basilar membrane of the cochlea and contains the hair cells whose stereocilia generate impulses in the auditory nerve in response to vibrations.',
    'medium',
    'NCERT Class XI',
    null,
    '96d76a05c23ea2b3a78f1c2792bf1e03'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '96d76a05c23ea2b3a78f1c2792bf1e03'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Transmits vibrations from the ear drum'),
            ('B', 'Balances the body and detects head position'),
            ('C', 'Contains the sensory hair cells that convert sound vibrations into nerve impulses'),
            ('D', 'Produces the middle ear fluid')
           ) as v(label, option_text)
 where q.question_hash = '96d76a05c23ea2b3a78f1c2792bf1e03'
on conflict (question_id, label) do nothing;

-- science_tech | biology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'Goitre is caused by deficiency of:',
    'Iodine is required for the synthesis of the thyroid hormones thyroxine and triiodothyronine, and its deficiency causes goitre, while the same deficiency in the foetus causes cretinism.',
    'easy',
    'NCERT Class XI',
    null,
    '48c578140808b9cd65494b3c8b8c75d4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '48c578140808b9cd65494b3c8b8c75d4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Iodine'),
            ('B', 'Calcium'),
            ('C', 'Zinc'),
            ('D', 'Iron')
           ) as v(label, option_text)
 where q.question_hash = '48c578140808b9cd65494b3c8b8c75d4'
on conflict (question_id, label) do nothing;

-- science_tech | biology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The enzyme that converts starch into maltose in human digestion is:',
    'Salivary and pancreatic amylase break down starch into maltose and dextrins, and the brush border enzymes of the small intestine then split maltose into two molecules of glucose.',
    'easy',
    'NCERT Class XI',
    null,
    'b739fe3299c5fdceb94e8174c0223e72'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'b739fe3299c5fdceb94e8174c0223e72'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Trypsin'),
            ('B', 'Lipase'),
            ('C', 'Pepsin'),
            ('D', 'Amylase')
           ) as v(label, option_text)
 where q.question_hash = 'b739fe3299c5fdceb94e8174c0223e72'
on conflict (question_id, label) do nothing;

-- science_tech | biology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The chief function of bile salts in digestion is:',
    'Bile salts emulsify fats into fine droplets, increasing the surface area for pancreatic lipase, and they also help in the absorption of fat soluble vitamins.',
    'medium',
    'NCERT Class XI',
    null,
    '3bec84bfb946c21f53f1c1ee2a721950'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '3bec84bfb946c21f53f1c1ee2a721950'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Activation of amylase'),
            ('B', 'Neutralisation of acid'),
            ('C', 'Emulsification of fats'),
            ('D', 'Hydrolysis of proteins')
           ) as v(label, option_text)
 where q.question_hash = '3bec84bfb946c21f53f1c1ee2a721950'
on conflict (question_id, label) do nothing;

-- science_tech | biology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The total capacity of the lungs is:',
    'Total lung capacity is the sum of vital capacity and residual volume, and vital capacity in turn is the sum of tidal, inspiratory reserve and expiratory reserve volumes.',
    'medium',
    'NCERT Class XI',
    null,
    'cab39a0205e03cb11d1d6bb1373d480e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'cab39a0205e03cb11d1d6bb1373d480e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Vital capacity plus residual volume'),
            ('B', 'Expiratory reserve volume only'),
            ('C', 'Tidal volume plus inspiratory reserve volume'),
            ('D', 'Residual volume plus tidal volume')
           ) as v(label, option_text)
 where q.question_hash = 'cab39a0205e03cb11d1d6bb1373d480e'
on conflict (question_id, label) do nothing;

-- science_tech | biology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The instrument used to measure the volume of air inhaled and exhaled by the lungs is the:',
    'A spirometer records the volume of air exchanged during normal and forced breathing, and it is used to assess lung capacity in conditions such as asthma and emphysema.',
    'easy',
    'NCERT Class XI',
    null,
    'e244d67421188941e64d4911d00c9aa3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e244d67421188941e64d4911d00c9aa3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Electrocardiograph'),
            ('B', 'Spirometer'),
            ('C', 'Stethoscope'),
            ('D', 'Blood pressure cuff')
           ) as v(label, option_text)
 where q.question_hash = 'e244d67421188941e64d4911d00c9aa3'
on conflict (question_id, label) do nothing;

-- science_tech | biology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'Bohr''s effect in physiology refers to:',
    'At metabolically active tissues with higher CO2 and lower pH, haemoglobin releases oxygen more readily, and this shift of the dissociation curve to the right is known as the Bohr effect.',
    'hard',
    'Standard Reference',
    null,
    '5e480975678f83b45fb916ab07b5b3b3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '5e480975678f83b45fb916ab07b5b3b3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The effect of altitude on red cell number'),
            ('B', 'The binding of carbon dioxide by plasma proteins'),
            ('C', 'The effect of exercise on breathing rate'),
            ('D', 'The reduction in haemoglobin''s affinity for oxygen at higher carbon dioxide and lower pH')
           ) as v(label, option_text)
 where q.question_hash = '5e480975678f83b45fb916ab07b5b3b3'
on conflict (question_id, label) do nothing;

-- science_tech | biology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The counter-current mechanism in the kidney operates in the:',
    'The counter-current arrangement of the loop of Henle and the collecting duct establishes a medullary osmotic gradient, which allows the kidney to produce concentrated urine and conserve water.',
    'hard',
    'NCERT Class XI',
    null,
    'a282252b314e044e233f8b6af80ccb8f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a282252b314e044e233f8b6af80ccb8f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Glomerulus only'),
            ('B', 'Bowman''s capsule'),
            ('C', 'Ureter'),
            ('D', 'Loop of Henle and collecting duct')
           ) as v(label, option_text)
 where q.question_hash = 'a282252b314e044e233f8b6af80ccb8f'
on conflict (question_id, label) do nothing;

-- science_tech | biology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The hormone that increases water reabsorption by the kidney is:',
    'Antidiuretic hormone, secreted by the posterior pituitary, increases the permeability of the collecting duct to water, so more water is reabsorbed and a smaller volume of concentrated urine is produced.',
    'medium',
    'NCERT Class XI',
    null,
    '1609988476dab17c51e87bd788ae9268'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '1609988476dab17c51e87bd788ae9268'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Thyroxine'),
            ('B', 'Glucagon'),
            ('C', 'Antidiuretic hormone'),
            ('D', 'Aldosterone')
           ) as v(label, option_text)
 where q.question_hash = '1609988476dab17c51e87bd788ae9268'
on conflict (question_id, label) do nothing;

-- science_tech | biology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'Sliding filament theory explains muscle contraction on the basis of:',
    'In sliding filament theory the thin actin filaments slide over the thick myosin filaments to shorten the sarcomere, while the filaments themselves keep their length and the cross bridges pull the actin inward using ATP.',
    'medium',
    'Standard Reference',
    null,
    'd4e2d010419d93c84a87cbb75a95c81c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd4e2d010419d93c84a87cbb75a95c81c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Change in the length of the actin and myosin filaments'),
            ('B', 'Sliding of actin filaments over myosin filaments without changing their length'),
            ('C', 'Breaking and forming of cross bridges without movement'),
            ('D', 'Conversion of glucose into ATP')
           ) as v(label, option_text)
 where q.question_hash = 'd4e2d010419d93c84a87cbb75a95c81c'
on conflict (question_id, label) do nothing;

-- science_tech | biology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The main function of the ribosome is:',
    'Ribosomes are the sites of protein synthesis, translating messenger RNA into polypeptide chains, and they occur free in the cytoplasm or bound to the rough endoplasmic reticulum.',
    'easy',
    'NCERT Class XI',
    null,
    'a87cbddb544b0e2cafcfda91e5419c33'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a87cbddb544b0e2cafcfda91e5419c33'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Synthesis of proteins'),
            ('B', 'Synthesis of lipids'),
            ('C', 'Breakdown of glucose'),
            ('D', 'Production of ATP')
           ) as v(label, option_text)
 where q.question_hash = 'a87cbddb544b0e2cafcfda91e5419c33'
on conflict (question_id, label) do nothing;

-- science_tech | biology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'BOD, a key parameter in sewage treatment, stands for:',
    'BOD is the amount of dissolved oxygen needed by aerobic microorganisms to decompose the organic matter in a given volume of water, and a high BOD indicates heavy organic pollution.',
    'easy',
    'Standard Reference',
    null,
    'ad2ec400f91f5bd138edf3b273577b5b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ad2ec400f91f5bd138edf3b273577b5b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Biochemical oxygen demand'),
            ('B', 'Biological oxidation demand'),
            ('C', 'Basic oxygen dilution'),
            ('D', 'Bulk organic discharge')
           ) as v(label, option_text)
 where q.question_hash = 'ad2ec400f91f5bd138edf3b273577b5b'
on conflict (question_id, label) do nothing;

-- science_tech | biology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'In biogas plants, the microorganism that produces methane is:',
    'Methanogens such as Methanobacterium convert the acetic acid and hydrogen produced by fermentative bacteria into methane, and this is the last step of anaerobic digestion in a biogas plant.',
    'medium',
    'NCERT Class XII',
    null,
    'cbfe2049f92adca036222c3a76d1157f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'cbfe2049f92adca036222c3a76d1157f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Azotobacter'),
            ('B', 'Nitrosomonas'),
            ('C', 'Methanobacterium'),
            ('D', 'Rhizobium')
           ) as v(label, option_text)
 where q.question_hash = 'cbfe2049f92adca036222c3a76d1157f'
on conflict (question_id, label) do nothing;

-- science_tech | biology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The organism used to produce cheese by ripening is:',
    'Penicillium roqueforti is used to ripen blue cheese, Lactobacillus bulgaricus and Streptococcus thermophilus are used for yoghurt and cheese, and Saccharomyces cerevisiae is the baker''s and brewer''s yeast.',
    'medium',
    'NCERT Class XII',
    null,
    '224272752aa192f40a7c2695eb5e5685'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '224272752aa192f40a7c2695eb5e5685'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Saccharomyces cerevisiae'),
            ('B', 'Acetobacter aceti'),
            ('C', 'Lactobacillus bulgaricus'),
            ('D', 'Penicillium roqueforti')
           ) as v(label, option_text)
 where q.question_hash = '224272752aa192f40a7c2695eb5e5685'
on conflict (question_id, label) do nothing;

-- science_tech | biology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The World Health Organization recommended formula of oral rehydration solution contains, per litre:',
    'The low osmolality ORS recommended by WHO contains glucose 75 g, sodium chloride 2.5 g, potassium chloride 1.5 g and sodium citrate 2.9 g per litre, and it exploits the sodium-glucose cotransport in the intestine.',
    'hard',
    'Standard Reference',
    null,
    '00ec65b4f4cc81d5e3836a4ed8c9d6a1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '00ec65b4f4cc81d5e3836a4ed8c9d6a1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sodium bicarbonate 5 g and potassium chloride 2 g'),
            ('B', 'Glucose 75 g, sodium chloride 2.5 g, potassium chloride 1.5 g and sodium citrate 2.9 g'),
            ('C', 'Glucose 25 g only'),
            ('D', 'Sodium chloride 5 g and glucose 100 g')
           ) as v(label, option_text)
 where q.question_hash = '00ec65b4f4cc81d5e3836a4ed8c9d6a1'
on conflict (question_id, label) do nothing;

-- science_tech | biology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The antacid that is also used to treat acid reflux and is a weakly alkaline milk-like suspension is:',
    'Milk of magnesia, a suspension of magnesium hydroxide, neutralises excess stomach acid, and aluminium hydroxide gels and sodium bicarbonate are also used, with sodium bicarbonate being unsuitable for hypertensive patients.',
    'easy',
    'Standard Reference',
    null,
    '3accb334b499c86082fe82695b453b08'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '3accb334b499c86082fe82695b453b08'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Potassium nitrate'),
            ('B', 'Magnesium hydroxide'),
            ('C', 'Sodium chloride'),
            ('D', 'Calcium carbonate')
           ) as v(label, option_text)
 where q.question_hash = '3accb334b499c86082fe82695b453b08'
on conflict (question_id, label) do nothing;

-- science_tech | biology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The four major non-communicable diseases identified by the World Health Organization are:',
    'The WHO identifies cardiovascular disease, cancer, chronic respiratory disease and diabetes as the four main non-communicable diseases, which together cause the majority of deaths worldwide, and India faces a growing burden of these.',
    'medium',
    'Standard Reference',
    null,
    'cd008d7f811f650dd7fbdeaf039a9d8e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'cd008d7f811f650dd7fbdeaf039a9d8e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Measles, polio, tetanus and diphtheria'),
            ('B', 'Malaria, tuberculosis, cholera and HIV'),
            ('C', 'Cardiovascular diseases, cancers, chronic respiratory diseases and diabetes'),
            ('D', 'Dengue, chikungunya, leptospirosis and scrub typhus')
           ) as v(label, option_text)
 where q.question_hash = 'cd008d7f811f650dd7fbdeaf039a9d8e'
on conflict (question_id, label) do nothing;

-- science_tech | biology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The ''R0'' value in epidemiology denotes:',
    'The basic reproduction number is the average number of secondary infections caused by one infectious individual in a fully susceptible population, and when it falls below one the infection dies out.',
    'hard',
    'Standard Reference',
    null,
    'b362e03b43748ce46abd00988a193dcc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'b362e03b43748ce46abd00988a193dcc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The number of secondary cases generated by one infectious case in a fully susceptible population'),
            ('B', 'The mortality rate of an infection'),
            ('C', 'The incubation period of a disease'),
            ('D', 'The proportion of the population that is immune')
           ) as v(label, option_text)
 where q.question_hash = 'b362e03b43748ce46abd00988a193dcc'
on conflict (question_id, label) do nothing;

-- science_tech | biology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'Dengue fever is transmitted by:',
    'Dengue is transmitted by the Aedes mosquito, and Aedes aegypti also spreads chikungunya and Zika, while Anopheles transmits malaria and Culex transmits Japanese encephalitis and West Nile virus.',
    'easy',
    'Standard Reference',
    null,
    'bde64103a666f9d86ec05db6ed82ec2a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'bde64103a666f9d86ec05db6ed82ec2a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Culex mosquitoes'),
            ('B', 'Sand flies'),
            ('C', 'Anopheles mosquitoes'),
            ('D', 'Aedes mosquitoes')
           ) as v(label, option_text)
 where q.question_hash = 'bde64103a666f9d86ec05db6ed82ec2a'
on conflict (question_id, label) do nothing;

-- science_tech | biology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'Stunting in children is characterised by:',
    'Stunting reflects chronic undernutrition and infection leading to reduced linear growth for age, wasting refers to low weight for height, and underweight compares weight for age, and all three are measured against WHO growth standards.',
    'medium',
    'Standard Reference',
    null,
    '54af1817f0521444586de2949c09f77b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '54af1817f0521444586de2949c09f77b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'High weight for height'),
            ('B', 'Oedema only'),
            ('C', 'Low weight for height'),
            ('D', 'Reduced height for age')
           ) as v(label, option_text)
 where q.question_hash = '54af1817f0521444586de2949c09f77b'
on conflict (question_id, label) do nothing;

-- science_tech | biology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'National Family Health Survey (NFHS-5) in India was conducted in:',
    'NFHS-5 was carried out in 2019-21 and reported in 2022, and it provided district level data on nutrition, child health, reproductive health and household sanitation.',
    'medium',
    'Standard Reference',
    null,
    'ce88c3b278f2b5df40a345aa4704e7df'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'ce88c3b278f2b5df40a345aa4704e7df'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2012-13'),
            ('B', '2019-21'),
            ('C', '2023-24'),
            ('D', '2005-06')
           ) as v(label, option_text)
 where q.question_hash = 'ce88c3b278f2b5df40a345aa4704e7df'
on conflict (question_id, label) do nothing;

-- science_tech | biology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The number of passengers of a vehicle including the driver in a ''chautha'' category of the motor vehicles rules is:',
    'Under the Motor Vehicles Rules, a light motor vehicle can carry up to six persons including the driver, while a medium transport vehicle can carry up to nine and a heavy transport vehicle up to twelve.',
    'hard',
    'Standard Reference',
    null,
    'e203f39fd28a05ac22c2fcf2f604a43d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'e203f39fd28a05ac22c2fcf2f604a43d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Up to 6 persons'),
            ('B', 'Up to 9 persons'),
            ('C', 'Up to 12 persons'),
            ('D', 'Up to 4 persons')
           ) as v(label, option_text)
 where q.question_hash = 'e203f39fd28a05ac22c2fcf2f604a43d'
on conflict (question_id, label) do nothing;

-- science_tech | biology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'Which of the following is an example of incomplete dominance?',
    'In Mirabilis jalapa a cross between red and white flowered plants gives all pink flowered offspring in the F1, which indicates that neither allele is completely dominant, whereas the AB blood group shows codominance.',
    'medium',
    'NCERT Class XII',
    null,
    'c3f5291dbe4db1c5cfe8b72266c40ef7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c3f5291dbe4db1c5cfe8b72266c40ef7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Skin colour in humans'),
            ('B', 'The AB blood group'),
            ('C', 'The red and white flowered Mirabilis jalapa crossing to give pink flowers'),
            ('D', 'Colour blindness in males')
           ) as v(label, option_text)
 where q.question_hash = 'c3f5291dbe4db1c5cfe8b72266c40ef7'
on conflict (question_id, label) do nothing;

-- science_tech | biology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'Down''s syndrome in humans is caused by:',
    'Down''s syndrome usually results from non-disjunction giving three copies of chromosome 21, so the affected individual has 47 chromosomes, and the risk of this rises sharply with maternal age.',
    'easy',
    'NCERT Class XII',
    null,
    '1ef333068532bfe075101d85e97cad47'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '1ef333068532bfe075101d85e97cad47'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Deletion of part of chromosome 5'),
            ('B', 'An extra Y chromosome'),
            ('C', 'Monosomy of an autosome'),
            ('D', 'Trisomy of chromosome 21')
           ) as v(label, option_text)
 where q.question_hash = '1ef333068532bfe075101d85e97cad47'
on conflict (question_id, label) do nothing;

-- science_tech | biology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'Sickle cell anaemia is an example of:',
    'Sickle cell anaemia shows pleiotropy because a single gene affects several traits, including the shape of red cells, oxygen transport, spleen function and resistance to malaria, which is why the allele persists in malarial regions.',
    'medium',
    'NCERT Class XII',
    null,
    '72f99246174c1acbdf3f5986de49036c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '72f99246174c1acbdf3f5986de49036c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Pleiotropy'),
            ('B', 'Incomplete dominance'),
            ('C', 'Polygenic inheritance'),
            ('D', 'Sex linked inheritance')
           ) as v(label, option_text)
 where q.question_hash = '72f99246174c1acbdf3f5986de49036c'
on conflict (question_id, label) do nothing;

-- science_tech | biology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The Indian hotspots of biodiversity include:',
    'India has four of the global hotspots, with the fifth being the Nicobar Islands, and a hotspot must have at least 1,500 endemic vascular plant species and have lost at least 70 per cent of its original vegetation.',
    'medium',
    'Standard Reference',
    null,
    '77cdd4aaaf1af004e5c756dc81c2c13a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '77cdd4aaaf1af004e5c756dc81c2c13a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Mediterranean and the Balkans'),
            ('B', 'The Western Ghats and Sri Lanka, Indo-Burma, Himalaya, Sundaland and Nicobar'),
            ('C', 'The Sahara and the Arctic'),
            ('D', 'The Amazon and the Congo')
           ) as v(label, option_text)
 where q.question_hash = '77cdd4aaaf1af004e5c756dc81c2c13a'
on conflict (question_id, label) do nothing;

-- science_tech | biology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The Nilgiri Biosphere Reserve was recognised in:',
    'The Nilgiri Biosphere Reserve was the first biosphere reserve designated in India in 1986, and the others such as Nanda Devi, Gulf of Mannar, Simlipal and Sundarbans were added later.',
    'hard',
    'Standard Reference',
    null,
    '47d2b245ef48e74be1ae4b03fb4c8ffc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '47d2b245ef48e74be1ae4b03fb4c8ffc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2000'),
            ('B', '2006'),
            ('C', '1986'),
            ('D', '1996')
           ) as v(label, option_text)
 where q.question_hash = '47d2b245ef48e74be1ae4b03fb4c8ffc'
on conflict (question_id, label) do nothing;

-- science_tech | biology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'Under the Wild Life (Protection) Act, 1972, the categories of protected areas include:',
    'The 1972 Act provides for national parks, wildlife sanctuaries, conservation reserves, community reserves and biosphere reserves, and Project Tiger was launched in 1973 with the setting up of the first tiger reserve at Corbett.',
    'medium',
    'Standard Reference',
    null,
    '8b29e2859e6abf9538bf2bce73007ba7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '8b29e2859e6abf9538bf2bce73007ba7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'National parks, sanctuaries and reserve forests'),
            ('B', 'National parks, wildlife sanctuaries, conservation reserves, community reserves and biosphere reserves'),
            ('C', 'Only national parks and sanctuaries'),
            ('D', 'Sanctuaries and tiger reserves')
           ) as v(label, option_text)
 where q.question_hash = '8b29e2859e6abf9538bf2bce73007ba7'
on conflict (question_id, label) do nothing;

-- science_tech | physics | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'The SI unit of force is:',
    'The newton, named after Isaac Newton, is the SI unit of force and is equivalent to one kilogram metre per second squared.',
    'easy',
    'NCERT Class XI',
    null,
    '52e5598b0734fe2fd11605b306f9318a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '52e5598b0734fe2fd11605b306f9318a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Newton'),
            ('B', 'Watt'),
            ('C', 'Pascal'),
            ('D', 'Joule')
           ) as v(label, option_text)
 where q.question_hash = '52e5598b0734fe2fd11605b306f9318a'
on conflict (question_id, label) do nothing;

-- science_tech | physics | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'The SI unit of power is:',
    'The watt, named after James Watt, is the SI unit of power and equals one joule per second.',
    'easy',
    'NCERT Class XI',
    null,
    '5888fb3efb2987e791ac753a67bb49ad'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '5888fb3efb2987e791ac753a67bb49ad'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Newton'),
            ('B', 'Pascal'),
            ('C', 'Ohm'),
            ('D', 'Joule per second')
           ) as v(label, option_text)
 where q.question_hash = '5888fb3efb2987e791ac753a67bb49ad'
on conflict (question_id, label) do nothing;

-- science_tech | physics | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'The SI unit of electric charge is:',
    'The coulomb is the SI unit of electric charge and is named after Charles-Augustin de Coulomb.',
    'easy',
    'NCERT Class XI',
    null,
    '32d575c7af7007b1d950f46e10dce574'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '32d575c7af7007b1d950f46e10dce574'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ohm'),
            ('B', 'Volt'),
            ('C', 'Coulomb'),
            ('D', 'Ampere')
           ) as v(label, option_text)
 where q.question_hash = '32d575c7af7007b1d950f46e10dce574'
on conflict (question_id, label) do nothing;

-- science_tech | physics | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'The SI unit of electrical resistance is:',
    'The ohm, named after Georg Ohm, is the SI unit of electrical resistance and is equal to one volt per ampere.',
    'easy',
    'NCERT Class XI',
    null,
    '12cd25c8007f33cc9726b669238771fa'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '12cd25c8007f33cc9726b669238771fa'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ampere'),
            ('B', 'Ohm'),
            ('C', 'Watt'),
            ('D', 'Volt')
           ) as v(label, option_text)
 where q.question_hash = '12cd25c8007f33cc9726b669238771fa'
on conflict (question_id, label) do nothing;

-- science_tech | physics | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'The SI unit of frequency is:',
    'The hertz, named after Heinrich Hertz, is the SI unit of frequency and equals one cycle per second.',
    'easy',
    'NCERT Class XI',
    null,
    'a3dbcf673701df380907cff4cd90ac74'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a3dbcf673701df380907cff4cd90ac74'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Radian'),
            ('B', 'Pascal'),
            ('C', 'Joule'),
            ('D', 'Hertz')
           ) as v(label, option_text)
 where q.question_hash = 'a3dbcf673701df380907cff4cd90ac74'
on conflict (question_id, label) do nothing;

-- science_tech | physics | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'One tesla is equal to:',
    'A magnetic flux density of one tesla is a magnetic flux of one weber through an area of one square metre.',
    'hard',
    'Standard Reference',
    null,
    'e1c4265f0c55cc66473727bf560f9759'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'e1c4265f0c55cc66473727bf560f9759'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'One weber per square metre'),
            ('B', 'One weber'),
            ('C', 'One gauss'),
            ('D', 'One henry per metre')
           ) as v(label, option_text)
 where q.question_hash = 'e1c4265f0c55cc66473727bf560f9759'
on conflict (question_id, label) do nothing;

-- science_tech | physics | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'The dimension of pressure is the same as that of:',
    'Pressure is force per unit area, and its SI unit is the pascal, equal to one newton per square metre.',
    'easy',
    'NCERT Class XI',
    null,
    '2ebbfe90b4a2d821f89c5d5fc48cbcbd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '2ebbfe90b4a2d821f89c5d5fc48cbcbd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Power'),
            ('B', 'Energy'),
            ('C', 'Force per unit area'),
            ('D', 'Momentum')
           ) as v(label, option_text)
 where q.question_hash = '2ebbfe90b4a2d821f89c5d5fc48cbcbd'
on conflict (question_id, label) do nothing;

-- science_tech | physics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'The dimension of surface tension is the same as that of:',
    'Surface tension is force per unit length, so its dimensions are the same as those of force.',
    'medium',
    'NCERT Class XI',
    null,
    '57b3ce2ca31b1fb232cb431f276354c7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '57b3ce2ca31b1fb232cb431f276354c7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Momentum'),
            ('B', 'Force'),
            ('C', 'Pressure'),
            ('D', 'Energy')
           ) as v(label, option_text)
 where q.question_hash = '57b3ce2ca31b1fb232cb431f276354c7'
on conflict (question_id, label) do nothing;

-- science_tech | physics | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'Newton''s second law of motion is:',
    'The rate of change of momentum is proportional to the applied force and takes place in the direction of the force, which gives F = ma for a constant mass.',
    'easy',
    'NCERT Class XI',
    null,
    'e384ca0703acfaf88d162155cf282024'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e384ca0703acfaf88d162155cf282024'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'W = mg'),
            ('B', 'E = mc2'),
            ('C', 'F = ma'),
            ('D', 'F = mv')
           ) as v(label, option_text)
 where q.question_hash = 'e384ca0703acfaf88d162155cf282024'
on conflict (question_id, label) do nothing;

-- science_tech | physics | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'The ''law of action and reaction'' was given by:',
    'Newton''s third law states that to every action there is an equal and opposite reaction, and the two forces act on different bodies.',
    'easy',
    'NCERT Class XI',
    null,
    '4e54184cb2e119b4252df8f975bf4e11'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '4e54184cb2e119b4252df8f975bf4e11'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Galileo'),
            ('B', 'Einstein'),
            ('C', 'Archimedes'),
            ('D', 'Newton')
           ) as v(label, option_text)
 where q.question_hash = '4e54184cb2e119b4252df8f975bf4e11'
on conflict (question_id, label) do nothing;

-- science_tech | physics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'The ''escape velocity'' from the earth''s surface is approximately:',
    'The escape velocity from the earth''s surface is about 11.2 km per second, compared with the orbital velocity of about 7.9 km per second.',
    'medium',
    'NCERT Class XI',
    null,
    '6f11f7cefb4d290e3d9928800815d8c3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '6f11f7cefb4d290e3d9928800815d8c3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '11.2 km/s'),
            ('B', '3.7 km/s'),
            ('C', '15.4 km/s'),
            ('D', '7.9 km/s')
           ) as v(label, option_text)
 where q.question_hash = '6f11f7cefb4d290e3d9928800815d8c3'
on conflict (question_id, label) do nothing;

-- science_tech | physics | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'The ''value of g'' at the surface of the earth is approximately:',
    'The acceleration due to gravity at the earth''s surface is about 9.8 metres per second squared, and it decreases with the height and increases with the depth.',
    'easy',
    'NCERT Class XI',
    null,
    '8c1863dc573ef42fdca992a76fc970c8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '8c1863dc573ef42fdca992a76fc970c8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '9.8 m/s2'),
            ('B', '6.67 x 10-11'),
            ('C', '3 x 10^8'),
            ('D', '1.6 x 10-19')
           ) as v(label, option_text)
 where q.question_hash = '8c1863dc573ef42fdca992a76fc970c8'
on conflict (question_id, label) do nothing;

-- science_tech | physics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'The value of the universal gravitational constant G is:',
    'The universal gravitational constant, measured by Cavendish, is 6.67 x 10 to the power of minus 11 newton metre squared per kilogram squared.',
    'medium',
    'NCERT Class XI',
    null,
    '6674fef0138f825639470da34cca7cec'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '6674fef0138f825639470da34cca7cec'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '3 x 10^8 m/s'),
            ('B', '1.6 x 10-19 C'),
            ('C', '6.67 x 10-11 N m2/kg2'),
            ('D', '9.8 m/s2')
           ) as v(label, option_text)
 where q.question_hash = '6674fef0138f825639470da34cca7cec'
on conflict (question_id, label) do nothing;

-- science_tech | physics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    '''Kepler''s third law'' states that:',
    'Kepler''s third law, or the law of periods, states that the square of the time period of revolution is proportional to the cube of the semi-major axis of the ellipse.',
    'medium',
    'NCERT Class XI',
    null,
    '825cbae51c4488e63391aa2570130efb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '825cbae51c4488e63391aa2570130efb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Planets move in ellipses with the sun at one focus'),
            ('B', 'The square of the orbital period is proportional to the cube of the semi-major axis'),
            ('C', 'The orbit is a circle'),
            ('D', 'The speed of a planet is constant')
           ) as v(label, option_text)
 where q.question_hash = '825cbae51c4488e63391aa2570130efb'
on conflict (question_id, label) do nothing;

-- science_tech | physics | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'The ''geostationary satellite'' is at a distance of about:',
    'A geostationary satellite orbits in the equatorial plane at about 35,786 km from the earth''s centre, which is about 42,164 km from the earth''s surface.',
    'hard',
    'Standard Reference',
    null,
    '130557d6f181e0d8d8a583629c7043e0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '130557d6f181e0d8d8a583629c7043e0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '42,000 km from the earth''s centre'),
            ('B', '22,000 km from the earth''s centre'),
            ('C', '16,000 km from the earth''s centre'),
            ('D', '36,000 km from the earth''s centre')
           ) as v(label, option_text)
 where q.question_hash = '130557d6f181e0d8d8a583629c7043e0'
on conflict (question_id, label) do nothing;

-- science_tech | physics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'The ''first law of thermodynamics'' is also known as:',
    'The first law states that the total energy of an isolated system is conserved and is usually expressed as the first law of thermodynamics or the law of conservation of energy.',
    'medium',
    'NCERT Class XI',
    null,
    '726697f5eeef216473796bdf64c85bae'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '726697f5eeef216473796bdf64c85bae'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The law of constant entropy'),
            ('B', 'The law of heat exchange'),
            ('C', 'The zeroth law'),
            ('D', 'The law of conservation of energy')
           ) as v(label, option_text)
 where q.question_hash = '726697f5eeef216473796bdf64c85bae'
on conflict (question_id, label) do nothing;

-- science_tech | physics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'The ''Carnot engine'' operates on:',
    'The Carnot engine is the ideal heat engine working between two temperatures, and it has the maximum possible efficiency among all the heat engines working between the same temperatures.',
    'medium',
    'NCERT Class XI',
    null,
    '30bcf843fb09644c7c763f19ff665363'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '30bcf843fb09644c7c763f19ff665363'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Brayton cycle'),
            ('B', 'The Otto cycle'),
            ('C', 'The Carnot cycle with maximum possible efficiency'),
            ('D', 'The Diesel cycle')
           ) as v(label, option_text)
 where q.question_hash = '30bcf843fb09644c7c763f19ff665363'
on conflict (question_id, label) do nothing;

-- science_tech | physics | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'The ''Newton''s formula of cooling'' applies to:',
    'The rate of cooling of a body by radiation is proportional to the difference between the temperature of the body and the surroundings.',
    'hard',
    'NCERT Class XI',
    null,
    'f179aacf197207dbbb52168fdee35c2a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f179aacf197207dbbb52168fdee35c2a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Radiation'),
            ('B', 'Conduction only'),
            ('C', 'Convection and conduction'),
            ('D', 'Convection only')
           ) as v(label, option_text)
 where q.question_hash = 'f179aacf197207dbbb52168fdee35c2a'
on conflict (question_id, label) do nothing;

-- science_tech | physics | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'The ''Barkhausen effect'' relates to:',
    'The Barkhausen effect is the magnetisation of ferromagnetic material in discontinuous jumps, which supports the domain theory of magnetism.',
    'hard',
    'Standard Reference',
    null,
    'b1f054324441574400e42dcb4c3a24a5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b1f054324441574400e42dcb4c3a24a5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The photoelectric effect'),
            ('B', 'Magnetisation of ferromagnetic materials'),
            ('C', 'Refraction of light'),
            ('D', 'Emission of electrons from a metal')
           ) as v(label, option_text)
 where q.question_hash = 'b1f054324441574400e42dcb4c3a24a5'
on conflict (question_id, label) do nothing;

-- science_tech | physics | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'Which of the following statements regarding the charge carriers is correct?',
    'The Hall effect, the development of a transverse voltage across a current-carrying conductor in a magnetic field, is used to study the carriers in semiconductors.',
    'hard',
    'Standard Reference',
    null,
    '76ae34bafd85e5b891dfdf4133bec536'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '76ae34bafd85e5b891dfdf4133bec536'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The charge carriers and their density in a semiconductor'),
            ('B', 'The speed of light'),
            ('C', 'The mass of an electron'),
            ('D', 'The temperature of a star')
           ) as v(label, option_text)
 where q.question_hash = '76ae34bafd85e5b891dfdf4133bec536'
on conflict (question_id, label) do nothing;

-- science_tech | physics | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'A ''p-n junction diode'' acts as:',
    'In forward bias the p-n junction diode allows the current to flow from the p-side anode to the n-side cathode, and in reverse bias it blocks it, which is the basis of the rectification.',
    'easy',
    'NCERT Class XII',
    null,
    '36257eb74f87e54195a15affd00f2a35'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '36257eb74f87e54195a15affd00f2a35'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A resistor always'),
            ('B', 'A one-way valve allowing current to flow from the p to the n side in forward bias'),
            ('C', 'A capacitor only'),
            ('D', 'An amplifier')
           ) as v(label, option_text)
 where q.question_hash = '36257eb74f87e54195a15affd00f2a35'
on conflict (question_id, label) do nothing;

-- science_tech | physics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'The ''NAND gate'' is equivalent to:',
    'The NAND gate is the AND gate followed by a NOT gate and is called the universal gate, since all the other gates can be built from it.',
    'medium',
    'NCERT Class XII',
    null,
    'c4a2c14923ff952a8fd7a9841d512311'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c4a2c14923ff952a8fd7a9841d512311'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A NOR gate'),
            ('B', 'An OR gate followed by a NOT gate'),
            ('C', 'An AND gate followed by a NOT gate'),
            ('D', 'An XOR gate')
           ) as v(label, option_text)
 where q.question_hash = 'c4a2c14923ff952a8fd7a9841d512311'
on conflict (question_id, label) do nothing;

-- science_tech | physics | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'The ''photoelectric effect'' was explained by:',
    'Einstein explained the photoelectric effect with the quantum theory of light, for which he received the Nobel Prize in Physics in 1921.',
    'easy',
    'NCERT Class XII',
    null,
    'ed510ae4e3f3ca2da03b0cb9ba3f7710'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'ed510ae4e3f3ca2da03b0cb9ba3f7710'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rutherford'),
            ('B', 'Bohr'),
            ('C', 'de Broglie'),
            ('D', 'Einstein')
           ) as v(label, option_text)
 where q.question_hash = 'ed510ae4e3f3ca2da03b0cb9ba3f7710'
on conflict (question_id, label) do nothing;

-- science_tech | physics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'The ''de Broglie wavelength'' of a particle is inversely proportional to:',
    'The de Broglie wavelength is inversely proportional to the momentum of the particle, and it is significant only for microscopic particles.',
    'medium',
    'NCERT Class XII',
    null,
    '4cd2d419952ba05c67f0596397fbf69d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '4cd2d419952ba05c67f0596397fbf69d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Its mass alone'),
            ('B', 'Its charge'),
            ('C', 'Its energy'),
            ('D', 'Its momentum')
           ) as v(label, option_text)
 where q.question_hash = '4cd2d419952ba05c67f0596397fbf69d'
on conflict (question_id, label) do nothing;

-- science_tech | physics | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'The ''Raman effect'' is the scattering of:',
    'In the Raman effect, light is scattered with a change in frequency, and the scattered light has a lower frequency when there is a gain of energy by the molecule.',
    'hard',
    'Standard Reference',
    null,
    'b6e29672d74d7ca3a5b500b937ecd562'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b6e29672d74d7ca3a5b500b937ecd562'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'X-rays'),
            ('B', 'Light with a change in frequency'),
            ('C', 'Light without any change in frequency'),
            ('D', 'Radio waves')
           ) as v(label, option_text)
 where q.question_hash = 'b6e29672d74d7ca3a5b500b937ecd562'
on conflict (question_id, label) do nothing;

-- science_tech | physics | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'The ''Bohr model'' of the atom was:',
    'Bohr proposed that electrons revolve only in certain permitted orbits without radiating energy, and this model successfully explained the hydrogen spectrum.',
    'easy',
    'NCERT Class XII',
    null,
    '117b4314fb3131ac7718d3983100990b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '117b4314fb3131ac7718d3983100990b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A relativistic model'),
            ('B', 'Classical'),
            ('C', 'A quantum model with stationary orbits'),
            ('D', 'Based on the wave function only')
           ) as v(label, option_text)
 where q.question_hash = '117b4314fb3131ac7718d3983100990b'
on conflict (question_id, label) do nothing;

-- science_tech | physics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'The ''Pauli exclusion principle'' states that:',
    'The Pauli exclusion principle, proposed by Wolfgang Pauli in 1925, restricts the occupancy of the quantum states and explains the structure of the periodic table.',
    'medium',
    'Standard Reference',
    null,
    '671b91fad57be58ba804e3c007081c8d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '671b91fad57be58ba804e3c007081c8d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'No two electrons in an atom can have the same four quantum numbers'),
            ('B', 'Two electrons cannot be in the same orbit'),
            ('C', 'Electrons spin only clockwise'),
            ('D', 'An atom can hold only two electrons')
           ) as v(label, option_text)
 where q.question_hash = '671b91fad57be58ba804e3c007081c8d'
on conflict (question_id, label) do nothing;

-- science_tech | physics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'The ''Heisenberg uncertainty principle'' relates to:',
    'The Heisenberg uncertainty principle states that the product of the uncertainties in position and momentum cannot be less than a certain constant.',
    'medium',
    'NCERT Class XII',
    null,
    '2ef6993ab41827af6290c7e4dce9ede6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '2ef6993ab41827af6290c7e4dce9ede6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The charge of the electron'),
            ('B', 'The speed of light'),
            ('C', 'The uncertainty in the position and the momentum of a particle'),
            ('D', 'The energy of an atom')
           ) as v(label, option_text)
 where q.question_hash = '2ef6993ab41827af6290c7e4dce9ede6'
on conflict (question_id, label) do nothing;

-- science_tech | physics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'The ''Bohr radius'' of the hydrogen atom is:',
    'The Bohr radius of the hydrogen atom is 0.53 nanometre, which is the most probable distance of the electron from the nucleus in the ground state.',
    'medium',
    'Standard Reference',
    null,
    '08fd7debc1dc9c3cca60728702e2b572'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '08fd7debc1dc9c3cca60728702e2b572'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '0.53 nanometre'),
            ('B', '1.5 nanometre'),
            ('C', '0.1 nanometre'),
            ('D', '5.3 nanometre')
           ) as v(label, option_text)
 where q.question_hash = '08fd7debc1dc9c3cca60728702e2b572'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'The ''Avogadro number'' is:',
    'The Avogadro constant is 6.022 x 10 to the power of 23 per mole, the number of particles in one mole of a substance.',
    'easy',
    'NCERT Class XI',
    null,
    '6b1e7c384458bd6f1ebc67937e5359c3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '6b1e7c384458bd6f1ebc67937e5359c3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '9.8 x 10^3'),
            ('B', '3 x 10^8'),
            ('C', '1.6 x 10-19'),
            ('D', '6.022 x 10^23')
           ) as v(label, option_text)
 where q.question_hash = '6b1e7c384458bd6f1ebc67937e5359c3'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'The pH of a neutral solution at 25 degrees Celsius is:',
    'At 25 degrees Celsius the pH of pure water is 7, and it changes with temperature, which is why the neutral pH is defined as 7 only at the standard temperature.',
    'easy',
    'NCERT Class XI',
    null,
    '49bea201cbe2fc38e00b213d82c90667'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '49bea201cbe2fc38e00b213d82c90667'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '5'),
            ('B', '7'),
            ('C', '6'),
            ('D', '8')
           ) as v(label, option_text)
 where q.question_hash = '49bea201cbe2fc38e00b213d82c90667'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'The ''Charles''s law'' relates to:',
    'Charles''s law states that at constant pressure the volume of a fixed mass of gas is directly proportional to the absolute temperature.',
    'easy',
    'NCERT Class XI',
    null,
    '71bcaa3fe6c3a6ead793e4509a7acef5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '71bcaa3fe6c3a6ead793e4509a7acef5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The pressure and the temperature at constant volume'),
            ('B', 'The volume and the pressure'),
            ('C', 'The mass and the density'),
            ('D', 'The volume and the temperature of a gas at constant pressure')
           ) as v(label, option_text)
 where q.question_hash = '71bcaa3fe6c3a6ead793e4509a7acef5'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'The ''Graham''s law of diffusion'' relates the rate of diffusion to:',
    'Graham''s law states that the rate of diffusion of a gas is inversely proportional to the square root of its molar mass.',
    'medium',
    'NCERT Class XI',
    null,
    'd7cf1201f5408d74dcda7ecd04419de6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd7cf1201f5408d74dcda7ecd04419de6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The density of the gas'),
            ('B', 'The temperature'),
            ('C', 'The square root of the molar mass'),
            ('D', 'The molar mass')
           ) as v(label, option_text)
 where q.question_hash = 'd7cf1201f5408d74dcda7ecd04419de6'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'The ''law of conservation of mass'' was given by:',
    'Antoine Lavoisier formulated the law of conservation of mass, and Dalton gave the atomic theory and the law of partial pressures.',
    'medium',
    'NCERT Class XI',
    null,
    'a534ae4c53aa9870c446007920731d59'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a534ae4c53aa9870c446007920731d59'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Lavoisier'),
            ('B', 'Dalton'),
            ('C', 'Boyle'),
            ('D', 'Avogadro')
           ) as v(label, option_text)
 where q.question_hash = 'a534ae4c53aa9870c446007920731d59'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'The ''Periodic Law'' was given by:',
    'Mendeleev formulated the periodic law in 1869, and Moseley later refined it by using the atomic number as the basis of classification.',
    'easy',
    'NCERT Class XI',
    null,
    '2bb4995b4f37bd616408de12b0fddd84'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '2bb4995b4f37bd616408de12b0fddd84'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Lavoisier'),
            ('B', 'Mendeleev'),
            ('C', 'Moseley'),
            ('D', 'Bohr')
           ) as v(label, option_text)
 where q.question_hash = '2bb4995b4f37bd616408de12b0fddd84'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'The ''Moseley''s law'' states that the physical properties of an element depend on:',
    'Moseley''s law states that the physical properties of an element depend on its atomic number, and Moseley''s law defeated the Mendeleev law.',
    'medium',
    'NCERT Class XI',
    null,
    '79a11605c5e62efea3ce2ae3e735b136'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '79a11605c5e62efea3ce2ae3e735b136'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Its atomic number'),
            ('B', 'Its density'),
            ('C', 'Its valency'),
            ('D', 'Its atomic mass')
           ) as v(label, option_text)
 where q.question_hash = '79a11605c5e62efea3ce2ae3e735b136'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'The ''octet rule'' is applicable to:',
    'The octet rule, proposed by Kossel and Lewis, applies mainly to the main group elements, and it does not strictly apply to the transition metals.',
    'medium',
    'NCERT Class XI',
    null,
    'dbcf789280b3913e62a02f77b1b962ee'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'dbcf789280b3913e62a02f77b1b962ee'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'All the elements'),
            ('B', 'Only the noble gases'),
            ('C', 'The main group elements'),
            ('D', 'The transition metals')
           ) as v(label, option_text)
 where q.question_hash = 'dbcf789280b3913e62a02f77b1b962ee'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'The ''Hund''s rule'' concerns:',
    'Hund''s rule states that the orbitals of a degenerate set are singly occupied before they are paired, and this is why the magnetic moment of oxygen is higher than expected.',
    'hard',
    'Standard Reference',
    null,
    'c28f2b961c1bb9e177d6b2824bdef2fc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'c28f2b961c1bb9e177d6b2824bdef2fc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The energy of the atom'),
            ('B', 'The ionisation energy'),
            ('C', 'The size of the atom'),
            ('D', 'The filling of degenerate orbitals')
           ) as v(label, option_text)
 where q.question_hash = 'c28f2b961c1bb9e177d6b2824bdef2fc'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'The ''Aufbau principle'' is concerned with:',
    'The Aufbau principle, the German word for building up, states that the orbitals of an atom are filled in the order of increasing energy.',
    'medium',
    'Standard Reference',
    null,
    '3215eb299783e7838ac64ac49df2f306'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '3215eb299783e7838ac64ac49df2f306'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The size of the nucleus'),
            ('B', 'The filling of the lowest available energy orbitals'),
            ('C', 'The bonding of atoms'),
            ('D', 'The ionisation of atoms')
           ) as v(label, option_text)
 where q.question_hash = '3215eb299783e7838ac64ac49df2f306'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'The ''Faraday''s laws of electrolysis'' relate to:',
    'Faraday''s first law states that the mass of the substance deposited is directly proportional to the quantity of electricity passed through the electrolyte.',
    'medium',
    'NCERT Class XII',
    null,
    '94e1ba5e2ff14d15cac00efbeff61626'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '94e1ba5e2ff14d15cac00efbeff61626'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The mass of the substance deposited to the charge passed'),
            ('B', 'The speed of light to the frequency'),
            ('C', 'The pressure of a gas to the temperature'),
            ('D', 'The colour of a solution to the concentration')
           ) as v(label, option_text)
 where q.question_hash = '94e1ba5e2ff14d15cac00efbeff61626'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'The ''Haber process'' is used to produce:',
    'The Haber-Bosch process produces ammonia by the direct combination of nitrogen and hydrogen at high pressure and around 450 degrees Celsius.',
    'easy',
    'Standard Reference',
    null,
    'f12ac5ee923dd671ab8f2052dd1cd726'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f12ac5ee923dd671ab8f2052dd1cd726'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Methanol'),
            ('B', 'Ammonia'),
            ('C', 'Sulphuric acid'),
            ('D', 'Soda ash')
           ) as v(label, option_text)
 where q.question_hash = 'f12ac5ee923dd671ab8f2052dd1cd726'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'The ''Contact process'' is used to produce:',
    'In the contact process, sulphur dioxide is oxidised to sulphur trioxide with vanadium pentoxide as the catalyst, and the trioxide is absorbed in sulphuric acid.',
    'medium',
    'Standard Reference',
    null,
    '3d1f59de699a800c35bf0dc3f877391e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '3d1f59de699a800c35bf0dc3f877391e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Caustic soda'),
            ('B', 'Ammonia'),
            ('C', 'Sulphuric acid'),
            ('D', 'Nitric acid')
           ) as v(label, option_text)
 where q.question_hash = '3d1f59de699a800c35bf0dc3f877391e'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'The ''Ostwald process'' is used to produce:',
    'The Ostwald process for nitric acid involves the catalytic oxidation of ammonia to nitric oxide, followed by further oxidation and absorption in water.',
    'medium',
    'Standard Reference',
    null,
    'ea1c6cadb5410e888df16deb92f7597a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'ea1c6cadb5410e888df16deb92f7597a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ammonia'),
            ('B', 'Sulphuric acid'),
            ('C', 'Chlorine'),
            ('D', 'Nitric acid')
           ) as v(label, option_text)
 where q.question_hash = 'ea1c6cadb5410e888df16deb92f7597a'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'The ''Franck-Hertz experiment'' demonstrated:',
    'The Franck-Hertz experiment with mercury vapour showed that the energy of the electrons is absorbed in discrete quanta, confirming the quantised energy levels of the atom.',
    'hard',
    'Standard Reference',
    null,
    '555116d2d581ea32648e5a6b48b3cb1a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '555116d2d581ea32648e5a6b48b3cb1a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The photoelectric effect'),
            ('B', 'The wave nature of the electron'),
            ('C', 'The nuclear fission'),
            ('D', 'The existence of energy levels in the atom')
           ) as v(label, option_text)
 where q.question_hash = '555116d2d581ea32648e5a6b48b3cb1a'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    '''Benzene'' is described by Kekule as:',
    'Kekule proposed the oscillating structure of benzene, and the modern description is a hexagonal ring with delocalised pi electrons and all the carbon-carbon bonds equal.',
    'medium',
    'NCERT Class XII',
    null,
    'abaf4e4e5a3a53148f72135dcf005647'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'abaf4e4e5a3a53148f72135dcf005647'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A hexagon with delocalised pi electrons'),
            ('B', 'A saturated hydrocarbon'),
            ('C', 'A polymer of acetylene'),
            ('D', 'A cyclohexatriene with alternating single and double bonds')
           ) as v(label, option_text)
 where q.question_hash = 'abaf4e4e5a3a53148f72135dcf005647'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'The ''IUPAC'' name of the compound C6H5COOH is:',
    'C6H5COOH is benzoic acid, C6H5CHO is benzaldehyde, C6H5OH is phenol and C6H5CH3 is toluene.',
    'easy',
    'NCERT Class XII',
    null,
    'ef023fb89206b89004a1723779cfc039'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'ef023fb89206b89004a1723779cfc039'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Toluene'),
            ('B', 'Benzoic acid'),
            ('C', 'Benzaldehyde'),
            ('D', 'Phenol')
           ) as v(label, option_text)
 where q.question_hash = 'ef023fb89206b89004a1723779cfc039'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'The ''oxidation number of chromium'' in K2Cr2O7 is:',
    'In potassium dichromate, potassium is +1 and oxygen is -2, so 2 + 2x + 7(-2) = 0 gives x = +6 for chromium.',
    'medium',
    'NCERT Class XII',
    null,
    'eab806e690af92eb4d4e2b6818a6c391'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'eab806e690af92eb4d4e2b6818a6c391'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '+2'),
            ('B', '+3'),
            ('C', '+6'),
            ('D', '+7')
           ) as v(label, option_text)
 where q.question_hash = 'eab806e690af92eb4d4e2b6818a6c391'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    '''Colligative properties'' of a solution depend on:',
    'Colligative properties such as osmotic pressure, boiling point elevation and freezing point depression depend only on the number of particles of the solute, not on its nature.',
    'medium',
    'NCERT Class XII',
    null,
    '37f95109e29fd3bf995044f12ab740cb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '37f95109e29fd3bf995044f12ab740cb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The mass of the solute'),
            ('B', 'The colour of the solute'),
            ('C', 'The nature of the solute'),
            ('D', 'The number of particles of the solute')
           ) as v(label, option_text)
 where q.question_hash = '37f95109e29fd3bf995044f12ab740cb'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'The ''mole'' is defined as:',
    'A mole is the amount of substance containing exactly 6.02214076 x 10 to the power of 23 particles, which is the Avogadro constant.',
    'easy',
    'NCERT Class XI',
    null,
    'd104eabcf0e06fc880537a687551f4fd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd104eabcf0e06fc880537a687551f4fd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The volume of 22.4 litres of a gas'),
            ('B', 'The number of molecules in one gram'),
            ('C', 'The amount of substance containing 6.022 x 10^23 particles'),
            ('D', 'The mass of one gram')
           ) as v(label, option_text)
 where q.question_hash = 'd104eabcf0e06fc880537a687551f4fd'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'The ''Nernst equation'' and the ''electrochemical series'' are related to:',
    'The electrochemical series helps in predicting the feasibility of a reaction, the relative nobility of metals and the spontaneous corrosion of metals.',
    'hard',
    'Standard Reference',
    null,
    '300bf361ce4270ca72045ead6fe5fae8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '300bf361ce4270ca72045ead6fe5fae8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The metallurgy and the corrosion of metals'),
            ('B', 'The synthesis of polymers'),
            ('C', 'The purification of water'),
            ('D', 'The fertilisers')
           ) as v(label, option_text)
 where q.question_hash = '300bf361ce4270ca72045ead6fe5fae8'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'The ''ozone layer'' is destroyed mainly by:',
    'Chlorofluorocarbons and other ozone-depleting substances release chlorine and bromine radicals in the stratosphere that catalytically destroy ozone.',
    'easy',
    'NCERT Class XII',
    null,
    '5034fd506e43d8dcd0201c274ce3c5ff'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '5034fd506e43d8dcd0201c274ce3c5ff'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Carbon dioxide'),
            ('B', 'Chlorofluorocarbons'),
            ('C', 'Methane'),
            ('D', 'Nitrous oxide')
           ) as v(label, option_text)
 where q.question_hash = '5034fd506e43d8dcd0201c274ce3c5ff'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'The ''greenhouse effect'' is chiefly due to:',
    'Carbon dioxide, methane, water vapour, nitrous oxide and ozone are the main greenhouse gases, with carbon dioxide being the most important anthropogenic contributor.',
    'medium',
    'Standard Reference',
    null,
    '7d137cccf5fd1b6a2a28698895adbc18'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '7d137cccf5fd1b6a2a28698895adbc18'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Nitrogen and oxygen'),
            ('B', 'Ozone and nitrous oxide only'),
            ('C', 'Water vapour only'),
            ('D', 'Carbon dioxide and methane')
           ) as v(label, option_text)
 where q.question_hash = '7d137cccf5fd1b6a2a28698895adbc18'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'Freon, the chlorofluorocarbon, is a:',
    'Freons, the chlorofluorocarbons, were widely used as refrigerants and propellants and were later phased out under the Montreal Protocol because of their ozone-depleting potential.',
    'easy',
    'Standard Reference',
    null,
    'a20d95c3292485f0f122b0d2388f143d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a20d95c3292485f0f122b0d2388f143d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A fuel'),
            ('B', 'A refrigerant chlorofluorocarbon'),
            ('C', 'A pesticide'),
            ('D', 'A detergent')
           ) as v(label, option_text)
 where q.question_hash = 'a20d95c3292485f0f122b0d2388f143d'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'The ''catalyst'' in a reaction:',
    'A catalyst provides an alternative path with a lower activation energy and speeds up both the forward and the reverse reactions, leaving the equilibrium position unchanged.',
    'easy',
    'NCERT Class XII',
    null,
    'b368c466c92f5fb7a90684d1f16b5fb4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'b368c466c92f5fb7a90684d1f16b5fb4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Lowers the activation energy without changing the equilibrium position'),
            ('B', 'Is consumed in the reaction'),
            ('C', 'Always increases the temperature'),
            ('D', 'Increases the yield at equilibrium')
           ) as v(label, option_text)
 where q.question_hash = 'b368c466c92f5fb7a90684d1f16b5fb4'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    '''Alloy'' is a homogeneous mixture of:',
    'An alloy is a homogeneous mixture of two or more metals, or of a metal and a non-metal, in which the constituent elements retain their properties.',
    'easy',
    'NCERT Class XII',
    null,
    '2fa268cd95e6c4fd9ca110cbcf85e770'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '2fa268cd95e6c4fd9ca110cbcf85e770'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Gases only'),
            ('B', 'Liquids only'),
            ('C', 'Two metals or a metal and a non-metal'),
            ('D', 'Two non-metals only')
           ) as v(label, option_text)
 where q.question_hash = '2fa268cd95e6c4fd9ca110cbcf85e770'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'The ''Ramsay'' and the ''Nobel gases'':',
    'Lord Rayleigh and Sir William Ramsay shared the Nobel Prize in Chemistry in 1904 for the discovery of argon, and Ramsay later discovered helium, neon and krypton.',
    'medium',
    'Standard Reference',
    null,
    '9ddf45441ae8198c05f741c9b4ff1673'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '9ddf45441ae8198c05f741c9b4ff1673'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ramsay discovered the electron'),
            ('B', 'Ramsay proposed the quantum theory'),
            ('C', 'Ramsay discovered the noble gases in association with Rayleigh'),
            ('D', 'Ramsay discovered radium')
           ) as v(label, option_text)
 where q.question_hash = '9ddf45441ae8198c05f741c9b4ff1673'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    '''Radium'' was discovered by:',
    'Marie and Pierre Curie discovered radium and polonium in 1898, and Marie Curie won two Nobel Prizes, the only scientist to win in two different sciences.',
    'easy',
    'Standard Reference',
    null,
    '95950349663e6536328a6d2bce065fda'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '95950349663e6536328a6d2bce065fda'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Einstein'),
            ('B', 'Marie and Pierre Curie'),
            ('C', 'Roentgen'),
            ('D', 'Becquerel')
           ) as v(label, option_text)
 where q.question_hash = '95950349663e6536328a6d2bce065fda'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'The ''Haber-Bosch process'' and the ''Ostwald process'' are examples of:',
    'Both are large-scale industrial chemical processes for the production of ammonia and nitric acid, central to the fertiliser and explosives industries.',
    'medium',
    'Standard Reference',
    null,
    'ebb1e91f8d843119342bbf4333a6f53a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ebb1e91f8d843119342bbf4333a6f53a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Industrial synthesis of chemicals'),
            ('B', 'Electrolysis'),
            ('C', 'Refining of ores'),
            ('D', 'Fermentation')
           ) as v(label, option_text)
 where q.question_hash = 'ebb1e91f8d843119342bbf4333a6f53a'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'The ''Bingham plastic'' and the ''Newtonian fluid'':',
    'A Newtonian fluid flows with a shear stress proportional to the rate of shear, while a Bingham plastic shows a yield value below which it does not flow.',
    'hard',
    'Standard Reference',
    null,
    '568a615a3c5b8e89344001749287352d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '568a615a3c5b8e89344001749287352d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'They are the same'),
            ('B', 'The Bingham plastic flows without limit'),
            ('C', 'The Newtonian fluid has no viscosity'),
            ('D', 'A Bingham plastic has a yield stress and the Newtonian fluid has a viscosity proportional to the shear rate')
           ) as v(label, option_text)
 where q.question_hash = '568a615a3c5b8e89344001749287352d'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'The ''cell unit'' of a crystal is:',
    'A unit cell is the smallest portion of a crystal lattice that, when repeated in three dimensions, generates the entire lattice.',
    'medium',
    'NCERT Class XII',
    null,
    'c64c86d8f38c26c19704c7218f92a238'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'c64c86d8f38c26c19704c7218f92a238'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The molecule of the compound'),
            ('B', 'The smallest unit of a crystal lattice that by repetition generates the crystal'),
            ('C', 'The largest atom in the lattice'),
            ('D', 'The unit cell of a liquid')
           ) as v(label, option_text)
 where q.question_hash = 'c64c86d8f38c26c19704c7218f92a238'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'The ''close packing'' in a solid is of the type:',
    'The two types of close packing are the cubic close packing or the face-centred cubic and the hexagonal close packing, each with a packing efficiency of about 74 per cent.',
    'medium',
    'NCERT Class XII',
    null,
    '0c2a1e0eccb8b6d33ecd266169aee7fb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '0c2a1e0eccb8b6d33ecd266169aee7fb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Only hexagonal'),
            ('B', 'Random packing'),
            ('C', 'Cubic close packing and hexagonal close packing'),
            ('D', 'Only cubic')
           ) as v(label, option_text)
 where q.question_hash = '0c2a1e0eccb8b6d33ecd266169aee7fb'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    '''Bronze'' is an alloy of:',
    'Bronze, the first alloy used by man, is an alloy of copper and tin, and it was used in the Harappan and later periods.',
    'easy',
    'NCERT Class XII',
    null,
    'dfd7ec8d8d9d4e8da2bd2015a522f599'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'dfd7ec8d8d9d4e8da2bd2015a522f599'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Copper and zinc'),
            ('B', 'Lead and tin'),
            ('C', 'Iron and carbon'),
            ('D', 'Copper and tin')
           ) as v(label, option_text)
 where q.question_hash = 'dfd7ec8d8d9d4e8da2bd2015a522f599'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    '''Stainless steel'' is made by adding:',
    'Stainless steel is an alloy of iron with at least 10.5 per cent chromium, with nickel added for corrosion resistance in the austenitic grades.',
    'medium',
    'Standard Reference',
    null,
    '9a88fafd4ef0359211cc507c585c6dbc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '9a88fafd4ef0359211cc507c585c6dbc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Nickel and chromium to iron'),
            ('B', 'Zinc to copper'),
            ('C', 'Manganese to iron'),
            ('D', 'Tin to lead')
           ) as v(label, option_text)
 where q.question_hash = '9a88fafd4ef0359211cc507c585c6dbc'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'The ''Solar cell'' converts:',
    'A solar cell is a photovoltaic device that converts light energy directly into electrical energy through the photovoltaic effect.',
    'easy',
    'Standard Reference',
    null,
    'cba7774a5d4dc0b159220dc3181ee333'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'cba7774a5d4dc0b159220dc3181ee333'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Heat into electrical energy'),
            ('B', 'Sound into electrical energy'),
            ('C', 'Chemical energy into electrical energy'),
            ('D', 'Light energy into electrical energy')
           ) as v(label, option_text)
 where q.question_hash = 'cba7774a5d4dc0b159220dc3181ee333'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    '''LED'' stands for:',
    'An LED is a light emitting diode, a p-n junction device that emits light when forward biased, and it is a source of monochromatic light.',
    'easy',
    'NCERT Class XII',
    null,
    '83fa017149889197f09103f86cf43430'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '83fa017149889197f09103f86cf43430'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Laser Emission Diode'),
            ('B', 'Light Electric Detector'),
            ('C', 'Light Emitting Diode'),
            ('D', 'Low Energy Device')
           ) as v(label, option_text)
 where q.question_hash = '83fa017149889197f09103f86cf43430'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'The ''fuels'' with the highest calorific value among the common fuels:',
    'Hydrogen has the highest calorific value among the common fuels, followed by the petroleum products, and it is regarded as the future fuel.',
    'medium',
    'Standard Reference',
    null,
    '36b5e0b3a98a522e219083879bc0d2f4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '36b5e0b3a98a522e219083879bc0d2f4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Hydrogen and LPG'),
            ('B', 'Coal and kerosene'),
            ('C', 'Wood and charcoal'),
            ('D', 'Petrol and diesel')
           ) as v(label, option_text)
 where q.question_hash = '36b5e0b3a98a522e219083879bc0d2f4'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'The ''calorific value'' of a fuel is measured in:',
    'The calorific value is the amount of heat produced by the complete combustion of one kilogram of a fuel and is expressed in kilojoules per kilogram or in calories per gram.',
    'medium',
    'Standard Reference',
    null,
    '4247b01a708e3969581b8735d0f43f16'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '4247b01a708e3969581b8735d0f43f16'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Watts'),
            ('B', 'Kilojoules per kilogram'),
            ('C', 'Kilojoules per cubic metre'),
            ('D', 'Joules per second')
           ) as v(label, option_text)
 where q.question_hash = '4247b01a708e3969581b8735d0f43f16'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'The ''octane number'' of petrol measures:',
    'The octane number expresses the resistance of a fuel to knocking, and higher octane ratings allow a higher compression ratio in the engine.',
    'medium',
    'Standard Reference',
    null,
    'c2a333c7bec9dcc3277accc74a2a54cb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'c2a333c7bec9dcc3277accc74a2a54cb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Its energy content'),
            ('B', 'Its viscosity'),
            ('C', 'Its freezing point'),
            ('D', 'Its resistance to knocking')
           ) as v(label, option_text)
 where q.question_hash = 'c2a333c7bec9dcc3277accc74a2a54cb'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    '''Bio-diesel'' is produced from:',
    'Bio-diesel is produced by the transesterification of vegetable oils and animal fats, and India runs a National Biodiesel Policy for the blending of biodiesel with diesel.',
    'medium',
    'Standard Reference',
    null,
    '26436a6c3b08e8e8d41ab74f8e8339b5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '26436a6c3b08e8e8d41ab74f8e8339b5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ethanol'),
            ('B', 'Fossil fuels'),
            ('C', 'Vegetable oils and animal fats'),
            ('D', 'Coal tar')
           ) as v(label, option_text)
 where q.question_hash = '26436a6c3b08e8e8d41ab74f8e8339b5'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'The ''Methanol'' and the ''Ethanol'' are:',
    'Methanol and ethanol are alcohols used as fuels, with ethanol being used in India for the blending of petrol and in the production of sugar and alcohol.',
    'easy',
    'Standard Reference',
    null,
    '7c09ad597c978fcbd4e31726bc45d3de'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '7c09ad597c978fcbd4e31726bc45d3de'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Both alcohols used as fuels'),
            ('B', 'Both hydrocarbons'),
            ('C', 'Both acids'),
            ('D', 'Both gases')
           ) as v(label, option_text)
 where q.question_hash = '7c09ad597c978fcbd4e31726bc45d3de'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    '''Polymers'' that are naturally occurring are called:',
    'Natural polymers such as starch, cellulose and proteins are called biopolymers, while synthetic polymers are made from man-made monomers.',
    'easy',
    'NCERT Class XII',
    null,
    '494ddddc9f3e08c0655df086b1187d5f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '494ddddc9f3e08c0655df086b1187d5f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Thermosets'),
            ('B', 'Biopolymers'),
            ('C', 'Thermoplastics'),
            ('D', 'Elastomers')
           ) as v(label, option_text)
 where q.question_hash = '494ddddc9f3e08c0655df086b1187d5f'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'The ''condensation polymerisation'' requires:',
    'In condensation polymerisation the monomers carry functional groups such as -OH and -COOH, and the polymer is formed with the elimination of small molecules like water.',
    'medium',
    'NCERT Class XII',
    null,
    '70c5c8bd147b1def0212fbe36ed83a5b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '70c5c8bd147b1def0212fbe36ed83a5b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Heat and pressure'),
            ('B', 'An initiator'),
            ('C', 'A monomer with two functional groups'),
            ('D', 'A catalyst only')
           ) as v(label, option_text)
 where q.question_hash = '70c5c8bd147b1def0212fbe36ed83a5b'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'The ''Bakelite'' is:',
    'Bakelite, the first fully synthetic plastic, is a thermosetting polymer made from phenol and formaldehyde and was discovered by Leo Baekeland.',
    'medium',
    'Standard Reference',
    null,
    'ec2ffb0ad604b79c1acb9cee28ea501b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'ec2ffb0ad604b79c1acb9cee28ea501b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A rubber'),
            ('B', 'A thermosetting polymer from phenol and formaldehyde'),
            ('C', 'A thermoplastic from styrene'),
            ('D', 'A fibre from cellulose')
           ) as v(label, option_text)
 where q.question_hash = 'ec2ffb0ad604b79c1acb9cee28ea501b'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'The ''Buna-S'' and the ''neoprene'' are:',
    'Buna-S and neoprene are among the synthetic rubbers developed in the 1930s, with neoprene being the first synthetic rubber of commercial importance.',
    'hard',
    'Standard Reference',
    null,
    'dd77df55a50e46836c2f00ad391c5b28'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'dd77df55a50e46836c2f00ad391c5b28'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Thermosetting plastics'),
            ('B', 'Polymers of nylon'),
            ('C', 'Ceramics'),
            ('D', 'Synthetic rubbers')
           ) as v(label, option_text)
 where q.question_hash = 'dd77df55a50e46836c2f00ad391c5b28'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    '''Nylon 6,6'' is a polymer of:',
    'Nylon 6,6 is a condensation polymer of hexamethylene diamine and adipic acid, and it was first synthesised by Wallace Carothers at DuPont.',
    'hard',
    'Standard Reference',
    null,
    '99164b939beb64098f81cd81cd1dca4f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '99164b939beb64098f81cd81cd1dca4f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Hexamethylene diamine and adipic acid'),
            ('B', 'Ethylene glycol and terephthalic acid'),
            ('C', 'Propene and butadiene'),
            ('D', 'Vinyl chloride')
           ) as v(label, option_text)
 where q.question_hash = '99164b939beb64098f81cd81cd1dca4f'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'The ''cellophane'' and the ''Teflon'':',
    'Cellophane is a cellulose derivative and Teflon is polytetrafluoroethylene, both of them polymers.',
    'medium',
    'Standard Reference',
    null,
    '7ab0be04909a9443ae225abf0738eeb6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '7ab0be04909a9443ae225abf0738eeb6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Are both alloys'),
            ('B', 'Are both ceramics'),
            ('C', 'Are both isotopes'),
            ('D', 'Are both polymers')
           ) as v(label, option_text)
 where q.question_hash = '7ab0be04909a9443ae225abf0738eeb6'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'The ''drug'' metronidazole is used to treat:',
    'Metronidazole is the drug of choice for amoebiasis, giardiasis and anaerobic bacterial infections, and it was discovered by Nobel laureate Selman Waksman.',
    'medium',
    'Standard Reference',
    null,
    '231abebfdb180e19db3ff09d1f7eaee0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '231abebfdb180e19db3ff09d1f7eaee0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Diabetes'),
            ('B', 'Malaria'),
            ('C', 'Amoebiasis and other protozoal infections'),
            ('D', 'Tuberculosis')
           ) as v(label, option_text)
 where q.question_hash = '231abebfdb180e19db3ff09d1f7eaee0'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'The drug Aspirin is chemically:',
    'Aspirin is acetylsalicylic acid, an anti-inflammatory drug, and the smallest drug of plant origin to be fully synthesised and commercialised.',
    'easy',
    'Standard Reference',
    null,
    'dcd6430a943833722aa033cc24162a3d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'dcd6430a943833722aa033cc24162a3d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Penicillin'),
            ('B', 'Acetylsalicylic acid'),
            ('C', 'Paracetamol'),
            ('D', 'Ibuprofen')
           ) as v(label, option_text)
 where q.question_hash = 'dcd6430a943833722aa033cc24162a3d'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'The ''chemotherapy'' of cancer uses drugs that:',
    'Chemotherapeutic drugs target the rapidly dividing cells of a tumour, at the cost of also affecting other fast dividing cells of the body.',
    'easy',
    'Standard Reference',
    null,
    '453daeccfc13cde42c12ddefcefe4d74'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '453daeccfc13cde42c12ddefcefe4d74'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kill the fast dividing cells of the tumour'),
            ('B', 'Strengthen the bones'),
            ('C', 'Lower the blood pressure'),
            ('D', 'Digest the tumour')
           ) as v(label, option_text)
 where q.question_hash = '453daeccfc13cde42c12ddefcefe4d74'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    '''Antibiotics'' work by:',
    'Many antibiotics, including penicillin and the cephalosporins, inhibit the synthesis of the bacterial cell wall, and they are effective only against bacteria.',
    'easy',
    'Standard Reference',
    null,
    '11159cd2e6390200c0fc933873a5499c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '11159cd2e6390200c0fc933873a5499c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Lowering the body temperature'),
            ('B', 'Increasing the blood sugar'),
            ('C', 'Blocking the cell wall synthesis of the bacteria'),
            ('D', 'Breaking the DNA of the host cell')
           ) as v(label, option_text)
 where q.question_hash = '11159cd2e6390200c0fc933873a5499c'
on conflict (question_id, label) do nothing;

-- science_tech | biology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    '''Vaccination'' was pioneered by:',
    'Louis Pasteur developed the first vaccines, against rabies and anthrax, and is called the founder of microbiology.',
    'easy',
    'NCERT Class XII (Biology)',
    null,
    '5de5a7bcfac356223722b66d7c1a9fce'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '5de5a7bcfac356223722b66d7c1a9fce'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Joseph Lister'),
            ('B', 'Louis Pasteur'),
            ('C', 'Robert Koch'),
            ('D', 'Alexander Fleming')
           ) as v(label, option_text)
 where q.question_hash = '5de5a7bcfac356223722b66d7c1a9fce'
on conflict (question_id, label) do nothing;

-- science_tech | biology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The ''cell membrane'' is made of:',
    'The fluid mosaic model describes the cell membrane as a phospholipid bilayer with proteins embedded in it, and it was proposed by Singer and Nicolson.',
    'easy',
    'NCERT Class XI (Biology)',
    null,
    'ee3a2465cbb6bde7a513828219d02cdf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'ee3a2465cbb6bde7a513828219d02cdf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Chitin and proteins'),
            ('B', 'Peptidoglycan'),
            ('C', 'Cellulose and pectin'),
            ('D', 'A phospholipid bilayer with proteins')
           ) as v(label, option_text)
 where q.question_hash = 'ee3a2465cbb6bde7a513828219d02cdf'
on conflict (question_id, label) do nothing;

-- science_tech | biology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The ''mitochondria'' and the ''chloroplasts'' are called:',
    'Mitochondria and chloroplasts are called semi-autonomous organelles because they have their own DNA and can divide, though most of their proteins are encoded by the nuclear genes.',
    'medium',
    'NCERT Class XI (Biology)',
    null,
    'b8abb34155cbd9754983329f37d0312c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'b8abb34155cbd9754983329f37d0312c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Semi-autonomous organelles'),
            ('B', 'Endoplasmic reticulum'),
            ('C', 'Ribosomes'),
            ('D', 'Lysosomes')
           ) as v(label, option_text)
 where q.question_hash = 'b8abb34155cbd9754983329f37d0312c'
on conflict (question_id, label) do nothing;

-- science_tech | biology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The ''master of the cell'' is the:',
    'The nucleus, which controls all the cellular activities and holds the genetic material, is called the master of the cell.',
    'easy',
    'NCERT Class XI (Biology)',
    null,
    '707d4f06d1bcb9e001980f9e99c9aa2c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '707d4f06d1bcb9e001980f9e99c9aa2c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Nucleus'),
            ('B', 'Ribosome'),
            ('C', 'Mitochondrion'),
            ('D', 'Golgi body')
           ) as v(label, option_text)
 where q.question_hash = '707d4f06d1bcb9e001980f9e99c9aa2c'
on conflict (question_id, label) do nothing;

-- science_tech | biology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The ''powerhouse of the cell'' is the:',
    'The mitochondria are called the powerhouse of the cell because they produce ATP through oxidative phosphorylation.',
    'easy',
    'NCERT Class XI (Biology)',
    null,
    'd5a3d484705038fa927d7908671e7a72'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd5a3d484705038fa927d7908671e7a72'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ribosome'),
            ('B', 'Mitochondrion'),
            ('C', 'Golgi body'),
            ('D', 'Nucleus')
           ) as v(label, option_text)
 where q.question_hash = 'd5a3d484705038fa927d7908671e7a72'
on conflict (question_id, label) do nothing;

-- science_tech | biology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The ''protein synthesis'' in a cell takes place in the:',
    'The ribosomes, made of ribosomal RNA and proteins, are the site of protein synthesis, and the rough endoplasmic reticulum has embedded ribosomes.',
    'easy',
    'NCERT Class XI (Biology)',
    null,
    '1a685ba158841ab69e41c87341dc5d9e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '1a685ba158841ab69e41c87341dc5d9e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Lysosome'),
            ('B', 'Peroxisome'),
            ('C', 'Ribosome'),
            ('D', 'Golgi body')
           ) as v(label, option_text)
 where q.question_hash = '1a685ba158841ab69e41c87341dc5d9e'
on conflict (question_id, label) do nothing;

-- science_tech | biology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The '' lysosome'' is called the:',
    'The lysosome, containing hydrolytic enzymes, is called the suicide bag of the cell because it can digest the cell''s own contents and the cell when the membrane ruptures.',
    'medium',
    'NCERT Class XI (Biology)',
    null,
    '08d1a5da54db9c8465f9e8785ddefcb3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '08d1a5da54db9c8465f9e8785ddefcb3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Powerhouse of the cell'),
            ('B', 'Master of the cell'),
            ('C', 'Junk box of the cell'),
            ('D', 'Suicide bag of the cell')
           ) as v(label, option_text)
 where q.question_hash = '08d1a5da54db9c8465f9e8785ddefcb3'
on conflict (question_id, label) do nothing;

-- science_tech | biology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The ''centriole'' is found in:',
    'The centrioles are present in the centrosome of the animal cells and are absent in the plant cells.',
    'easy',
    'NCERT Class XI (Biology)',
    null,
    'e0e806ccfc34ce598429298312da5d8e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e0e806ccfc34ce598429298312da5d8e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Both plant and animal cells'),
            ('B', 'Only in bacterial cells'),
            ('C', 'Only in animal cells'),
            ('D', 'Only in plant cells')
           ) as v(label, option_text)
 where q.question_hash = 'e0e806ccfc34ce598429298312da5d8e'
on conflict (question_id, label) do nothing;

-- science_tech | biology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The ''genetic material'' of a bacteriophage is:',
    'In a bacteriophage the genetic material may be DNA or RNA depending on the type of phage, as in the case of the RNA phages of the E. coli.',
    'medium',
    'Standard Reference',
    null,
    '985b4cc1c68b50835e2bf4fbc0b48653'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '985b4cc1c68b50835e2bf4fbc0b48653'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'DNA or RNA'),
            ('B', 'Protein only'),
            ('C', 'RNA only'),
            ('D', 'DNA only')
           ) as v(label, option_text)
 where q.question_hash = '985b4cc1c68b50835e2bf4fbc0b48653'
on conflict (question_id, label) do nothing;

-- science_tech | biology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The ''double helix'' structure of DNA was proposed by:',
    'The double helix model of DNA was published by Watson and Crick in 1953, drawing crucially on the X-ray diffraction work of Rosalind Franklin and Maurice Wilkins.',
    'easy',
    'NCERT Class XII (Biology)',
    null,
    '01334cea6c8d8c73d71c19d505ed10e9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '01334cea6c8d8c73d71c19d505ed10e9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Watson and Crick'),
            ('B', 'Watson, Crick, Franklin and Wilkins'),
            ('C', 'Mendel and Morgan'),
            ('D', 'Darwin and Wallace')
           ) as v(label, option_text)
 where q.question_hash = '01334cea6c8d8c73d71c19d505ed10e9'
on conflict (question_id, label) do nothing;

-- science_tech | biology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The ''discovery of the structure of DNA'' and the Nobel Prize of 1962 was awarded to:',
    'The Nobel Prize in Physiology or Medicine of 1962 was awarded to Watson, Crick and Wilkins, and Rosalind Franklin''s death in 1958 meant she was not eligible.',
    'hard',
    'Standard Reference',
    null,
    '3d82184223d647a2852b4b52dbcbedd8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '3d82184223d647a2852b4b52dbcbedd8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Linus Pauling'),
            ('B', 'Francis Crick alone'),
            ('C', 'Maurice Wilkins and Rosalind Franklin'),
            ('D', 'Watson, Crick and Wilkins')
           ) as v(label, option_text)
 where q.question_hash = '3d82184223d647a2852b4b52dbcbedd8'
on conflict (question_id, label) do nothing;

-- science_tech | biology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The ''Mendelian'' laws of inheritance were based on the experiments on:',
    'Gregor Mendel experimented on the garden pea in his monastery garden at Brno and formulated the laws of inheritance.',
    'easy',
    'NCERT Class XII (Biology)',
    null,
    'c8f8a268b0564caf3a9511dd5d40b922'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'c8f8a268b0564caf3a9511dd5d40b922'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Maize'),
            ('B', 'The fruit fly'),
            ('C', 'The rat'),
            ('D', 'The garden pea')
           ) as v(label, option_text)
 where q.question_hash = 'c8f8a268b0564caf3a9511dd5d40b922'
on conflict (question_id, label) do nothing;

-- science_tech | biology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The ''chromosomal theory of inheritance'' was proposed by:',
    'Sutton and Boveri in 1902 independently proposed that the chromosomes carry the Mendelian factors, and Thomas Hunt Morgan''s experiments on the fruit fly confirmed it.',
    'medium',
    'Standard Reference',
    null,
    'f44a9e4e952868ed1043a0891dd9173f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f44a9e4e952868ed1043a0891dd9173f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Mendel'),
            ('B', 'Sutton and Boveri'),
            ('C', 'Morgan'),
            ('D', 'Darwin')
           ) as v(label, option_text)
 where q.question_hash = 'f44a9e4e952868ed1043a0891dd9173f'
on conflict (question_id, label) do nothing;

-- science_tech | biology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The ''sex determination'' in human beings is:',
    'In humans the sex is determined by the X and Y chromosomes, with the Y chromosome carrying the SRY gene that initiates male development.',
    'easy',
    'NCERT Class XII (Biology)',
    null,
    '96d934ad2ca5942ef064c64be0bb72f1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '96d934ad2ca5942ef064c64be0bb72f1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Autosomes only'),
            ('B', 'Haplodiploidy'),
            ('C', 'X and Y chromosomes'),
            ('D', 'X and Z chromosomes')
           ) as v(label, option_text)
 where q.question_hash = '96d934ad2ca5942ef064c64be0bb72f1'
on conflict (question_id, label) do nothing;

-- science_tech | biology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    '''Sickle cell anaemia'' is a genetic disorder of:',
    'Sickle cell anaemia is caused by a single base substitution in the beta globin gene, and the molecular basis was worked out by Linus Pauling.',
    'medium',
    'Standard Reference',
    null,
    '7a0ce73a03a064a0524a9d255dcae46c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '7a0ce73a03a064a0524a9d255dcae46c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The haemoglobin'),
            ('B', 'The pancreas'),
            ('C', 'The retina'),
            ('D', 'The bone marrow only')
           ) as v(label, option_text)
 where q.question_hash = '7a0ce73a03a064a0524a9d255dcae46c'
on conflict (question_id, label) do nothing;

-- science_tech | biology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The ''genetic disorder'' of Down''s syndrome is:',
    'Down''s syndrome is caused by the presence of an extra copy of chromosome 21, and it was the first human disorder to be linked to a chromosomal abnormality.',
    'medium',
    'NCERT Class XII (Biology)',
    null,
    'bbfe7952884e9acbdde21628f4b2d418'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'bbfe7952884e9acbdde21628f4b2d418'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Monosomy of chromosome 5'),
            ('B', 'A recessive gene mutation'),
            ('C', 'Trisomy of chromosome 21'),
            ('D', 'Deletion of a chromosome')
           ) as v(label, option_text)
 where q.question_hash = 'bbfe7952884e9acbdde21628f4b2d418'
on conflict (question_id, label) do nothing;

-- science_tech | biology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The ''Turner''s syndrome'' is associated with:',
    'Turner''s syndrome is a monosomy of the X chromosome, with a karyotype of 45,X, and it was the first human disorder to be linked to a chromosomal abnormality.',
    'hard',
    'Standard Reference',
    null,
    '5fb6a6d40a377821f06970ecda7d5a33'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '5fb6a6d40a377821f06970ecda7d5a33'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '46,XY'),
            ('B', '45,X'),
            ('C', '47,XXY'),
            ('D', '47,Down')
           ) as v(label, option_text)
 where q.question_hash = '5fb6a6d40a377821f06970ecda7d5a33'
on conflict (question_id, label) do nothing;

-- science_tech | biology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The ''Klinefelter''s syndrome'' has the karyotype:',
    'Klinefelter''s syndrome is 47,XXY, with an extra X chromosome in a phenotypic male.',
    'medium',
    'Standard Reference',
    null,
    '6e7a74a858e73e45f79df46093379371'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '6e7a74a858e73e45f79df46093379371'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '47,XXY'),
            ('B', '47,XXX'),
            ('C', '46,XY'),
            ('D', '45,X')
           ) as v(label, option_text)
 where q.question_hash = '6e7a74a858e73e45f79df46093379371'
on conflict (question_id, label) do nothing;

-- science_tech | biology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The ''Hardy-Weinberg principle'' states that:',
    'The Hardy-Weinberg principle states that the allele and genotype frequencies in a population remain constant in the absence of mutation, migration, selection and genetic drift.',
    'medium',
    'NCERT Class XII (Biology)',
    null,
    '90bed04195917e875effb8a071210bcc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '90bed04195917e875effb8a071210bcc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Genes are inherited in a Mendelian ratio'),
            ('B', 'Mutation is the only source of variation'),
            ('C', 'Selection always increases fitness'),
            ('D', 'Allele frequencies in a population remain constant across generations in the absence of evolutionary forces')
           ) as v(label, option_text)
 where q.question_hash = '90bed04195917e875effb8a071210bcc'
on conflict (question_id, label) do nothing;

-- science_tech | biology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The ''FOOD and agriculture'' and the ''photosynthesis'':',
    'In the light reaction the water is split and oxygen is released in the thylakoid membranes, while the carbon fixation or the Calvin cycle occurs in the stroma of the chloroplast.',
    'easy',
    'NCERT Class XI (Biology)',
    null,
    '2783df1159dcfb2aa75ee5d7245edea5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '2783df1159dcfb2aa75ee5d7245edea5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Both occur in the thylakoid'),
            ('B', 'Both occur in the cytoplasm'),
            ('C', 'The light reaction occurs in the thylakoid and the dark reaction in the stroma'),
            ('D', 'Both occur in the stroma')
           ) as v(label, option_text)
 where q.question_hash = '2783df1159dcfb2aa75ee5d7245edea5'
on conflict (question_id, label) do nothing;

-- science_tech | biology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The ''C4 plants'' differ from the C3 plants in:',
    'The C4 plants use a different initial carbon acceptor and show almost no photorespiration, and the Kranz anatomy is characteristic of them.',
    'medium',
    'NCERT Class XI (Biology)',
    null,
    '2b2c97acfe659a394f155dc13969c3ef'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '2b2c97acfe659a394f155dc13969c3ef'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'They do not perform photorespiration'),
            ('B', 'They have no chloroplasts'),
            ('C', 'They lack the Kranz anatomy'),
            ('D', 'They have a different carbon acceptor')
           ) as v(label, option_text)
 where q.question_hash = '2b2c97acfe659a394f155dc13969c3ef'
on conflict (question_id, label) do nothing;

-- science_tech | biology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The ''cyclic photophosphorylation'' produces:',
    'The cyclic photophosphorylation produces only ATP, since it involves photosystem I alone and no photolysis of water or formation of NADPH.',
    'medium',
    'Standard Reference',
    null,
    '797c3119c0a1295b421e99ccf43f761b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '797c3119c0a1295b421e99ccf43f761b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Glucose'),
            ('B', 'ATP only'),
            ('C', 'ATP and NADPH'),
            ('D', 'NADPH only')
           ) as v(label, option_text)
 where q.question_hash = '797c3119c0a1295b421e99ccf43f761b'
on conflict (question_id, label) do nothing;

-- science_tech | biology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The ''human insulin'' was first produced by recombinant DNA technology in:',
    'Genentech produced the first recombinant human insulin in 1978, and it was marketed from 1982, the first recombinant medicine to be approved.',
    'hard',
    'Standard Reference',
    null,
    '6cf39e4e116a6be8ebe1599f5d7ee6a3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '6cf39e4e116a6be8ebe1599f5d7ee6a3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1982'),
            ('B', '1990'),
            ('C', '1969'),
            ('D', '1977')
           ) as v(label, option_text)
 where q.question_hash = '6cf39e4e116a6be8ebe1599f5d7ee6a3'
on conflict (question_id, label) do nothing;

-- science_tech | biology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    '''Bt cotton'' uses the gene from:',
    'Bt cotton carries the cry gene from Bacillus thuringiensis, which codes for a toxin protein that kills the cotton bollworm.',
    'easy',
    'NCERT Class XII (Biology)',
    null,
    '46a5a889fce8fa03229054bd1e50b62f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '46a5a889fce8fa03229054bd1e50b62f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bacillus thuringiensis'),
            ('B', 'Escherichia coli'),
            ('C', 'Pseudomonas putida'),
            ('D', 'Bacillus anthracis')
           ) as v(label, option_text)
 where q.question_hash = '46a5a889fce8fa03229054bd1e50b62f'
on conflict (question_id, label) do nothing;

-- science_tech | biology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The ''Golden Rice'' is rich in:',
    'Golden Rice is genetically modified to produce beta-carotene, a precursor of vitamin A, in the endosperm of the rice grain.',
    'easy',
    'Standard Reference',
    null,
    '9e6b1a3131186f4dcb50d54a9341019f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '9e6b1a3131186f4dcb50d54a9341019f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Protein'),
            ('B', 'Vitamin A'),
            ('C', 'Vitamin C'),
            ('D', 'Iron')
           ) as v(label, option_text)
 where q.question_hash = '9e6b1a3131186f4dcb50d54a9341019f'
on conflict (question_id, label) do nothing;

-- science_tech | biology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The ''RNA interference'' or RNAi technology is based on:',
    'RNA interference silences a specific gene by the base pairing of a small interfering RNA with the complementary mRNA, and it was discovered by Andrew Fire and Craig Mello.',
    'medium',
    'Standard Reference',
    null,
    'f7b097a81b2f6dbc6749949ad06a71f6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'f7b097a81b2f6dbc6749949ad06a71f6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The polymerase chain reaction'),
            ('B', 'The use of a restriction enzyme'),
            ('C', 'The hybridisation of two DNA strands'),
            ('D', 'The complementary base pairing of RNA with the target mRNA')
           ) as v(label, option_text)
 where q.question_hash = 'f7b097a81b2f6dbc6749949ad06a71f6'
on conflict (question_id, label) do nothing;

-- science_tech | biology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The ''restriction enzyme'' discovery and the Nobel Prize of 1978 was awarded to:',
    'The Nobel Prize in Physiology or Medicine of 1978 was shared by Arber, Smith and Nathans for the discovery of the restriction enzymes and their use in the study of the structure of DNA.',
    'medium',
    'Standard Reference',
    null,
    '54ef394cec7cdd25844ad7bddd9a4e3a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '54ef394cec7cdd25844ad7bddd9a4e3a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Meselson and Stahl'),
            ('B', 'Leder and Nirenberg'),
            ('C', 'Werner Arber, Hamilton Smith and Daniel Nathans'),
            ('D', 'Watson and Crick')
           ) as v(label, option_text)
 where q.question_hash = '54ef394cec7cdd25844ad7bddd9a4e3a'
on conflict (question_id, label) do nothing;

-- science_tech | biology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The ''first successful human organ transplant'' was the:',
    'The first successful human organ transplant was a kidney transplant performed by Joseph Murray in 1954, for which he received the Nobel Prize in 1990.',
    'medium',
    'Standard Reference',
    null,
    'dce433f345656c6bc5247270564fc105'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'dce433f345656c6bc5247270564fc105'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Liver'),
            ('B', 'Lung'),
            ('C', 'Kidney'),
            ('D', 'Heart')
           ) as v(label, option_text)
 where q.question_hash = 'dce433f345656c6bc5247270564fc105'
on conflict (question_id, label) do nothing;

-- science_tech | biology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The ''Louis Pasteur Institute'' is at:',
    'The Institut Pasteur is in Paris, and it was named after Louis Pasteur, who worked there in the laboratory he founded.',
    'hard',
    'Standard Reference',
    null,
    'c7c140d6dec69a22301f907027b94d06'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'c7c140d6dec69a22301f907027b94d06'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'London'),
            ('B', 'Berlin'),
            ('C', 'New York'),
            ('D', 'Paris')
           ) as v(label, option_text)
 where q.question_hash = 'c7c140d6dec69a22301f907027b94d06'
on conflict (question_id, label) do nothing;

-- science_tech | biology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The ''immune system'' and the ''antibodies'':',
    'Antibodies are the proteins produced by the B lymphocytes in response to an antigen, and they are the basis of humoral immunity.',
    'easy',
    'NCERT Class XII (Biology)',
    null,
    '184944ad31c4292465e18969b082cfbc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '184944ad31c4292465e18969b082cfbc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Antibodies are hormones'),
            ('B', 'Antibodies are produced by the lymphocytes, particularly the B cells'),
            ('C', 'Antibodies are produced by the RBCs'),
            ('D', 'Antibodies are part of the blood clotting cascade')
           ) as v(label, option_text)
 where q.question_hash = '184944ad31c4292465e18969b082cfbc'
on conflict (question_id, label) do nothing;

-- science_tech | biology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The ''vaccination'' and the ''memory cells'':',
    'The memory B and T cells are responsible for the secondary immune response, which is faster and stronger, and this is the basis of the effectiveness of vaccination.',
    'medium',
    'Standard Reference',
    null,
    '1b8d3e666b6a4e2c5c631604bfda9402'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '1b8d3e666b6a4e2c5c631604bfda9402'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Memory cells enable a faster response on a second exposure to an antigen'),
            ('B', 'Memory cells produce oxygen'),
            ('C', 'Memory cells are red blood cells'),
            ('D', 'Memory cells are found only in the blood')
           ) as v(label, option_text)
 where q.question_hash = '1b8d3e666b6a4e2c5c631604bfda9402'
on conflict (question_id, label) do nothing;

-- science_tech | biology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The ''human genome project'' was completed in:',
    'The Human Genome Project was declared complete in April 2003, and the 3.1 billion base pairs of the human genome were mapped.',
    'medium',
    'Standard Reference',
    null,
    '913134b5a1d112408ff3fd8080009015'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '913134b5a1d112408ff3fd8080009015'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1990'),
            ('B', '2001'),
            ('C', '2003'),
            ('D', '1997')
           ) as v(label, option_text)
 where q.question_hash = '913134b5a1d112408ff3fd8080009015'
on conflict (question_id, label) do nothing;

-- science_tech | biology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The ''DNA fingerprinting'' was first used in India in the:',
    'DNA fingerprinting was first used in India in the 1993 Bombay blasts case, after the 1984 case in the Rajiv Gandhi assassination had also raised the issue of sampling.',
    'hard',
    'Standard Reference',
    null,
    '27a2997ad29abd0f3316d17a63f07985'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '27a2997ad29abd0f3316d17a63f07985'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1993 Bombay blasts case'),
            ('B', '1975 Emergency'),
            ('C', '1999 Pokhran tests'),
            ('D', '1984 case of Rajiv Gandhi')
           ) as v(label, option_text)
 where q.question_hash = '27a2997ad29abd0f3316d17a63f07985'
on conflict (question_id, label) do nothing;

-- science_tech | biology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The ''stem cell therapy'' and the ''1998 Nobel Prize'' was awarded to:',
    'The 2012 Nobel Prize in Physiology or Medicine was awarded to John Gurdon and Shinya Yamanaka for the discovery that mature cells can be reprogrammed to become pluripotent.',
    'hard',
    'Standard Reference',
    null,
    'cad578ce0d49102c04e135ba32af3e54'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'cad578ce0d49102c04e135ba32af3e54'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Murray and Thomas'),
            ('B', 'Fleming and Florey'),
            ('C', 'Baltimore and G Nobel'),
            ('D', 'Gurdon and Yamanaka')
           ) as v(label, option_text)
 where q.question_hash = 'cad578ce0d49102c04e135ba32af3e54'
on conflict (question_id, label) do nothing;

-- science_tech | biology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The ''Biotechnology and the insulin'' and the ''recombinant DNA technology'':',
    'Paul Berg created the first recombinant DNA molecule in 1972, and Boyer and Cohen developed the technique of transferring a gene from one organism to another.',
    'medium',
    'Standard Reference',
    null,
    'ff2a80496a301533b1977c492a601480'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'ff2a80496a301533b1977c492a601480'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It was developed by Gregor Mendel'),
            ('B', 'Recombinant DNA technology was developed by Paul Berg, Herbert Boyer and Stanley Cohen'),
            ('C', 'It was developed by Watson and Crick'),
            ('D', 'It was developed by Alexander Fleming')
           ) as v(label, option_text)
 where q.question_hash = 'ff2a80496a301533b1977c492a601480'
on conflict (question_id, label) do nothing;

-- science_tech | biology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The ''human milk'' contains:',
    'The first few days of breast milk are the colostrum, which is rich in antibodies such as the immunoglobulin A and gives the newborn passive immunity.',
    'easy',
    'NCERT Class XII (Biology)',
    null,
    '4383a77dd3d4f8218decc408a36d483a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '4383a77dd3d4f8218decc408a36d483a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'No antibodies'),
            ('B', 'Only carbohydrates'),
            ('C', 'Digestive enzymes only'),
            ('D', 'Colostrum with antibodies in the first days')
           ) as v(label, option_text)
 where q.question_hash = '4383a77dd3d4f8218decc408a36d483a'
on conflict (question_id, label) do nothing;

-- science_tech | biology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The ''biodiversity hotspots'' in the ''Western Ghats'' and the ''endemic species'':',
    'The Western Ghats and the Himalaya harbour the largest number of endemic species of India, and the Western Ghats are one of the world''s 36 biodiversity hotspots.',
    'medium',
    'Standard Reference',
    null,
    'c7f8e4d01f4ca86f2ce5db4e919c726e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c7f8e4d01f4ca86f2ce5db4e919c726e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'There are no endemic species in India'),
            ('B', 'Endemic species are found only in the desert'),
            ('C', 'Most of the endemic species of India occur in the Western Ghats and the Himalaya'),
            ('D', 'All the endemic species are marine')
           ) as v(label, option_text)
 where q.question_hash = 'c7f8e4d01f4ca86f2ce5db4e919c726e'
on conflict (question_id, label) do nothing;

-- science_tech | biology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The ''brain'' and the ''reflex arc'':',
    'A reflex arc is a neural pathway that controls a reflex and does not require the involvement of the conscious brain, which makes the response very rapid.',
    'medium',
    'NCERT Class XI (Biology)',
    null,
    'c8ce9bff47e5bc880248d3b310daa568'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'c8ce9bff47e5bc880248d3b310daa568'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The reflex arc is a learned response'),
            ('B', 'The reflex arc is mediated by the spinal cord and does not involve the conscious brain'),
            ('C', 'The reflex arc is controlled by the cerebrum'),
            ('D', 'The reflex arc requires the cerebral cortex')
           ) as v(label, option_text)
 where q.question_hash = 'c8ce9bff47e5bc880248d3b310daa568'
on conflict (question_id, label) do nothing;

-- science_tech | biology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The ''human eye'' and the ''blind spot'':',
    'The blind spot is the point on the retina where the optic nerve leaves and where there are no photoreceptors, so no image is formed there.',
    'easy',
    'NCERT Class XI (Biology)',
    null,
    'bd667dfd011d9d8bd5f9716e8311ab9c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'bd667dfd011d9d8bd5f9716e8311ab9c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is the region where the optic nerve leaves the retina'),
            ('B', 'It is the fovea'),
            ('C', 'It is the lens'),
            ('D', 'It is the yellow spot')
           ) as v(label, option_text)
 where q.question_hash = 'bd667dfd011d9d8bd5f9716e8311ab9c'
on conflict (question_id, label) do nothing;

-- science_tech | biology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The ''Insulin'' is secreted by the:',
    'Insulin is secreted by the beta cells of the Islets of Langerhans, while the alpha cells secrete glucagon.',
    'easy',
    'NCERT Class XI (Biology)',
    null,
    'a8bc9cc7aa3d4f84d7720c54ffcf94a8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'a8bc9cc7aa3d4f84d7720c54ffcf94a8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Pituitary'),
            ('B', 'Alpha cells of the Islets of Langerhans'),
            ('C', 'Beta cells of the Islets of Langerhans'),
            ('D', 'Adrenal cortex')
           ) as v(label, option_text)
 where q.question_hash = 'a8bc9cc7aa3d4f84d7720c54ffcf94a8'
on conflict (question_id, label) do nothing;

-- science_tech | biology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The ''excretory products'' of the human body:',
    'The human kidney excretes urea, uric acid, creatinine and ammonia, and the composition varies with the water intake and the diet.',
    'medium',
    'NCERT Class XI (Biology)',
    null,
    'ffc9e26cf2b1b6d99babd39acbbad893'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'ffc9e26cf2b1b6d99babd39acbbad893'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Only urea'),
            ('B', 'Only uric acid'),
            ('C', 'Carbon dioxide and water'),
            ('D', 'Urea, uric acid, creatinine and ammonia')
           ) as v(label, option_text)
 where q.question_hash = 'ffc9e26cf2b1b6d99babd39acbbad893'
on conflict (question_id, label) do nothing;

-- science_tech | biology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The ''ozone layer'' and the ''skin cancer'':',
    'Depletion of the stratospheric ozone layer allows more harmful ultraviolet radiation to reach the surface, raising the incidence of skin cancer and cataract.',
    'easy',
    'Standard Reference',
    null,
    '1a1cc341722f4a4fddfe0b147f48e382'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '1a1cc341722f4a4fddfe0b147f48e382'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ozone increases the photosynthesis'),
            ('B', 'Depletion of the ozone layer increases the incidence of skin cancer'),
            ('C', 'Ozone protects the skin'),
            ('D', 'Ozone causes the depletion of the ozone layer')
           ) as v(label, option_text)
 where q.question_hash = '1a1cc341722f4a4fddfe0b147f48e382'
on conflict (question_id, label) do nothing;

-- science_tech | biology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The ''ecological pyramids'' and the ''pyramid of numbers'' in a grassland:',
    'In a grassland ecosystem the pyramid of numbers is upright, while in a tree ecosystem it is inverted.',
    'medium',
    'NCERT Class XII (Biology)',
    null,
    '3e5e702eca8d903be63e7ff457d6f567'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '3e5e702eca8d903be63e7ff457d6f567'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is upright'),
            ('B', 'Is inverted'),
            ('C', 'Is spindle shaped'),
            ('D', 'Does not exist')
           ) as v(label, option_text)
 where q.question_hash = '3e5e702eca8d903be63e7ff457d6f567'
on conflict (question_id, label) do nothing;

-- science_tech | biology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The ''sulphur cycle'' in nature is:',
    'The sulphur cycle is a gaseous cycle because sulphur dioxide released by respiration and decomposition returns to the atmosphere and is brought back by precipitation.',
    'medium',
    'Standard Reference',
    null,
    '989a7688d41b0bea6b04ed0214a2045e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '989a7688d41b0bea6b04ed0214a2045e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A gaseous cycle'),
            ('B', 'A sedimentary cycle'),
            ('C', 'An aquatic cycle'),
            ('D', 'A seasonal cycle')
           ) as v(label, option_text)
 where q.question_hash = '989a7688d41b0bea6b04ed0214a2045e'
on conflict (question_id, label) do nothing;

-- science_tech | biology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The ''Michaelis-Menten'' kinetics is related to:',
    'The Michaelis-Menten equation describes the relationship between the reaction velocity and the substrate concentration for an enzyme-catalysed reaction.',
    'hard',
    'Standard Reference',
    null,
    '085bd4f18f2c3d7150979974c5141d30'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '085bd4f18f2c3d7150979974c5141d30'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Polymerisation'),
            ('B', 'Enzyme reactions'),
            ('C', 'Nuclear reactions'),
            ('D', 'Radioactive decay')
           ) as v(label, option_text)
 where q.question_hash = '085bd4f18f2c3d7150979974c5141d30'
on conflict (question_id, label) do nothing;

-- science_tech | space | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'The ''Chandrayaan-2'' mission included a:',
    'Chandrayaan-2, launched in July 2019, comprised an orbiter, the Vikram lander and the Pragyan rover, and the lander failed in September 2019.',
    'easy',
    'Standard Reference',
    null,
    '62c50caca37b567b671c74f0281b4ed5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '62c50caca37b567b671c74f0281b4ed5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Only an orbiter'),
            ('B', 'Only a lander'),
            ('C', 'A sample return mission'),
            ('D', 'Orbiter, Vikram lander and Pragyan rover')
           ) as v(label, option_text)
 where q.question_hash = '62c50caca37b567b671c74f0281b4ed5'
on conflict (question_id, label) do nothing;

-- science_tech | space | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'The ''Chandrayaan-3'' mission:',
    'Chandrayaan-3, launched in July 2023, achieved a soft landing near the lunar south pole on 23 August 2023, making India the fourth country to land on the Moon.',
    'easy',
    'Standard Reference',
    null,
    'd4bba8941cb2c46598d32f6c0d0c6b12'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd4bba8941cb2c46598d32f6c0d0c6b12'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was a Mars orbiter'),
            ('B', 'Was a crewed mission'),
            ('C', 'Landed near the south pole of the Moon in August 2023'),
            ('D', 'Orbited Venus')
           ) as v(label, option_text)
 where q.question_hash = 'd4bba8941cb2c46598d32f6c0d0c6b12'
on conflict (question_id, label) do nothing;

-- science_tech | space | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'The ''Mangalyaan'' was India''s:',
    'Mangalyaan, launched in November 2013, was India''s first Mars mission and the first space mission of any country to succeed on the first attempt.',
    'easy',
    'Standard Reference',
    null,
    'cc39704c4a1c152ac3d9053161b67bd1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'cc39704c4a1c152ac3d9053161b67bd1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'First manned mission'),
            ('B', 'First Mars mission, launched in 2013'),
            ('C', 'First lunar mission'),
            ('D', 'First solar mission')
           ) as v(label, option_text)
 where q.question_hash = 'cc39704c4a1c152ac3d9053161b67bd1'
on conflict (question_id, label) do nothing;

-- science_tech | space | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'The ''Aditya-L1'' mission was launched to study:',
    'Aditya-L1, launched in July 2023, is a solar observatory mission to study the corona of the Sun from an orbit around the Lagrange point L1.',
    'easy',
    'Standard Reference',
    null,
    '6a49b4b6848541e7cf602bded9b78002'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '6a49b4b6848541e7cf602bded9b78002'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Sun'),
            ('B', 'Venus'),
            ('C', 'The outer heliosphere'),
            ('D', 'A comet')
           ) as v(label, option_text)
 where q.question_hash = '6a49b4b6848541e7cf602bded9b78002'
on conflict (question_id, label) do nothing;

-- science_tech | space | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'The ''Chandrayaan-1'' mission was launched in:',
    'Chandrayaan-1 was launched in October 2008 and was the first Indian lunar mission, and it also confirmed the presence of water molecules on the Moon.',
    'medium',
    'Standard Reference',
    null,
    '1472e00c66feb0f219400c49a4e1546e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '1472e00c66feb0f219400c49a4e1546e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1997'),
            ('B', '2003'),
            ('C', '2013'),
            ('D', '2008')
           ) as v(label, option_text)
 where q.question_hash = '1472e00c66feb0f219400c49a4e1546e'
on conflict (question_id, label) do nothing;

-- science_tech | space | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'The ''Vikram Sarabhai Space Centre'' is at:',
    'The Vikram Sarabhai Space Centre is at Thiruvananthapuram in Kerala, and the Satish Dhawan Space Centre with the launch complex is at Sriharikota.',
    'easy',
    'Standard Reference',
    null,
    '8bdce7d3e4a6a470a187ca02cca670c0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '8bdce7d3e4a6a470a187ca02cca670c0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sriharikota'),
            ('B', 'Hyderabad'),
            ('C', 'Thiruvananthapuram'),
            ('D', 'Bengaluru')
           ) as v(label, option_text)
 where q.question_hash = '8bdce7d3e4a6a470a187ca02cca670c0'
on conflict (question_id, label) do nothing;

-- science_tech | space | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'The ''Satish Dhawan Space Centre'' is at:',
    'The Satish Dhawan Space Centre, the space port of India with the first and second launch pads, is at Sriharikota on the coast of Andhra Pradesh.',
    'medium',
    'Standard Reference',
    null,
    'df99f42b4f9a37841117a24992fc91df'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'df99f42b4f9a37841117a24992fc91df'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Hyderabad'),
            ('B', 'Sriharikota in Andhra Pradesh'),
            ('C', 'Thiruvananthapuram'),
            ('D', 'Bengaluru')
           ) as v(label, option_text)
 where q.question_hash = 'df99f42b4f9a37841117a24992fc91df'
on conflict (question_id, label) do nothing;

-- science_tech | space | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'The ''PSLV'' and the ''GSLV'' differ in that:',
    'The PSLV is a launch vehicle for satellites in the low earth orbit, while the GSLV is an indigenous launch vehicle that places the satellites in the geosynchronous transfer orbit.',
    'medium',
    'Standard Reference',
    null,
    'b8da0ac24952294f3505282a0e28e713'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'b8da0ac24952294f3505282a0e28e713'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The GSLV is a launch vehicle and the PSLV is a satellite'),
            ('B', 'Both are satellites'),
            ('C', 'Both are launch vehicles for Mars'),
            ('D', 'The PSLV is a launch vehicle and the GSLV places the satellites in the geosynchronous orbit')
           ) as v(label, option_text)
 where q.question_hash = 'b8da0ac24952294f3505282a0e28e713'
on conflict (question_id, label) do nothing;

-- science_tech | space | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'The ''IRS'' series of satellites are for:',
    'The Indian Remote Sensing satellites, the IRS series, are used for the survey of the natural resources, and the Cartosat series is meant for cartographic applications.',
    'medium',
    'Standard Reference',
    null,
    '8828ddc0ced64473a026034f5c300c01'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '8828ddc0ced64473a026034f5c300c01'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Navigation'),
            ('B', 'Weather forecasting only'),
            ('C', 'Earth resources and remote sensing'),
            ('D', 'Communication')
           ) as v(label, option_text)
 where q.question_hash = '8828ddc0ced64473a026034f5c300c01'
on conflict (question_id, label) do nothing;

-- science_tech | space | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'The ''NAVIC'' or the Indian GPS equivalent is:',
    'NAVIC, the Indian Navigation Satellite System, is a regional navigation system covering India and 1,500 km around it, and it was completed in 2016.',
    'medium',
    'Standard Reference',
    null,
    'e085c1c257b0e40de474f5b7c440a168'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'e085c1c257b0e40de474f5b7c440a168'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A regional navigation system'),
            ('B', 'A weather satellite'),
            ('C', 'A lunar probe'),
            ('D', 'A remote sensing satellite')
           ) as v(label, option_text)
 where q.question_hash = 'e085c1c257b0e40de474f5b7c440a168'
on conflict (question_id, label) do nothing;

-- science_tech | space | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'The ''GSAT'' series of satellites:',
    'The GSAT series of geostationary communication satellites provides communication services over the Indian region.',
    'medium',
    'Standard Reference',
    null,
    'fac82b69d2782fa1a3738fe564273822'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'fac82b69d2782fa1a3738fe564273822'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Are communication satellites'),
            ('B', 'Are navigation satellites'),
            ('C', 'Are remote sensing satellites'),
            ('D', 'Are meteorological satellites')
           ) as v(label, option_text)
 where q.question_hash = 'fac82b69d2782fa1a3738fe564273822'
on conflict (question_id, label) do nothing;

-- science_tech | space | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'The ''light year'' is the:',
    'A light year is the distance that light travels in one Julian year, about 9.46 trillion kilometres, and it is a unit of distance, not of time.',
    'easy',
    'Standard Reference',
    null,
    '6e5ebd80c60be8895cf3510247b0ff08'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '6e5ebd80c60be8895cf3510247b0ff08'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Time taken by light to travel one year'),
            ('B', 'Distance from the Sun to the nearest star'),
            ('C', 'Brightness of a star'),
            ('D', 'Distance travelled by light in one year')
           ) as v(label, option_text)
 where q.question_hash = '6e5ebd80c60be8895cf3510247b0ff08'
on conflict (question_id, label) do nothing;

-- science_tech | space | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'The ''parsec'' is equal to:',
    'A parsec, the unit used for the distances of the stars, is about 3.26 light years or 32,600 astronomical units.',
    'medium',
    'Standard Reference',
    null,
    '8002e09848be0f338249b6f480d7c985'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '8002e09848be0f338249b6f480d7c985'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '10 light years'),
            ('B', '0.5 light years'),
            ('C', '3.26 light years'),
            ('D', 'One light year')
           ) as v(label, option_text)
 where q.question_hash = '8002e09848be0f338249b6f480d7c985'
on conflict (question_id, label) do nothing;

-- science_tech | space | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'The ''astronomical unit'' is the:',
    'The astronomical unit is the average distance from the Earth to the Sun, about 149.6 million kilometres, and it is used to measure the distances within the solar system.',
    'easy',
    'Standard Reference',
    null,
    'a5e10bf1739fe104f4269bfb70216d76'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a5e10bf1739fe104f4269bfb70216d76'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Distance travelled by light in a year'),
            ('B', 'Average distance from the Earth to the Sun'),
            ('C', 'Distance from the Sun to Pluto'),
            ('D', 'Radius of the solar system')
           ) as v(label, option_text)
 where q.question_hash = 'a5e10bf1739fe104f4269bfb70216d76'
on conflict (question_id, label) do nothing;

-- science_tech | space | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'The ''James Webb Space Telescope'' was launched in:',
    'The James Webb Space Telescope was launched on 25 December 2021 and is the largest and most powerful space telescope placed in orbit.',
    'medium',
    'Standard Reference',
    null,
    '63db2b86a52824c3bbaa25d2c0e4f96d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '63db2b86a52824c3bbaa25d2c0e4f96d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2018'),
            ('B', '2021'),
            ('C', '2016'),
            ('D', '2023')
           ) as v(label, option_text)
 where q.question_hash = '63db2b86a52824c3bbaa25d2c0e4f96d'
on conflict (question_id, label) do nothing;

-- science_tech | space | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'The ''black hole'' was first proposed by:',
    'Subrahmanyan Chandrasekhar worked out the limiting mass of a white dwarf and Karl Schwarzschild worked out the solution for a black hole in 1916.',
    'hard',
    'Standard Reference',
    null,
    'b88aaad8ce844fd5b28576e8e9e1986d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'b88aaad8ce844fd5b28576e8e9e1986d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Einstein and Hubble'),
            ('B', 'Newton and Kepler'),
            ('C', 'Rutherford and Bohr'),
            ('D', 'S. Chandrasekhar and Karl Schwarzschild')
           ) as v(label, option_text)
 where q.question_hash = 'b88aaad8ce844fd5b28576e8e9e1986d'
on conflict (question_id, label) do nothing;

-- science_tech | space | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'The ''redshift'' of a galaxy indicates:',
    'The redshift of the spectral lines indicates that the galaxy is moving away from us, and this observation by Hubble led to the theory of an expanding universe.',
    'easy',
    'Standard Reference',
    null,
    'cbd111867c522ce33e259ad997f6ffe8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'cbd111867c522ce33e259ad997f6ffe8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is receding from us'),
            ('B', 'It is approaching us'),
            ('C', 'It is rotating fast'),
            ('D', 'It is of high temperature')
           ) as v(label, option_text)
 where q.question_hash = 'cbd111867c522ce33e259ad997f6ffe8'
on conflict (question_id, label) do nothing;

-- science_tech | space | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'The ''Ring of Fire'' and the ''Pacific'':',
    'The Ring of Fire marks the boundaries of the Pacific plate and the adjoining plates and is the most active zone of volcanism and seismicity on the earth.',
    'easy',
    'Standard Reference',
    null,
    '0d125825aa5ee50a1614b507428f295d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '0d125825aa5ee50a1614b507428f295d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the region of the ozone hole'),
            ('B', 'Is the region of the deepest ocean trenches only'),
            ('C', 'Is the belt of volcanoes and earthquakes around the Pacific Ocean'),
            ('D', 'Is a cold current in the Pacific')
           ) as v(label, option_text)
 where q.question_hash = '0d125825aa5ee50a1614b507428f295d'
on conflict (question_id, label) do nothing;

-- science_tech | space | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'The ''Outer Space Treaty'' of 1967 provides that:',
    'The Outer Space Treaty of 1967 states that outer space is not subject to national appropriation and that the Moon and the celestial bodies are free for the use of all countries.',
    'medium',
    'Standard Reference',
    null,
    'b16350abd1c0ac2b9b962f273edfff0d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b16350abd1c0ac2b9b962f273edfff0d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The use of space is restricted to the superpowers'),
            ('B', 'No nation may claim sovereignty over outer space'),
            ('C', 'Space can be colonised by the space powers'),
            ('D', 'The Moon can be divided among the claimants')
           ) as v(label, option_text)
 where q.question_hash = 'b16350abd1c0ac2b9b962f273edfff0d'
on conflict (question_id, label) do nothing;

-- science_tech | space | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'The ''NASA'' was founded in:',
    'The National Aeronautics and Space Administration was created in October 1958, replacing the National Advisory Committee for Aeronautics.',
    'easy',
    'Standard Reference',
    null,
    '0fc62b060fdcf75795fbbb2b1e4ca593'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '0fc62b060fdcf75795fbbb2b1e4ca593'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1961'),
            ('B', '1969'),
            ('C', '1958'),
            ('D', '1957')
           ) as v(label, option_text)
 where q.question_hash = '0fc62b060fdcf75795fbbb2b1e4ca593'
on conflict (question_id, label) do nothing;

-- science_tech | space | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'The ''ISRO''s Chandrayaan-1'' discovered:',
    'The Moon Mineralogy Mapper on Chandrayaan-1 confirmed the presence of water molecules on the lunar surface in 2009.',
    'medium',
    'Standard Reference',
    null,
    'a656e79a2a823185a684cd56def9a34a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a656e79a2a823185a684cd56def9a34a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ice in the polar craters only'),
            ('B', 'A volcano on the Moon'),
            ('C', 'The Moon''s magnetic field'),
            ('D', 'Water molecules on the lunar surface')
           ) as v(label, option_text)
 where q.question_hash = 'a656e79a2a823185a684cd56def9a34a'
on conflict (question_id, label) do nothing;

-- science_tech | space | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'The ''Gaganyaan'' mission:',
    'Gaganyaan is the Indian human spaceflight programme, and the uncrewed test flights were carried out in 2024 as part of the mission.',
    'medium',
    'Standard Reference',
    null,
    'a89e53a761eeca5e5e48c684c5dd35a8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a89e53a761eeca5e5e48c684c5dd35a8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the Indian human spaceflight programme'),
            ('B', 'Is a Mars orbiter'),
            ('C', 'Is a weather satellite'),
            ('D', 'Is a radar mission')
           ) as v(label, option_text)
 where q.question_hash = 'a89e53a761eeca5e5e48c684c5dd35a8'
on conflict (question_id, label) do nothing;

-- science_tech | space | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'The ''PS4'' and the ''PS4A'' satellites:',
    'The IRNSS or NavIC constellation includes three geostationary satellites, the PS4, PS4A and PS4B, and a seventh in orbit.',
    'hard',
    'Standard Reference',
    null,
    'acd64a9ab84e1c231ae987ac642c0de0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'acd64a9ab84e1c231ae987ac642c0de0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Are the navigation satellites of the NavIC system'),
            ('B', 'Are the remote sensing satellites'),
            ('C', 'Are the communication satellites'),
            ('D', 'Are the weather satellites')
           ) as v(label, option_text)
 where q.question_hash = 'acd64a9ab84e1c231ae987ac642c0de0'
on conflict (question_id, label) do nothing;

-- science_tech | space | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'The ''exoplanet'' is a:',
    'An exoplanet is a planet outside the solar system, and the first confirmed ones were found around a pulsar in 1992.',
    'easy',
    'Standard Reference',
    null,
    'd6c0ca31930ac85a4224c9f0342f9871'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd6c0ca31930ac85a4224c9f0342f9871'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'An asteroid'),
            ('B', 'A planet outside the solar system'),
            ('C', 'A satellite of another planet'),
            ('D', 'A comet')
           ) as v(label, option_text)
 where q.question_hash = 'd6c0ca31930ac85a4224c9f0342f9871'
on conflict (question_id, label) do nothing;

-- science_tech | nuclear-technology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'nuclear-technology'),
    'The ''nuclear fission'' and the ''Otto Hahn'' and ''Lise Meitner'':',
    'Otto Hahn and Fritz Strassmann discovered the nuclear fission of uranium in 1938, and Lise Meitner and Otto Frisch gave the physical explanation, and Hahn alone received the Nobel Prize.',
    'hard',
    'Standard Reference',
    null,
    '9c2a3f0a5ba6fdc87e00c4693d2a16d4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '9c2a3f0a5ba6fdc87e00c4693d2a16d4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'They discovered the electron'),
            ('B', 'They discovered the neutron'),
            ('C', 'They discovered the laser'),
            ('D', 'Otto Hahn and Fritz Strassmann discovered fission and Lise Meitner explained it with Otto Frisch')
           ) as v(label, option_text)
 where q.question_hash = '9c2a3f0a5ba6fdc87e00c4693d2a16d4'
on conflict (question_id, label) do nothing;

-- science_tech | nuclear-technology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'nuclear-technology'),
    'The ''nuclear fusion'' happens:',
    'Fusion, the joining of light nuclei with the release of energy, powers the sun and the hydrogen bomb, and it is the basis of the fusion reactors under development.',
    'easy',
    'Standard Reference',
    null,
    'edf3ccb5e7b3206db63c63b26e9729e0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'edf3ccb5e7b3206db63c63b26e9729e0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Only in the atomic bomb'),
            ('B', 'In the radioactive decay'),
            ('C', 'In the core of the sun and in hydrogen bombs'),
            ('D', 'In all nuclear reactors')
           ) as v(label, option_text)
 where q.question_hash = 'edf3ccb5e7b3206db63c63b26e9729e0'
on conflict (question_id, label) do nothing;

-- science_tech | nuclear-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'nuclear-technology'),
    'The ''three-stage nuclear programme'' of India was propounded by:',
    'Dr. Homi Bhabha formulated the three-stage programme of 15, 80 and 250 GWe with the first stage relying on the existing natural uranium reactors, the second on the plutonium and the third on the thorium cycle.',
    'medium',
    'Standard Reference',
    null,
    '920bfbaf154fa9db95b54cc8177e3153'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '920bfbaf154fa9db95b54cc8177e3153'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Dr. A.P.J. Abdul Kalam'),
            ('B', 'Bhabha and Raman'),
            ('C', 'Raja Ramanna'),
            ('D', 'Dr. Homi Bhabha')
           ) as v(label, option_text)
 where q.question_hash = '920bfbaf154fa9db95b54cc8177e3153'
on conflict (question_id, label) do nothing;

-- science_tech | nuclear-technology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'nuclear-technology'),
    'The ''India''s three-stage programme'' and the ''PHWR'':',
    'The PHWRs, as at Narora, Kakrapar and Kalpakkam, use heavy water as the moderator and as the coolant in the second stage of the programme.',
    'hard',
    'Standard Reference',
    null,
    '35baa1d5ac9fceda9dbb8e398abd7c8d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '35baa1d5ac9fceda9dbb8e398abd7c8d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The PHWR is a fusion reactor'),
            ('B', 'The Pressurised Heavy Water Reactors of the second stage use heavy water as the moderator and the fuel'),
            ('C', 'The PHWR is the third stage'),
            ('D', 'The PHWR uses graphite')
           ) as v(label, option_text)
 where q.question_hash = '35baa1d5ac9fceda9dbb8e398abd7c8d'
on conflict (question_id, label) do nothing;

-- science_tech | nuclear-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'nuclear-technology'),
    'The ''Kakrapar Atomic Power Station'' is in:',
    'Kakrapar in Gujarat and Rawatbhata in Rajasthan are the nuclear power stations of the first stage, and the Kalpakkam and Narora sites have the PHWRs of the second stage.',
    'medium',
    'Standard Reference',
    null,
    '28adba1ff99bc2eefa590c5438021019'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '28adba1ff99bc2eefa590c5438021019'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Gujarat'),
            ('B', 'Kerala'),
            ('C', 'Tamil Nadu'),
            ('D', 'Rajasthan')
           ) as v(label, option_text)
 where q.question_hash = '28adba1ff99bc2eefa590c5438021019'
on conflict (question_id, label) do nothing;

-- science_tech | nuclear-technology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'nuclear-technology'),
    'The ''Kalpakkam'' nuclear complex includes:',
    'The Kalpakkam complex in Tamil Nadu houses the Madras Atomic Power Station, the Heavy Water Reactor and the Prototype Fast Breeder Reactor, and the Kalpakkam nuclear security unit.',
    'hard',
    'Standard Reference',
    null,
    'd8bdf1d6bf41e882f7349230fdd501be'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd8bdf1d6bf41e882f7349230fdd501be'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Madras Atomic Power Station, the Heavy Water Reactor and the Fast Breeder Reactor'),
            ('B', 'A gas-based reactor and a coastal missile test range'),
            ('C', 'A uranium enrichment plant and a reprocessing plant'),
            ('D', 'Only a heavy water research reactor')
           ) as v(label, option_text)
 where q.question_hash = 'd8bdf1d6bf41e882f7349230fdd501be'
on conflict (question_id, label) do nothing;

-- science_tech | nuclear-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'nuclear-technology'),
    'The ''CTBT'' treaty:',
    'The Comprehensive Nuclear-Test-Ban Treaty bans all nuclear test explosions in any environment, and it has not entered into force because the ratifying states are not all.',
    'medium',
    'Standard Reference',
    null,
    'e0366a6696666c99e6444a2d8eceacdd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e0366a6696666c99e6444a2d8eceacdd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bans only underground testing'),
            ('B', 'Bans the use of nuclear weapons'),
            ('C', 'Bans the production of plutonium'),
            ('D', 'Bans nuclear testing in all environments')
           ) as v(label, option_text)
 where q.question_hash = 'e0366a6696666c99e6444a2d8eceacdd'
on conflict (question_id, label) do nothing;

-- science_tech | nuclear-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'nuclear-technology'),
    'The ''NPT'' treaty:',
    'The Non-Proliferation Treaty of 1968 divides the world into the five recognised nuclear-weapon states, including India as a nuclear capable state outside the treaty''s framework, and the non-nuclear-weapon states.',
    'medium',
    'Standard Reference',
    null,
    '499dd989848d8bf20ebcd828a1ffcf44'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '499dd989848d8bf20ebcd828a1ffcf44'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bans the use of nuclear power'),
            ('B', 'Was signed at the Hague'),
            ('C', 'Divides the states into the nuclear-weapon states and the non-nuclear-weapon states'),
            ('D', 'Bans all nuclear testing')
           ) as v(label, option_text)
 where q.question_hash = '499dd989848d8bf20ebcd828a1ffcf44'
on conflict (question_id, label) do nothing;

-- science_tech | nuclear-technology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'nuclear-technology'),
    'The ''Pokhran-II'' of 1998 was carried out under:',
    'The Pokhran-II tests of May 1998 were conducted under the Prime Minister Atal Bihari Vajpayee, with the Chief Minister of Rajasthan Ashok Gehlot present at the site.',
    'easy',
    'Standard Reference',
    null,
    '6a651beae8ae0cedf3363d0ba112e2b0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '6a651beae8ae0cedf3363d0ba112e2b0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Atal Bihari Vajpayee'),
            ('B', 'P.V. Narasimha Rao'),
            ('C', 'Indira Gandhi'),
            ('D', 'Morarji Desai')
           ) as v(label, option_text)
 where q.question_hash = '6a651beae8ae0cedf3363d0ba112e2b0'
on conflict (question_id, label) do nothing;

-- science_tech | nuclear-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'nuclear-technology'),
    'The ''IAEA'' headquarters is at:',
    'The International Atomic Energy Agency, founded in 1957, has its headquarters in Vienna and its safeguards system is the basis of the international non-proliferation regime.',
    'medium',
    'Standard Reference',
    null,
    '180f24780feeb8ce9e8baaf5e7bf1892'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '180f24780feeb8ce9e8baaf5e7bf1892'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Geneva'),
            ('B', 'Vienna'),
            ('C', 'New York'),
            ('D', 'Paris')
           ) as v(label, option_text)
 where q.question_hash = '180f24780feeb8ce9e8baaf5e7bf1892'
on conflict (question_id, label) do nothing;

-- science_tech | nuclear-technology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'nuclear-technology'),
    'The ''Indium'' and the ''nuclear waste'' in India:',
    'The radioactive waste is managed at the BARC facilities, and the glass waste vitrification facility at Kalpakkam immobilises the low and intermediate level waste.',
    'hard',
    'Standard Reference',
    null,
    '357b3bd0ab45a1ec8894f8b0c6141f2e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '357b3bd0ab45a1ec8894f8b0c6141f2e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'India has no nuclear waste'),
            ('B', 'The waste is stored in the Arihant submarine'),
            ('C', 'India exports its nuclear waste'),
            ('D', 'India''s nuclear waste is stored in the glass waste vitrification facility at Kalpakkam')
           ) as v(label, option_text)
 where q.question_hash = '357b3bd0ab45a1ec8894f8b0c6141f2e'
on conflict (question_id, label) do nothing;

-- science_tech | nuclear-technology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'nuclear-technology'),
    'The ''thorium'' in India is found mainly in:',
    'India has vast th reserves in the monazite sands of Kerala, and the three-stage programme aims at exploiting the thorium cycle in the third stage.',
    'hard',
    'Standard Reference',
    null,
    'b2e6df3db986ec7254b3f46bad44567f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b2e6df3db986ec7254b3f46bad44567f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The bauxite of Gujarat'),
            ('B', 'The monazite sands of Kerala'),
            ('C', 'The iron ore of Odisha'),
            ('D', 'The coal of Jharkhand')
           ) as v(label, option_text)
 where q.question_hash = 'b2e6df3db986ec7254b3f46bad44567f'
on conflict (question_id, label) do nothing;

-- science_tech | defence-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'defence-technology'),
    'The ''DRDO'' was set up in:',
    'The Defence Research and Development Organisation was set up in 1958, and it was reorganised as a corporation in the 1990s.',
    'medium',
    'Standard Reference',
    null,
    '1c0adf66abc0934eebb99dcbe106d930'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '1c0adf66abc0934eebb99dcbe106d930'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1958'),
            ('B', '1950'),
            ('C', '1962'),
            ('D', '1970')
           ) as v(label, option_text)
 where q.question_hash = '1c0adf66abc0934eebb99dcbe106d930'
on conflict (question_id, label) do nothing;

-- science_tech | defence-technology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'defence-technology'),
    'The ''Missile Technology Control Regime'' and India''s membership:',
    'India is not a member of the Missile Technology Control Regime, having declared itself a missile capable state, and it maintains a self-imposed missile range from 25 to 290 kilometres for the MTCR members.',
    'hard',
    'Standard Reference',
    null,
    '4d917de1bcdd3b65a38b250623da100a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '4d917de1bcdd3b65a38b250623da100a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'India joined the MTCR in 2008'),
            ('B', 'India chaired the MTCR'),
            ('C', 'India is not a member of the MTCR'),
            ('D', 'India is a member of the MTCR')
           ) as v(label, option_text)
 where q.question_hash = '4d917de1bcdd3b65a38b250623da100a'
on conflict (question_id, label) do nothing;

-- science_tech | defence-technology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'defence-technology'),
    'The ''Agni-V'' is the:',
    'The Agni-V is an intercontinental ballistic missile with a range of over 5,000 km, and it was first test fired in 2018.',
    'easy',
    'Standard Reference',
    null,
    'ef00f0290155e05110c04f2b63a497ed'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'ef00f0290155e05110c04f2b63a497ed'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Surface to air missile'),
            ('B', 'Cruise missile'),
            ('C', 'Long range ballistic missile'),
            ('D', 'Air-to-air missile')
           ) as v(label, option_text)
 where q.question_hash = 'ef00f0290155e05110c04f2b63a497ed'
on conflict (question_id, label) do nothing;

-- science_tech | defence-technology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'defence-technology'),
    'The ''BrahMos'' missile is a:',
    'The BrahMos is a supersonic cruise missile developed jointly by India and Russia, and it is among the fastest cruise missiles in the world.',
    'easy',
    'Standard Reference',
    null,
    'ac5e38672acaa45ecbf9b1dabf61e0d0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'ac5e38672acaa45ecbf9b1dabf61e0d0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Anti-submarine missile'),
            ('B', 'Cruise missile developed jointly by India and Russia'),
            ('C', 'Ballistic missile developed indigenously'),
            ('D', 'Air defence missile')
           ) as v(label, option_text)
 where q.question_hash = 'ac5e38672acaa45ecbf9b1dabf61e0d0'
on conflict (question_id, label) do nothing;

-- science_tech | defence-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'defence-technology'),
    'The ''Akash'' missile system:',
    'The Akash is a medium range surface-to-air missile system developed by the DRDO, and the indigenous system has been exported to several countries.',
    'medium',
    'Standard Reference',
    null,
    '1d08298c6fafd500ef7a813c1b96aede'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '1d08298c6fafd500ef7a813c1b96aede'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is a medium range surface-to-air missile system'),
            ('B', 'Is an air-to-air missile'),
            ('C', 'Is a submarine launched ballistic missile'),
            ('D', 'Is a cruise missile')
           ) as v(label, option_text)
 where q.question_hash = '1d08298c6fafd500ef7a813c1b96aede'
on conflict (question_id, label) do nothing;

-- science_tech | defence-technology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'defence-technology'),
    'The ''Tejas'' is:',
    'The Tejas is a single engine, multirole light fighter with a tailless compound delta wing, developed by the ADA and the HAL.',
    'easy',
    'Standard Reference',
    null,
    '6c69cdbf922ef1c32838e9a44cbcf074'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '6c69cdbf922ef1c32838e9a44cbcf074'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A four engine transport aircraft'),
            ('B', 'A naval fighter'),
            ('C', 'A missile'),
            ('D', 'A single engine light fighter aircraft')
           ) as v(label, option_text)
 where q.question_hash = '6c69cdbf922ef1c32838e9a44cbcf074'
on conflict (question_id, label) do nothing;

-- science_tech | defence-technology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'defence-technology'),
    'The ''Tejas Mk2'' and the ''AESA'' radar:',
    'The Tejas Mk1A or Mk2 incorporates an active electronically scanned array radar from the DRDO and is a two-seat version for the training role.',
    'hard',
    'Standard Reference',
    null,
    'a9184eef5d2959d6475138d0730455a2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a9184eef5d2959d6475138d0730455a2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Mk2 has an active electronically scanned array radar'),
            ('B', 'The Mk2 is a two-seater trainer'),
            ('C', 'The Mk2 is a heavy transport'),
            ('D', 'The Mk2 has no radar')
           ) as v(label, option_text)
 where q.question_hash = 'a9184eef5d2959d6475138d0730455a2'
on conflict (question_id, label) do nothing;

-- science_tech | defence-technology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'defence-technology'),
    'The ''INS Vikrant'' is:',
    'INS Vikrant, commissioned in August 2022, is India''s first indigenous aircraft carrier, with a 45,000 tonne displacement and a full-length stern deck with a ski jump.',
    'easy',
    'Standard Reference',
    null,
    '29ac929f75129d6c5330b84a436ac17d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '29ac929f75129d6c5330b84a436ac17d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A frigate'),
            ('B', 'An indigenous aircraft carrier'),
            ('C', 'A nuclear submarine'),
            ('D', 'A missile')
           ) as v(label, option_text)
 where q.question_hash = '29ac929f75129d6c5330b84a436ac17d'
on conflict (question_id, label) do nothing;

-- science_tech | defence-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'defence-technology'),
    'The ''INS Arihant'' is:',
    'INS Arihant is a nuclear powered ballistic missile submarine, and its successful launch of a K-15 in 2018 made India the first country to demonstrate a nuclear triad with an indigenous system.',
    'medium',
    'Standard Reference',
    null,
    'c9d58e009282ed92fbf7c1cb873900fe'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c9d58e009282ed92fbf7c1cb873900fe'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'An aircraft carrier'),
            ('B', 'A research vessel'),
            ('C', 'A nuclear powered ballistic missile submarine'),
            ('D', 'A diesel submarine')
           ) as v(label, option_text)
 where q.question_hash = 'c9d58e009282ed92fbf7c1cb873900fe'
on conflict (question_id, label) do nothing;

-- science_tech | defence-technology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'defence-technology'),
    'The ''Scorpene'' class submarines are:',
    'The Scorpene class, made by the French Naval Group, is a conventionally propelled submarine of about 1,600 tonnes, and the Mazagiri was the first to be commissioned in 2024.',
    'hard',
    'Standard Reference',
    null,
    'f72a32530764d3538bfdcbfd91c01590'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'f72a32530764d3538bfdcbfd91c01590'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Russian nuclear submarines'),
            ('B', 'American attack submarines'),
            ('C', 'Japanese submarines'),
            ('D', 'French made diesel electric submarines')
           ) as v(label, option_text)
 where q.question_hash = 'f72a32530764d3538bfdcbfd91c01590'
on conflict (question_id, label) do nothing;

-- science_tech | defence-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'defence-technology'),
    'The ''Kilo class'' submarines in the Indian Navy are:',
    'The Kilo class, or the Project 877, are Russian built diesel electric submarines, and the earlier Sindhughosh class was also of the Kilo design.',
    'medium',
    'Standard Reference',
    null,
    'd9cbd09d89d3db7fd15ccab7c114681a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd9cbd09d89d3db7fd15ccab7c114681a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'French submarines'),
            ('B', 'Japanese submarines'),
            ('C', 'Russian made diesel electric submarines'),
            ('D', 'American submarines')
           ) as v(label, option_text)
 where q.question_hash = 'd9cbd09d89d3db7fd15ccab7c114681a'
on conflict (question_id, label) do nothing;

-- science_tech | defence-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'defence-technology'),
    'The ''Arjun'' main battle tank:',
    'The Arjun is an indigenous third generation main battle tank with a 120 mm rifled gun and a composite armour, and it was developed by the DRDO with the BAE Systems collaboration.',
    'medium',
    'Standard Reference',
    null,
    'cae4d98dc157b428868f1eabcbcf07e9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'cae4d98dc157b428868f1eabcbcf07e9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is an amphibious tank'),
            ('B', 'Is indigenous with a 120 mm gun'),
            ('C', 'Is a Russian tank'),
            ('D', 'Is a light tank imported from France')
           ) as v(label, option_text)
 where q.question_hash = 'cae4d98dc157b428868f1eabcbcf07e9'
on conflict (question_id, label) do nothing;

-- science_tech | defence-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'defence-technology'),
    'The ''Chief of Defence Staff'' of India was created in 2019 as the:',
    'The post of the Chief of Defence Staff was created in 2019, and the CDS is the highest military officer in the armed forces with a four-year tenure and a rank of four-star.',
    'medium',
    'Standard Reference',
    null,
    '7dc9615085a12d3f36782a0b93f2319b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '7dc9615085a12d3f36782a0b93f2319b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Chief of the Army staff'),
            ('B', 'Head of the Integrated theatre commands'),
            ('C', 'Chairman of the Chiefs of Staff Committee'),
            ('D', 'Permanent post of the highest military officer in the Armed Forces')
           ) as v(label, option_text)
 where q.question_hash = '7dc9615085a12d3f36782a0b93f2319b'
on conflict (question_id, label) do nothing;

-- science_tech | defence-technology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'defence-technology'),
    'The ''Integrated theatre commands'' of India:',
    'The creation of the integrated theatre commands with joint forces for the army, navy and air force is a long-term goal of the military reforms, and the concept of the integrated command structures is still being worked out.',
    'hard',
    'Standard Reference',
    null,
    '8c6e5c22a0b3ce780ebac93a04ac1f78'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '8c6e5c22a0b3ce780ebac93a04ac1f78'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Are a long-term goal of the military reform'),
            ('B', 'Were created in 2019'),
            ('C', 'Have been fully implemented'),
            ('D', 'Were created during the Emergency')
           ) as v(label, option_text)
 where q.question_hash = '8c6e5c22a0b3ce780ebac93a04ac1f78'
on conflict (question_id, label) do nothing;

-- science_tech | defence-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'defence-technology'),
    'The ''Drones'' in the Indian armed forces:',
    'The UAVs or the drones are used for surveillance, the tracking of targets, the logistics and the precision strikes, and the armed forces have a large fleet of them.',
    'medium',
    'Standard Reference',
    null,
    '5c95121208b05c92847dedbc776ac440'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '5c95121208b05c92847dedbc776ac440'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Are manned'),
            ('B', 'Are used for surveillance and the destruction of targets'),
            ('C', 'Are only for the ceremonial role'),
            ('D', 'Are banned in the airspace')
           ) as v(label, option_text)
 where q.question_hash = '5c95121208b05c92847dedbc776ac440'
on conflict (question_id, label) do nothing;

-- science_tech | defence-technology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'defence-technology'),
    'The ''Integrated Rocket Fuel Plant'' and the ''solid propellant'':',
    'The solid propellant is the main ingredient of the missiles and the Integrated Rocket Fuel Plant is a key facility in the missile programme.',
    'hard',
    'Standard Reference',
    null,
    'dcaa04c05e155b7bd5f507e60289b474'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'dcaa04c05e155b7bd5f507e60289b474'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Are the fertiliser plants'),
            ('B', 'Are the coal gasification plants'),
            ('C', 'Are related to the manufacture of the solid propellant for the missiles'),
            ('D', 'Are for the production of the nuclear fuel')
           ) as v(label, option_text)
 where q.question_hash = 'dcaa04c05e155b7bd5f507e60289b474'
on conflict (question_id, label) do nothing;

-- science_tech | defence-technology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'defence-technology'),
    'The ''Advanced Systems Laboratory'' and the ''missile self-reliance'':',
    'The Advanced Systems Laboratory of the DRDO at Hyderabad played a key role in the integrated guided missile development programme of India.',
    'hard',
    'Standard Reference',
    null,
    'cb08dcf8b9437fae481c682929258f1d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'cb08dcf8b9437fae481c682929258f1d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The ASL is a nuclear research centre'),
            ('B', 'The ASL works on the electronic voting machines'),
            ('C', 'The ASL is a university'),
            ('D', 'The ASL at Hyderabad was instrumental in the missile programme')
           ) as v(label, option_text)
 where q.question_hash = 'cb08dcf8b9437fae481c682929258f1d'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'The ''artificial intelligence'' in agriculture in India refers to:',
    'The AI-based advisory services in the local languages for the farmers, as in the Kisan e-Mitra chatbot, are a significant application in agriculture.',
    'medium',
    'Standard Reference',
    null,
    '99b48d064e51a514bc8e84ac013c5286'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '99b48d064e51a514bc8e84ac013c5286'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'AI-driven advisory services for the farmers'),
            ('B', 'Robotic harvesting only'),
            ('C', 'The automation of the nuclear plants'),
            ('D', 'The detection of the border infiltration')
           ) as v(label, option_text)
 where q.question_hash = '99b48d064e51a514bc8e84ac013c5286'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'The ''blockchain technology'' was first described by:',
    'The first blockchain was described by Satoshi Nakamoto in 2008 with the Bitcoin white paper, and the term was coined later.',
    'easy',
    'Standard Reference',
    null,
    '37643f261cf1e87757eb9ffd7f4648f3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '37643f261cf1e87757eb9ffd7f4648f3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Tim Berners-Lee'),
            ('B', 'Satoshi Nakamoto'),
            ('C', 'Vitalik Buterin'),
            ('D', 'Charles Babbage')
           ) as v(label, option_text)
 where q.question_hash = '37643f261cf1e87757eb9ffd7f4648f3'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'The ''zero day'' vulnerability refers to:',
    'A zero day exploit takes advantage of a vulnerability that is unknown to the vendor, so no patch is available at the time of the attack.',
    'medium',
    'Standard Reference',
    null,
    'e53a13788957c9d260e00966978d009d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e53a13788957c9d260e00966978d009d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A vulnerability found on the first day of the year'),
            ('B', 'A vulnerability in the zero-th release'),
            ('C', 'A vulnerability in the operating system'),
            ('D', 'A vulnerability that is exploited before a patch is available')
           ) as v(label, option_text)
 where q.question_hash = 'e53a13788957c9d260e00966978d009d'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'The ''CERT-In'' is the:',
    'The Indian Computer Emergency Response Team, under the MeitY, was established in 2004 to coordinate the response to the cyber security incidents.',
    'easy',
    'Standard Reference',
    null,
    '034a0c30b5aa2d2e27fceedd5e008ed5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '034a0c30b5aa2d2e27fceedd5e008ed5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Central Electoral Reform Team'),
            ('B', 'Centre for Educational Research and Training'),
            ('C', 'Indian Computer Emergency Response Team of the MeitY'),
            ('D', 'Central Economic Regulatory Team')
           ) as v(label, option_text)
 where q.question_hash = '034a0c30b5aa2d2e27fceedd5e008ed5'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'The ''Information Technology Act, 2000'' deals with:',
    'The IT Act of 2000 gave legal recognition to electronic records and electronic signatures and provided for the offences in cyberspace.',
    'medium',
    'Standard Reference',
    null,
    'ef116eb3e746cc58ca0ff7ea80fde748'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ef116eb3e746cc58ca0ff7ea80fde748'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Electronic records and the electronic signatures'),
            ('B', 'The telegraph messages only'),
            ('C', 'The broadcasting only'),
            ('D', 'The copyright only')
           ) as v(label, option_text)
 where q.question_hash = 'ef116eb3e746cc58ca0ff7ea80fde748'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'The ''5G'' spectrum in India:',
    'The 5G spectrum was auctioned by the Department of Telecommunications in 2021, and the auction raised about Rs. 43,949 crore.',
    'medium',
    'Standard Reference',
    null,
    '0245e22596e2266d5d8e3bb93d5f4f39'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '0245e22596e2266d5d8e3bb93d5f4f39'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is a part of the spectrum for the police'),
            ('B', 'Is only for the defence'),
            ('C', 'Was auctioned by the Department of Telecommunications'),
            ('D', 'Is allocated free of cost')
           ) as v(label, option_text)
 where q.question_hash = '0245e22596e2266d5d8e3bb93d5f4f39'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'The ''semiconductor policy'' of India and the ''India Semiconductor Mission'':',
    'The India Semiconductor Mission was approved in September 2021 with a fiscal support of about Rs. 76,000 crore, and it aims to build a fab ecosystem in the country.',
    'medium',
    'Standard Reference',
    null,
    'd6ed7577e79a5dd49c9208551098108c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd6ed7577e79a5dd49c9208551098108c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The mission was approved in 2021 with a fiscal support of about Rs. 76,000 crore'),
            ('B', 'It was approved in 1991'),
            ('C', 'It is a part of the IT Act'),
            ('D', 'It was launched in 2005')
           ) as v(label, option_text)
 where q.question_hash = 'd6ed7577e79a5dd49c9208551098108c'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'The ''PARAM'' supercomputing series:',
    'The PARAM series of supercomputers was developed by the Centre for Development of Advanced Computing in association with the Indian Institute of Science, and the PARAM-Siddhi and PARAM-Shakti are the recent ones.',
    'medium',
    'Standard Reference',
    null,
    'fc47eb92a5ca3fb21fe4587f6331a23b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'fc47eb92a5ca3fb21fe4587f6331a23b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is a US project'),
            ('B', 'Is developed by the C-DAC for the Indian Institute of Science'),
            ('C', 'Is a Japanese computer'),
            ('D', 'Is a Russian machine')
           ) as v(label, option_text)
 where q.question_hash = 'fc47eb92a5ca3fb21fe4587f6331a23b'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'The ''quantum communication'' and the ''National Quantum Mission'':',
    'The National Quantum Mission, approved in 2021, covers the development of the quantum computers, the quantum communication and the quantum sensing and the associated human resource generation.',
    'medium',
    'Standard Reference',
    null,
    'cf4de946d780ec361aa606fb7eadb914'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'cf4de946d780ec361aa606fb7eadb914'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It was approved in 1991'),
            ('B', 'It is a NASA programme'),
            ('C', 'It relates to the nuclear weapons'),
            ('D', 'The mission was approved in 2021 to promote the quantum technologies')
           ) as v(label, option_text)
 where q.question_hash = 'cf4de946d780ec361aa606fb7eadb914'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'The ''Aadhaar'' and the ''UIDAI'':',
    'The Unique Identification Authority of India, a statutory body under the Ministry of Electronics and Information Technology, issues the Aadhaar, a 12-digit biometric identity number.',
    'easy',
    'Standard Reference',
    null,
    '2c45296590c173fa3399a683fad65494'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '2c45296590c173fa3399a683fad65494'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Aadhaar is a biometric identity document issued by the UIDAI'),
            ('B', 'Aadhaar is a passport'),
            ('C', 'Aadhaar is a voter identity card'),
            ('D', 'Aadhaar is issued by the Election Commission')
           ) as v(label, option_text)
 where q.question_hash = '2c45296590c173fa3399a683fad65494'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'The ''DigiLocker'' and the ''MeitY'':',
    'DigiLocker, operated by the NeGD under the MeitY, allows the citizens to access the government issued certificates and documents electronically.',
    'easy',
    'Standard Reference',
    null,
    '828ea680a412a9fce33264e75f099ebe'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '828ea680a412a9fce33264e75f099ebe'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'DigiLocker is a payment system'),
            ('B', 'DigiLocker is a satellite navigation system'),
            ('C', 'DigiLocker is a scheme for the rural broadband'),
            ('D', 'DigiLocker is an electronic platform for the digital documents issued by the government')
           ) as v(label, option_text)
 where q.question_hash = '828ea680a412a9fce33264e75f099ebe'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'The ''Starlink'' and the ''satellite internet'' in India:',
    'Starlink is the low earth orbit broadband constellation of SpaceX, and it has been authorised in India for the provision of the satellite internet services.',
    'medium',
    'Standard Reference',
    null,
    '56b33a9e89bd0fd7e18fcd05a3b81996'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '56b33a9e89bd0fd7e18fcd05a3b81996'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Starlink is a part of the NavIC'),
            ('B', 'Starlink is a low earth orbit satellite constellation of SpaceX'),
            ('C', 'Starlink is a Indian navigation system'),
            ('D', 'Starlink is a Japanese weather service')
           ) as v(label, option_text)
 where q.question_hash = '56b33a9e89bd0fd7e18fcd05a3b81996'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'The ''RFID'' technology is used in:',
    'The radio frequency identification tags are used for the identity documents, the toll collection, the tracking of the goods and the livestock identification.',
    'medium',
    'Standard Reference',
    null,
    'e91c2015fd2865b7bcc27cd2d9c5c4eb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e91c2015fd2865b7bcc27cd2d9c5c4eb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The magnetic recording'),
            ('B', 'The optical fibres'),
            ('C', 'The identity cards and the toll collection and the supply chains'),
            ('D', 'The television signals')
           ) as v(label, option_text)
 where q.question_hash = 'e91c2015fd2865b7bcc27cd2d9c5c4eb'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'The ''encryption'' and the ''AES'' algorithm:',
    'The Advanced Encryption Standard is a symmetric key block cipher standardised in 2001, with a key size of 128, 192 or 256 bits.',
    'medium',
    'Standard Reference',
    null,
    '707e8e469daf9913b8341af57148a294'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '707e8e469daf9913b8341af57148a294'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'AES is used only in the military'),
            ('B', 'AES is a symmetric block cipher used in the commercial encryption'),
            ('C', 'AES is a public key algorithm'),
            ('D', 'AES is a hashing algorithm')
           ) as v(label, option_text)
 where q.question_hash = '707e8e469daf9913b8341af57148a294'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'The ''RSA'' algorithm is:',
    'RSA is a public key cryptosystem in which the security rests on the practical difficulty of factoring the product of two large prime numbers.',
    'medium',
    'Standard Reference',
    null,
    '2f40b44179a8f9a952fa5fa56c4955f9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '2f40b44179a8f9a952fa5fa56c4955f9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A symmetric cipher'),
            ('B', 'A hashing function'),
            ('C', 'A compression algorithm'),
            ('D', 'A public key cryptosystem based on the difficulty of factoring large numbers')
           ) as v(label, option_text)
 where q.question_hash = '2f40b44179a8f9a952fa5fa56c4955f9'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'The ''SHA-1'' and the ''MD5'' are:',
    'MD5 and SHA-1 are cryptographic hash functions that produce a fixed length digest, and MD5 is now considered broken for the security purposes.',
    'easy',
    'Standard Reference',
    null,
    'd27b3345a637224aaab784f5805f172b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd27b3345a637224aaab784f5805f172b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Cryptographic hash functions'),
            ('B', 'Encryption algorithms'),
            ('C', 'Compression tools'),
            ('D', 'Programming languages')
           ) as v(label, option_text)
 where q.question_hash = 'd27b3345a637224aaab784f5805f172b'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'The ''edge computing'' reduces:',
    'Edge computing brings the computation and the storage closer to the data source, which reduces the latency and the bandwidth use.',
    'medium',
    'Standard Reference',
    null,
    '85f440089f59deaff1d76e1c1ecbbeb4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '85f440089f59deaff1d76e1c1ecbbeb4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The number of the satellites'),
            ('B', 'The need for the encryption'),
            ('C', 'The latency by processing the data closer to the source'),
            ('D', 'The storage cost only')
           ) as v(label, option_text)
 where q.question_hash = '85f440089f59deaff1d76e1c1ecbbeb4'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'The ''UPI'' and the ''National Payments Corporation of India'':',
    'The National Payments Corporation of India was set up in 2008 as an initiative of the RBI and the Indian Banks'' Association for the retail payments.',
    'medium',
    'Standard Reference',
    null,
    '4f5eb7268ae8385333e12b46817fac73'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '4f5eb7268ae8385333e12b46817fac73'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'NPCI is based in Mumbai and is a listed company'),
            ('B', 'NPCI is an umbrella organisation for the retail payments set up by the RBI and the IBA'),
            ('C', 'NPCI is a private company'),
            ('D', 'NPCI is a government department')
           ) as v(label, option_text)
 where q.question_hash = '4f5eb7268ae8385333e12b46817fac73'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'The ''C-DAC'' is:',
    'The Centre for Development of Advanced Computing is a research and development institution of the MeitY, and it developed the PARAM supercomputers and the PARAM and the Multilingual and the other language technologies.',
    'medium',
    'Standard Reference',
    null,
    'f0bc8d60262295f4db04ed3138bf94a1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'f0bc8d60262295f4db04ed3138bf94a1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A defence laboratory'),
            ('B', 'A space centre'),
            ('C', 'A centre of the MeitY for the development of the advanced computing technologies'),
            ('D', 'A university')
           ) as v(label, option_text)
 where q.question_hash = 'f0bc8d60262295f4db04ed3138bf94a1'
on conflict (question_id, label) do nothing;

-- science_tech | materials-science | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'materials-science'),
    'The ''graphene'' is:',
    'Graphene is a single layer of carbon atoms arranged in a two-dimensional hexagonal lattice, and it was isolated by Andre Geim and Konstantin Novoselov in 2004.',
    'easy',
    'Standard Reference',
    null,
    '80f671ca2edb51381185973d4a43456d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '80f671ca2edb51381185973d4a43456d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A single layer of carbon atoms arranged in a hexagonal lattice'),
            ('B', 'A polymer of vinyl chloride'),
            ('C', 'A radioactive element'),
            ('D', 'A magnetic material')
           ) as v(label, option_text)
 where q.question_hash = '80f671ca2edb51381185973d4a43456d'
on conflict (question_id, label) do nothing;

-- science_tech | materials-science | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'materials-science'),
    'The ''carbon nanotube'' was discovered by:',
    'Sumio Iijima of Japan first observed the multi-walled carbon nanotubes in 1991, and the Nobel Prize in Physics in 2010 went to Geim and Novoselov for the graphene experiments.',
    'hard',
    'Standard Reference',
    null,
    'e195ff029bb45e4114a9d60d98708936'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e195ff029bb45e4114a9d60d98708936'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Andre Geim'),
            ('B', 'Richard Feynman'),
            ('C', 'Alan Turing'),
            ('D', 'Sumio Iijima')
           ) as v(label, option_text)
 where q.question_hash = 'e195ff029bb45e4114a9d60d98708936'
on conflict (question_id, label) do nothing;

-- science_tech | materials-science | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'materials-science'),
    'The ''shape memory alloy'' nitinol is an alloy of:',
    'Nitinol, the nickel-titanium alloy, has the shape memory and the superelasticity properties, and it is used in the medical stents and the actuators.',
    'medium',
    'Standard Reference',
    null,
    '2a462ca58588751824cabe858f4a1abb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '2a462ca58588751824cabe858f4a1abb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Nickel and titanium'),
            ('B', 'Copper and zinc'),
            ('C', 'Iron and carbon'),
            ('D', 'Aluminium and silicon')
           ) as v(label, option_text)
 where q.question_hash = '2a462ca58588751824cabe858f4a1abb'
on conflict (question_id, label) do nothing;

-- science_tech | materials-science | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'materials-science'),
    'The ''superconductivity'' was first discovered by:',
    'Superconductivity was discovered by Heike Kamerlingh Onnes in 1911 in mercury, and he received the first Nobel Prize in Physics in 1913.',
    'easy',
    'Standard Reference',
    null,
    '431e56292a51c71b6f4bf1e61a8b42ae'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '431e56292a51c71b6f4bf1e61a8b42ae'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Fermi'),
            ('B', 'Heike Kamerlingh Onnes'),
            ('C', 'Einstein'),
            ('D', 'Bose')
           ) as v(label, option_text)
 where q.question_hash = '431e56292a51c71b6f4bf1e61a8b42ae'
on conflict (question_id, label) do nothing;

-- science_tech | materials-science | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'materials-science'),
    'The ''semiconductor'' materials used in the electronics include:',
    'Silicon and germanium are the most important semiconductors, and the doping of the silicon produces the p-type and the n-type materials for the diodes and the transistors.',
    'easy',
    'Standard Reference',
    null,
    '923d43c4a2af4e1d3f594a5d0ed6bef6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '923d43c4a2af4e1d3f594a5d0ed6bef6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Copper and silver'),
            ('B', 'Iron and nickel'),
            ('C', 'Glass and ceramic'),
            ('D', 'Silicon and germanium')
           ) as v(label, option_text)
 where q.question_hash = '923d43c4a2af4e1d3f594a5d0ed6bef6'
on conflict (question_id, label) do nothing;

-- science_tech | materials-science | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'materials-science'),
    'The ''biomaterials'' used in the medical implants:',
    'Titanium, the stainless steel and the certain ceramics are the biomaterials of choice for the implants because of their biocompatibility, and pyrolytic carbon is used in the heart valves.',
    'medium',
    'Standard Reference',
    null,
    '208049b823751171d1d9ac9818112112'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '208049b823751171d1d9ac9818112112'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Copper and the brass'),
            ('B', 'Cotton and the silk'),
            ('C', 'Titanium and the stainless steel and the ceramics'),
            ('D', 'Wood and the clay')
           ) as v(label, option_text)
 where q.question_hash = '208049b823751171d1d9ac9818112112'
on conflict (question_id, label) do nothing;

-- science_tech | materials-science | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'materials-science'),
    'The ''composite material'' used in the aerospace:',
    'The carbon fibre reinforced polymers and the glass fibre reinforced composites are widely used in the aerospace because of their high strength to weight ratio.',
    'medium',
    'Standard Reference',
    null,
    '9ea3179b3673c1b416fd4239001d29bc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '9ea3179b3673c1b416fd4239001d29bc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Wooden laminates'),
            ('B', 'Glass'),
            ('C', 'Carbon fibre reinforced polymers'),
            ('D', 'Pure aluminium')
           ) as v(label, option_text)
 where q.question_hash = '9ea3179b3673c1b416fd4239001d29bc'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The ''CSIR'' was founded in:',
    'The Council of Scientific and Industrial Research was founded in February 1942, and it was renamed from the Imperial Chemical and Industrial Research in 1946.',
    'medium',
    'Standard Reference',
    null,
    'd8a1a1f11e549fdfab098bc87217fc3e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd8a1a1f11e549fdfab098bc87217fc3e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1942'),
            ('B', '1956'),
            ('C', '1961'),
            ('D', '1947')
           ) as v(label, option_text)
 where q.question_hash = 'd8a1a1f11e549fdfab098bc87217fc3e'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The ''ICAR'' is the apex organisation for:',
    'The Indian Council of Agricultural Research is the apex organisation for agricultural research, and it is an autonomous organisation under the Department of Agricultural Research and Education.',
    'easy',
    'Standard Reference',
    null,
    'cb64bf85d2371bb841111ea71804a2e8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'cb64bf85d2371bb841111ea71804a2e8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Defence research'),
            ('B', 'Agricultural research'),
            ('C', 'Space research'),
            ('D', 'Medical research')
           ) as v(label, option_text)
 where q.question_hash = 'cb64bf85d2371bb841111ea71804a2e8'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The ''ICMR'' was founded in:',
    'The Indian Council of Medical Research began in 1911 as the Indian Research Fund Association and is the apex body for the biomedical research in India.',
    'medium',
    'Standard Reference',
    null,
    'ad5221ba09d77f5e98c22ed3bb26446a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'ad5221ba09d77f5e98c22ed3bb26446a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1919'),
            ('B', '1921'),
            ('C', '1935'),
            ('D', '1911')
           ) as v(label, option_text)
 where q.question_hash = 'ad5221ba09d77f5e98c22ed3bb26446a'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The ''Department of Science and Technology'' and the ''Fifth Science and Technology Policy'':',
    'The National Science and Technology Policy 2023 was the fifth in the series, and it aims to make India a global leader in the science and technology by 2047.',
    'hard',
    'Standard Reference',
    null,
    'd2eedbabd71f0f234dd022da9e87f7e6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd2eedbabd71f0f234dd022da9e87f7e6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The National Science and Technology Policy of 2023 was the fifth such policy'),
            ('B', 'It was the first such policy'),
            ('C', 'It was adopted in 1983'),
            ('D', 'It deals only with the nuclear power')
           ) as v(label, option_text)
 where q.question_hash = 'd2eedbabd71f0f234dd022da9e87f7e6'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The ''Science, Technology and Innovation Policy of India 2023'' was launched in:',
    'The Science, Technology and Innovation Policy 2023 was launched in January 2023 with the vision of making India a global leader in innovation by 2030.',
    'medium',
    'Standard Reference',
    null,
    'e81a244761f5e9ea81966e16a3b467ee'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e81a244761f5e9ea81966e16a3b467ee'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2021'),
            ('B', '2023'),
            ('C', '2020'),
            ('D', '2024')
           ) as v(label, option_text)
 where q.question_hash = 'e81a244761f5e9ea81966e16a3b467ee'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The ''National Intellectual Property Rights Policy'' was released in:',
    'The National IPR Policy was released in 2016 with the aim of making IP a vital tool for the creation of wealth and the promotion of the economic and the social development.',
    'medium',
    'Standard Reference',
    null,
    'bfa36385fdf1e416ce4f8c741ba4d3b5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'bfa36385fdf1e416ce4f8c741ba4d3b5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2021'),
            ('B', '2014'),
            ('C', '2016'),
            ('D', '2008')
           ) as v(label, option_text)
 where q.question_hash = 'bfa36385fdf1e416ce4f8c741ba4d3b5'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The ''patents'' in India are granted by:',
    'The patents, the designs and the trademarks are administered by the Office of the Controller General of Patents, Designs and Trademarks, which is under the Department of Promotion of Industry and Internal Trade.',
    'medium',
    'Standard Reference',
    null,
    'd8bfda108c97dc1cca23853085e5dc26'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'd8bfda108c97dc1cca23853085e5dc26'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Indian Patent Office of the Cabinet'),
            ('B', 'The Ministry of Commerce directly'),
            ('C', 'The RBI'),
            ('D', 'The Office of the Controller General of Patents, Designs and Trademarks')
           ) as v(label, option_text)
 where q.question_hash = 'd8bfda108c97dc1cca23853085e5dc26'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The ''Patent Rules'' were amended in 2021 to:',
    'The 2021 amendment to the Patent Rules streamlined the patent prosecution, introduced the grace period and provided for the expedited examination for the recognised universities and institutes.',
    'hard',
    'Standard Reference',
    null,
    '181058ff15db6fc8924a59ee6b4328f5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '181058ff15db6fc8924a59ee6b4328f5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Allow the patents on the human embryos'),
            ('B', 'Streamline the patent prosecution and introduce the grace period for the disclosure of the public disclosures'),
            ('C', 'Ban the patents for the pharmaceuticals'),
            ('D', 'Increase the fees for the foreign firms only')
           ) as v(label, option_text)
 where q.question_hash = '181058ff15db6fc8924a59ee6b4328f5'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The ''Technology India'' and the ''seven pillars'':',
    'Technology India, the roadmap released in 2018, rests on seven pillars including the bio-economy, the advanced manufacturing, the space, the nuclear and the energy, the deep ocean and the additive manufacturing.',
    'hard',
    'Standard Reference',
    null,
    '93e90714ede9bfeb4ebb928602623460'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '93e90714ede9bfeb4ebb928602623460'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a comprehensive roadmap for the technology development until 2030'),
            ('B', 'It is a policy on the IT exports only'),
            ('C', 'It was launched in 1998'),
            ('D', 'It deals with the public procurement')
           ) as v(label, option_text)
 where q.question_hash = '93e90714ede9bfeb4ebb928602623460'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The ''INSPIRE'' scheme is for:',
    'The Innovation in Science Pursuit for Inspired Research scheme was launched in 2008 to build up the scientific talent at the school and the undergraduate level.',
    'medium',
    'Standard Reference',
    null,
    '68170ef367cd3a06793b3df4eaf44e30'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '68170ef367cd3a06793b3df4eaf44e30'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The civil service recruitment'),
            ('B', 'The industrial subsidies'),
            ('C', 'The urban housing'),
            ('D', 'Innovation and the scientific talent in the schools')
           ) as v(label, option_text)
 where q.question_hash = '68170ef367cd3a06793b3df4eaf44e30'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The ''National Science Talent Search'' scheme:',
    'The National Science Talent Search scheme for the school students of classes 5 to 12, the NEST, is conducted by the NCERT and it includes the scholarship for the higher studies.',
    'hard',
    'Standard Reference',
    null,
    '3c83c10fe50b5177088eb25592400513'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '3c83c10fe50b5177088eb25592400513'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is a scheme for the women scientists only'),
            ('B', 'Is a defence research programme'),
            ('C', 'Is for the school students of classes 5 to 12'),
            ('D', 'Is for the doctoral students')
           ) as v(label, option_text)
 where q.question_hash = '3c83c10fe50b5177088eb25592400513'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The ''PRISM'' scheme of the DST promotes:',
    'The Promoting Innovations in Individuals, Start-ups and MSMEs scheme provides the support for the applied research and the prototyping in the academic institutions in the country.',
    'hard',
    'Standard Reference',
    null,
    'e1662f89ca7f4a34722ee93071ece6a0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e1662f89ca7f4a34722ee93071ece6a0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The primary health care'),
            ('B', 'The rural housing'),
            ('C', 'The sports'),
            ('D', 'The research in the academic institutions')
           ) as v(label, option_text)
 where q.question_hash = 'e1662f89ca7f4a34722ee93071ece6a0'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The ''Rise of India'' and the ''Biotechnology'' and the ''National Botanical Research Institute'':',
    'The National Botanical Research Institute is one of the premier research institutes of the CSIR and is located at Lucknow, and it is known for the BSI herbarium and the industrial products.',
    'hard',
    'Standard Reference',
    null,
    'b7065133a254d91234f6e036bace0513'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b7065133a254d91234f6e036bace0513'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The NBRI is under the DRDO'),
            ('B', 'The NBRI is a premier research institute of the CSIR at Lucknow'),
            ('C', 'The NBRI is at Kolkata'),
            ('D', 'The NBRI is a private university')
           ) as v(label, option_text)
 where q.question_hash = 'b7065133a254d91234f6e036bace0513'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The ''Indian Institute of Science'' is located at:',
    'The Indian Institute of Science in Bengaluru is a premier research and higher education institution with the Nobel laureates among its alumni and faculty.',
    'easy',
    'Standard Reference',
    null,
    '168e787c082798ce266d69f400e38824'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '168e787c082798ce266d69f400e38824'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kolkata'),
            ('B', 'Mumbai'),
            ('C', 'Bengaluru'),
            ('D', 'Chennai')
           ) as v(label, option_text)
 where q.question_hash = '168e787c082798ce266d69f400e38824'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The ''Bhabha Atomic Research Centre'' is at:',
    'The Bhabha Atomic Research Centre is at Trombay in Mumbai, and it was renamed after Homi Bhabha in 1954.',
    'medium',
    'Standard Reference',
    null,
    '201ec1aabd4f927359fc667b12c87a0f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '201ec1aabd4f927359fc667b12c87a0f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Trombay and Mumbai'),
            ('B', 'Chennai'),
            ('C', 'Mumbai'),
            ('D', 'Hyderabad')
           ) as v(label, option_text)
 where q.question_hash = '201ec1aabd4f927359fc667b12c87a0f'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The ''Atomic Energy Commission'' and its chairman:',
    'The Prime Minister is the chairperson of the Atomic Energy Commission of India, which is a nodal organisation for the nuclear matters under the Department of Atomic Energy.',
    'hard',
    'Standard Reference',
    null,
    '95bc423cbaf86d2d4e17764419683611'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '95bc423cbaf86d2d4e17764419683611'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The chairman is the Leader of the Opposition'),
            ('B', 'The Prime Minister is the chairman'),
            ('C', 'The chairman is the President'),
            ('D', 'The chairman is the Chief Justice')
           ) as v(label, option_text)
 where q.question_hash = '95bc423cbaf86d2d4e17764419683611'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The ''National Space Development Agency'' and the ''ISRO'':',
    'The space policy of 2020 mandates that a private space entity must register with the Department of Space and the ISRO guides and authorises the space activities.',
    'hard',
    'Standard Reference',
    null,
    '2f69cd445c3bc32bcd327f6b2f01b763'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '2f69cd445c3bc32bcd327f6b2f01b763'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The NSDA is a private body'),
            ('B', 'The NSDA was set up in 2020'),
            ('C', 'The space activities of the non-government entities are regulated by ISRO'),
            ('D', 'The NSDA replaces the ISRO')
           ) as v(label, option_text)
 where q.question_hash = '2f69cd445c3bc32bcd327f6b2f01b763'
on conflict (question_id, label) do nothing;

commit;
