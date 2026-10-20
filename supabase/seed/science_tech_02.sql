-- =============================================================================
-- science_tech_02.sql — science_tech question pack, part 02
-- 250 questions. Applied after supabase/migrations/004_reference_data.sql
-- =============================================================================

begin;

-- science_tech | chemistry | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'A Schottky defect in an ionic solid involves:',
    'A Schottky defect is created by equal numbers of cation and anion vacancies, whereas a Frenkel defect involves an ion displaced to an interstitial site.',
    'medium',
    'NCERT Class XII',
    null,
    'dbed52147158b0a3d761e115a3cac099'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'dbed52147158b0a3d761e115a3cac099'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Equal number of cations and anions missing from the lattice'),
            ('B', 'An ion occupying an interstitial site'),
            ('C', 'An electron trapped in an anion vacancy'),
            ('D', 'An extra electron in the conduction band')
           ) as v(label, option_text)
 where q.question_hash = 'dbed52147158b0a3d761e115a3cac099'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'According to Raoult''s law, for a solution of a volatile liquid in a non-volatile solvent, the relative lowering in vapour pressure equals:',
    'Raoult''s law gives the relative lowering of vapour pressure as equal to the mole fraction of the solvent, and this is the basis of all colligative properties.',
    'medium',
    'NCERT Class XII',
    null,
    '1cc99bd20c57defc2e5fde668a5a3b81'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '1cc99bd20c57defc2e5fde668a5a3b81'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The mole fraction of the solute'),
            ('B', 'The mole fraction of the solvent'),
            ('C', 'The mass fraction of the solute'),
            ('D', 'The molarity of the solution')
           ) as v(label, option_text)
 where q.question_hash = '1cc99bd20c57defc2e5fde668a5a3b81'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'The van''t Hoff factor i for a solution of glucose in water is close to:',
    'Glucose is a non-electrolyte that does not dissociate, so the van''t Hoff factor is close to 1, while it is greater than 1 for electrolytes that dissociate into ions.',
    'easy',
    'NCERT Class XII',
    null,
    '005c9e4bdb39b728c69d5ba2daca9878'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '005c9e4bdb39b728c69d5ba2daca9878'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '0.5'),
            ('B', '4'),
            ('C', '1'),
            ('D', '2')
           ) as v(label, option_text)
 where q.question_hash = '005c9e4bdb39b728c69d5ba2daca9878'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'Kohlrausch''s law states that the limiting molar conductivity of an electrolyte:',
    'Kohlrausch''s law of independent ionic migration states that the limiting molar conductivity of an electrolyte at infinite dilution equals the sum of the limiting molar conductivities of its ions.',
    'hard',
    'NCERT Class XII',
    null,
    'b8429d1c9dc53354ecbbeb282ce932f4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'b8429d1c9dc53354ecbbeb282ce932f4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the sum of the limiting molar conductivities of its constituent ions'),
            ('B', 'Equals the molar conductivity at infinite dilution'),
            ('C', 'Is always greater than the molar conductivity at finite concentration'),
            ('D', 'Is independent of temperature')
           ) as v(label, option_text)
 where q.question_hash = 'b8429d1c9dc53354ecbbeb282ce932f4'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'Faraday''s second law of electrolysis states that:',
    'The second law says that the mass of a substance liberated by a given quantity of electricity is proportional to its equivalent weight, which allows calculation of electrolysis yields.',
    'medium',
    'NCERT Class XII',
    null,
    'b151e84ada31ec1894d6d157a46e201e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'b151e84ada31ec1894d6d157a46e201e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The mass deposited is inversely proportional to current'),
            ('B', 'The electrode potential remains constant'),
            ('C', 'The volume of gas evolved is independent of charge'),
            ('D', 'The mass of a substance deposited is proportional to the quantity of electricity passed')
           ) as v(label, option_text)
 where q.question_hash = 'b151e84ada31ec1894d6d157a46e201e'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'In a lead-acid battery, the electrolyte used is:',
    'A lead-acid battery uses dilute sulphuric acid as the electrolyte, with lead dioxide and lead as the electrodes and lead sulphate forming on discharge.',
    'easy',
    'NCERT Class XII',
    null,
    'fee0de1f9b91bb68c6da4b697bd929e0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'fee0de1f9b91bb68c6da4b697bd929e0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Lithium hydroxide gel'),
            ('B', 'Dilute sulphuric acid'),
            ('C', 'Concentrated nitric acid'),
            ('D', 'Zinc chloride solution')
           ) as v(label, option_text)
 where q.question_hash = 'fee0de1f9b91bb68c6da4b697bd929e0'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'In a hydrogen-oxygen fuel cell, the electrolyte used is:',
    'A hydrogen-oxygen fuel cell uses an aqueous alkaline electrolyte such as potassium hydroxide, and it converts the energy of a chemical reaction directly into electrical energy with water as the main product.',
    'hard',
    'Standard Reference',
    null,
    '738db2846f972e2867e7a728224c9dc5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '738db2846f972e2867e7a728224c9dc5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Aqueous potassium hydroxide'),
            ('B', 'Sulphuric acid'),
            ('C', 'A solid ceramic electrolyte'),
            ('D', 'Molten sodium hydroxide')
           ) as v(label, option_text)
 where q.question_hash = '738db2846f972e2867e7a728224c9dc5'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'For a first order reaction, the half-life:',
    'For a first order reaction the half-life is t(1/2) = 0.693/k, so it is independent of the initial concentration, unlike a zero order reaction where it is directly proportional to it.',
    'medium',
    'NCERT Class XII',
    null,
    'becedd954ea06c15730325d68f9958a0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'becedd954ea06c15730325d68f9958a0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is proportional to the initial concentration'),
            ('B', 'Is independent of the initial concentration'),
            ('C', 'Increases with temperature'),
            ('D', 'Is proportional to the square of the concentration')
           ) as v(label, option_text)
 where q.question_hash = 'becedd954ea06c15730325d68f9958a0'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'The Arrhenius equation relates the rate constant of a reaction to:',
    'The Arrhenius equation k = A e^(-Ea/RT) expresses the temperature dependence of the rate constant, and a plot of log k against 1/T gives a straight line with slope -Ea/2.303R.',
    'medium',
    'NCERT Class XII',
    null,
    '9be0c564a52aff8a54bf931753f157bf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '9be0c564a52aff8a54bf931753f157bf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Concentration and volume'),
            ('B', 'Pressure and volume'),
            ('C', 'Catalyst surface area'),
            ('D', 'Temperature and activation energy')
           ) as v(label, option_text)
 where q.question_hash = '9be0c564a52aff8a54bf931753f157bf'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'The Langmuir adsorption isotherm describes:',
    'The Langmuir isotherm assumes a homogeneous surface with a fixed number of identical sites, each of which adsorbs at most one molecule, whereas the Freundlich isotherm describes heterogeneous surfaces.',
    'hard',
    'NCERT Class XII',
    null,
    '9d3b4f55c2c75abd7602af056e70708b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '9d3b4f55c2c75abd7602af056e70708b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The rate of a heterogeneous catalytic reaction'),
            ('B', 'The viscosity of colloidal solutions'),
            ('C', 'Adsorption of a gas on a homogeneous surface with a finite number of sites'),
            ('D', 'Adsorption on a heterogeneous surface with an infinite number of sites')
           ) as v(label, option_text)
 where q.question_hash = '9d3b4f55c2c75abd7602af056e70708b'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'The Tyndall effect is the observable scattering of light by:',
    'In a colloid, particles scatter a beam of light and make the path of the beam visible, which is the Tyndall effect, and this distinguishes colloids from true solutions.',
    'easy',
    'NCERT Class XII',
    null,
    'cb26f2d9c51f21987ce383d30725a2b0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'cb26f2d9c51f21987ce383d30725a2b0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Colloidal particles'),
            ('B', 'Pure liquids'),
            ('C', 'Gases'),
            ('D', 'True solutions')
           ) as v(label, option_text)
 where q.question_hash = 'cb26f2d9c51f21987ce383d30725a2b0'
on conflict (question_id, label) do nothing;

-- science_tech | biology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The first stage of mitosis in a plant cell is:',
    'Mitosis proceeds through prophase, metaphase, anaphase and telophase, and in prophase the chromosomes condense and the nuclear envelope begins to break down.',
    'easy',
    'NCERT Class XI',
    null,
    'ff2b5c26984fa2227ff5ad2f28b57234'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'ff2b5c26984fa2227ff5ad2f28b57234'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Telophase'),
            ('B', 'Prophase'),
            ('C', 'Metaphase'),
            ('D', 'Anaphase')
           ) as v(label, option_text)
 where q.question_hash = 'ff2b5c26984fa2227ff5ad2f28b57234'
on conflict (question_id, label) do nothing;

-- science_tech | biology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'Crossing over occurs in which stage of meiosis?',
    'Synapsis is completed in zygotene, and crossing over between non-sister chromatids takes place in pachytene, with chiasmata becoming visible in diplotene.',
    'hard',
    'NCERT Class XI',
    null,
    '5f7ca56095b1c6e56f18531813247251'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '5f7ca56095b1c6e56f18531813247251'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Diplotene'),
            ('B', 'Leptotene'),
            ('C', 'Zygotene'),
            ('D', 'Pachytene')
           ) as v(label, option_text)
 where q.question_hash = '5f7ca56095b1c6e56f18531813247251'
on conflict (question_id, label) do nothing;

-- science_tech | biology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'In DNA replication, the Okazaki fragments are:',
    'Because DNA polymerase can synthesise only in the 5 prime to 3 prime direction, the lagging strand is made as short Okazaki fragments that are later joined by DNA ligase.',
    'medium',
    'NCERT Class XII',
    null,
    'd0f0ec81007c0e565e3a73184fca75b0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd0f0ec81007c0e565e3a73184fca75b0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The leading strand fragments of the parent molecule'),
            ('B', 'The RNA primers of the lagging strand'),
            ('C', 'Short DNA stretches synthesised discontinuously on the lagging strand'),
            ('D', 'Ribonucleotide primers synthesised by primase')
           ) as v(label, option_text)
 where q.question_hash = 'd0f0ec81007c0e565e3a73184fca75b0'
on conflict (question_id, label) do nothing;

-- science_tech | biology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'During DNA replication, the joining of Okazaki fragments is done by:',
    'DNA ligase seals the nicks between adjacent Okazaki fragments by forming phosphodiester bonds, while helicase unwinds the duplex and topoisomerase relieves torsional strain.',
    'medium',
    'NCERT Class XII',
    null,
    'c9eb22e16ac3cc8c76ab8ff95c313440'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c9eb22e16ac3cc8c76ab8ff95c313440'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Topoisomerase'),
            ('B', 'DNA polymerase III'),
            ('C', 'DNA ligase'),
            ('D', 'Helicase')
           ) as v(label, option_text)
 where q.question_hash = 'c9eb22e16ac3cc8c76ab8ff95c313440'
on conflict (question_id, label) do nothing;

-- science_tech | biology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'In eukaryotes, the enzyme responsible for synthesising RNA from a DNA template is:',
    'RNA polymerase binds to the promoter and transcribes the template strand into messenger RNA, while the process in prokaryotes is described as coupled transcription and translation.',
    'easy',
    'NCERT Class XII',
    null,
    'dccb30b2b18f23d815b1e01d4048db20'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'dccb30b2b18f23d815b1e01d4048db20'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'DNA polymerase'),
            ('B', 'RNA polymerase'),
            ('C', 'Ligase'),
            ('D', 'Reverse transcriptase')
           ) as v(label, option_text)
 where q.question_hash = 'dccb30b2b18f23d815b1e01d4048db20'
on conflict (question_id, label) do nothing;

-- science_tech | biology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'Removal of introns from a primary RNA transcript is carried out by:',
    'The spliceosome, a complex of small nuclear ribonucleoproteins, excises intron sequences and joins the exons to form mature mRNA, and alternative splicing allows several proteins from one gene.',
    'medium',
    'NCERT Class XII',
    null,
    '4a7e0eff33d8d40324c66f4138360482'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '4a7e0eff33d8d40324c66f4138360482'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'DNA polymerase'),
            ('B', 'Ribosome'),
            ('C', 'Reverse transcriptase'),
            ('D', 'The spliceosome')
           ) as v(label, option_text)
 where q.question_hash = '4a7e0eff33d8d40324c66f4138360482'
on conflict (question_id, label) do nothing;

-- science_tech | biology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The wobble hypothesis proposed by Crick explains the:',
    'Wobble base pairing at the third position of the codon allows one tRNA to recognise several synonymous codons, explaining the degeneracy of the genetic code.',
    'hard',
    'NCERT Class XII',
    null,
    '55f42e6789580a2769e1fe7fbd157a3f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '55f42e6789580a2769e1fe7fbd157a3f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Degeneracy of the genetic code and the flexibility of codon-anticodon pairing'),
            ('B', 'Transcription of RNA'),
            ('C', 'Replication of DNA'),
            ('D', 'Function of ribosomes')
           ) as v(label, option_text)
 where q.question_hash = '55f42e6789580a2769e1fe7fbd157a3f'
on conflict (question_id, label) do nothing;

-- science_tech | biology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The lac operon of Escherichia coli is a:',
    'The lac operon has a promoter, operator and three structural genes (lacZ, lacY, lacA) transcribed together and switched off by a repressor when lactose is absent.',
    'medium',
    'NCERT Class XII',
    null,
    '23121f17155cd0a764b849b0e99bd9a2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '23121f17155cd0a764b849b0e99bd9a2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Set of plasmids used for cloning'),
            ('B', 'Group of ribosomes'),
            ('C', 'Regulated gene system in which a single promoter controls several structural genes'),
            ('D', 'Free-flowing gene in the cytoplasm')
           ) as v(label, option_text)
 where q.question_hash = '23121f17155cd0a764b849b0e99bd9a2'
on conflict (question_id, label) do nothing;

-- science_tech | biology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The Human Genome Project was completed in the year:',
    'The Human Genome Project was declared complete in 2003, and it revealed about 3.1 billion base pairs and roughly 20,000 to 25,000 protein coding genes in the human genome.',
    'medium',
    'NCERT Class XII',
    null,
    'bdcccf3e900ee07b426daac130f74964'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'bdcccf3e900ee07b426daac130f74964'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2003'),
            ('B', '1990'),
            ('C', '1995'),
            ('D', '2001')
           ) as v(label, option_text)
 where q.question_hash = 'bdcccf3e900ee07b426daac130f74964'
on conflict (question_id, label) do nothing;

-- science_tech | biology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'Blotting techniques are used to detect:',
    'Southern blotting detects DNA, Northern blotting detects RNA and Western blotting detects proteins, each relying on the transfer of separated molecules onto a membrane and hybridisation with a labelled probe.',
    'medium',
    'NCERT Class XII',
    null,
    '329b735121799058cbb7b0e936321476'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '329b735121799058cbb7b0e936321476'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The rate of cell division'),
            ('B', 'Specific DNA, RNA or protein sequences'),
            ('C', 'The number of chromosomes in a cell'),
            ('D', 'The sex of a foetus')
           ) as v(label, option_text)
 where q.question_hash = '329b735121799058cbb7b0e936321476'
on conflict (question_id, label) do nothing;

-- science_tech | biology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'DNA fingerprinting used in forensic science relies on the analysis of:',
    'Alec Jeffreys developed DNA fingerprinting in the mid-1980s using variable number tandem repeats, whose inheritance patterns are as individual specific as a barcode and are used in paternity and crime investigations.',
    'medium',
    'NCERT Class XII',
    null,
    'fb01a07bb89578213637b16669a9f507'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'fb01a07bb89578213637b16669a9f507'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Highly variable repeated DNA sequences called VNTRs'),
            ('B', 'Only the mitochondrial genome'),
            ('C', 'Bacterial plasmids'),
            ('D', 'The Y chromosome exclusively')
           ) as v(label, option_text)
 where q.question_hash = 'fb01a07bb89578213637b16669a9f507'
on conflict (question_id, label) do nothing;

-- science_tech | biology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'In the bacterial growth curve, the phase during which cells multiply exponentially is the:',
    'In the log phase the number of cells doubles at a constant rate, and this is when the culture is most sensitive to antibiotics that target actively dividing cells.',
    'easy',
    'Standard Reference',
    null,
    'facca509037acf86548e1c709845398a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'facca509037acf86548e1c709845398a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Log phase'),
            ('B', 'Stationary phase'),
            ('C', 'Death phase'),
            ('D', 'Lag phase')
           ) as v(label, option_text)
 where q.question_hash = 'facca509037acf86548e1c709845398a'
on conflict (question_id, label) do nothing;

-- science_tech | biology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The process of destroying all microorganisms and their spores on an object is called:',
    'Sterilisation eliminates all forms of microbial life including spores, whereas disinfection kills most pathogenic organisms on inanimate objects and antisepsis is applied to living tissues.',
    'medium',
    'Standard Reference',
    null,
    '755e27c952f354d3fd5be3497c16cd13'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '755e27c952f354d3fd5be3497c16cd13'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Degerming'),
            ('B', 'Disinfection'),
            ('C', 'Antisepsis'),
            ('D', 'Sterilisation')
           ) as v(label, option_text)
 where q.question_hash = '755e27c952f354d3fd5be3497c16cd13'
on conflict (question_id, label) do nothing;

-- science_tech | biology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'In Gram staining, bacteria that retain the crystal violet-iodine complex after decolourisation are described as:',
    'Gram positive bacteria have a thick peptidoglycan wall that retains the crystal violet-iodine complex and appear purple, while Gram negative bacteria have a thin wall and a lipid outer membrane and appear pink.',
    'easy',
    'Standard Reference',
    null,
    '1068b9346038d621e30cc98df8911c4a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '1068b9346038d621e30cc98df8911c4a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Acid fast'),
            ('B', 'Non motile'),
            ('C', 'Gram positive'),
            ('D', 'Gram negative')
           ) as v(label, option_text)
 where q.question_hash = '1068b9346038d621e30cc98df8911c4a'
on conflict (question_id, label) do nothing;

-- science_tech | biology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The Widal test is used for the diagnosis of:',
    'The Widal test detects agglutinins against the O and H antigens of Salmonella typhi in the patient''s serum and is used alongside blood culture for the diagnosis of enteric fever.',
    'medium',
    'NCERT Class XII',
    null,
    '7aafdd34d8399ea5342a4bdf3c671758'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '7aafdd34d8399ea5342a4bdf3c671758'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Diphtheria'),
            ('B', 'Typhoid fever'),
            ('C', 'Tuberculosis'),
            ('D', 'Malaria')
           ) as v(label, option_text)
 where q.question_hash = '7aafdd34d8399ea5342a4bdf3c671758'
on conflict (question_id, label) do nothing;

-- science_tech | biology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The outbreak of cholera in London in 1854 was famously investigated by:',
    'John Snow mapped cholera cases in Soho and traced them to the Broad Street pump, and his work is regarded as a landmark in the history of epidemiology and public health.',
    'easy',
    'Standard Reference',
    null,
    '2a585e14033bf3d070614a5a534bf3b9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '2a585e14033bf3d070614a5a534bf3b9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Robert Koch'),
            ('B', 'John Snow'),
            ('C', 'Louis Pasteur'),
            ('D', 'Edward Jenner')
           ) as v(label, option_text)
 where q.question_hash = '2a585e14033bf3d070614a5a534bf3b9'
on conflict (question_id, label) do nothing;

-- science_tech | biology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'Tetanus and botulism are caused by bacteria of the genus:',
    'Clostridium tetani causes tetanus through the toxin tetanospasmin and Clostridium botulinum causes botulism through botulinum toxin, both of which are spore-forming anaerobic organisms.',
    'medium',
    'Standard Reference',
    null,
    '43e128d3ed50b514fa61addb74227778'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '43e128d3ed50b514fa61addb74227778'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Vibrio'),
            ('B', 'Salmonella'),
            ('C', 'Clostridium'),
            ('D', 'Staphylococcus')
           ) as v(label, option_text)
 where q.question_hash = '43e128d3ed50b514fa61addb74227778'
on conflict (question_id, label) do nothing;

-- science_tech | biology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'A bacteriophage is best described as:',
    'Bacteriophages such as the T-even phage infect bacteria and were the first entities observed under the electron microscope, and their study founded the field of molecular genetics.',
    'easy',
    'NCERT Class XII',
    null,
    'e4d5a0acf45b3a114d8181cb99b11a65'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'e4d5a0acf45b3a114d8181cb99b11a65'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A virus that infects bacteria'),
            ('B', 'A bacterium that infects viruses'),
            ('C', 'A fungus that attacks plants'),
            ('D', 'A protozoan parasite of humans')
           ) as v(label, option_text)
 where q.question_hash = 'e4d5a0acf45b3a114d8181cb99b11a65'
on conflict (question_id, label) do nothing;

-- science_tech | biology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The virus causing influenza belongs to the genus:',
    'Influenza is caused by influenza viruses of the family Orthomyxoviridae, and antigenic shift and drift in their surface haemagglutinin and neuraminidase antigens drive seasonal epidemics and pandemics.',
    'medium',
    'Standard Reference',
    null,
    '51cb2fe9b7792242899a1a0f89fda2a4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '51cb2fe9b7792242899a1a0f89fda2a4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Paramyxovirus'),
            ('B', 'Flavivirus'),
            ('C', 'Retrovirus'),
            ('D', 'Orthomyxovirus')
           ) as v(label, option_text)
 where q.question_hash = '51cb2fe9b7792242899a1a0f89fda2a4'
on conflict (question_id, label) do nothing;

-- science_tech | biology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'Edward Jenner''s pioneering work in 1796 established the principle of:',
    'Jenner used cowpox material to protect against smallpox, and the term vaccine derives from the Latin vacca, the first example of immunisation against an infectious disease.',
    'easy',
    'Standard Reference',
    null,
    '200d2af532185c10cb8943fecd9f6b4c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '200d2af532185c10cb8943fecd9f6b4c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Antiseptic surgery'),
            ('B', 'Chemotherapy'),
            ('C', 'Antibiotic therapy'),
            ('D', 'Vaccination against smallpox')
           ) as v(label, option_text)
 where q.question_hash = '200d2af532185c10cb8943fecd9f6b4c'
on conflict (question_id, label) do nothing;

-- science_tech | biology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The secondary immune response is characterised by:',
    'On a second exposure, memory B and T cells produce a faster, stronger and longer lasting response with predominantly class-switched IgG antibodies, which is the basis of booster doses.',
    'medium',
    'NCERT Class XII',
    null,
    '6dde172de5edf5eb94c8979fd861ed15'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '6dde172de5edf5eb94c8979fd861ed15'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A rapid and vigorous production of antibodies due to memory cells'),
            ('B', 'The absence of any antibody response'),
            ('C', 'Production of only IgM'),
            ('D', 'A slow and weak production of antibodies')
           ) as v(label, option_text)
 where q.question_hash = '6dde172de5edf5eb94c8979fd861ed15'
on conflict (question_id, label) do nothing;

-- science_tech | biology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The normal human blood group ABO system is determined by:',
    'The ABO groups are defined by carbohydrate antigens on the red cell surface and the corresponding naturally occurring antibodies in the plasma, while the Rh factor is based on a protein antigen.',
    'medium',
    'NCERT Class XI',
    null,
    'e29df5411361d310a1e1d44941309ab3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e29df5411361d310a1e1d44941309ab3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Haemoglobin structure'),
            ('B', 'Plasma proteins only'),
            ('C', 'Antigens on red blood cells and antibodies in plasma'),
            ('D', 'Antibodies on red blood cells only')
           ) as v(label, option_text)
 where q.question_hash = 'e29df5411361d310a1e1d44941309ab3'
on conflict (question_id, label) do nothing;

-- science_tech | biology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'In a normal adult at rest, the cardiac cycle lasts about:',
    'At a heart rate of about 72 beats per minute each cardiac cycle lasts roughly 0.8 seconds, consisting of atrial systole, ventricular systole and a joint diastole.',
    'easy',
    'NCERT Class XI',
    null,
    '30fcd9d2088d4b8d775ec38d0ac59907'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '30fcd9d2088d4b8d775ec38d0ac59907'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '0.4 seconds'),
            ('B', '0.8 seconds'),
            ('C', '1.2 seconds'),
            ('D', '1.6 seconds')
           ) as v(label, option_text)
 where q.question_hash = '30fcd9d2088d4b8d775ec38d0ac59907'
on conflict (question_id, label) do nothing;

-- science_tech | space | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'The main component of the Sun by mass is:',
    'The Sun is about 73 per cent hydrogen and 25 per cent helium by mass, with the remainder mostly heavier elements such as carbon, oxygen and iron.',
    'easy',
    'Standard Reference',
    null,
    '78459c82a109f8087f104fad77e95412'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '78459c82a109f8087f104fad77e95412'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Hydrogen'),
            ('B', 'Helium'),
            ('C', 'Oxygen'),
            ('D', 'Iron')
           ) as v(label, option_text)
 where q.question_hash = '78459c82a109f8087f104fad77e95412'
on conflict (question_id, label) do nothing;

-- science_tech | space | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'The outermost and hottest visible layer of the Sun is the:',
    'The Sun''s atmosphere has the photosphere as the visible surface at about 5800 K, the chromosphere above it at perhaps 20,000 K, and the corona above that, reaching millions of kelvin.',
    'medium',
    'Standard Reference',
    null,
    '656ceaa19a50ee661ef7cdf63b155882'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '656ceaa19a50ee661ef7cdf63b155882'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Corona'),
            ('B', 'Core'),
            ('C', 'Photosphere'),
            ('D', 'Chromosphere')
           ) as v(label, option_text)
 where q.question_hash = '656ceaa19a50ee661ef7cdf63b155882'
on conflict (question_id, label) do nothing;

-- science_tech | space | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'Sunspots on the Sun follow a cycle of about:',
    'Sunspot numbers rise and fall in an approximately eleven year cycle, and because the magnetic polarity reverses each cycle the full sunspot cycle is often described as about 22 years.',
    'medium',
    'Standard Reference',
    null,
    '8f22ae17f853bc116d4dd5d64bcbd19a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '8f22ae17f853bc116d4dd5d64bcbd19a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '100 years'),
            ('B', '5 years'),
            ('C', '11 years'),
            ('D', '22 years')
           ) as v(label, option_text)
 where q.question_hash = '8f22ae17f853bc116d4dd5d64bcbd19a'
on conflict (question_id, label) do nothing;

-- science_tech | space | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'The axial tilt of the Earth is approximately:',
    'The Earth''s axis is tilted by 23.5 degrees to the plane of its orbit, and this tilt together with revolution causes the seasons, while the 66.5 degrees is the complement of the tilt.',
    'easy',
    'NCERT Class XI',
    null,
    '56a51a6c49cc812e01fc89a803553428'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '56a51a6c49cc812e01fc89a803553428'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '0 degrees'),
            ('B', '23.5 degrees'),
            ('C', '45 degrees'),
            ('D', '66.5 degrees')
           ) as v(label, option_text)
 where q.question_hash = '56a51a6c49cc812e01fc89a803553428'
on conflict (question_id, label) do nothing;

-- science_tech | space | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'A year is a leap year in the Gregorian calendar when:',
    'A year is a leap year if it is divisible by 4, except century years which must be divisible by 400, and this rule makes the average year about 365.2425 days.',
    'medium',
    'Standard Reference',
    null,
    '939c62e82cb5095a930c445833597a95'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '939c62e82cb5095a930c445833597a95'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is divisible by 2'),
            ('B', 'It is divisible by 4 except centuries unless divisible by 400'),
            ('C', 'It is divisible by 100'),
            ('D', 'It is divisible by 7')
           ) as v(label, option_text)
 where q.question_hash = '939c62e82cb5095a930c445833597a95'
on conflict (question_id, label) do nothing;

-- science_tech | space | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'The Moon always presents nearly the same face to the Earth because of:',
    'The Moon is tidally locked, so its rotation period equals its orbital period of about 27.3 days, and the libration allows about 59 per cent of the lunar surface to be seen over time.',
    'medium',
    'Standard Reference',
    null,
    'd44c7b479d655732c803036b8eddb1a2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd44c7b479d655732c803036b8eddb1a2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Its slow rotation matching its orbital period'),
            ('B', 'The shadow of the Earth'),
            ('C', 'The tilt of its axis'),
            ('D', 'Its small size')
           ) as v(label, option_text)
 where q.question_hash = 'd44c7b479d655732c803036b8eddb1a2'
on conflict (question_id, label) do nothing;

-- science_tech | space | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'The dark flat areas on the Moon''s surface visible to the naked eye are:',
    'The lunar maria are vast basaltic plains created by volcanic activity early in the Moon''s history, and they appear darker because they contain fewer bright highland rocks.',
    'medium',
    'Standard Reference',
    null,
    'fb5e8c167c35c5649bad0be307e2337e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'fb5e8c167c35c5649bad0be307e2337e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Craters filled with dust'),
            ('B', 'Ice sheets'),
            ('C', 'Iron oxide plains'),
            ('D', 'Maria, formed by basaltic lava flows')
           ) as v(label, option_text)
 where q.question_hash = 'fb5e8c167c35c5649bad0be307e2337e'
on conflict (question_id, label) do nothing;

-- science_tech | space | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'The tallest volcano in the solar system is:',
    'Olympus Mons on Mars rises about 22 km above the martian surface, and it is so large because lava accumulated over billions of years without plate tectonics to move it.',
    'easy',
    'Standard Reference',
    null,
    'e632411ba41cbd4aa5a3cb4af516c83f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e632411ba41cbd4aa5a3cb4af516c83f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rheasilvia on Vesta'),
            ('B', 'Mauna Loa on Earth'),
            ('C', 'Olympus Mons on Mars'),
            ('D', 'Mauna Kea in Hawaii')
           ) as v(label, option_text)
 where q.question_hash = 'e632411ba41cbd4aa5a3cb4af516c83f'
on conflict (question_id, label) do nothing;

-- science_tech | space | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'Venus rotates on its axis in a direction opposite to that of most planets, and its rotation period is:',
    'Venus has a retrograde rotation period of about 243 Earth days and an orbital period of 225 days, so the Sun rises in the west, and its dense carbon dioxide atmosphere keeps the surface at about 465 degrees Celsius.',
    'medium',
    'Standard Reference',
    null,
    '5001a268a60c637340c0ddf9db4e0b4c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '5001a268a60c637340c0ddf9db4e0b4c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '365 days'),
            ('B', '24 hours'),
            ('C', '243 Earth days'),
            ('D', '117 Earth days')
           ) as v(label, option_text)
 where q.question_hash = '5001a268a60c637340c0ddf9db4e0b4c'
on conflict (question_id, label) do nothing;

-- science_tech | space | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'Jupiter is the largest planet in the solar system, with a mass about:',
    'Jupiter''s mass is about 318 times that of Earth, and it is about 2.5 times more massive than all the other planets combined, and its Great Red Spot is a storm larger than Earth.',
    'medium',
    'Standard Reference',
    null,
    'f9ed3aea285004207140521527ea2dd0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f9ed3aea285004207140521527ea2dd0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Times that of Earth'),
            ('B', 'Twice that of all other planets combined'),
            ('C', 'Less than that of Saturn'),
            ('D', 'Half that of the Earth')
           ) as v(label, option_text)
 where q.question_hash = 'f9ed3aea285004207140521527ea2dd0'
on conflict (question_id, label) do nothing;

-- science_tech | space | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'The mean density of Saturn is:',
    'Saturn''s average density is only about 0.687 g/cm3, less than that of water, so it would float, and its visible rings are largely water ice with a thin dust component.',
    'medium',
    'Standard Reference',
    null,
    '6249233651d6f7d80b75c578207e7ed8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '6249233651d6f7d80b75c578207e7ed8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'About the same as that of Jupiter'),
            ('B', 'About 5.5 g/cm3'),
            ('C', 'Greater than that of Earth'),
            ('D', 'Less than that of water')
           ) as v(label, option_text)
 where q.question_hash = '6249233651d6f7d80b75c578207e7ed8'
on conflict (question_id, label) do nothing;

-- science_tech | space | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'The rotation axis of Uranus is tilted to the plane of its orbit by about:',
    'Uranus''s extreme axial tilt of about 98 degrees makes it roll along its orbit, and it is an ice giant with a much colder interior than the gas giants.',
    'medium',
    'Standard Reference',
    null,
    'cf22aae1ce9d55912c9512cf23e7612a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'cf22aae1ce9d55912c9512cf23e7612a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '45 degrees'),
            ('B', '98 degrees'),
            ('C', '180 degrees'),
            ('D', '23.5 degrees')
           ) as v(label, option_text)
 where q.question_hash = 'cf22aae1ce9d55912c9512cf23e7612a'
on conflict (question_id, label) do nothing;

-- science_tech | space | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'Pluto was reclassified as a dwarf planet by the International Astronomical Union in:',
    'The 2006 General Assembly resolution required a clear orbital neighbourhood for planet status, so Pluto joined Ceres, Haumea, Makemake and Eris in the new category of dwarf planet.',
    'easy',
    'Standard Reference',
    null,
    '5924491cda2444e4033b17e004dd10eb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '5924491cda2444e4033b17e004dd10eb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1992'),
            ('B', '1998'),
            ('C', '2006'),
            ('D', '2012')
           ) as v(label, option_text)
 where q.question_hash = '5924491cda2444e4033b17e004dd10eb'
on conflict (question_id, label) do nothing;

-- science_tech | space | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'Ceres, the largest object in the asteroid belt, is classified as a:',
    'Ceres is a dwarf planet, a body that has cleared its orbital neighbourhood but is not massive enough to have become a planet, and it was visited by the Dawn spacecraft in 2015.',
    'medium',
    'Standard Reference',
    null,
    '821879f15fa04894dfb32d36af792ff4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '821879f15fa04894dfb32d36af792ff4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Supernova remnant'),
            ('B', 'Dwarf planet'),
            ('C', 'Giant planet'),
            ('D', 'Comet')
           ) as v(label, option_text)
 where q.question_hash = '821879f15fa04894dfb32d36af792ff4'
on conflict (question_id, label) do nothing;

-- science_tech | space | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'The tail of a comet always points:',
    'Solar wind and radiation pressure push the cometary coma and tail away from the Sun, and the ion tail is characteristically straight while the dust tail curves.',
    'easy',
    'Standard Reference',
    null,
    'f3392f23af0fde55bd055b9326c9f4ff'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f3392f23af0fde55bd055b9326c9f4ff'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Away from the Sun'),
            ('B', 'Along the ecliptic'),
            ('C', 'Towards the Earth'),
            ('D', 'Towards the Sun')
           ) as v(label, option_text)
 where q.question_hash = 'f3392f23af0fde55bd055b9326c9f4ff'
on conflict (question_id, label) do nothing;

-- science_tech | space | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'The Oort cloud is believed to be the source of:',
    'The distant spherical Oort cloud is thought to supply long period comets, while the disc shaped Kuiper belt beyond Neptune is the source of short period comets such as Halley''s family.',
    'medium',
    'Standard Reference',
    null,
    '4a1486b438ff1a4f3568f50c7e5b91f9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '4a1486b438ff1a4f3568f50c7e5b91f9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Asteroids'),
            ('B', 'Exoplanets'),
            ('C', 'Pulsars'),
            ('D', 'Long period comets')
           ) as v(label, option_text)
 where q.question_hash = '4a1486b438ff1a4f3568f50c7e5b91f9'
on conflict (question_id, label) do nothing;

-- science_tech | space | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'A meteoroid that enters the Earth''s atmosphere and glows is called a:',
    'A meteoroid is a body in space, a meteor is the light phenomenon produced when it burns up in the atmosphere, and a meteorite is the fragment that reaches the ground.',
    'easy',
    'Standard Reference',
    null,
    '068d80cbfb823dbdbad251ab68d5a064'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '068d80cbfb823dbdbad251ab68d5a064'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Comet'),
            ('B', 'Asteroid'),
            ('C', 'Meteorite'),
            ('D', 'Meteor')
           ) as v(label, option_text)
 where q.question_hash = '068d80cbfb823dbdbad251ab68d5a064'
on conflict (question_id, label) do nothing;

-- science_tech | space | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'The Perseid meteor shower is associated with Comet:',
    'The Perseids radiate from the constellation Perseus and arise from debris of Comet 109P/Swift-Tuttle, which has an orbital period of about 133 years and was last seen in 1992.',
    'medium',
    'Standard Reference',
    null,
    '081005547ea8898b90f352cc06cf44b9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '081005547ea8898b90f352cc06cf44b9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Halley'),
            ('B', 'Swift-Tuttle'),
            ('C', 'Encke'),
            ('D', 'Borrelly')
           ) as v(label, option_text)
 where q.question_hash = '081005547ea8898b90f352cc06cf44b9'
on conflict (question_id, label) do nothing;

-- science_tech | space | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'The transit method of detecting exoplanets involves:',
    'In the transit method the planet blocks a small fraction of the light of the parent star, producing periodic dips in brightness, and the method is used by space telescopes such as Kepler and TESS.',
    'medium',
    'Standard Reference',
    null,
    'd359eeecc858b440818b4b0cec1fd843'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd359eeecc858b440818b4b0cec1fd843'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Measuring the drop in the star''s brightness as a planet passes in front of it'),
            ('B', 'Measuring the Doppler shift in the star''s spectrum'),
            ('C', 'Directly imaging the planet''s thermal emission'),
            ('D', 'Counting radio pulses')
           ) as v(label, option_text)
 where q.question_hash = 'd359eeecc858b440818b4b0cec1fd843'
on conflict (question_id, label) do nothing;

-- science_tech | space | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'The radial velocity or Doppler method of detecting exoplanets measures:',
    'When a planet tugs on its star, the star wobbles about the common centre of mass and its spectral lines shift periodically in wavelength, and this is how 51 Pegasi b was detected.',
    'medium',
    'Standard Reference',
    null,
    'ee1b5e039c3a8890a4795e10c87daa5b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'ee1b5e039c3a8890a4795e10c87daa5b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The angular size of the star''s disc'),
            ('B', 'The magnetic field of the star'),
            ('C', 'Periodic shifts in the star''s spectral lines due to the star''s motion around the common centre of mass'),
            ('D', 'The brightness of the star during transit')
           ) as v(label, option_text)
 where q.question_hash = 'ee1b5e039c3a8890a4795e10c87daa5b'
on conflict (question_id, label) do nothing;

-- science_tech | space | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'The habitable zone around a star is the region where:',
    'The habitable zone is the orbital range in which a planet with an atmosphere could sustain liquid water on its surface, and for the Sun it lies roughly between 0.95 and 1.67 astronomical units.',
    'easy',
    'Standard Reference',
    null,
    'cf1ca22293e4771389dbea06da64cb7c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'cf1ca22293e4771389dbea06da64cb7c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The star is closest to a black hole'),
            ('B', 'Temperatures may allow liquid water on the surface of a planet'),
            ('C', 'The magnetic field is strongest'),
            ('D', 'There is no gravitational pull')
           ) as v(label, option_text)
 where q.question_hash = 'cf1ca22293e4771389dbea06da64cb7c'
on conflict (question_id, label) do nothing;

-- science_tech | space | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'Space debris is defined as:',
    'Space debris includes defunct satellites, spent rocket stages, fragmentation debris and other man-made objects that remain in orbit and pose a collision risk to operational spacecraft.',
    'easy',
    'Standard Reference',
    null,
    '827df0f4435f69fe41e81a7caeddf892'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '827df0f4435f69fe41e81a7caeddf892'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'All objects in the solar system'),
            ('B', 'Dust particles in the asteroid belt'),
            ('C', 'Radio signals from distant galaxies'),
            ('D', 'Man-made objects in orbit that are no longer functional')
           ) as v(label, option_text)
 where q.question_hash = '827df0f4435f69fe41e81a7caeddf892'
on conflict (question_id, label) do nothing;

-- science_tech | space | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'The phenomenon in which collision fragments from space debris generate more debris is called:',
    'Kessler syndrome describes a cascade in which each collision creates further fragments, eventually making certain orbital shells unusable for satellites.',
    'medium',
    'Standard Reference',
    null,
    '614e96e56ae9d52c68bc076becd5b9cf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '614e96e56ae9d52c68bc076becd5b9cf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Redshift effect'),
            ('B', 'Solar flare'),
            ('C', 'Kessler syndrome'),
            ('D', 'Fermi paradox')
           ) as v(label, option_text)
 where q.question_hash = '614e96e56ae9d52c68bc076becd5b9cf'
on conflict (question_id, label) do nothing;

-- science_tech | space | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'The Small Satellite Launch Vehicle (SSLV) developed by ISRO was first launched in:',
    'The SSLV made its first successful flight in August 2022, and the versatile vehicle can carry payloads of about 300 kg to low Earth orbit and up to 1.5 tonnes to sun-synchronous orbits.',
    'medium',
    'Standard Reference',
    null,
    'e2382d5a1078f5dff7ae3ec0b0231325'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'e2382d5a1078f5dff7ae3ec0b0231325'
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
 where q.question_hash = 'e2382d5a1078f5dff7ae3ec0b0231325'
on conflict (question_id, label) do nothing;

-- science_tech | space | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'The Indian navigation satellite system NavIC is also known as:',
    'NavIC is the operational name of the Indian Regional Navigation Satellite System (IRNSS), which consists of seven satellites, three in geostationary orbit and four in inclined geosynchronous orbit.',
    'easy',
    'Standard Reference',
    null,
    '98a33b20a8398e25df89e5f1b0b9fc30'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '98a33b20a8398e25df89e5f1b0b9fc30'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'SARAL'),
            ('B', 'IRNSS'),
            ('C', 'GSAT'),
            ('D', 'IRS and Cartosat')
           ) as v(label, option_text)
 where q.question_hash = '98a33b20a8398e25df89e5f1b0b9fc30'
on conflict (question_id, label) do nothing;

-- science_tech | nuclear-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'nuclear-technology'),
    'Apsara, India''s first nuclear research reactor, is:',
    'Apsara, a 1 MW swimming pool research reactor, achieved criticality in 1954 and was India''s first nuclear reactor; the 5 MW research reactor at Trombay followed, and Apsara was decommissioned in 2004.',
    'medium',
    'Standard Reference',
    null,
    '332f353873a05442eda81590541ac75b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '332f353873a05442eda81590541ac75b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A 1 MW swimming pool type reactor at BARC'),
            ('B', 'A 100 MW power reactor at Rawatbhata'),
            ('C', 'A 500 MW fast breeder reactor at Kalpakkam'),
            ('D', 'A 5 MW heavy water research reactor at Trombay')
           ) as v(label, option_text)
 where q.question_hash = '332f353873a05442eda81590541ac75b'
on conflict (question_id, label) do nothing;

-- science_tech | nuclear-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'nuclear-technology'),
    'Bhabha Atomic Research Centre (BARC) was established in:',
    'BARC was set up in 1954 at Trombay under the chairmanship of Homi J. Bhabha and is the premier research organisation of the Department of Atomic Energy, with India''s nuclear research reactors located there.',
    'medium',
    'Standard Reference',
    null,
    'e737ffd72f8f70d594dffa6dd6979252'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e737ffd72f8f70d594dffa6dd6979252'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1972'),
            ('B', '1947'),
            ('C', '1954'),
            ('D', '1969')
           ) as v(label, option_text)
 where q.question_hash = 'e737ffd72f8f70d594dffa6dd6979252'
on conflict (question_id, label) do nothing;

-- science_tech | nuclear-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'nuclear-technology'),
    'The Atomic Energy Regulatory Board (AERB) was constituted in:',
    'The AERB was constituted under the Atomic Energy Act of 1962 in 2009 and is headquartered in Mumbai, and it is responsible for the regulation of nuclear and radiation safety in India.',
    'medium',
    'Standard Reference',
    null,
    'd527dda5a89ca8beb7dc79f2976e9d33'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'd527dda5a89ca8beb7dc79f2976e9d33'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2014'),
            ('B', '1983'),
            ('C', '1995'),
            ('D', '2009')
           ) as v(label, option_text)
 where q.question_hash = 'd527dda5a89ca8beb7dc79f2976e9d33'
on conflict (question_id, label) do nothing;

-- science_tech | nuclear-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'nuclear-technology'),
    'The Nuclear Power Corporation of India Limited was set up in:',
    'NPCIL was constituted in 1999 under the Companies Act and is headquartered in Mumbai, and it is responsible for operating the country''s nuclear power plants and for the associated fuel cycle activities.',
    'medium',
    'Standard Reference',
    null,
    '8314db895b7f548953c0b5905f9b1586'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '8314db895b7f548953c0b5905f9b1586'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1987'),
            ('B', '1995'),
            ('C', '1999'),
            ('D', '2002')
           ) as v(label, option_text)
 where q.question_hash = '8314db895b7f548953c0b5905f9b1586'
on conflict (question_id, label) do nothing;

-- science_tech | nuclear-technology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'nuclear-technology'),
    'The moderator used in a nuclear reactor is meant to:',
    'A moderator such as heavy water, light water or graphite slows down fast neutrons to thermal energies where they have a higher probability of inducing fission in uranium-235, while control rods absorb excess neutrons.',
    'easy',
    'Standard Reference',
    null,
    '8dfcfca9c5f57826ad3ea6f2b3dc54c5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '8dfcfca9c5f57826ad3ea6f2b3dc54c5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Absorb all the neutrons completely'),
            ('B', 'Cool the fuel rods and the reactor core'),
            ('C', 'Supply the fission neutrons'),
            ('D', 'Slow down neutrons so that they can be captured by fissile nuclei')
           ) as v(label, option_text)
 where q.question_hash = '8dfcfca9c5f57826ad3ea6f2b3dc54c5'
on conflict (question_id, label) do nothing;

-- science_tech | nuclear-technology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'nuclear-technology'),
    'Control rods in a nuclear reactor are made of materials that:',
    'Control rods of boron, cadmium or hafnium absorb neutrons, and their degree of insertion regulates the rate of the chain reaction, allowing shutdown or control of output.',
    'easy',
    'Standard Reference',
    null,
    '83330fd82583ca2e77e4ca559d3a11b2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '83330fd82583ca2e77e4ca559d3a11b2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Act as a neutron source'),
            ('B', 'Absorb neutrons to control the rate of the chain reaction'),
            ('C', 'Slow down fast neutrons'),
            ('D', 'Act as the primary coolant')
           ) as v(label, option_text)
 where q.question_hash = '83330fd82583ca2e77e4ca559d3a11b2'
on conflict (question_id, label) do nothing;

-- science_tech | nuclear-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'nuclear-technology'),
    'The energy released in a single fission of a uranium-235 nucleus is about:',
    'Each fission of a uranium-235 nucleus releases roughly 200 MeV of energy, split among the two daughter nuclei, the emitted neutrons, gamma rays and the ejected electrons, and about 2.5 neutrons per fission sustain the chain reaction.',
    'medium',
    'Standard Reference',
    null,
    '07aa324ae2645e925ea101da7e48ba20'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '07aa324ae2645e925ea101da7e48ba20'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '200 MeV'),
            ('B', '2 MeV'),
            ('C', '20 MeV'),
            ('D', '2000 MeV')
           ) as v(label, option_text)
 where q.question_hash = '07aa324ae2645e925ea101da7e48ba20'
on conflict (question_id, label) do nothing;

-- science_tech | nuclear-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'nuclear-technology'),
    'The binding energy per nucleon of a nucleus is maximum for elements near:',
    'The binding energy per nucleon curve peaks at about 8.8 MeV near nickel-62 and iron-56, which is why fusion of light nuclei and fission of heavy nuclei both release energy.',
    'medium',
    'NCERT Class XII',
    null,
    '4c876e923fbf4dc80c09ae7c7daa4aea'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '4c876e923fbf4dc80c09ae7c7daa4aea'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Uranium and plutonium'),
            ('B', 'Carbon and oxygen'),
            ('C', 'Hydrogen and helium'),
            ('D', 'Iron and nickel')
           ) as v(label, option_text)
 where q.question_hash = '4c876e923fbf4dc80c09ae7c7daa4aea'
on conflict (question_id, label) do nothing;

-- science_tech | nuclear-technology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'nuclear-technology'),
    'The Lawson criterion in thermonuclear fusion refers to the condition for:',
    'The Lawson criterion specifies the temperature, density and confinement time needed for the rate of fusion reactions to exceed energy losses, and it is the key parameter for achieving net power gain.',
    'hard',
    'Standard Reference',
    null,
    '6a77cb489655225b2afffa478ee814eb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '6a77cb489655225b2afffa478ee814eb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Breeding more fuel than is consumed'),
            ('B', 'Achieving net energy gain in a fusion plasma'),
            ('C', 'Controlling the neutron flux in a fission reactor'),
            ('D', 'Storing tritium for a fusion reactor')
           ) as v(label, option_text)
 where q.question_hash = '6a77cb489655225b2afffa478ee814eb'
on conflict (question_id, label) do nothing;

-- science_tech | nuclear-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'nuclear-technology'),
    'ITER, the international thermonuclear experimental reactor, is being built at:',
    'ITER is being constructed at Cadarache in France with a consortium of seven members including the European Union, and India participates through the ITER-India organisation housed at the DAE.',
    'medium',
    'Standard Reference',
    null,
    'b7fb2ada661b1aae84757aae962dd103'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'b7fb2ada661b1aae84757aae962dd103'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Tokai, Japan'),
            ('B', 'Barakuda, India'),
            ('C', 'Cadarache, France'),
            ('D', 'Garching, Germany')
           ) as v(label, option_text)
 where q.question_hash = 'b7fb2ada661b1aae84757aae962dd103'
on conflict (question_id, label) do nothing;

-- science_tech | nuclear-technology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'nuclear-technology'),
    'One rad of absorbed radiation dose is equal to:',
    'One rad equals 0.01 joule per kilogram, and one gray is 1 J/kg, so 1 gray equals 100 rad, while the rem was the unit of equivalent dose before the sievert replaced it.',
    'hard',
    'Standard Reference',
    null,
    'd667f15b2e0c28d9075fc721078935ff'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd667f15b2e0c28d9075fc721078935ff'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '0.01 J/kg'),
            ('B', '1 J/kg'),
            ('C', '0.1 J/kg'),
            ('D', '100 J/kg')
           ) as v(label, option_text)
 where q.question_hash = 'd667f15b2e0c28d9075fc721078935ff'
on conflict (question_id, label) do nothing;

-- science_tech | nuclear-technology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'nuclear-technology'),
    'The half-life of carbon-14 is about:',
    'Carbon-14 has a half-life of about 5730 years, which makes radiocarbon dating usable for organic materials up to roughly 50,000 to 60,000 years old.',
    'easy',
    'Standard Reference',
    null,
    'e45612f6634b4106a18eaddb2f644faa'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e45612f6634b4106a18eaddb2f644faa'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '8 days'),
            ('B', '5730 years'),
            ('C', '1600 years'),
            ('D', '24,800 years')
           ) as v(label, option_text)
 where q.question_hash = 'e45612f6634b4106a18eaddb2f644faa'
on conflict (question_id, label) do nothing;

-- science_tech | nuclear-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'nuclear-technology'),
    'The half-life of iodine-131, used in the treatment of thyroid disorders, is about:',
    'Iodine-131 has a half-life of about 8 days, which makes it suitable for therapeutic use in hyperthyroidism and for radioiodine scanning, while technetium-99m with a 6 hour half-life is used for imaging.',
    'medium',
    'Standard Reference',
    null,
    '9991bb6836dfbc422b5e810d3c64816f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '9991bb6836dfbc422b5e810d3c64816f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '6 months'),
            ('B', '6 hours'),
            ('C', '8 days'),
            ('D', '30 hours')
           ) as v(label, option_text)
 where q.question_hash = '9991bb6836dfbc422b5e810d3c64816f'
on conflict (question_id, label) do nothing;

-- science_tech | nuclear-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'nuclear-technology'),
    'The most suitable isotope for dating rocks is:',
    'The potassium-argon method, based on the decay of potassium-40 into argon-40 in volcanic rocks and minerals, is used to date geological formations hundreds of millions of years old.',
    'medium',
    'Standard Reference',
    null,
    '278a2069ee592e4e0df2ef9a7edd2fb4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '278a2069ee592e4e0df2ef9a7edd2fb4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Tritium'),
            ('B', 'Iodine-131'),
            ('C', 'Carbon-14'),
            ('D', 'Potassium-argon')
           ) as v(label, option_text)
 where q.question_hash = '278a2069ee592e4e0df2ef9a7edd2fb4'
on conflict (question_id, label) do nothing;

-- science_tech | nuclear-technology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'nuclear-technology'),
    'India''s three-stage nuclear programme relies on the thorium fuel cycle for:',
    'In stage two fast breeder reactors, plutonium-239 breeds uranium-233 from thorium-232, and this fissile material then fuels the thorium-based stage three reactors, and India has built up a large inventory of U-233.',
    'hard',
    'Standard Reference',
    null,
    '4b6c755b9be83c07aa8ade743acf97a9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '4b6c755b9be83c07aa8ade743acf97a9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Breeding uranium-233 for use in stage three reactors'),
            ('B', 'Enriching natural uranium'),
            ('C', 'Making heavy water'),
            ('D', 'Producing electricity in the existing PHWRs')
           ) as v(label, option_text)
 where q.question_hash = '4b6c755b9be83c07aa8ade743acf97a9'
on conflict (question_id, label) do nothing;

-- science_tech | nuclear-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'nuclear-technology'),
    'The principal source of thorium in India is:',
    'India''s thorium resources are concentrated in the monazite beach sands of Kerala and Rajasthan, and these monazite sands also carry the world''s largest known reserves of thorium.',
    'medium',
    'Standard Reference',
    null,
    'b89c28ae7142b98aaffb9278f6b61fb3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b89c28ae7142b98aaffb9278f6b61fb3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Limestone deposits of Tamil Nadu'),
            ('B', 'Monazite sands of Kerala and the Aruvali hills of Rajasthan'),
            ('C', 'Bauxite deposits of Odisha'),
            ('D', 'Manganese ores of central India')
           ) as v(label, option_text)
 where q.question_hash = 'b89c28ae7142b98aaffb9278f6b61fb3'
on conflict (question_id, label) do nothing;

-- science_tech | nuclear-technology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'nuclear-technology'),
    'The three-stage management of radioactive waste in India involves:',
    'Radioactive waste is managed in three stages, with low and intermediate waste treated and conditioned for disposal and high level waste, including spent fuel, kept under long term storage in a closed facility such as the Trombay facility.',
    'hard',
    'Standard Reference',
    null,
    'e4d3dd02ac339101055e4e5e0957275b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'e4d3dd02ac339101055e4e5e0957275b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Treatment, storage and disposal at different stages with interim storage of spent fuel'),
            ('B', 'Export of all waste for reprocessing'),
            ('C', 'Burning of waste in reactors'),
            ('D', 'Only deep geological disposal')
           ) as v(label, option_text)
 where q.question_hash = 'e4d3dd02ac339101055e4e5e0957275b'
on conflict (question_id, label) do nothing;

-- science_tech | nuclear-technology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'nuclear-technology'),
    'The use of radioisotopes in medical diagnosis and therapy in India is regulated by:',
    'The AERB regulates all uses of radioactive materials, including the production of radioisotopes, their transport and their medical and industrial applications through its own divisions and the AERB (Medical) Directive.',
    'hard',
    'Standard Reference',
    null,
    'dc819ae16b7c9ab991849dfbdef4a2b9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'dc819ae16b7c9ab991849dfbdef4a2b9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The National Accreditation Board for Education and Training'),
            ('B', 'The Food Safety and Standards Authority of India'),
            ('C', 'The Bureau of Indian Standards'),
            ('D', 'The Atomic Energy Regulatory Board')
           ) as v(label, option_text)
 where q.question_hash = 'dc819ae16b7c9ab991849dfbdef4a2b9'
on conflict (question_id, label) do nothing;

-- science_tech | nuclear-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'nuclear-technology'),
    'The neutron has approximately the same mass as:',
    'The neutron has a mass of about 1.675 x 10^-27 kg, which is very close to that of the hydrogen atom, since the proton is slightly lighter and the alpha particle is four times heavier.',
    'medium',
    'Standard Reference',
    null,
    '6a18c7100ca21072f16260cfa428afa4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '6a18c7100ca21072f16260cfa428afa4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'An alpha particle'),
            ('B', 'A proton'),
            ('C', 'A hydrogen atom'),
            ('D', 'An electron')
           ) as v(label, option_text)
 where q.question_hash = '6a18c7100ca21072f16260cfa428afa4'
on conflict (question_id, label) do nothing;

-- science_tech | nuclear-technology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'nuclear-technology'),
    'The India-IAEA safeguards agreement came into force in:',
    'India concluded a safeguards agreement with the IAEA in 1971 which entered into force in 1993, and the Additional Protocol granting broader access was signed and implemented in 2005.',
    'hard',
    'Standard Reference',
    null,
    'dc88fd9f80c3db70551ef928d066b82c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'dc88fd9f80c3db70551ef928d066b82c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1962'),
            ('B', '1971'),
            ('C', '1993'),
            ('D', '2005')
           ) as v(label, option_text)
 where q.question_hash = 'dc88fd9f80c3db70551ef928d066b82c'
on conflict (question_id, label) do nothing;

-- science_tech | nuclear-technology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'nuclear-technology'),
    'The Additional Protocol to the IAEA safeguards agreements:',
    'The Additional Protocol, in force for India since 2005, allows IAEA inspectors access to information on fuel cycle activities, to declare fuel cycle R and D and to inspect sites such as the Tarapur and Kalpakkam plants.',
    'hard',
    'Standard Reference',
    null,
    'dfc8220993386b58f6f923e3a8ca03a7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'dfc8220993386b58f6f923e3a8ca03a7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Gives the IAEA broader access to information and inspection rights'),
            ('B', 'Abrogates the NPT'),
            ('C', 'Bans the import of nuclear fuel'),
            ('D', 'Bans all nuclear power plants in non-nuclear weapon states')
           ) as v(label, option_text)
 where q.question_hash = 'dfc8220993386b58f6f923e3a8ca03a7'
on conflict (question_id, label) do nothing;

-- science_tech | nuclear-technology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'nuclear-technology'),
    'A fast breeder reactor is characterised by:',
    'Fast breeder reactors use fast neutrons and typically liquid sodium as coolant, and they breed more fissile material than they consume, which is why they are considered the bridge to the thorium stage.',
    'hard',
    'Standard Reference',
    null,
    'd1d33cd4f58710867776653a9ccb1cf3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'd1d33cd4f58710867776653a9ccb1cf3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Use of graphite moderator and carbon dioxide coolant'),
            ('B', 'Use of heavy water moderator at high pressure'),
            ('C', 'Operation entirely on natural uranium'),
            ('D', 'Use of fast neutrons and a liquid sodium coolant to breed fissile fuel')
           ) as v(label, option_text)
 where q.question_hash = 'd1d33cd4f58710867776653a9ccb1cf3'
on conflict (question_id, label) do nothing;

-- science_tech | nuclear-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'nuclear-technology'),
    'The Compact Muon Solenoid detector at the Large Hadron Collider is built to:',
    'The CMS and ATLAS detectors at the Large Hadron Collider at CERN record the products of proton-proton and heavy ion collisions, and in 2012 they confirmed the existence of the Higgs boson.',
    'medium',
    'Standard Reference',
    null,
    'c4fc8d18b10cd9228d59831eeb7098db'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'c4fc8d18b10cd9228d59831eeb7098db'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Detect cosmic ray muons at the surface'),
            ('B', 'Study collisions of protons and heavy ions at the highest energies'),
            ('C', 'Measure neutrino mass directly'),
            ('D', 'Detect gravitational waves')
           ) as v(label, option_text)
 where q.question_hash = 'c4fc8d18b10cd9228d59831eeb7098db'
on conflict (question_id, label) do nothing;

-- science_tech | defence-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'defence-technology'),
    'The Chief of Defence Staff of the Indian Armed Forces:',
    'The CDS is the senior-most officer of the Indian Armed Forces, chairs the Chiefs of Staff Committee and exercises command and control over the integrated theatre commands, and the post was created in 2019.',
    'medium',
    'Standard Reference',
    null,
    '55a293186d300c1dc249e9b056294a14'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '55a293186d300c1dc249e9b056294a14'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the senior-most officer of the armed forces and chairs the Chiefs of Staff Committee'),
            ('B', 'Is a ceremonial post with no operational role'),
            ('C', 'Heads the Integrated Theatre Commands and also controls all service procurements'),
            ('D', 'Is the ex-officio chairman of the Defence Acquisition Council')
           ) as v(label, option_text)
 where q.question_hash = '55a293186d300c1dc249e9b056294a14'
on conflict (question_id, label) do nothing;

-- science_tech | defence-technology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'defence-technology'),
    'The Astra Mk-1 missile developed by DRDO is:',
    'Astra Mk-1 is an indigenously developed air-to-air missile of about 110 km range built by DRDO with the involvement of private firms, and it was inducted into the Indian Air Force in 2021.',
    'hard',
    'Standard Reference',
    null,
    'bcdfb72e903f77dbdd707c03450c6521'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'bcdfb72e903f77dbdd707c03450c6521'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A submarine launched ballistic missile'),
            ('B', 'A 700 km range ballistic missile'),
            ('C', 'An air-to-air missile of about 110 km range developed by DRDO'),
            ('D', 'A long range surface-to-air missile supplied by Israel')
           ) as v(label, option_text)
 where q.question_hash = 'bcdfb72e903f77dbdd707c03450c6521'
on conflict (question_id, label) do nothing;

-- science_tech | defence-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'defence-technology'),
    'The QRSAM, a short range surface-to-air missile developed for the Indian Air Force, has a range of about:',
    'The Quick Reaction Short Range Air Defence missile developed by DRDO with Bharat Electronics has a range of about 30 km and is designed to protect key installations against fast air threats.',
    'medium',
    'Standard Reference',
    null,
    '68c6f7a247785a6240ced0fcbd4eca02'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '68c6f7a247785a6240ced0fcbd4eca02'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '100 km'),
            ('B', '400 km'),
            ('C', '10 km'),
            ('D', '30 km')
           ) as v(label, option_text)
 where q.question_hash = '68c6f7a247785a6240ced0fcbd4eca02'
on conflict (question_id, label) do nothing;

-- science_tech | defence-technology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'defence-technology'),
    'The Prahaar missile developed by DRDO is:',
    'Prahaar is a solid-propelled, canisterised, road-mobile surface-to-surface missile with a range of 40 to 70 km, developed for the Indian Army to provide tactical support.',
    'hard',
    'Standard Reference',
    null,
    '26dccabc42a1bf75cc2f781d43a3fb65'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '26dccabc42a1bf75cc2f781d43a3fb65'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A cruise missile with a 1000 km range'),
            ('B', 'A solid-fuelled, road-mobile surface-to-surface missile of 40 to 70 km range'),
            ('C', 'A long range air defence system of 100 km range'),
            ('D', 'A ship-launched anti-submarine rocket')
           ) as v(label, option_text)
 where q.question_hash = '26dccabc42a1bf75cc2f781d43a3fb65'
on conflict (question_id, label) do nothing;

-- science_tech | defence-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'defence-technology'),
    'The naval variant of the BrahMos missile has a range of about:',
    'The ship-launched BrahMos variant has a range of about 800 km against about 290 km for the land-based version, and the air-launched BrahMos-A variant is also in development.',
    'medium',
    'Standard Reference',
    null,
    '20736b613e9c3a4a2337f24a3b7bdd10'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '20736b613e9c3a4a2337f24a3b7bdd10'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '40 km'),
            ('B', '290 km'),
            ('C', '800 km'),
            ('D', '150 km')
           ) as v(label, option_text)
 where q.question_hash = '20736b613e9c3a4a2337f24a3b7bdd10'
on conflict (question_id, label) do nothing;

-- science_tech | defence-technology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'defence-technology'),
    'Which of the following is a correct statement about the A-31 and A-32 airborne early warning and control aircraft?',
    'The A-31 (Airbus A-330 based) and A-32 (Boeing 737 based) airborne warning and control aircraft carry the Active electronically scanned array radar and provide airborne surveillance, command and control.',
    'hard',
    'Standard Reference',
    null,
    '7f446535afd6eb595588bc3fa53bc4e9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '7f446535afd6eb595588bc3fa53bc4e9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'They are heavy transport aircraft built by HAL'),
            ('B', 'They are unmanned combat aerial vehicles'),
            ('C', 'They are converted versions of the Boeing 737'),
            ('D', 'They carry a netted radar and are used for airborne surveillance and command')
           ) as v(label, option_text)
 where q.question_hash = '7f446535afd6eb595588bc3fa53bc4e9'
on conflict (question_id, label) do nothing;

-- science_tech | defence-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'defence-technology'),
    'Tejas Mk1A, an improved version of the Light Combat Aircraft, was ordered in 2021 for a total of:',
    'The Cabinet approved the procurement of 83 Tejas Mk1A aircraft in 2021, with the first batch handed over to the Indian Air Force in 2024, and the induction of Mk2 and improved variants is under way.',
    'medium',
    'Standard Reference',
    null,
    'cea1928742c03e35a8f107229dee48bc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'cea1928742c03e35a8f107229dee48bc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '40 aircraft'),
            ('B', '83 aircraft'),
            ('C', '250 aircraft'),
            ('D', '20 aircraft')
           ) as v(label, option_text)
 where q.question_hash = 'cea1928742c03e35a8f107229dee48bc'
on conflict (question_id, label) do nothing;

-- science_tech | defence-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'defence-technology'),
    'The MH-60R Seahawk helicopters were inducted into the Indian Navy for:',
    'Sixteen MH-60R Seahawk naval multi-mission helicopters were ordered from Sikorsky in 2015 for anti-submarine warfare, anti-surface warfare and maritime surveillance, and the first was inducted in 2017.',
    'medium',
    'Standard Reference',
    null,
    'ce438fa9d926005510fe8ab90f820a14'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ce438fa9d926005510fe8ab90f820a14'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Anti-submarine and anti-surface warfare'),
            ('B', 'Airborne early warning'),
            ('C', 'Heavy lift cargo operations'),
            ('D', 'Search and rescue in the Himalayas')
           ) as v(label, option_text)
 where q.question_hash = 'ce438fa9d926005510fe8ab90f820a14'
on conflict (question_id, label) do nothing;

-- science_tech | defence-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'defence-technology'),
    'INS Vikramaditya, the aircraft carrier of the Indian Navy, is a:',
    'INS Vikramaditya, commissioned in 2013, is the refitted Kiev class carrier with a ski-jump and a MiG-29K fighter wing, while the indigenous INS Vikrant is a domestically built catapult based carrier.',
    'medium',
    'Standard Reference',
    null,
    '4ab646d9288bebb3d3176c2fb3599d4f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '4ab646d9288bebb3d3176c2fb3599d4f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Indigenous Vikrant class carrier'),
            ('B', 'Liaoning class carrier bought from China'),
            ('C', 'Modified Kiev class aircraft carrier with a ski-jump'),
            ('D', 'Nimitz class carrier')
           ) as v(label, option_text)
 where q.question_hash = '4ab646d9288bebb3d3176c2fb3599d4f'
on conflict (question_id, label) do nothing;

-- science_tech | defence-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'defence-technology'),
    'The naval version of the P-8I Poseidon aircraft acquired by India is used mainly for:',
    'Eight P-8I Poseidon aircraft were ordered from Boeing and are used for long-range maritime surveillance, anti-submarine and anti-surface warfare over the Indian Ocean region.',
    'medium',
    'Standard Reference',
    null,
    '3bbe383193a8346818d20bf0d67bbe0b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '3bbe383193a8346818d20bf0d67bbe0b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Refuelling of satellite launch vehicles'),
            ('B', 'Long-range maritime surveillance and anti-submarine warfare'),
            ('C', 'Airborne early warning'),
            ('D', 'Heavy transport to high altitude airfields')
           ) as v(label, option_text)
 where q.question_hash = '3bbe383193a8346818d20bf0d67bbe0b'
on conflict (question_id, label) do nothing;

-- science_tech | defence-technology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'defence-technology'),
    'Which of the following is a defence public sector undertaking under the Ministry of Defence?',
    'Bharat Electronics Limited is a Defence PSU headquartered in Bengaluru that builds systems such as the Akash missile, radars and electronic warfare systems, while the others are private companies.',
    'easy',
    'Standard Reference',
    null,
    '6e0ecff15a563ec950e20dd8ff97ddf9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '6e0ecff15a563ec950e20dd8ff97ddf9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bharat Electronics Limited'),
            ('B', 'Bharat Forge Limited'),
            ('C', 'Tata Advanced Systems'),
            ('D', 'Larsen and Toubro')
           ) as v(label, option_text)
 where q.question_hash = '6e0ecff15a563ec950e20dd8ff97ddf9'
on conflict (question_id, label) do nothing;

-- science_tech | defence-technology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'defence-technology'),
    'The anti-submarine warfare destroyer class built by Mazagon Dock Shipbuilders includes the:',
    'The Kamorta class of stealth anti-submarine warfare destroyers was built by Mazagon Dock, while the Kolkata and Visakhapatnam classes are destroyers equipped with the BrahMos supersonic missile.',
    'hard',
    'Standard Reference',
    null,
    'a5562ce483d369d8f00ec197a382b036'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a5562ce483d369d8f00ec197a382b036'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Shivalik class'),
            ('B', 'Delhi class'),
            ('C', 'Kolkata and Visakhapatnam classes'),
            ('D', 'Kamorta class')
           ) as v(label, option_text)
 where q.question_hash = 'a5562ce483d369d8f00ec197a382b036'
on conflict (question_id, label) do nothing;

-- science_tech | defence-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'defence-technology'),
    'The Pinaka, a 122 mm multi-barrel rocket system, is:',
    'The Pinaka is an indigenous 122 mm towed multi-barrel rocket launcher with a range of about 40 km, designed to replace the obsolete 122 mm Soviet rocket artillery in the Indian Army.',
    'medium',
    'Standard Reference',
    null,
    '76c983e3f08f54a51adc22dd7f5c02fa'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '76c983e3f08f54a51adc22dd7f5c02fa'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'An anti-tank guided missile'),
            ('B', 'An artillery rocket system with a range of about 40 km'),
            ('C', 'A short range air defence system'),
            ('D', 'A surface-to-surface ballistic missile')
           ) as v(label, option_text)
 where q.question_hash = '76c983e3f08f54a51adc22dd7f5c02fa'
on conflict (question_id, label) do nothing;

-- science_tech | defence-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'defence-technology'),
    'The military exercise Varuna is conducted between:',
    'Varuna is a bilateral naval exercise between India and France, while Malabar is the trilateral exercise with the United States and Japan, Indra with Russia, and SIMBEX with Singapore.',
    'medium',
    'Standard Reference',
    null,
    '949ded85aadfb95af3a6d9ba2b7c5da9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '949ded85aadfb95af3a6d9ba2b7c5da9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'India and France'),
            ('B', 'India and Japan'),
            ('C', 'India and Russia'),
            ('D', 'India and the United States')
           ) as v(label, option_text)
 where q.question_hash = '949ded85aadfb95af3a6d9ba2b7c5da9'
on conflict (question_id, label) do nothing;

-- science_tech | defence-technology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'defence-technology'),
    'India''s ballistic missile defence system has been established at:',
    'The Ballistic Missile Defence system was initially set up at Mumbai in 2005 with the ship INS Dhanush for testing and later at Visakhapatnam, and a full indigenous system is under development.',
    'hard',
    'Standard Reference',
    null,
    '9c6ab167a2bda227869690ded6a8f5dc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '9c6ab167a2bda227869690ded6a8f5dc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Chennai and Hyderabad'),
            ('B', 'Bhopal and Kanpur'),
            ('C', 'Pune and Kochi'),
            ('D', 'Mumbai and Visakhapatnam')
           ) as v(label, option_text)
 where q.question_hash = '9c6ab167a2bda227869690ded6a8f5dc'
on conflict (question_id, label) do nothing;

-- science_tech | defence-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'defence-technology'),
    'Under the import embargo list, items reserved for indigenous manufacture must be:',
    'Items on the import embargo list of the Department of Defence Promotion of Indian Defence Manufactured Products cannot be imported, which supports the positive indigenisation objective of reducing import dependence.',
    'medium',
    'Standard Reference',
    null,
    '63b9837fc751a2f4b4e908bc74d27198'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '63b9837fc751a2f4b4e908bc74d27198'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Purchased from the private sector only'),
            ('B', 'Imported with special licence'),
            ('C', 'Banned from import so that they are made domestically'),
            ('D', 'Allowed only from NATO countries')
           ) as v(label, option_text)
 where q.question_hash = '63b9837fc751a2f4b4e908bc74d27198'
on conflict (question_id, label) do nothing;

-- science_tech | defence-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'defence-technology'),
    'The 5.56 mm rifle adopted by the Indian Army in large numbers is the:',
    'The AK-203, built under a technical agreement with Russia and assembled in India, is the standard 5.56 mm assault rifle of the Indian Army and is lighter and more modern than the INSAS rifle it replaced.',
    'medium',
    'Standard Reference',
    null,
    '98a2d78c86aafb30ef3182adc263aaca'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '98a2d78c86aafb30ef3182adc263aaca'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'FN SCAR'),
            ('B', 'M4 carbine'),
            ('C', 'Mosin Nagant'),
            ('D', 'AK-203')
           ) as v(label, option_text)
 where q.question_hash = '98a2d78c86aafb30ef3182adc263aaca'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'An IPv6 internet address is of what bit length?',
    'IPv4 uses 32-bit addresses written as four octets, while IPv6 uses 128-bit addresses written as eight groups of hexadecimal digits, which gives an enormously larger address space.',
    'easy',
    'Standard Reference',
    null,
    '8a5ac8cddf06488b5d4772cd119665f4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '8a5ac8cddf06488b5d4772cd119665f4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '32 bits long'),
            ('B', '64 bits long'),
            ('C', '128 bits long'),
            ('D', '256 bits long')
           ) as v(label, option_text)
 where q.question_hash = '8a5ac8cddf06488b5d4772cd119665f4'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'A worm in computer security is best described as:',
    'A worm exploits network vulnerabilities to spread by itself, unlike a virus which needs to attach to a host file, and this is why worms spread so rapidly across connected systems.',
    'easy',
    'Standard Reference',
    null,
    'ada7c5363f098e6f05a4957adeea7604'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ada7c5363f098e6f05a4957adeea7604'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A self-replicating program that spreads across networks without a host file'),
            ('B', 'A key logger that records keystrokes'),
            ('C', 'A deceptive page used to steal credentials'),
            ('D', 'A program that attaches itself to files and needs a host')
           ) as v(label, option_text)
 where q.question_hash = 'ada7c5363f098e6f05a4957adeea7604'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'A network intrusion detection system (IDS) is used to:',
    'An IDS observes traffic and logs or alarms on patterns that indicate an intrusion, while an intrusion prevention system can also block the offending traffic automatically.',
    'easy',
    'Standard Reference',
    null,
    'fb8e82119b569018525912821c5cd8af'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'fb8e82119b569018525912821c5cd8af'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Encrypt data in transit'),
            ('B', 'Monitor network traffic and raise alerts on suspicious activity'),
            ('C', 'Block all external websites'),
            ('D', 'Compress large files for transmission')
           ) as v(label, option_text)
 where q.question_hash = 'fb8e82119b569018525912821c5cd8af'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'The main purpose of a digital signature is to:',
    'A digital signature uses a private key to create a hash-based signature, which the recipient verifies with the sender''s public key to confirm identity, integrity and non-repudiation of the message.',
    'medium',
    'Standard Reference',
    null,
    'c671f4815405cf7857885d05e21ccf3a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'c671f4815405cf7857885d05e21ccf3a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Compress large documents'),
            ('B', 'Provide authentication, integrity and non-repudiation of electronic messages'),
            ('C', 'Speed up internet access'),
            ('D', 'Encrypt an entire database')
           ) as v(label, option_text)
 where q.question_hash = 'c671f4815405cf7857885d05e21ccf3a'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'The National Electronic Clearing Limited (Necl) operates which payment system?',
    'NPCI operates UPI, IMPS, FAST, NACH, NATS and the Cheques and Clearing System, while NEFT is operated by the Reserve Bank of India and the RTGS system by the RBI as well.',
    'medium',
    'Standard Reference',
    null,
    '6ca3a6caab136629078049139247cd6f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '6ca3a6caab136629078049139247cd6f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'FAST'),
            ('B', 'NACH'),
            ('C', 'UPI'),
            ('D', 'IMPS')
           ) as v(label, option_text)
 where q.question_hash = '6ca3a6caab136629078049139247cd6f'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'UPI Lite, launched by NPCI in 2022, allows:',
    'UPI Lite is a simplified, low-value payments service that works on feature phones through USSD or a mini app and does not require a smartphone, a bank account or an internet connection.',
    'medium',
    'Standard Reference',
    null,
    '45a8dfecc89df6c56501339dc39dd346'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '45a8dfecc89df6c56501339dc39dd346'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Small value payments without the need for a bank account or mobile application'),
            ('B', 'International remittances'),
            ('C', 'Payments only between merchants'),
            ('D', 'Only credit card payments')
           ) as v(label, option_text)
 where q.question_hash = '45a8dfecc89df6c56501339dc39dd346'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'Machine learning differs from artificial intelligence in that:',
    'Machine learning is a branch of AI in which algorithms infer patterns from data and improve with experience, whereas AI is the broader field of building systems that perform tasks requiring human-like intelligence.',
    'easy',
    'Standard Reference',
    null,
    '710f1e0980c24269608ac47120d509da'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '710f1e0980c24269608ac47120d509da'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'AI is a subset of machine learning'),
            ('B', 'Both terms mean exactly the same thing'),
            ('C', 'Machine learning is a subset of AI that learns patterns from data'),
            ('D', 'Machine learning requires no data at all')
           ) as v(label, option_text)
 where q.question_hash = '710f1e0980c24269608ac47120d509da'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'Overfitting in a machine learning model refers to:',
    'An overfitted model has memorised the training examples rather than learning general patterns, so it performs poorly on new data, and techniques such as regularisation, cross-validation and more data help prevent it.',
    'medium',
    'Standard Reference',
    null,
    'f032eee3d4e9f8280386af0d5a3c3fd6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f032eee3d4e9f8280386af0d5a3c3fd6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A model that performs poorly on both training and test data'),
            ('B', 'A model that performs very well on training data but poorly on unseen test data'),
            ('C', 'A model with too few parameters'),
            ('D', 'Data that contains no noise')
           ) as v(label, option_text)
 where q.question_hash = 'f032eee3d4e9f8280386af0d5a3c3fd6'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'Supervised machine learning differs from unsupervised learning in that:',
    'Supervised learning trains a model on labelled examples, while unsupervised learning discovers structure in unlabelled data, for example by clustering customers or detecting anomalies.',
    'easy',
    'Standard Reference',
    null,
    '60103e502a68937ad8384b0d505c3679'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '60103e502a68937ad8384b0d505c3679'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Unsupervised learning always needs labels'),
            ('B', 'Supervised learning cannot use images'),
            ('C', 'Unsupervised learning requires more computing power'),
            ('D', 'Supervised learning works with labelled input-output pairs')
           ) as v(label, option_text)
 where q.question_hash = '60103e502a68937ad8384b0d505c3679'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'The Turing test proposed by Alan Turing in 1950 was intended to test:',
    'The Turing test asks whether a machine can converse with a person in such a way that the person cannot tell whether the interlocutor is human or machine, and it became a central benchmark for artificial intelligence.',
    'medium',
    'Standard Reference',
    null,
    'e2303d08803ef3b061b42310b58b7973'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e2303d08803ef3b061b42310b58b7973'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The storage capacity of a computer'),
            ('B', 'The speed of a computer processor'),
            ('C', 'A machine''s ability to exhibit behaviour indistinguishable from that of a human'),
            ('D', 'The accuracy of a weather model')
           ) as v(label, option_text)
 where q.question_hash = 'e2303d08803ef3b061b42310b58b7973'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'Photolithography in semiconductor fabrication uses:',
    'A mask bearing the circuit design is projected onto a photosensitive polymer coating on the wafer, which is then developed and etched, and modern nodes use extreme ultraviolet lithography with wavelengths of about 13.5 nanometres.',
    'medium',
    'Standard Reference',
    null,
    '90198b047d10f9c8e455989e84e63f1f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '90198b047d10f9c8e455989e84e63f1f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ultraviolet light to transfer circuit patterns onto a photosensitive coating'),
            ('B', 'Lasers to cut silicon wafers'),
            ('C', 'Steam to etch the substrate'),
            ('D', 'Magnetic fields to dope the wafer')
           ) as v(label, option_text)
 where q.question_hash = '90198b047d10f9c8e455989e84e63f1f'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'In the Indian semiconductor ecosystem, ATMP and OSAT refer to:',
    'ATMP means assembly, test and mark packaging and OSAT means outsourced semiconductor assembly and test, and these back-end units complement front-end fabrication plants such as those at Sanand and Dholera.',
    'hard',
    'Standard Reference',
    null,
    'd1daf6f761cdea5fec82fb327389b69b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd1daf6f761cdea5fec82fb327389b69b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Automated textile manufacturing units'),
            ('B', 'Assembly, test and packaging units that work with chip fabrication plants'),
            ('C', 'Advanced telemetry and orbital tracking programmes'),
            ('D', 'Air traffic management programmes')
           ) as v(label, option_text)
 where q.question_hash = 'd1daf6f761cdea5fec82fb327389b69b'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'The eight pillars of the Digital India programme include:',
    'The Digital India framework, launched in 2015, rests on eight pillars including digital infrastructure, e-Kranti, digital financial inclusion, e-governance, smart cities, broadband highways, digital literacy and e-Sign.',
    'medium',
    'Standard Reference',
    null,
    '84265cc6554664a7ea5b9c395c91eddf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '84265cc6554664a7ea5b9c395c91eddf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Digital infrastructure for every one, e-Kranti, digital financial inclusion, e-governance and smart cities'),
            ('B', 'Only broadband connectivity and e-literacy'),
            ('C', 'Digitisation of courts and e-commerce alone'),
            ('D', 'Making, exporting and trading')
           ) as v(label, option_text)
 where q.question_hash = '84265cc6554664a7ea5b9c395c91eddf'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'The E-Waste (Management) Rules were first notified in India in:',
    'The E-Waste (Management) Rules 2016 replaced the 2011 rules and introduced the concept of producer responsibility and extended producer responsibility, with amendments brought in in 2022.',
    'medium',
    'Standard Reference',
    null,
    '9b2839b1253e9b69fb7a286bd5a502b1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '9b2839b1253e9b69fb7a286bd5a502b1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2022'),
            ('B', '2003'),
            ('C', '2011'),
            ('D', '2016')
           ) as v(label, option_text)
 where q.question_hash = '9b2839b1253e9b69fb7a286bd5a502b1'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'The Digital Personal Data Protection Act, 2023, provides for:',
    'The 2023 Act establishes a Data Protection Board and a framework of notice, consent and data fiduciary obligations for processing personal data, with exemptions for state instrumentalities and certain uses.',
    'medium',
    'Standard Reference',
    null,
    '29ef7252db0d32abe5cd1f50c89da572'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '29ef7252db0d32abe5cd1f50c89da572'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Mandatory localisation of all social media'),
            ('B', 'Mandatory surveillance of all citizens'),
            ('C', 'A Data Protection Board and a consent-based framework for handling personal data'),
            ('D', 'Complete ban on processing of any personal data')
           ) as v(label, option_text)
 where q.question_hash = '29ef7252db0d32abe5cd1f50c89da572'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'IN-SPACe, the space sector reform body set up in 2020, was later reconstituted as:',
    'IN-SPACe was reconstituted as a single window agency that authorises and promotes private participation in space, and it has since granted permission for private launch activity and for Indian private space companies to set up facilities.',
    'medium',
    'Standard Reference',
    null,
    'a4e0c48e6dfcb04cda42845d6a8e4993'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a4e0c48e6dfcb04cda42845d6a8e4993'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A single window clearance and authorisation body for the private space sector'),
            ('B', 'A satellite launching company'),
            ('C', 'A space debris tracking agency'),
            ('D', 'A commercial airline regulator')
           ) as v(label, option_text)
 where q.question_hash = 'a4e0c48e6dfcb04cda42845d6a8e4993'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'Collaborative robots, or cobots, are designed to:',
    'Cobots include sensors and force limits that make them safe to work next to people, and they are widely adopted for precision assembly, packaging and machine tending in industry.',
    'easy',
    'Standard Reference',
    null,
    '2825da1d60dc8516370a0ad485c55b6b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '2825da1d60dc8516370a0ad485c55b6b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Operate only in clean rooms'),
            ('B', 'Perform only repetitive lifting tasks'),
            ('C', 'Work safely alongside human workers without fencing'),
            ('D', 'Fly unmanned missions')
           ) as v(label, option_text)
 where q.question_hash = '2825da1d60dc8516370a0ad485c55b6b'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'The three 5G use cases classified as eMBB, URLLC and mMTC stand for:',
    'The International Telecommunication Union defined the 5G service scenarios as enhanced mobile broadband, ultra reliable and low latency communications for industrial uses, and massive machine type communications for IoT devices.',
    'medium',
    'Standard Reference',
    null,
    '092c64ea2f9aba4d948b1bc348461348'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '092c64ea2f9aba4d948b1bc348461348'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Early mobile broadband, ultra low power radio and machine type core'),
            ('B', 'Enhanced mobile broadband, ultra reliable low latency communication and massive machine type communication'),
            ('C', 'Every machine being better, unified radio link control and multi-tier core'),
            ('D', 'Electronic media broadcast, universal rural link and mass telecom connectivity')
           ) as v(label, option_text)
 where q.question_hash = '092c64ea2f9aba4d948b1bc348461348'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'Li-Fi, a wireless technology, transmits data using:',
    'Li-Fi modulates visible light from LEDs to carry data, offering very high speeds and good security because light does not pass through walls, and it is being studied for indoor and hospital use.',
    'easy',
    'Standard Reference',
    null,
    '330c58e8434b0c395e62a924fb39b1fb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '330c58e8434b0c395e62a924fb39b1fb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Infrared waves'),
            ('B', 'Microwave beams'),
            ('C', 'Radio waves in the 2.4 GHz band'),
            ('D', 'Visible light')
           ) as v(label, option_text)
 where q.question_hash = '330c58e8434b0c395e62a924fb39b1fb'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'Symmetric key cryptography differs from asymmetric key cryptography in that:',
    'Symmetric algorithms such as AES use one shared secret key, which is fast but awkward to distribute, while asymmetric schemes such as RSA use a public-private pair to solve the key distribution problem.',
    'medium',
    'Standard Reference',
    null,
    'e0ec49eb38d0495c1e7d171853a97229'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e0ec49eb38d0495c1e7d171853a97229'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Symmetric cryptography does not require keys'),
            ('B', 'Symmetric cryptography uses a pair of related keys, one public and one private'),
            ('C', 'Symmetric cryptography uses a single shared key for both encryption and decryption'),
            ('D', 'Asymmetric cryptography cannot encrypt data')
           ) as v(label, option_text)
 where q.question_hash = 'e0ec49eb38d0495c1e7d171853a97229'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'Git, widely used in software development, is:',
    'Git tracks changes in code and supports branching and merging, and hosted platforms such as GitHub use it, which makes it the standard for collaborative software development.',
    'easy',
    'Standard Reference',
    null,
    'cfc61994a7b4864af5f34775cf3dc7b2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'cfc61994a7b4864af5f34775cf3dc7b2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A programming language'),
            ('B', 'A database management system'),
            ('C', 'An operating system'),
            ('D', 'A distributed version control system')
           ) as v(label, option_text)
 where q.question_hash = 'cfc61994a7b4864af5f34775cf3dc7b2'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'Section 66 of the Information Technology Act, 2000 deals with:',
    'Section 66 prescribes punishments for hacking and computer-related offences, and the Act was amended in 2008 to strengthen the offences and the powers of CERT-In.',
    'hard',
    'Standard Reference',
    null,
    '9b2a48fbe62909cdf977f76eb3f72620'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '9b2a48fbe62909cdf977f76eb3f72620'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Certification of digital signatures'),
            ('B', 'Offences of hacking and related activities'),
            ('C', 'Interception of electronic messages'),
            ('D', 'Establishment of a cyber appellate tribunal')
           ) as v(label, option_text)
 where q.question_hash = '9b2a48fbe62909cdf977f76eb3f72620'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'BharatNet, the national optical fibre project, aims to:',
    'BharatNet aims to lay optical fibre to every Gram Panchayat and enable broadband connectivity, digital literacy and other services in rural areas, and it is implemented with the involvement of state governments.',
    'easy',
    'Standard Reference',
    null,
    '9cca9ac5c12d83c1939861127ae8340b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '9cca9ac5c12d83c1939861127ae8340b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Connect all Gram Panchayats and provide broadband to households'),
            ('B', 'Launch weather satellites'),
            ('C', 'Set up a nuclear research reactor'),
            ('D', 'Build a national quantum network')
           ) as v(label, option_text)
 where q.question_hash = '9cca9ac5c12d83c1939861127ae8340b'
on conflict (question_id, label) do nothing;

-- science_tech | biotechnology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biotechnology'),
    'Restriction endonuclease EcoRI recognises the DNA sequence:',
    'EcoRI cuts at GAATTC leaving sticky ends, while HindIII recognises AAGCTT, and both are palindromic sequences read identically on the two complementary strands.',
    'medium',
    'Standard Reference',
    null,
    'f17f6147b2e6bd4a6b190912e2ee40eb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f17f6147b2e6bd4a6b190912e2ee40eb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'CTGCAG'),
            ('B', 'GAATTC'),
            ('C', 'AAGCTT'),
            ('D', 'GGTACC')
           ) as v(label, option_text)
 where q.question_hash = 'f17f6147b2e6bd4a6b190912e2ee40eb'
on conflict (question_id, label) do nothing;

-- science_tech | biotechnology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biotechnology'),
    'The 1978 Nobel Prize in Physiology or Medicine was awarded for discoveries concerning:',
    'The prize was shared by Werner Arber, Hamilton Smith and Daniel Nathans for their discoveries concerning restriction enzymes and the principles of recombinant DNA technology.',
    'medium',
    'UPSC Prelims 2019',
    2019,
    'f47b8de295e5c7702e3874c4010376b9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f47b8de295e5c7702e3874c4010376b9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Restriction enzymes and their use in recombinant DNA technology'),
            ('B', 'The structure of DNA'),
            ('C', 'The development of the polymerase chain reaction'),
            ('D', 'The mechanism of DNA replication')
           ) as v(label, option_text)
 where q.question_hash = 'f47b8de295e5c7702e3874c4010376b9'
on conflict (question_id, label) do nothing;

-- science_tech | biotechnology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biotechnology'),
    'Blue-white screening in recombinant DNA technology is based on:',
    'Disruption of the lacZ gene by an insert leaves the colonies white, whereas intact lacZ hydrolyses X-gal to give blue colonies, and this allows recombinant clones to be picked out easily.',
    'hard',
    'Standard Reference',
    null,
    '238772f5ba9243d892a1e6c6fdd7aaea'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '238772f5ba9243d892a1e6c6fdd7aaea'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The size of the DNA insert'),
            ('B', 'Resistance to a particular antibiotic'),
            ('C', 'Insertional inactivation of the lacZ gene and blue-white colour of colonies on X-gal plates'),
            ('D', 'Fluorescence under ultraviolet light')
           ) as v(label, option_text)
 where q.question_hash = '238772f5ba9243d892a1e6c6fdd7aaea'
on conflict (question_id, label) do nothing;

-- science_tech | biotechnology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biotechnology'),
    'The Taq polymerase used in the polymerase chain reaction is obtained from:',
    'Taq polymerase is a heat-stable DNA polymerase from the thermophilic bacterium Thermus aquaticus, and its ability to withstand the high temperatures of denaturation made automated PCR possible.',
    'medium',
    'Standard Reference',
    null,
    '3d8b9e65c7951d100051c665dd39fbce'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '3d8b9e65c7951d100051c665dd39fbce'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bacillus subtilis'),
            ('B', 'Thermotoga maritima'),
            ('C', 'Escherichia coli'),
            ('D', 'Thermus aquaticus')
           ) as v(label, option_text)
 where q.question_hash = '3d8b9e65c7951d100051c665dd39fbce'
on conflict (question_id, label) do nothing;

-- science_tech | biotechnology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biotechnology'),
    'In gel electrophoresis, DNA fragments move through the gel towards:',
    'DNA is negatively charged because of its phosphate backbone, so it migrates towards the positive electrode, and smaller fragments travel faster and further through the agarose matrix.',
    'medium',
    'Standard Reference',
    null,
    'ce9217ce2cb334346432dead8ceebb13'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'ce9217ce2cb334346432dead8ceebb13'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The wells where they were loaded'),
            ('B', 'The middle of the gel'),
            ('C', 'The cathode (negative electrode)'),
            ('D', 'The anode (positive electrode)')
           ) as v(label, option_text)
 where q.question_hash = 'ce9217ce2cb334346432dead8ceebb13'
on conflict (question_id, label) do nothing;

-- science_tech | biotechnology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biotechnology'),
    'In the production of recombinant human insulin, the two polypeptide chains A and B are:',
    'Escherichia coli is used to express the A and B chains separately, which are combined and folded with disulphide bonds, and an alternative method produces proinsulin that is then cleaved to remove the C-peptide.',
    'hard',
    'Standard Reference',
    null,
    '9899fc7298aa4646ab0be422f44484a9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '9899fc7298aa4646ab0be422f44484a9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Synthesised chemically from amino acids'),
            ('B', 'Made in plants and joined chemically'),
            ('C', 'Produced separately in bacteria and linked by disulphide bonds'),
            ('D', 'Made by extracting from pig pancreas')
           ) as v(label, option_text)
 where q.question_hash = '9899fc7298aa4646ab0be422f44484a9'
on conflict (question_id, label) do nothing;

-- science_tech | biotechnology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biotechnology'),
    'RNA interference (RNAi) as a gene silencing technology was discovered through work on:',
    'Andrew Fire and Craig Mello showed in 1998 that double-stranded RNA silences genes in the nematode Caenorhabditis elegans, and they received the 2006 Nobel Prize for the discovery.',
    'medium',
    'UPSC Prelims 2017',
    2017,
    'a39e57e368eadb7cc8ccb1dffb1be6fe'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a39e57e368eadb7cc8ccb1dffb1be6fe'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The nematode Caenorhabditis elegans'),
            ('B', 'The fruit fly Drosophila'),
            ('C', 'The bacterium E. coli'),
            ('D', 'The mouse Mus musculus')
           ) as v(label, option_text)
 where q.question_hash = 'a39e57e368eadb7cc8ccb1dffb1be6fe'
on conflict (question_id, label) do nothing;

-- science_tech | biotechnology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biotechnology'),
    'A humanised monoclonal antibody differs from a murine antibody in that:',
    'Humanisation replaces most of the murine variable regions with human sequences while keeping the complementarity determining regions, which greatly reduces the risk of an immune response against the drug.',
    'hard',
    'Standard Reference',
    null,
    '1531f01fa81cde792426afbc0a5ef52b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '1531f01fa81cde792426afbc0a5ef52b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It has a higher molecular weight'),
            ('B', 'Most of its variable region is of human origin, reducing immunogenicity'),
            ('C', 'It is produced without any hybridoma'),
            ('D', 'It cannot be used for cancer therapy')
           ) as v(label, option_text)
 where q.question_hash = '1531f01fa81cde792426afbc0a5ef52b'
on conflict (question_id, label) do nothing;

-- science_tech | biotechnology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biotechnology'),
    'Tissue engineering in medicine involves:',
    'Tissue engineering uses scaffolds, growth factors and cultured cells to build skin, cartilage, bone and other tissues, and decellularised organs are also being explored as templates for transplantation.',
    'medium',
    'Standard Reference',
    null,
    'c70114d53b083b93c5befd6e07ed3546'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'c70114d53b083b93c5befd6e07ed3546'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Transplanting whole organs from pigs'),
            ('B', 'Freezing tissues for later use'),
            ('C', 'Replacing genes in defective cells'),
            ('D', 'Growing replacement tissues using scaffolds, stem cells and bioreactors')
           ) as v(label, option_text)
 where q.question_hash = 'c70114d53b083b93c5befd6e07ed3546'
on conflict (question_id, label) do nothing;

-- science_tech | biotechnology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biotechnology'),
    'The 2017 Nobel Prize in Chemistry was awarded for the development of:',
    'Jacques Dubochet, Joachim Frank and Richard Henderson shared the 2017 Nobel Prize in Chemistry for developing cryo-electron microscopy for the high-resolution structure determination of biomolecules in solution.',
    'medium',
    'UPSC Prelims 2018',
    2018,
    '455214e4a36bdf328878f8918446ec39'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '455214e4a36bdf328878f8918446ec39'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The polymerase chain reaction'),
            ('B', 'Graphene'),
            ('C', 'Cryo-electron microscopy'),
            ('D', 'CRISPR gene editing')
           ) as v(label, option_text)
 where q.question_hash = '455214e4a36bdf328878f8918446ec39'
on conflict (question_id, label) do nothing;

-- science_tech | biotechnology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biotechnology'),
    'The 2018 Nobel Prize in Physiology or Medicine was awarded for the discovery of:',
    'James Allison and Tasuku Honjo shared the 2018 prize for developing cancer therapy by inhibiting negative immune regulation, which led to the checkpoint inhibitors that block CTLA-4 and PD-1.',
    'medium',
    'UPSC Prelims 2019',
    2019,
    '006f7f97439ca68c997374460e1d3861'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '006f7f97439ca68c997374460e1d3861'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The mechanism of RNA splicing'),
            ('B', 'Cancer immunotherapy by inhibition of negative immune regulation'),
            ('C', 'The human immune system'),
            ('D', 'Antibiotics against tuberculosis')
           ) as v(label, option_text)
 where q.question_hash = '006f7f97439ca68c997374460e1d3861'
on conflict (question_id, label) do nothing;

-- science_tech | biotechnology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biotechnology'),
    'The 2019 Nobel Prize in Physiology or Medicine was awarded for the discovery of:',
    'William Kaelin, Peter Ratcliffe and Gregg Semenza shared the 2019 prize for discovering how cells sense and respond to oxygen through the hypoxia inducible factor pathway, which is central to diseases including anaemia and cancer.',
    'medium',
    'UPSC Prelims 2020',
    2020,
    '6808bddab0903c62e5da516020c6572b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '6808bddab0903c62e5da516020c6572b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'How cells sense and adapt to oxygen availability'),
            ('B', 'The mechanism of DNA repair'),
            ('C', 'The structure of the ribosome'),
            ('D', 'The regulation of the cell cycle')
           ) as v(label, option_text)
 where q.question_hash = '6808bddab0903c62e5da516020c6572b'
on conflict (question_id, label) do nothing;

-- science_tech | biotechnology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biotechnology'),
    'The CRISPR based diagnostic platforms SHERLOCK and DETECTR use:',
    'SHERLOCK uses Cas13 to detect target RNA while DETECTR uses Cas12 to detect DNA, and both rely on collateral cleavage of reporter molecules to give a visible signal, allowing field-deployable diagnostics.',
    'hard',
    'Standard Reference',
    null,
    '59d2caffd6b7de290128d1e7fe251473'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '59d2caffd6b7de290128d1e7fe251473'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Antibodies and radioisotopes'),
            ('B', 'Mass spectrometry and electrophoresis'),
            ('C', 'Cas13 and Cas12 enzymes respectively to detect nucleic acids'),
            ('D', 'Polymerase chain reaction and microarrays')
           ) as v(label, option_text)
 where q.question_hash = '59d2caffd6b7de290128d1e7fe251473'
on conflict (question_id, label) do nothing;

-- science_tech | biotechnology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biotechnology'),
    'The Henrietta Lacks case highlighted which bioethical issue?',
    'The HeLa cell line, taken from Henrietta Lacks in 1951 without her knowledge, raised enduring questions about informed consent, ownership of cell lines and equitable sharing of the benefits of research, and her family reached a settlement with the institution in 2013.',
    'medium',
    'Standard Reference',
    null,
    '724a71686f5a5c6e96e12cfc9af5d308'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '724a71686f5a5c6e96e12cfc9af5d308'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Use of human cells without informed consent and the sharing of benefits from research'),
            ('B', 'The use of embryos for stem cell research'),
            ('C', 'Animal experimentation standards'),
            ('D', 'Xenotransplantation of organs')
           ) as v(label, option_text)
 where q.question_hash = '724a71686f5a5c6e96e12cfc9af5d308'
on conflict (question_id, label) do nothing;

-- science_tech | biotechnology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biotechnology'),
    'The organisation established to promote the commercialisation of indigenous biotechnology products in India is:',
    'The Biotechnology Industry Partnership Programme run by the Department of Biotechnology supports academia-industry collaboration, and India also runs biotechnology parks and clusters to support biotech startups and manufacturing.',
    'medium',
    'Standard Reference',
    null,
    'f6b34c85e61e7d70fa828808c03f378b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f6b34c85e61e7d70fa828808c03f378b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Centre for DNA Fingerprinting and Diagnostics'),
            ('B', 'Biotechnology Industry Partnership Programme of DBT'),
            ('C', 'Biotechnology Park, Mohali'),
            ('D', 'National Institute of Immunology')
           ) as v(label, option_text)
 where q.question_hash = 'f6b34c85e61e7d70fa828808c03f378b'
on conflict (question_id, label) do nothing;

-- science_tech | materials-science | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'materials-science'),
    'Among the following, which is an example of an addition polymer?',
    'Polyethylene forms by addition polymerisation of ethene with no loss of any small molecule, while nylon-6,6, terylene and Bakelite are condensation polymers formed with the elimination of water or other small molecules.',
    'easy',
    'NCERT Class XII',
    null,
    '234caaee54e306be10fc4c3106e30372'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '234caaee54e306be10fc4c3106e30372'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Terylene'),
            ('B', 'Bakelite'),
            ('C', 'Nylon-6,6'),
            ('D', 'Polyethylene')
           ) as v(label, option_text)
 where q.question_hash = '234caaee54e306be10fc4c3106e30372'
on conflict (question_id, label) do nothing;

-- science_tech | materials-science | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'materials-science'),
    'The process of heating natural rubber with sulphur to improve its strength and elasticity is called:',
    'Charles Goodyear''s vulcanisation in 1839 forms cross-links between rubber polymer chains using sulphur, which removes the weakness of raw rubber and makes it durable and elastic.',
    'medium',
    'Standard Reference',
    null,
    '19e4704c469f5c02d24ff09b694e0bd2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '19e4704c469f5c02d24ff09b694e0bd2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Vulcanisation'),
            ('B', 'Alloying'),
            ('C', 'Crystallisation'),
            ('D', 'Annealing')
           ) as v(label, option_text)
 where q.question_hash = '19e4704c469f5c02d24ff09b694e0bd2'
on conflict (question_id, label) do nothing;

-- science_tech | materials-science | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'materials-science'),
    'Nichrome, an alloy used in heating elements, consists of:',
    'Nichrome has a high resistivity and a high melting point with little oxidation at red heat, which makes it ideal for electric heating elements, and constantan is a copper-nickel alloy used in resistance standards.',
    'medium',
    'Standard Reference',
    null,
    '058e8c2607ec4976f29c19827b694ebc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '058e8c2607ec4976f29c19827b694ebc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '50 per cent copper and 50 per cent nickel'),
            ('B', '90 per cent copper and 10 per cent tin'),
            ('C', '70 per cent iron and 30 per cent carbon'),
            ('D', '80 per cent nickel and 20 per cent chromium')
           ) as v(label, option_text)
 where q.question_hash = '058e8c2607ec4976f29c19827b694ebc'
on conflict (question_id, label) do nothing;

-- science_tech | materials-science | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'materials-science'),
    'The band gap of silicon is about:',
    'Silicon has a band gap of about 1.1 eV, germanium about 0.67 eV and gallium arsenide about 1.43 eV, and the smaller the band gap the easier it is to excite carriers, which is why germanium conducts more easily than silicon.',
    'medium',
    'Standard Reference',
    null,
    '30ac018947cbfd03ddf16dda68f5b4dd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '30ac018947cbfd03ddf16dda68f5b4dd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '3.4 eV'),
            ('B', '0.67 eV'),
            ('C', '1.1 eV'),
            ('D', '1.43 eV')
           ) as v(label, option_text)
 where q.question_hash = '30ac018947cbfd03ddf16dda68f5b4dd'
on conflict (question_id, label) do nothing;

-- science_tech | materials-science | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'materials-science'),
    'Traditional ceramics differ from advanced ceramics in that traditional ceramics are:',
    'Traditional ceramics such as bricks, tiles and porcelain are made from clay and are largely amorphous, while advanced ceramics such as silicon carbide and alumina are made to tight specifications with excellent mechanical, thermal and electrical properties.',
    'medium',
    'Standard Reference',
    null,
    'f50e7c7cad08f19f73f368248e38ca4e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f50e7c7cad08f19f73f368248e38ca4e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Conduct electricity at all temperatures'),
            ('B', 'Made from clay and are usually amorphous with inferior properties'),
            ('C', 'Always synthetic and single crystal'),
            ('D', 'Used only in spacecraft')
           ) as v(label, option_text)
 where q.question_hash = 'f50e7c7cad08f19f73f368248e38ca4e'
on conflict (question_id, label) do nothing;

-- science_tech | materials-science | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'materials-science'),
    'Kevlar, a fibre used in bulletproof vests, is a:',
    'Kevlar is an aramid fibre with very high tensile strength and heat resistance at low weight, and its composites are used in body armour, helmets, ropes and aerospace structures.',
    'medium',
    'Standard Reference',
    null,
    'b4b3334bdaad6304c179dc4361b49c9a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'b4b3334bdaad6304c179dc4361b49c9a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Glass fibre'),
            ('B', 'Basalt fibre'),
            ('C', 'Carbon fibre'),
            ('D', 'Aramid (poly-para-phenylene terephthalamide) fibre')
           ) as v(label, option_text)
 where q.question_hash = 'b4b3334bdaad6304c179dc4361b49c9a'
on conflict (question_id, label) do nothing;

-- science_tech | materials-science | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'materials-science'),
    'Scanning electron microscopy differs from transmission electron microscopy in that:',
    'SEM scans the surface with a focused electron beam to build a three dimensional image, while TEM passes electrons through an ultrathin specimen to give much higher resolution of internal structure.',
    'hard',
    'Standard Reference',
    null,
    'c622fab91de20f5f1afe114067721014'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'c622fab91de20f5f1afe114067721014'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'SEM images the surface topography while TEM transmits electrons through a thin specimen'),
            ('B', 'TEM requires bulk samples'),
            ('C', 'SEM cannot achieve high magnification'),
            ('D', 'TEM cannot produce three dimensional images')
           ) as v(label, option_text)
 where q.question_hash = 'c622fab91de20f5f1afe114067721014'
on conflict (question_id, label) do nothing;

-- science_tech | materials-science | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'materials-science'),
    'The first high temperature superconducting material with a critical temperature above 30 K was:',
    'Bednorz and Müller discovered superconductivity at about 35 K in the cuprate La2-xSrxCuO4 in 1986, and the discovery opened the era of cuprate high temperature superconductors, winning them the 1987 Nobel Prize.',
    'hard',
    'Standard Reference',
    null,
    '00bc051e354c031b8ab70f0573288c0a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '00bc051e354c031b8ab70f0573288c0a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Magnesium diboride'),
            ('B', 'Lanthanum strontium copper oxide'),
            ('C', 'Vanadium gallium'),
            ('D', 'Niobium titanium')
           ) as v(label, option_text)
 where q.question_hash = '00bc051e354c031b8ab70f0573288c0a'
on conflict (question_id, label) do nothing;

-- science_tech | materials-science | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'materials-science'),
    'The most common application of superconducting magnets in medicine is in:',
    'MRI machines use superconducting magnets to produce the very strong, homogeneous magnetic fields needed for imaging, and the low temperatures are maintained by liquid helium cryogenics.',
    'easy',
    'Standard Reference',
    null,
    '1836687dd93f821f022f5397515f45d0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '1836687dd93f821f022f5397515f45d0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ultrasound imaging'),
            ('B', 'X-ray radiography'),
            ('C', 'Magnetic resonance imaging'),
            ('D', 'Computed tomography')
           ) as v(label, option_text)
 where q.question_hash = '1836687dd93f821f022f5397515f45d0'
on conflict (question_id, label) do nothing;

-- science_tech | materials-science | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'materials-science'),
    'Ordinary soda-lime glass is produced from:',
    'Soda-lime glass is made by fusing silica sand with soda ash as a flux and lime as a stabilizer, while borosilicate glass adds boric oxide to improve thermal shock resistance.',
    'medium',
    'Standard Reference',
    null,
    'ced52e9fd73a576986878a8c0f9f60df'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ced52e9fd73a576986878a8c0f9f60df'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Silica, soda ash and lime'),
            ('B', 'Boric oxide and silica'),
            ('C', 'Silica and alumina only'),
            ('D', 'Lead oxide and silica')
           ) as v(label, option_text)
 where q.question_hash = 'ced52e9fd73a576986878a8c0f9f60df'
on conflict (question_id, label) do nothing;

-- science_tech | materials-science | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'materials-science'),
    'Fly ash and ground granulated blast furnace slag are used in cement because they:',
    'Both are industrial by-products with pozzolanic or latent hydraulic properties, and using them in blended cement lowers the clinker requirement, saves energy and reduces carbon emissions.',
    'hard',
    'Standard Reference',
    null,
    '9e543f00e0f7e56615e9dc5fc4cd8d6a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '9e543f00e0f7e56615e9dc5fc4cd8d6a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Increase the setting time'),
            ('B', 'Act as accelerators only'),
            ('C', 'Increase the carbon footprint'),
            ('D', 'Act as pozzolanic materials and reduce the clinker content')
           ) as v(label, option_text)
 where q.question_hash = '9e543f00e0f7e56615e9dc5fc4cd8d6a'
on conflict (question_id, label) do nothing;

-- science_tech | materials-science | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'materials-science'),
    'Bone cement used in joint replacement surgery is usually:',
    'Polymethyl methacrylate bone cement fixes the implant to the bone and can carry antibiotic, although ceramics such as hydroxyapatite and metal alloys are also used in specific implant designs.',
    'medium',
    'Standard Reference',
    null,
    '5140caed5b5a0bfacd86fd51264a54a5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '5140caed5b5a0bfacd86fd51264a54a5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A titanium alloy'),
            ('B', 'Polymethyl methacrylate'),
            ('C', 'A ceramic hydroxyapatite paste'),
            ('D', 'A collagen hydrogel')
           ) as v(label, option_text)
 where q.question_hash = '5140caed5b5a0bfacd86fd51264a54a5'
on conflict (question_id, label) do nothing;

-- science_tech | materials-science | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'materials-science'),
    'Shape memory alloys are used in applications because they:',
    'A shape memory alloy such as nitinol can be deformed at low temperature and return to its original shape when heated, which makes it useful for stents, actuators, orthodontic wires and aerospace components.',
    'medium',
    'Standard Reference',
    null,
    'f53445b1ad4d9f837bc8c0db39b13f59'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'f53445b1ad4d9f837bc8c0db39b13f59'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Conduct electricity without resistance'),
            ('B', 'Dissolve in body fluids'),
            ('C', 'Return to a pre-set shape when heated above a transition temperature'),
            ('D', 'Are the lightest known solids')
           ) as v(label, option_text)
 where q.question_hash = 'f53445b1ad4d9f837bc8c0db39b13f59'
on conflict (question_id, label) do nothing;

-- science_tech | materials-science | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'materials-science'),
    'The Hall effect is used to determine:',
    'A magnetic field perpendicular to a current produces a transverse voltage whose sign identifies whether the carriers are electrons or holes and whose magnitude gives the carrier density.',
    'hard',
    'Standard Reference',
    null,
    '1594bd913086311ab325e4c4ee838ef3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '1594bd913086311ab325e4c4ee838ef3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The wavelength of light'),
            ('B', 'The charge carrier density and type of semiconductor'),
            ('C', 'The melting point of a metal'),
            ('D', 'The viscosity of a liquid')
           ) as v(label, option_text)
 where q.question_hash = '1594bd913086311ab325e4c4ee838ef3'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The Sixth Five Year Plan (1981-85) was notable for:',
    'The Sixth Plan included a separate Science and Technology chapter and the period also saw the creation of the Department of Science and Technology, giving a new momentum to research funding and planning.',
    'medium',
    'Standard Reference',
    null,
    '7d31db6fb45f056ec6847dc2ef07256a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '7d31db6fb45f056ec6847dc2ef07256a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Setting up the Department of Atomic Energy'),
            ('B', 'Establishing the first national supercomputer programme'),
            ('C', 'Launching the integrated rural development programme'),
            ('D', 'A dedicated Science and Technology chapter in the plan')
           ) as v(label, option_text)
 where q.question_hash = '7d31db6fb45f056ec6847dc2ef07256a'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The Twelfth Five Year Plan (2012-17) is described in its Science and Technology chapter as:',
    'The Twelfth Plan''s science and technology chapter emphasised ''science for services'' and ''technology for services'', bridging the gap between laboratory research and delivery of public services.',
    'hard',
    'Standard Reference',
    null,
    '1e04ef5e0cebeb7cb37a93bf660f1d91'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '1e04ef5e0cebeb7cb37a93bf660f1d91'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Science for services and technology for services'),
            ('B', 'Agriculture first, industry second'),
            ('C', 'Purely basic research with no industry linkage'),
            ('D', 'Focus on defence research alone')
           ) as v(label, option_text)
 where q.question_hash = '1e04ef5e0cebeb7cb37a93bf660f1d91'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The National Science and Technology Policy of 2003 in India was the first:',
    'The 2003 National Science and Technology Policy was the first such policy formulated by the Government of India, and it was later superseded by the 2008 policy and the 2023 Science, Technology and Innovation Policy.',
    'medium',
    'Standard Reference',
    null,
    'f1a3b6c6d7e216e5edb8304240cbfd33'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'f1a3b6c6d7e216e5edb8304240cbfd33'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Policy on biotechnology patents'),
            ('B', 'Policy to focus on basic research funding'),
            ('C', 'Comprehensive science and technology policy formulated by the Government of India'),
            ('D', 'Policy on nuclear safety')
           ) as v(label, option_text)
 where q.question_hash = 'f1a3b6c6d7e216e5edb8304240cbfd33'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The NITI Aayog report Momentum on emerging technologies was released in:',
    'Momentum, published in 2020, mapped about twenty emerging technologies for India, and it was followed by the Roadmap for Research report in 2021 and the Science, Technology and Innovation Policy 2023.',
    'hard',
    'Standard Reference',
    null,
    '345ff10a15f49d79af127bbb7e695be5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '345ff10a15f49d79af127bbb7e695be5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2022'),
            ('B', '2015'),
            ('C', '2017'),
            ('D', '2020')
           ) as v(label, option_text)
 where q.question_hash = '345ff10a15f49d79af127bbb7e695be5'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The scheme of the Department of Science and Technology that supports setting up of university centres such as UCoE, IUC and RTI is known as:',
    'GATI, the Grants for Assistance to Technology Incubators scheme of DST, supports the creation of technology incubators and university-based centres such as university centres of excellence, innovation centres and rural technology centres.',
    'hard',
    'Standard Reference',
    null,
    '8f86c19cf8b9d90ae232699b8a834e38'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '8f86c19cf8b9d90ae232699b8a834e38'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'GATI'),
            ('B', 'TIDE'),
            ('C', 'CESSI'),
            ('D', 'PRISM')
           ) as v(label, option_text)
 where q.question_hash = '8f86c19cf8b9d90ae232699b8a834e38'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The Institute of Nano Science and Technology (INST) is:',
    'INST was established in 2015 at Mohali in Punjab under the Department of Science and Technology, and it carries out research in nanoscience and provides facilities for working with nanomaterials.',
    'medium',
    'Standard Reference',
    null,
    'cd5dd1db22ad13cff71caec56e6dcfb8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'cd5dd1db22ad13cff71caec56e6dcfb8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A laboratory of the Department of Atomic Energy at Kalpakkam'),
            ('B', 'An autonomous institute under the Department of Science and Technology located at Mohali'),
            ('C', 'A national laboratory of CSIR located at Delhi'),
            ('D', 'A department of the Ministry of Education')
           ) as v(label, option_text)
 where q.question_hash = 'cd5dd1db22ad13cff71caec56e6dcfb8'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The National Innovation Foundation - India (NIF) is known for promoting:',
    'NIF works with grassroots innovators, self-help groups and small enterprises to commercialise traditional knowledge and low-cost innovations, and it gives out National Grassroots Innovation and Traditional Knowledge Awards.',
    'medium',
    'Standard Reference',
    null,
    'efa63144cfbe24e463467d88afa73bba'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'efa63144cfbe24e463467d88afa73bba'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Commercial lending to corporates'),
            ('B', 'Only patent filing by individuals'),
            ('C', 'Grassroots innovations and traditional knowledge, including honey and mahua based products'),
            ('D', 'Defence exports')
           ) as v(label, option_text)
 where q.question_hash = 'efa63144cfbe24e463467d88afa73bba'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The Cell for Promotion of Industry-Public-Academia R&D (CIPAM) is:',
    'CIPAM acts as a single window to facilitate joint R&D programmes between industry and academia, and it helps patent, license and commercialise inventions emerging from public research, thereby bridging the innovation gap.',
    'hard',
    'Standard Reference',
    null,
    '82aed756e2f1b148d716f13bf60d4ccb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '82aed756e2f1b148d716f13bf60d4ccb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A funding agency for social sciences research'),
            ('B', 'A body that certifies laboratories'),
            ('C', 'A body set up by the Department of Science and Technology to facilitate collaborative R&D and IP commercialisation'),
            ('D', 'A regulatory agency for clinical trials')
           ) as v(label, option_text)
 where q.question_hash = '82aed756e2f1b148d716f13bf60d4ccb'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'Startup India, launched in 2016, was aimed at:',
    'Startup India offered a tax exemption for eligible startups, a self-certification mechanism, a fund of funds and access to government procurement, and it was followed by Stand-Up India for greenfield enterprises in rural areas.',
    'easy',
    'Standard Reference',
    null,
    '0e0e7599c15e71883eac8a7f046bf641'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '0e0e7599c15e71883eac8a7f046bf641'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Regulating the satellite launch business'),
            ('B', 'Certifying software exports'),
            ('C', 'Setting up national laboratories'),
            ('D', 'Supporting and scaling startups through tax benefits, funds and easier compliance')
           ) as v(label, option_text)
 where q.question_hash = '0e0e7599c15e71883eac8a7f046bf641'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The state of Kerala framed a State Science, Technology and Innovation Policy in:',
    'Kerala became the first state to formulate a comprehensive State Science, Technology and Innovation Policy in 2020, and several other states have since adopted similar state innovation policies.',
    'medium',
    'Standard Reference',
    null,
    '6bf86e21f403a4cbe9023e97cbf31f47'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '6bf86e21f403a4cbe9023e97cbf31f47'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2020'),
            ('B', '2005'),
            ('C', '2010'),
            ('D', '2015')
           ) as v(label, option_text)
 where q.question_hash = '6bf86e21f403a4cbe9023e97cbf31f47'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The National Education Policy 2020 recommends:',
    'The NEP 2020 moves away from a purely discipline-based framework towards a multidisciplinary, flexible and vocational education with an emphasis on critical thinking, creativity and multilingualism.',
    'easy',
    'Standard Reference',
    null,
    '69a534a2e0e60361aa0cd0e90e196140'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '69a534a2e0e60361aa0cd0e90e196140'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A rigid discipline based curriculum'),
            ('B', 'A multidisciplinary and flexible curriculum with vocational exposure and critical thinking'),
            ('C', 'Examination only at the secondary level'),
            ('D', 'Removal of all science subjects')
           ) as v(label, option_text)
 where q.question_hash = '69a534a2e0e60361aa0cd0e90e196140'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The Indian National Science Academy (INSA) is:',
    'INSA is the national academy of scientists of India, founded in 1935 as the Indian Academy of Sciences and renamed in 1970, and it elects fellows and publishes journals and reports on science policy.',
    'medium',
    'Standard Reference',
    null,
    'cda770ad360ce567cc32f5d9e1d8347f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'cda770ad360ce567cc32f5d9e1d8347f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'An apex body for scientists in India, established in 1935 and headquartered in New Delhi'),
            ('B', 'A funding agency for start-ups'),
            ('C', 'A regulatory body for clinical research'),
            ('D', 'The body that awards the Nobel Prize in India')
           ) as v(label, option_text)
 where q.question_hash = 'cda770ad360ce567cc32f5d9e1d8347f'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'The kilogram has been defined in the SI since 2019 in terms of:',
    'The 2019 SI revision fixed the kilogram by the exact value of the Planck constant, 6.62607015 x 10^-34 joule seconds, and it is realised through a Kibble balance.',
    'hard',
    'Standard Reference',
    null,
    'df96f41cebe30bd0d546955f12c163ef'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'df96f41cebe30bd0d546955f12c163ef'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The mass of a litre of water at 4 degrees Celsius'),
            ('B', 'The mass of the international prototype kilogram'),
            ('C', 'The Planck constant'),
            ('D', 'The Earth''s mass and its rotation')
           ) as v(label, option_text)
 where q.question_hash = 'df96f41cebe30bd0d546955f12c163ef'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'Since 1983, the metre has been defined as:',
    'The metre is now defined by fixing the speed of light in vacuum at exactly 299,792,458 metres per second, and the light-second was the earlier standard used in astronomy.',
    'medium',
    'Standard Reference',
    null,
    '54a89925ff21ee1aa5f537886f62cfcc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '54a89925ff21ee1aa5f537886f62cfcc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'One ten millionth of the distance from the equator to the pole'),
            ('B', 'The distance travelled by light in vacuum in 1/299,792,458 of a second'),
            ('C', 'The distance between two marks on a platinum-iridium bar'),
            ('D', 'The wavelength of a particular spectral line')
           ) as v(label, option_text)
 where q.question_hash = '54a89925ff21ee1aa5f537886f62cfcc'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'The ampere in the revised SI is defined in terms of:',
    'Since 2019 the ampere is defined by fixing the elementary charge at exactly 1.602176634 x 10^-19 coulomb, and the ampere is the current when that charge flows per second.',
    'hard',
    'Standard Reference',
    null,
    'b59df382b15f00b034c56629000b9ae9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'b59df382b15f00b034c56629000b9ae9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The force between two current carrying wires'),
            ('B', 'The magnetic flux produced by a given current'),
            ('C', 'The charge carried by one mole of electrons'),
            ('D', 'The elementary charge and the number of elementary charges per second')
           ) as v(label, option_text)
 where q.question_hash = 'b59df382b15f00b034c56629000b9ae9'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'The kelvin in the revised SI is defined in terms of:',
    'The kelvin is now defined by fixing the Boltzmann constant at exactly 1.380649 x 10^-23 joule per kelvin, and the older triple point of water definition has been retired.',
    'hard',
    'Standard Reference',
    null,
    'e164e28d81a84516cf833a501d158f23'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e164e28d81a84516cf833a501d158f23'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The average kinetic energy of a molecule'),
            ('B', 'The Celsius scale'),
            ('C', 'The Boltzmann constant'),
            ('D', 'The triple point of water')
           ) as v(label, option_text)
 where q.question_hash = 'e164e28d81a84516cf833a501d158f23'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'The mole in the revised SI is defined in terms of:',
    'The mole is now defined by fixing the Avogadro constant at exactly 6.02214076 x 10^23, which removes the uncertainty in the molar mass of carbon-12 and in the atomic mass unit.',
    'hard',
    'Standard Reference',
    null,
    '8460c8efe0feeef43ad4b3342c398e5e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '8460c8efe0feeef43ad4b3342c398e5e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The mass of a single hydrogen atom'),
            ('B', 'The mass of one gram of carbon-12'),
            ('C', 'The number of atoms in a gram of carbon-12'),
            ('D', 'The Avogadro constant fixed at 6.02214076 x 10^23')
           ) as v(label, option_text)
 where q.question_hash = '8460c8efe0feeef43ad4b3342c398e5e'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'The candela in the SI is defined as:',
    'The candela is defined by fixing the luminous efficacy of monochromatic radiation of frequency 540 THz to be 683 lumens per watt, and the earlier 1982 definition used the blackbody radiation at the freezing point of platinum.',
    'hard',
    'Standard Reference',
    null,
    '7b17fc6b8a0988918241acd42d3a7a82'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '7b17fc6b8a0988918241acd42d3a7a82'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The luminous flux emitted by one watt of radiation at 540 THz'),
            ('B', 'One lumen of light spread over one steradian in a given direction'),
            ('C', 'The total luminous flux of the Sun'),
            ('D', 'The intensity of light reflected from a white surface')
           ) as v(label, option_text)
 where q.question_hash = '7b17fc6b8a0988918241acd42d3a7a82'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'The SI prefix peta represents:',
    'The prefixes run from yotta (10^24) to yocto (10^-24), and peta is 10^15, giga is 10^9, tera is 10^12 and exa is 10^18.',
    'easy',
    'Standard Reference',
    null,
    '3a5da349809760cfc78397ff24b47718'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '3a5da349809760cfc78397ff24b47718'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '10^12'),
            ('B', '10^15'),
            ('C', '10^18'),
            ('D', '10^9')
           ) as v(label, option_text)
 where q.question_hash = '3a5da349809760cfc78397ff24b47718'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'The density of water at 4 degrees Celsius is approximately:',
    'Water has its maximum density of about 1000 kg/m3 at 4 degrees Celsius, and it is the reference against which relative density or specific gravity of other substances is measured.',
    'easy',
    'Standard Reference',
    null,
    '07339d140203626b52ce03f6438016b7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '07339d140203626b52ce03f6438016b7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1000 kg/m3'),
            ('B', '1090 kg/m3'),
            ('C', '780 kg/m3'),
            ('D', '917 kg/m3')
           ) as v(label, option_text)
 where q.question_hash = '07339d140203626b52ce03f6438016b7'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'The number of significant figures in the number 0.00250 is:',
    'Leading zeros are not significant, so 0.00250 has three significant figures, the digits 2, 5 and the trailing zero, and the trailing zero after the decimal point is significant.',
    'medium',
    'Standard Reference',
    null,
    '3348d8a68109ef169b040a52ab06734a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '3348d8a68109ef169b040a52ab06734a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Four'),
            ('B', 'Five'),
            ('C', 'Two'),
            ('D', 'Three')
           ) as v(label, option_text)
 where q.question_hash = '3348d8a68109ef169b040a52ab06734a'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'The least count of a standard screw gauge is usually:',
    'A screw gauge typically has a pitch of 0.5 mm and 100 divisions on the circular scale, giving a least count of 0.001 cm, while a vernier caliper usually has a least count of 0.01 cm.',
    'medium',
    'Standard Reference',
    null,
    '12c9f1ec4706ba2339330f3d3b76f770'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '12c9f1ec4706ba2339330f3d3b76f770'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '0.0001 cm'),
            ('B', '0.01 cm'),
            ('C', '0.001 cm'),
            ('D', '0.1 cm')
           ) as v(label, option_text)
 where q.question_hash = '12c9f1ec4706ba2339330f3d3b76f770'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'A Bourdon gauge is used to measure:',
    'A Bourdon gauge is a mechanical pressure gauge in which a curved tube straightens under pressure, and it is widely used for measuring the pressure of gases and liquids in industry.',
    'easy',
    'Standard Reference',
    null,
    '0bb907794fbbbccc5491ff9f90174f0a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '0bb907794fbbbccc5491ff9f90174f0a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Force'),
            ('B', 'Pressure of fluids'),
            ('C', 'Temperature'),
            ('D', 'Humidity')
           ) as v(label, option_text)
 where q.question_hash = '0bb907794fbbbccc5491ff9f90174f0a'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'One angstrom is equal to:',
    'One angstrom is 10^-10 metre, a nanometre is 10^-9 m, a micron is 10^-6 m and a fermi is 10^-15 m, and the angstrom remains common in crystallography and molecular sizes.',
    'easy',
    'Standard Reference',
    null,
    '4c3b924877a538ac98df84d6b7bb3699'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '4c3b924877a538ac98df84d6b7bb3699'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '10^-10 m'),
            ('B', '10^-12 m'),
            ('C', '10^-6 m'),
            ('D', '10^-8 m')
           ) as v(label, option_text)
 where q.question_hash = '4c3b924877a538ac98df84d6b7bb3699'
on conflict (question_id, label) do nothing;

-- science_tech | health-technology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'health-technology'),
    'The COVID-19 pandemic was declared by the World Health Organization on:',
    'The WHO declared COVID-19 a pandemic on 11 March 2020, and the first cluster of cases was reported in Wuhan, China, in December 2019, with the virus named SARS-CoV-2.',
    'easy',
    'Standard Reference',
    null,
    'bf60efa7a0c95de488d95d0bb72feec6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'bf60efa7a0c95de488d95d0bb72feec6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '31 December 2019'),
            ('B', '11 January 2020'),
            ('C', '1 March 2020'),
            ('D', '11 March 2020')
           ) as v(label, option_text)
 where q.question_hash = 'bf60efa7a0c95de488d95d0bb72feec6'
on conflict (question_id, label) do nothing;

-- science_tech | health-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'health-technology'),
    'Which of the following is an example of a conjugate vaccine?',
    'A conjugate vaccine links a polysaccharide antigen to a protein carrier, as in the pentavalent vaccine that includes Hib and pneumococcal conjugates, and this greatly improves the immune response in infants.',
    'medium',
    'Standard Reference',
    null,
    '9c530ffde69c0fadd03954a8d585ee0a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '9c530ffde69c0fadd03954a8d585ee0a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Polio vaccine'),
            ('B', 'Pentavalent vaccine combining diphtheria, pertussis, tetanus, hepatitis B and Hib'),
            ('C', 'Cholera vaccine'),
            ('D', 'Yellow fever vaccine')
           ) as v(label, option_text)
 where q.question_hash = '9c530ffde69c0fadd03954a8d585ee0a'
on conflict (question_id, label) do nothing;

-- science_tech | health-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'health-technology'),
    'The National Elimination of Polio (NEPP) in India relies on:',
    'India was certified polio free by the World Health Organization in 2014, and the strategy combined acute flaccid paralysis surveillance, environmental sampling and the intensified pulse polio immunisation campaign.',
    'medium',
    'Standard Reference',
    null,
    '05f9d98d0cbdc3a5b2a300371970c2f9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '05f9d98d0cbdc3a5b2a300371970c2f9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Tuberculosis contact tracing'),
            ('B', 'Mass drug administration against worms'),
            ('C', 'Acute flaccid paralysis surveillance with pulse polio vaccination'),
            ('D', 'Oral vitamin A supplementation')
           ) as v(label, option_text)
 where q.question_hash = '05f9d98d0cbdc3a5b2a300371970c2f9'
on conflict (question_id, label) do nothing;

-- science_tech | health-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'health-technology'),
    'The National Tuberculosis Elimination Programme in India was launched in:',
    'The National Tuberculosis Elimination Programme was launched in 2017 to replace the RNTCP, and it aims to end the epidemic by 2025 through case notification, drug resistance testing and private sector engagement.',
    'medium',
    'Standard Reference',
    null,
    '070ad93a5f1d330e09e29ad99d96c4cc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '070ad93a5f1d330e09e29ad99d96c4cc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2017'),
            ('B', '2021'),
            ('C', '1997'),
            ('D', '2005')
           ) as v(label, option_text)
 where q.question_hash = '070ad93a5f1d330e09e29ad99d96c4cc'
on conflict (question_id, label) do nothing;

-- science_tech | health-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'health-technology'),
    'The malaria vaccine RTS,S recommended by the World Health Organization in 2021 is effective against:',
    'RTS,S, developed by the Malaria Vaccine Implementation Programme, is a vaccine against P. falciparum that reduces clinical malaria episodes in children in areas of moderate to high transmission.',
    'medium',
    'Standard Reference',
    null,
    '4f68ef2afef97143ff34fab6fcc8af76'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '4f68ef2afef97143ff34fab6fcc8af76'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Plasmodium vivax'),
            ('B', 'Plasmodium falciparum'),
            ('C', 'Plasmodium malariae'),
            ('D', 'Plasmodium ovale')
           ) as v(label, option_text)
 where q.question_hash = '4f68ef2afef97143ff34fab6fcc8af76'
on conflict (question_id, label) do nothing;

-- science_tech | health-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'health-technology'),
    'The 90-90-90 strategy adopted for HIV aims for:',
    'The UNAIDS 90-90-90 targets aim to end the AIDS epidemic by 2020 and were superseded by the 95-95-95 targets, and India has also enacted the HIV/AIDS Act of 2017.',
    'medium',
    'Standard Reference',
    null,
    '5177b0fcc3896b123933a4b825ac144a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '5177b0fcc3896b123933a4b825ac144a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '90 per cent coverage of blood banks'),
            ('B', '90 per cent reduction in hospital beds'),
            ('C', '90 per cent of funds spent on prevention'),
            ('D', '90 per cent of people living with HIV knowing their status, 90 per cent of those on treatment and 90 per cent of those virally suppressed')
           ) as v(label, option_text)
 where q.question_hash = '5177b0fcc3896b123933a4b825ac144a'
on conflict (question_id, label) do nothing;

-- science_tech | health-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'health-technology'),
    'The National Health Policy of India, 2017 envisages:',
    'The policy advocates a health system based on primary care, with public health and wellness centres as the delivery vehicle, and it introduced a public health financing model and a continuum of care from community to tertiary levels.',
    'medium',
    'Standard Reference',
    null,
    'e0d9a3736166444456386a11715f99b2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e0d9a3736166444456386a11715f99b2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Free tertiary care for all citizens'),
            ('B', 'The closure of Ayushman Arogya Mandirs'),
            ('C', 'A health system based on primary care with 2,000 and 10,000 bed hospitals at taluk and district levels'),
            ('D', 'Complete privatisation of the health sector')
           ) as v(label, option_text)
 where q.question_hash = 'e0d9a3736166444456386a11715f99b2'
on conflict (question_id, label) do nothing;

-- science_tech | health-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'health-technology'),
    'The Medical Devices Rules in India were notified in:',
    'The Medical Devices Rules 2017 were notified under the Drugs and Cosmetics Act and classify devices into four risk classes from A to D, with the CDSCO as the regulatory authority.',
    'medium',
    'Standard Reference',
    null,
    '9df806646aaae80d7b4e0e548f0cd60b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '9df806646aaae80d7b4e0e548f0cd60b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2010'),
            ('B', '2017'),
            ('C', '2021'),
            ('D', '2005')
           ) as v(label, option_text)
 where q.question_hash = '9df806646aaae80d7b4e0e548f0cd60b'
on conflict (question_id, label) do nothing;

-- science_tech | health-technology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'health-technology'),
    'A liquid biopsy for cancer detection typically examines:',
    'Liquid biopsy analyses circulating tumour DNA, circulating tumour cells and exosomes in blood, and it offers a non-invasive way to detect and monitor cancer and to track emerging resistance to therapy.',
    'hard',
    'Standard Reference',
    null,
    'd965a625a43eedd5d298fb3d2a8c60dd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd965a625a43eedd5d298fb3d2a8c60dd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Circulating tumour DNA and other biomarkers in blood'),
            ('B', 'Bone marrow density'),
            ('C', 'Sputum culture'),
            ('D', 'Skin patch elasticity')
           ) as v(label, option_text)
 where q.question_hash = 'd965a625a43eedd5d298fb3d2a8c60dd'
on conflict (question_id, label) do nothing;

-- science_tech | health-technology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'health-technology'),
    'Which of the following statements regarding the A digital health identity that is correct?',
    'The ABHA is a 14-digit digital health identifier created under the Ayushman Bharat Digital Mission, and it allows a person to link and manage health records, reports and prescriptions from different healthcare providers.',
    'easy',
    'Standard Reference',
    null,
    '1b266edcbc868123fbdae84f8e70bfed'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '1b266edcbc868123fbdae84f8e70bfed'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'An insurance scheme for private hospitals'),
            ('B', 'A scheme for free hospital beds in cities'),
            ('C', 'A bank account opened for senior citizens'),
            ('D', 'A digital health identity that links a person''s health records across providers')
           ) as v(label, option_text)
 where q.question_hash = '1b266edcbc868123fbdae84f8e70bfed'
on conflict (question_id, label) do nothing;

-- science_tech | health-technology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'health-technology'),
    'The Jal Jeevan Mission aims to:',
    'The Jal Jeevan Mission, launched in 2019, aims to provide a functional household tap connection with a prescribed quantity of potable water in every rural household, with a service level of 55 litres per capita per day.',
    'easy',
    'Standard Reference',
    null,
    '632873e1f4ac8497534c1c32f91d2935'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '632873e1f4ac8497534c1c32f91d2935'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Build sewage treatment plants in metropolitan areas'),
            ('B', 'Lay optical fibre in every village'),
            ('C', 'Provide functional household tap connections with drinking water in every rural household'),
            ('D', 'Desalinate seawater in coastal cities')
           ) as v(label, option_text)
 where q.question_hash = '632873e1f4ac8497534c1c32f91d2935'
on conflict (question_id, label) do nothing;

-- science_tech | health-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'health-technology'),
    'Nipah virus, which caused outbreaks in Kerala in 2018 and 2019, is transmitted mainly through:',
    'Nipah virus is a zoonotic paramyxovirus carried by fruit bats of the genus Pteropus, and it spreads to humans through contact with infected bats, contaminated fruit or through person-to-person transmission in health settings.',
    'medium',
    'Standard Reference',
    null,
    '8d5533fb8e2bfed697cf76c494160a94'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '8d5533fb8e2bfed697cf76c494160a94'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Pigg contact'),
            ('B', 'Bats'),
            ('C', 'Contaminated water'),
            ('D', 'Ticks')
           ) as v(label, option_text)
 where q.question_hash = '8d5533fb8e2bfed697cf76c494160a94'
on conflict (question_id, label) do nothing;

-- science_tech | health-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'health-technology'),
    'The National One Health Mission in India was launched in the context of:',
    'The National One Health Mission was announced in 2022 and formally launched in 2023 to coordinate human, animal, plant and environmental health, and it addresses zoonoses, antimicrobial resistance and pandemic preparedness under the Quadripartite One Health Joint Plan of Action.',
    'medium',
    'Standard Reference',
    null,
    '1c70a25282e15ec15f3cc181b5d92f00'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '1c70a25282e15ec15f3cc181b5d92f00'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A food security programme'),
            ('B', 'A climate action programme'),
            ('C', 'The 2019 cyclone response'),
            ('D', 'The global One Health approach addressing zoonotic, AMR and pandemic risks')
           ) as v(label, option_text)
 where q.question_hash = '1c70a25282e15ec15f3cc181b5d92f00'
on conflict (question_id, label) do nothing;

-- science_tech | health-technology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'health-technology'),
    'The Mental Healthcare Act, 2013 in India provides for:',
    'The 2013 Act, which came into force in 2015, recognises advance directives and nominated representatives, decriminalises mental illness and protects the right to equality and non-discrimination, and the Mental Healthcare Act 2017 followed it.',
    'hard',
    'Standard Reference',
    null,
    'c502b6342ce9009c0c11764b56f5c5a1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'c502b6342ce9009c0c11764b56f5c5a1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Advance directives and the right to access mental healthcare as a right'),
            ('B', 'Mandatory institutionalisation of all patients'),
            ('C', 'A ban on psychological testing'),
            ('D', 'The closing of mental health institutions')
           ) as v(label, option_text)
 where q.question_hash = 'c502b6342ce9009c0c11764b56f5c5a1'
on conflict (question_id, label) do nothing;

-- science_tech | health-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'health-technology'),
    'The POSHAN 2.0 programme in India is aligned with:',
    'POSHAN 2.0, the renamed National Nutrition Mission, works towards the malnutrition targets of the SDGs and the National Nutrition Mission and covers all forms of malnutrition in the first 1,000 days of life.',
    'medium',
    'Standard Reference',
    null,
    '30f75b4e538edc0515dae76f96efd0ff'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '30f75b4e538edc0515dae76f96efd0ff'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Make in India'),
            ('B', 'Digital India'),
            ('C', 'The Sustainable Development Goals and the National Nutrition Mission'),
            ('D', 'Swachh Bharat Mission')
           ) as v(label, option_text)
 where q.question_hash = '30f75b4e538edc0515dae76f96efd0ff'
on conflict (question_id, label) do nothing;

-- science_tech | agriculture-technology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'agriculture-technology'),
    'The Green Revolution in India was significantly accelerated by:',
    'The Green Revolution, associated with Norman Borlaug''s work on high yielding wheat varieties, took off in India in the late 1960s with the new dwarf varieties, irrigation and fertiliser use, and it was supported by M. S. Swaminathan.',
    'easy',
    'Standard Reference',
    null,
    'f984e69bf84a2261f3884da89aaac2cb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f984e69bf84a2261f3884da89aaac2cb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'High yielding varieties of wheat and rice, chemical fertilisers and irrigation'),
            ('B', 'The invention of the laser'),
            ('C', 'Drip irrigation and tissue culture'),
            ('D', 'Organic farming and vermicompost')
           ) as v(label, option_text)
 where q.question_hash = 'f984e69bf84a2261f3884da89aaac2cb'
on conflict (question_id, label) do nothing;

-- science_tech | agriculture-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'agriculture-technology'),
    'The Pradhan Mantri Matsya Kisan Samridhi Sah-Yojana launched in 2024 is intended to:',
    'The scheme focuses on formalisation of fishers and fish value chain entities, traceability, quality certification, cold chain and market linkages, and it works along the Blue Revolution line of fisheries development.',
    'medium',
    'Standard Reference',
    null,
    '429e550958882a0b7c7352d1a37b7425'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '429e550958882a0b7c7352d1a37b7425'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Subsidise dairy equipment only'),
            ('B', 'Promote organic tea cultivation'),
            ('C', 'Fund the breeding of draught animals'),
            ('D', 'Promote the development of the fisheries sector through formalisation, traceability and quality assurance')
           ) as v(label, option_text)
 where q.question_hash = '429e550958882a0b7c7352d1a37b7425'
on conflict (question_id, label) do nothing;

-- science_tech | agriculture-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'agriculture-technology'),
    'Biofertilisers such as Rhizobium, Azospirillum and phosphate solubilising bacteria are used to:',
    'Rhizobium fixes atmospheric nitrogen in the root nodules of legumes, Azospirillum is a free-living nitrogen fixer for cereals, and phosphate solubilising bacteria release soluble phosphate, all of which reduce chemical fertiliser use.',
    'medium',
    'Standard Reference',
    null,
    '29044ad70cf289b05d2d4d0878128470'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '29044ad70cf289b05d2d4d0878128470'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Harden plant tissue'),
            ('B', 'Fix nitrogen and improve nutrient availability in soil'),
            ('C', 'Act as chemical pesticides'),
            ('D', 'Supply silicon to plants')
           ) as v(label, option_text)
 where q.question_hash = '29044ad70cf289b05d2d4d0878128470'
on conflict (question_id, label) do nothing;

-- science_tech | agriculture-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'agriculture-technology'),
    'Solar pumps under the PM-KUSUM scheme are promoted mainly to:',
    'PM-KUSUM has three components covering solar power plants, solar pumps for farmers on a feeder solarisation basis and small standalone solar plants, and it is meant to reduce the cost and emissions of irrigation pumping.',
    'medium',
    'Standard Reference',
    null,
    '8b46275e79da5a42cbfead494fcfeebc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '8b46275e79da5a42cbfead494fcfeebc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Power cold storage units only'),
            ('B', 'Run mechanised mining'),
            ('C', 'Replace diesel and grid electricity in agriculture'),
            ('D', 'Desalinate seawater')
           ) as v(label, option_text)
 where q.question_hash = '8b46275e79da5a42cbfead494fcfeebc'
on conflict (question_id, label) do nothing;

-- science_tech | agriculture-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'agriculture-technology'),
    'Custom hiring centres in Indian agriculture are set up to:',
    'Custom hiring centres make tractors, harvesters and other machinery available to small and marginal farmers on a rental basis, and they improve utilisation of farm machinery and reduce the cost of mechanisation.',
    'medium',
    'Standard Reference',
    null,
    '537aeb54284b38d21e9dfb03545e9c2f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '537aeb54284b38d21e9dfb03545e9c2f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Supply certified seeds'),
            ('B', 'Provide mechanisation services to small and marginal farmers on rental basis'),
            ('C', 'Store grain for procurement'),
            ('D', 'Provide crop insurance')
           ) as v(label, option_text)
 where q.question_hash = '537aeb54284b38d21e9dfb03545e9c2f'
on conflict (question_id, label) do nothing;

-- science_tech | agriculture-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'agriculture-technology'),
    'The Operation Greens scheme of the Ministry of Food Processing Industries aims to:',
    'Operation Greens, launched in 2016, supports the integrated value chain in horticulture for commodities such as tomato, onion and potato, and it has been extended to cover more crops and regions.',
    'medium',
    'Standard Reference',
    null,
    '01f1f53b36e5a3289696f2714043b7a9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '01f1f53b36e5a3289696f2714043b7a9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Develop marine fisheries'),
            ('B', 'Subsidise sugarcane mills'),
            ('C', 'Stabilise the prices of key horticulture commodities and promote their processing'),
            ('D', 'Promote milk procurement in cooperative dairies')
           ) as v(label, option_text)
 where q.question_hash = '01f1f53b36e5a3289696f2714043b7a9'
on conflict (question_id, label) do nothing;

-- science_tech | agriculture-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'agriculture-technology'),
    'The Pradhan Mantri Formalisation of Micro Food Processing Enterprises (PMFME) scheme, launched in 2020, focuses on:',
    'The PMFME scheme supports individual micro food processing units with a credit linked capital subsidy, common infrastructure and food safety training, and it has a target of setting up two lakh such units.',
    'medium',
    'Standard Reference',
    null,
    'c92a7a61ac7fc95b919b56988bc53e75'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'c92a7a61ac7fc95b919b56988bc53e75'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Supporting micro food processing units with credit, technology and marketing support'),
            ('B', 'Setting up large multipurpose food parks'),
            ('C', 'Promoting sugarcane ethanol only'),
            ('D', 'Regulating food packaging standards')
           ) as v(label, option_text)
 where q.question_hash = 'c92a7a61ac7fc95b919b56988bc53e75'
on conflict (question_id, label) do nothing;

-- science_tech | agriculture-technology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'agriculture-technology'),
    'Vertical farming in India mainly involves:',
    'Vertical farming and hydroponics allow year round production near urban markets with far less water and land, and the systems typically use soilless nutrient solutions and artificial lighting.',
    'easy',
    'Standard Reference',
    null,
    '9057fddba8b6231750d841300979f0bc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '9057fddba8b6231750d841300979f0bc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Farming on river deltas'),
            ('B', 'Raising livestock in sheds'),
            ('C', 'Dependence on monsoon rainfall'),
            ('D', 'Growing crops in stacked layers under controlled light, water and nutrient conditions')
           ) as v(label, option_text)
 where q.question_hash = '9057fddba8b6231750d841300979f0bc'
on conflict (question_id, label) do nothing;

-- science_tech | agriculture-technology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'agriculture-technology'),
    'Which of the following is the correct sequence of the major components of a food processing cold chain from farm to consumer?',
    'A cold chain links harvest, pre-cooling and packing, reefer transport, cold storage and organised retail under a continuous temperature regime, and it is the main way to cut post-harvest losses of perishables.',
    'easy',
    'Standard Reference',
    null,
    '1f357b381cd6b908d3d3e49828cbcb75'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '1f357b381cd6b908d3d3e49828cbcb75'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Farm, mine, port, refinery'),
            ('B', 'Farm, silo, cinema, market'),
            ('C', 'Farm, pre-cooling and pack house, reefer transport, storage and retail'),
            ('D', 'Farm, retail, laboratory, factory')
           ) as v(label, option_text)
 where q.question_hash = '1f357b381cd6b908d3d3e49828cbcb75'
on conflict (question_id, label) do nothing;

-- science_tech | agriculture-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'agriculture-technology'),
    'Under the Pradhan Mantri Fasal Bima Yojana, crop insurance is made available to:',
    'Under the Pradhan Mantri Fasal Bima Yojana from 2016, farmers growing notified crops in notified areas can enrol, and the government bears most of the premium with the farmer paying a small share.',
    'medium',
    'Standard Reference',
    null,
    '53e844f08093575a08dec1b7d2583c7f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '53e844f08093575a08dec1b7d2583c7f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Only organic farmers'),
            ('B', 'Only farmers with loans from cooperatives'),
            ('C', 'Only commercial crop growers'),
            ('D', 'Farmers growing notified crops, with premium largely borne by the Central and State governments')
           ) as v(label, option_text)
 where q.question_hash = '53e844f08093575a08dec1b7d2583c7f'
on conflict (question_id, label) do nothing;

-- science_tech | agriculture-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'agriculture-technology'),
    'The Krishi-DSS and Bhuvan platforms of ISRO support agriculture by:',
    'Bhuvan is the national geoportal and Krishi-DSS is the crop forecasting and advisory system, and together with remote sensing satellites they provide crop acreage, yield, drought and pest advisories to farmers and officials.',
    'medium',
    'Standard Reference',
    null,
    '4d26609c55bafd4c84167dee29eb6d7f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '4d26609c55bafd4c84167dee29eb6d7f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Operating grain storage and mandis'),
            ('B', 'Providing satellite based crop advisory, drought monitoring and geospatial data'),
            ('C', 'Supplying certified seeds to farmers'),
            ('D', 'Conducting soil testing for farmers')
           ) as v(label, option_text)
 where q.question_hash = '4d26609c55bafd4c84167dee29eb6d7f'
on conflict (question_id, label) do nothing;

-- science_tech | physics | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'The rotational form of Newton''s second law is:',
    'For rotation about a fixed axis the torque equals the moment of inertia multiplied by the angular acceleration, the rotational counterpart of F = ma.',
    'easy',
    'NCERT Class XI',
    null,
    '885a4105915e26db9d7980e1ea5b9c51'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '885a4105915e26db9d7980e1ea5b9c51'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'tau = I alpha'),
            ('B', 'F = ma'),
            ('C', 'tau = I omega'),
            ('D', 'F = dp/dt')
           ) as v(label, option_text)
 where q.question_hash = '885a4105915e26db9d7980e1ea5b9c51'
on conflict (question_id, label) do nothing;

-- science_tech | physics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'The modulus of rigidity is the appropriate elastic constant for:',
    'The modulus of rigidity measures resistance to shear deformation and applies to solids, whereas the bulk modulus is used for solids, liquids and gases and Young''s modulus is used for solids.',
    'medium',
    'NCERT Class XI',
    null,
    '57eb55223da7c9cb71c5efd8bd400bea'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '57eb55223da7c9cb71c5efd8bd400bea'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Gases only'),
            ('B', 'Both solids and liquids'),
            ('C', 'Solids only'),
            ('D', 'Liquids only')
           ) as v(label, option_text)
 where q.question_hash = '57eb55223da7c9cb71c5efd8bd400bea'
on conflict (question_id, label) do nothing;

-- science_tech | physics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'The mechanical advantage of an ideal machine and its efficiency are related as:',
    'Efficiency is the ratio of useful output work to input work, and it is always less than 100 per cent in practice because of friction, so it is always less than or equal to the mechanical advantage.',
    'medium',
    'NCERT Class XI',
    null,
    'a43a69d845ee4635c393d3d5a673b3e2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a43a69d845ee4635c393d3d5a673b3e2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Efficiency equals mechanical advantage multiplied by 100'),
            ('B', 'Efficiency is always less than 100 per cent and equals output work divided by input work'),
            ('C', 'Efficiency equals one for all simple machines'),
            ('D', 'Mechanical advantage is always greater than efficiency')
           ) as v(label, option_text)
 where q.question_hash = 'a43a69d845ee4635c393d3d5a673b3e2'
on conflict (question_id, label) do nothing;

-- science_tech | physics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'Kepler''s third law of planetary motion states that:',
    'Kepler''s third law gives T^2 proportional to a^3, which shows that the outer planets move much more slowly, and it applies equally to artificial satellites around a body.',
    'medium',
    'NCERT Class XI',
    null,
    '04fe54d9ad8b5f0d738da3d2c15457d8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '04fe54d9ad8b5f0d738da3d2c15457d8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The square of the orbital period is proportional to the cube of the semi-major axis'),
            ('B', 'Planets move in circular orbits'),
            ('C', 'The orbit of a planet is an ellipse with the Sun at a focus'),
            ('D', 'All planets have the same orbital speed')
           ) as v(label, option_text)
 where q.question_hash = '04fe54d9ad8b5f0d738da3d2c15457d8'
on conflict (question_id, label) do nothing;

-- science_tech | physics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'The safe speed of a vehicle on a level circular road of radius r depends on:',
    'The centripetal force is provided by friction, so the maximum safe speed is v = sqrt(mu g r), which is why banking of roads allows higher speeds with less reliance on friction.',
    'medium',
    'NCERT Class XI',
    null,
    '7483b884839d4303dbd025ded4d50501'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '7483b884839d4303dbd025ded4d50501'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The power of the engine'),
            ('B', 'The colour of the vehicle'),
            ('C', 'The mass of the vehicle'),
            ('D', 'The coefficient of friction between tyres and road')
           ) as v(label, option_text)
 where q.question_hash = '7483b884839d4303dbd025ded4d50501'
on conflict (question_id, label) do nothing;

-- science_tech | physics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'Two waves of equal frequency and amplitude travelling in the same direction superpose to give a wave of twice the amplitude. This is:',
    'When the two waves arrive in phase, their displacements add, giving constructive interference with amplitude equal to the sum, while opposite phases produce destructive interference and near zero amplitude.',
    'medium',
    'NCERT Class XI',
    null,
    '1818026158631e58e308f33477846d54'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '1818026158631e58e308f33477846d54'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Constructive interference'),
            ('B', 'Diffraction'),
            ('C', 'Dispersion'),
            ('D', 'Destructive interference')
           ) as v(label, option_text)
 where q.question_hash = '1818026158631e58e308f33477846d54'
on conflict (question_id, label) do nothing;

-- science_tech | physics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'The beat frequency produced by two sound waves of frequencies 512 Hz and 520 Hz is:',
    'The beat frequency is the absolute difference of the two frequencies, here 8 divided by 2 which equals 4 Hz, and beats are used in musical tuning and in Doppler velocity measurements.',
    'medium',
    'NCERT Class XI',
    null,
    '70f2794a81e883c014ca31def975111b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '70f2794a81e883c014ca31def975111b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1028 Hz'),
            ('B', '4 Hz'),
            ('C', '8 Hz'),
            ('D', '516 Hz')
           ) as v(label, option_text)
 where q.question_hash = '70f2794a81e883c014ca31def975111b'
on conflict (question_id, label) do nothing;

-- science_tech | physics | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'The pitch of a sound is determined by its:',
    'Pitch is the perceptual attribute linked to frequency, so a higher frequency gives a shriller sound, whereas amplitude determines loudness and the waveform determines quality or timbre.',
    'easy',
    'NCERT Class XI',
    null,
    '65304b0c84849c8f245674709c95c2c7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '65304b0c84849c8f245674709c95c2c7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Quality'),
            ('B', 'Loudness'),
            ('C', 'Amplitude'),
            ('D', 'Frequency')
           ) as v(label, option_text)
 where q.question_hash = '65304b0c84849c8f245674709c95c2c7'
on conflict (question_id, label) do nothing;

-- science_tech | physics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'The speed of sound in air increases with:',
    'The speed of sound in air is roughly proportional to the square root of the absolute temperature and increases with humidity because water vapour is lighter than dry air, which is why sound travels faster on humid summer nights.',
    'medium',
    'NCERT Class XI',
    null,
    '699042f10e04da832c7c7784b5c9228c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '699042f10e04da832c7c7784b5c9228c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'An increase in pressure only'),
            ('B', 'An increase in humidity'),
            ('C', 'A rise in temperature and a decrease in humidity'),
            ('D', 'A fall in temperature')
           ) as v(label, option_text)
 where q.question_hash = '699042f10e04da832c7c7784b5c9228c'
on conflict (question_id, label) do nothing;

-- science_tech | physics | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'SONAR, which is used to measure the depth of the sea, works on the principle of:',
    'SONAR measures the echo time of an ultrasonic pulse, and the depth is half the speed of sound multiplied by the round trip time, which is useful for mapping the sea floor and detecting submarines.',
    'easy',
    'NCERT Class XI',
    null,
    '27af18f5e1c49d1c77f73124b4ed43d1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '27af18f5e1c49d1c77f73124b4ed43d1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Refraction of sound at the sea surface'),
            ('B', 'Doppler shift of radio waves'),
            ('C', 'Emission of radio waves'),
            ('D', 'Reflection of ultrasonic waves from the sea bed')
           ) as v(label, option_text)
 where q.question_hash = '27af18f5e1c49d1c77f73124b4ed43d1'
on conflict (question_id, label) do nothing;

-- science_tech | physics | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'Lithotripsy, a technique for breaking kidney stones, uses:',
    'In lithotripsy, focused shock waves are used to pulverise the stone into fragments small enough to pass, and it avoids open surgery in most cases.',
    'easy',
    'Standard Reference',
    null,
    '91ce793f89caf8909eb4e3c3adf453f3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '91ce793f89caf8909eb4e3c3adf453f3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'High intensity ultrasonic shock waves'),
            ('B', 'Radio waves'),
            ('C', 'X-ray beams'),
            ('D', 'Magnetic pulses')
           ) as v(label, option_text)
 where q.question_hash = '91ce793f89caf8909eb4e3c3adf453f3'
on conflict (question_id, label) do nothing;

-- science_tech | physics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'The Doppler effect is used in medicine to:',
    'The change in the frequency of ultrasound reflected from moving red blood cells is used in the Doppler echocardiogram to assess the speed and direction of blood flow, and it is also the basis of police radar speed guns.',
    'medium',
    'Standard Reference',
    null,
    '14715cc88d25da438722ea9678a7a997'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '14715cc88d25da438722ea9678a7a997'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Measure the depth of an ocean'),
            ('B', 'Detect nuclear radiation'),
            ('C', 'Measure the blood flow and velocity in the heart using ultrasound'),
            ('D', 'Determine the distance of a star from Earth')
           ) as v(label, option_text)
 where q.question_hash = '14715cc88d25da438722ea9678a7a997'
on conflict (question_id, label) do nothing;

-- science_tech | physics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'When an object is placed between the pole and the focus of a concave mirror, the image formed is:',
    'For a concave mirror with the object beyond the centre of curvature the image is real, inverted and diminished, but between the pole and the focus the image is real, inverted and enlarged and can be projected on a screen.',
    'medium',
    'NCERT Class XII',
    null,
    '66a5c15c2dbc685f8ba5177b16dbd666'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '66a5c15c2dbc685f8ba5177b16dbd666'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Virtual, erect and diminished'),
            ('B', 'Real, inverted and magnified'),
            ('C', 'Real, erect and magnified'),
            ('D', 'Virtual, inverted and magnified')
           ) as v(label, option_text)
 where q.question_hash = '66a5c15c2dbc685f8ba5177b16dbd666'
on conflict (question_id, label) do nothing;

-- science_tech | physics | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'A convex mirror always forms an image that is:',
    'A convex mirror always gives a virtual, erect and diminished image with a wide field of view, which is the reason it is used as a rear-view mirror in vehicles.',
    'easy',
    'NCERT Class XII',
    null,
    '975490f49dadbe76f77044f69852209c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '975490f49dadbe76f77044f69852209c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Virtual, inverted and magnified'),
            ('B', 'Real and erect'),
            ('C', 'Real and inverted'),
            ('D', 'Virtual, erect and diminished')
           ) as v(label, option_text)
 where q.question_hash = '975490f49dadbe76f77044f69852209c'
on conflict (question_id, label) do nothing;

-- science_tech | physics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'The defect of vision in which distant objects appear blurred but near objects are seen clearly is corrected by:',
    'Myopia is corrected with a concave lens of suitable power, which diverges the incoming rays so that the image forms on the retina, while hypermetropia needs a convex lens and astigmatism needs a cylindrical lens.',
    'medium',
    'NCERT Class XII',
    null,
    'db4a1dc3612258b6d6b298e141ca15f8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'db4a1dc3612258b6d6b298e141ca15f8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bifocal lenses with the near portion concave'),
            ('B', 'A convex lens'),
            ('C', 'A concave lens'),
            ('D', 'A cylindrical lens')
           ) as v(label, option_text)
 where q.question_hash = 'db4a1dc3612258b6d6b298e141ca15f8'
on conflict (question_id, label) do nothing;

-- science_tech | physics | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'Cataract is a clouding of which part of the eye?',
    'A cataract is the opacification of the crystalline lens, which scatters light and causes dim and blurred vision, and it is treated by surgical replacement of the lens with an artificial one.',
    'easy',
    'NCERT Class XII',
    null,
    'e0611afd1d349b94ad3a3e6c5b0c812c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e0611afd1d349b94ad3a3e6c5b0c812c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Cornea'),
            ('B', 'Lens'),
            ('C', 'Retina'),
            ('D', 'Optic nerve')
           ) as v(label, option_text)
 where q.question_hash = 'e0611afd1d349b94ad3a3e6c5b0c812c'
on conflict (question_id, label) do nothing;

-- science_tech | physics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'The rainbow is produced by:',
    'Sunlight entering a raindrop is refracted and internally reflected and then refracted again, and the different colours emerge at different angles because the refractive index of water varies with wavelength.',
    'medium',
    'NCERT Class XII',
    null,
    '2d7c6ebacc94725b81c9a513788d26d0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '2d7c6ebacc94725b81c9a513788d26d0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Refraction of sunlight in raindrops followed by internal reflection and dispersion'),
            ('B', 'Reflection from cloud particles only'),
            ('C', 'Diffraction of moonlight by dust'),
            ('D', 'Refraction of sunlight through ice crystals only')
           ) as v(label, option_text)
 where q.question_hash = '2d7c6ebacc94725b81c9a513788d26d0'
on conflict (question_id, label) do nothing;

-- science_tech | physics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'Lenz''s law is a statement of:',
    'Lenz''s law says that the induced current opposes the change that produces it, and it is a direct consequence of the conservation of energy, so work done by the induced current appears as heat or kinetic energy.',
    'medium',
    'NCERT Class XII',
    null,
    '7266b47a9fd650fb0a207550e6c13155'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '7266b47a9fd650fb0a207550e6c13155'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Conservation of charge'),
            ('B', 'Conservation of momentum'),
            ('C', 'Conservation of mass'),
            ('D', 'Conservation of energy')
           ) as v(label, option_text)
 where q.question_hash = '7266b47a9fd650fb0a207550e6c13155'
on conflict (question_id, label) do nothing;

-- science_tech | physics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'The braking of a train by an electromagnetic brake works on the principle of:',
    'Electromagnetic brakes use eddy currents induced in the rail by a magnetic field, and the resulting drag force opposes the motion of the train without any physical contact.',
    'medium',
    'NCERT Class XII',
    null,
    'fcf6fd90a571f3ce3aa3fe669948623d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'fcf6fd90a571f3ce3aa3fe669948623d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Chemical action of brake oil'),
            ('B', 'Friction between pads and wheels'),
            ('C', 'Eddy currents induced in the rails'),
            ('D', 'Static electricity')
           ) as v(label, option_text)
 where q.question_hash = 'fcf6fd90a571f3ce3aa3fe669948623d'
on conflict (question_id, label) do nothing;

-- science_tech | physics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'A choke coil used in domestic circuits improves the:',
    'A choke coil draws a lagging current that offsets the lagging current of inductive loads, and this raises the power factor and reduces current drawn from the supply.',
    'medium',
    'NCERT Class XII',
    null,
    'cef828638167db0efb1ce7a667a9af94'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'cef828638167db0efb1ce7a667a9af94'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Power factor by compensating the inductive reactance of the load'),
            ('B', 'Voltage of the supply'),
            ('C', 'Resistance of the circuit'),
            ('D', 'Frequency of the supply')
           ) as v(label, option_text)
 where q.question_hash = 'cef828638167db0efb1ce7a667a9af94'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'The nitration of benzene is an example of:',
    'Nitration introduces an electrophile, the nitronium ion generated by nitric and sulphuric acids, in place of a ring hydrogen, and it is the classic example of electrophilic aromatic substitution.',
    'medium',
    'NCERT Class XII',
    null,
    '2d484665dd4f9fa914ec9f7c2323d320'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '2d484665dd4f9fa914ec9f7c2323d320'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Nucleophilic substitution'),
            ('B', 'Electrophilic substitution'),
            ('C', 'Free radical addition'),
            ('D', 'Chelation')
           ) as v(label, option_text)
 where q.question_hash = '2d484665dd4f9fa914ec9f7c2323d320'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'A Grignard reagent is prepared by the reaction of:',
    'Grignard reagents RMgX are made by reacting an alkyl or aryl halide with magnesium ribbon in dry ether, and they must be protected from moisture because they are decomposed by water.',
    'medium',
    'NCERT Class XII',
    null,
    'dbfdc2ed8fe262eba3bfffbc693c204f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'dbfdc2ed8fe262eba3bfffbc693c204f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'An alkyl halide with magnesium in dry ether'),
            ('B', 'An alkyl halide with zinc in aqueous medium'),
            ('C', 'An aldehyde with hydrogen in presence of nickel'),
            ('D', 'An acid with lithium aluminium hydride')
           ) as v(label, option_text)
 where q.question_hash = 'dbfdc2ed8fe262eba3bfffbc693c204f'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'Williamson''s synthesis is used to prepare:',
    'Williamson''s synthesis couples an alkoxide with a primary alkyl halide to give an ether, and it is particularly useful for making unsymmetrical ethers that cannot be made by dehydration of alcohols.',
    'medium',
    'NCERT Class XII',
    null,
    '8c4feb9645d24243df6d77a0717aa23b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '8c4feb9645d24243df6d77a0717aa23b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Carboxylic acids'),
            ('B', 'Ethers'),
            ('C', 'Esters'),
            ('D', 'Ketones')
           ) as v(label, option_text)
 where q.question_hash = '8c4feb9645d24243df6d77a0717aa23b'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'The aldol condensation involves:',
    'In aldol condensation the alpha carbanion of one aldehyde or ketone adds to the carbonyl of another to give a beta-hydroxy carbonyl, which on heating dehydrates to give an alpha,beta-unsaturated carbonyl.',
    'medium',
    'NCERT Class XII',
    null,
    '8d64530c75c97d8d97a8914845550e4e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '8d64530c75c97d8d97a8914845550e4e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Oxidation of an alcohol to an aldehyde'),
            ('B', 'Polymerisation of an alkene'),
            ('C', 'Addition of a carbonyl compound to an aldehyde or ketone with an alpha hydrogen'),
            ('D', 'Replacement of a hydroxyl group by a halogen')
           ) as v(label, option_text)
 where q.question_hash = '8d64530c75c97d8d97a8914845550e4e'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'The SN1 mechanism of substitution is favoured when the substrate is:',
    'An SN1 reaction proceeds through a carbocation intermediate, and tertiary carbocations are stabilised by hyperconjugation, so polar protic solvents that stabilise ions favour it, whereas SN2 favours primary substrates in polar aprotic solvents.',
    'hard',
    'NCERT Class XII',
    null,
    '8c6c046421541378aca45c4334c5be63'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '8c6c046421541378aca45c4334c5be63'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Primary halide with a strong nucleophile'),
            ('B', 'Vinyl halide in an alcohol solvent'),
            ('C', 'Methyl halide in a polar aprotic solvent'),
            ('D', 'Tertiary halide in a polar protic solvent')
           ) as v(label, option_text)
 where q.question_hash = '8c6c046421541378aca45c4334c5be63'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'Among the following, the strongest base is:',
    'Aliphatic amines are more basic than ammonia because the electron donating alkyl group increases the electron density on nitrogen, and among ethylamine and methylamine the ethyl group gives slightly greater basicity in aqueous solution.',
    'medium',
    'NCERT Class XII',
    null,
    '9b83be99f8cca864414f1567e60abf37'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '9b83be99f8cca864414f1567e60abf37'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Aniline'),
            ('B', 'Ammonia'),
            ('C', 'Ethylamine'),
            ('D', 'Methylamine')
           ) as v(label, option_text)
 where q.question_hash = '9b83be99f8cca864414f1567e60abf37'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'Diazotisation of an aromatic primary amine is carried out at:',
    'Diazotisation with nitrous acid generated from sodium nitrite and hydrochloric acid is kept between 0 and 5 degrees Celsius because the diazonium salt is unstable at higher temperatures and decomposes to release nitrogen.',
    'medium',
    'NCERT Class XII',
    null,
    'b80f2fa62ae85fd662007c1fa60105a9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'b80f2fa62ae85fd662007c1fa60105a9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Room temperature'),
            ('B', '50 degrees Celsius'),
            ('C', '100 degrees Celsius'),
            ('D', '0 to 5 degrees Celsius')
           ) as v(label, option_text)
 where q.question_hash = 'b80f2fa62ae85fd662007c1fa60105a9'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'The gross calorific value of a fuel is higher than its net calorific value because:',
    'Gross calorific value includes the heat recovered when the water vapour formed during combustion condenses back to liquid, while net calorific value assumes the vapour escapes without condensing.',
    'medium',
    'NCERT Class XII',
    null,
    'a603f95c677b53755e592eccbfa32d79'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a603f95c677b53755e592eccbfa32d79'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Net value excludes the carbon dioxide produced'),
            ('B', 'Gross value assumes the condensation of water vapour produced during combustion'),
            ('C', 'Net value is measured at higher temperatures'),
            ('D', 'Gross value is measured at lower pressures')
           ) as v(label, option_text)
 where q.question_hash = 'a603f95c677b53755e592eccbfa32d79'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'The octane number of a fuel measures its:',
    'Octane rating indicates resistance to knocking in spark ignition engines, and higher octane fuels are needed for higher compression ratios, while cetane rating measures the ignition delay of diesel fuel.',
    'easy',
    'NCERT Class XII',
    null,
    'b63a9f3e746c5278ce7c91fa6a707d14'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'b63a9f3e746c5278ce7c91fa6a707d14'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Resistance to knocking in a petrol engine'),
            ('B', 'Ignition delay in a diesel engine'),
            ('C', 'Viscosity at low temperature'),
            ('D', 'Calorific value per unit mass')
           ) as v(label, option_text)
 where q.question_hash = 'b63a9f3e746c5278ce7c91fa6a707d14'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'Under the National Biofuel Policy, the target grade of ethanol blending in petrol is:',
    'The National Biofuel Policy sets a target of 20 per cent ethanol blending in petrol by 2025-26, and ethanol is produced mainly from sugarcane molasses, grain and damaged foodgrains, which supports farmers and cuts imports.',
    'medium',
    'Standard Reference',
    null,
    '1a67f532faf2463c21d88e85854b783f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '1a67f532faf2463c21d88e85854b783f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'E5'),
            ('B', 'E10'),
            ('C', 'E20'),
            ('D', 'E100')
           ) as v(label, option_text)
 where q.question_hash = '1a67f532faf2463c21d88e85854b783f'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'Photochemical smog is characterised by the presence of:',
    'Photochemical or Los Angeles type smog forms in sunny conditions from nitrogen oxides and hydrocarbons, and it contains oxidising substances such as peroxyacetyl nitrate and ground level ozone, whereas London type smog is sulphur dioxide and smoke based.',
    'medium',
    'NCERT Class XII',
    null,
    '24b5199d577da4c41fe153a9d84d43d8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '24b5199d577da4c41fe153a9d84d43d8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Oxides of nitrogen, hydrocarbons and ozone'),
            ('B', 'Carbon monoxide and carbon dioxide only'),
            ('C', 'Ammonia and hydrogen sulphide'),
            ('D', 'Oxides of sulphur and particulate matter')
           ) as v(label, option_text)
 where q.question_hash = '24b5199d577da4c41fe153a9d84d43d8'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'Acid rain is caused mainly by the atmospheric oxides of:',
    'Sulphur dioxide and nitrogen oxides react with water and oxygen in the atmosphere to form sulphuric and nitric acids, and when this lowers the pH of rain below about 5.6 it is called acid rain.',
    'easy',
    'NCERT Class XII',
    null,
    '402a3e9642d25f4bcde755aa89ef9ad1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '402a3e9642d25f4bcde755aa89ef9ad1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Carbon and sulphur'),
            ('B', 'Sulphur and nitrogen'),
            ('C', 'Nitrogen and phosphorus'),
            ('D', 'Calcium and magnesium')
           ) as v(label, option_text)
 where q.question_hash = '402a3e9642d25f4bcde755aa89ef9ad1'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'The Bhopal gas tragedy of 1984 was caused by the leakage of:',
    'Methyl isocyanate leaked from the Union Carbide pesticide plant in Bhopal, and the gas killed thousands of people and left many more permanently disabled, making it one of the worst industrial disasters in India.',
    'easy',
    'Standard Reference',
    null,
    'b2e938b6bf1ebcdb532c0e909786cd7f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'b2e938b6bf1ebcdb532c0e909786cd7f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ammonia'),
            ('B', 'Phosgene'),
            ('C', 'Chlorine'),
            ('D', 'Methyl isocyanate')
           ) as v(label, option_text)
 where q.question_hash = 'b2e938b6bf1ebcdb532c0e909786cd7f'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'Minamata disease in Japan was caused by:',
    'Industrial discharge of mercury compounds was converted by microorganisms into methylmercury, which accumulated in fish and shellfish, and the resulting neurological disorder was named after the Japanese city of Minamata.',
    'medium',
    'Standard Reference',
    null,
    '683c470e08e43e94cf878360236d4f56'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '683c470e08e43e94cf878360236d4f56'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Cadmium in rice'),
            ('B', 'Lead poisoning from industrial effluents'),
            ('C', 'Mercury poisoning through consumption of contaminated fish'),
            ('D', 'Arsenic in pesticides')
           ) as v(label, option_text)
 where q.question_hash = '683c470e08e43e94cf878360236d4f56'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'The chief cause of stratospheric ozone depletion is the release of:',
    'Chlorofluorocarbons and halons release chlorine and bromine radicals in the stratosphere that catalytically destroy ozone, and this is what the Montreal Protocol of 1987 and its Kigali Amendment of 2016 seek to phase out.',
    'medium',
    'NCERT Class XII',
    null,
    'ba905caefc2e63c493e79869d47719bc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ba905caefc2e63c493e79869d47719bc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Chlorofluorocarbons and halons'),
            ('B', 'Nitrogen oxides and hydrocarbons'),
            ('C', 'Sulphur dioxide and particulates'),
            ('D', 'Carbon dioxide and methane')
           ) as v(label, option_text)
 where q.question_hash = 'ba905caefc2e63c493e79869d47719bc'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'Among the following, the most powerful greenhouse gas per molecule is:',
    'Nitrous oxide has a global warming potential of roughly 270 to 310 times that of carbon dioxide over a century, methane about 25 to 30 times, and carbon dioxide is taken as the reference unit of one.',
    'hard',
    'Standard Reference',
    null,
    '0f2dbf74d7efb0f31b7b24af2d357552'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '0f2dbf74d7efb0f31b7b24af2d357552'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Methane'),
            ('B', 'Nitrous oxide'),
            ('C', 'Water vapour'),
            ('D', 'Carbon dioxide')
           ) as v(label, option_text)
 where q.question_hash = '0f2dbf74d7efb0f31b7b24af2d357552'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'Temporary hardness of water is removed by:',
    'Boiling decomposes the soluble calcium and magnesium bicarbonates into insoluble carbonates that settle, whereas permanent hardness caused by sulphates and chlorides requires washing soda or ion exchange.',
    'medium',
    'NCERT Class XI',
    null,
    '762e021e85c99929731e1ba85f06d8c9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '762e021e85c99929731e1ba85f06d8c9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Use of ion exchange resins'),
            ('B', 'Addition of lime'),
            ('C', 'Addition of washing soda'),
            ('D', 'Boiling')
           ) as v(label, option_text)
 where q.question_hash = '762e021e85c99929731e1ba85f06d8c9'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'Which of the following is an amphoteric oxide?',
    'Aluminium oxide reacts with both acids and strong alkalis to form salts and aluminates, and zinc oxide and chromium oxide behave similarly, whereas sodium and magnesium oxides are basic and carbon dioxide is acidic.',
    'medium',
    'NCERT Class XI',
    null,
    'e3b47eaf8c0865e2fbdd2ed5a61f9079'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e3b47eaf8c0865e2fbdd2ed5a61f9079'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Magnesium oxide'),
            ('B', 'Sodium oxide'),
            ('C', 'Aluminium oxide'),
            ('D', 'Carbon dioxide')
           ) as v(label, option_text)
 where q.question_hash = 'e3b47eaf8c0865e2fbdd2ed5a61f9079'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'A solution of sodium acetate in water is:',
    'Sodium acetate is the salt of a strong base and a weak acid, and the acetate ion hydrolyses to give OH- ions, so the solution is basic, whereas ammonium chloride from a weak base and strong acid gives an acidic solution.',
    'medium',
    'NCERT Class XII',
    null,
    'c7dc748c84cb8460f458e2fa2e565812'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'c7dc748c84cb8460f458e2fa2e565812'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Acidic because of hydrolysis of the cation'),
            ('B', 'Basic because of hydrolysis of the acetate anion'),
            ('C', 'Neutral because both ions are inert'),
            ('D', 'Acidic because of strong acid hydrolysis')
           ) as v(label, option_text)
 where q.question_hash = 'c7dc748c84cb8460f458e2fa2e565812'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'In a redox titration using potassium permanganate in acidic medium, the indicator used is:',
    'In acidic medium permanganate is reduced to colourless manganese ions, so the first excess drop of permanganate gives a persistent faint pink colour, and no external indicator is needed.',
    'medium',
    'NCERT Class XII',
    null,
    'edd19fa3cd0250442d6828217a6e1b5a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'edd19fa3cd0250442d6828217a6e1b5a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The permanganate itself, which is self indicating'),
            ('B', 'Phenolphthalein'),
            ('C', 'Methyl orange'),
            ('D', 'Starch solution')
           ) as v(label, option_text)
 where q.question_hash = 'edd19fa3cd0250442d6828217a6e1b5a'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'Linkage isomerism is illustrated by the pair:',
    'In one compound the nitrite ligand is bonded through nitrogen and in the other through oxygen, so the same ligand gives different linkages, and this is called linkage or ambidentate isomerism.',
    'hard',
    'NCERT Class XII',
    null,
    '2cca30f25e56d17638ed204dfadc4fb7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '2cca30f25e56d17638ed204dfadc4fb7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'cis and trans isomers of a square complex'),
            ('B', 'Optical isomers of a chiral complex'),
            ('C', 'Ionisation isomers of a salt'),
            ('D', '[Co(NH3)5NO2]Cl2 and [Co(NH3)5ONO]Cl2')
           ) as v(label, option_text)
 where q.question_hash = '2cca30f25e56d17638ed204dfadc4fb7'
on conflict (question_id, label) do nothing;

-- science_tech | biology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'Spermatogenesis in the human testis takes place in the:',
    'Spermatogenesis occurs in the seminiferous tubules where spermatogonia develop into spermatozoa with the help of Sertoli cells, and the sperm then travel to the epididymis for maturation and storage.',
    'easy',
    'NCERT Class XII',
    null,
    'd50a05b5914f7905fea21ec9cfb09bdb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd50a05b5914f7905fea21ec9cfb09bdb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Epididymis'),
            ('B', 'Vas deferens'),
            ('C', 'Seminiferous tubules'),
            ('D', 'Sertoli cells only')
           ) as v(label, option_text)
 where q.question_hash = 'd50a05b5914f7905fea21ec9cfb09bdb'
on conflict (question_id, label) do nothing;

-- science_tech | biology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'Ovulation in the human female cycle is triggered by:',
    'A sharp surge in luteinising hormone, triggered by the rise in oestrogen from the mature follicle, causes the release of the secondary oocyte from the ovary about 14 days into a 28 day cycle.',
    'medium',
    'NCERT Class XII',
    null,
    '1c3aaabf1bd49d7a9a495aab4f13b672'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '1c3aaabf1bd49d7a9a495aab4f13b672'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Decrease in follicle stimulating hormone'),
            ('B', 'A surge in luteinising hormone'),
            ('C', 'A fall in oestrogen'),
            ('D', 'Rising progesterone')
           ) as v(label, option_text)
 where q.question_hash = '1c3aaabf1bd49d7a9a495aab4f13b672'
on conflict (question_id, label) do nothing;

-- science_tech | biology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'Fertilisation in the human female reproductive tract normally occurs in the:',
    'Fertilisation usually occurs in the ampullary-isthmic junction of the oviduct, and the resulting zygote undergoes cleavage to form a morula and then a blastocyst, which implants in the uterine endometrium about a week later.',
    'medium',
    'NCERT Class XII',
    null,
    '652b36fcbee6e4dd0c4c7570cda3d6c9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '652b36fcbee6e4dd0c4c7570cda3d6c9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ampullary-isthmic junction of the oviduct'),
            ('B', 'Cervical canal'),
            ('C', 'Vagina'),
            ('D', 'Uterine cavity')
           ) as v(label, option_text)
 where q.question_hash = '652b36fcbee6e4dd0c4c7570cda3d6c9'
on conflict (question_id, label) do nothing;

-- science_tech | biology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The Medical Termination of Pregnancy (MTP) Act, as amended in 2021, permits termination up to:',
    'The 2021 amendment extended the permissible limit for termination in defined categories of women to 24 weeks, and the law also requires the woman''s consent and the opinion of a registered medical practitioner.',
    'hard',
    'Standard Reference',
    null,
    '9741fe7c410c2901d568b962bd427736'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '9741fe7c410c2901d568b962bd427736'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '28 weeks'),
            ('B', '12 weeks'),
            ('C', '20 weeks'),
            ('D', '24 weeks')
           ) as v(label, option_text)
 where q.question_hash = '9741fe7c410c2901d568b962bd427736'
on conflict (question_id, label) do nothing;

-- science_tech | biology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The reflex arc of the nervous system involves:',
    'A reflex arc runs from the receptor through a sensory neuron to the spinal cord, where the synapse occurs, and then via a motor neuron to the effector muscle, and it allows a fast response without conscious volition.',
    'easy',
    'NCERT Class XI',
    null,
    '72c376d507f17a5103a9e419b49427bf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '72c376d507f17a5103a9e419b49427bf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The cerebellum and the medulla'),
            ('B', 'Receptor, sensory neuron, spinal cord, motor neuron and effector'),
            ('C', 'Only the brain and spinal cord'),
            ('D', 'Muscles and bones only')
           ) as v(label, option_text)
 where q.question_hash = '72c376d507f17a5103a9e419b49427bf'
on conflict (question_id, label) do nothing;

-- science_tech | biology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The part of the human brain that regulates body temperature, hunger and thirst is the:',
    'The hypothalamus lies at the base of the thalamus and contains centres for thermoregulation, hunger, thirst and sexual behaviour, and it also secretes releasing and inhibiting hormones that control the pituitary.',
    'easy',
    'NCERT Class XI',
    null,
    '2bc3c7090536cd60aaf9efafef4e4120'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '2bc3c7090536cd60aaf9efafef4e4120'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Hypothalamus'),
            ('B', 'Medulla oblongata'),
            ('C', 'Cerebrum'),
            ('D', 'Cerebellum')
           ) as v(label, option_text)
 where q.question_hash = '2bc3c7090536cd60aaf9efafef4e4120'
on conflict (question_id, label) do nothing;

-- science_tech | biology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The neurotransmitter deficient in Parkinson''s disease is:',
    'Parkinson''s disease results from degeneration of dopamine producing neurons in the substantia nigra, so levodopa, a precursor of dopamine, is used in its treatment, whereas Alzheimer''s disease involves a loss of acetylcholine.',
    'medium',
    'Standard Reference',
    null,
    'ea1419c290e4bd3c868d0b1bbe9734a6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'ea1419c290e4bd3c868d0b1bbe9734a6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Gamma-aminobutyric acid'),
            ('B', 'Acetylcholine'),
            ('C', 'Dopamine'),
            ('D', 'Serotonin')
           ) as v(label, option_text)
 where q.question_hash = 'ea1419c290e4bd3c868d0b1bbe9734a6'
on conflict (question_id, label) do nothing;

-- science_tech | biology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The rods in the human retina are responsible for:',
    'Rods contain the photopigment rhodopsin and function in dim light, giving night and peripheral vision, while cones with three types of photopigment provide colour vision and sharp daylight acuity.',
    'easy',
    'NCERT Class XI',
    null,
    '6154a8a2334de45f7a7185c71180c708'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '6154a8a2334de45f7a7185c71180c708'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Auditory balance'),
            ('B', 'Olfactory sensation'),
            ('C', 'Colour vision and acuity in bright light'),
            ('D', 'Vision in dim light')
           ) as v(label, option_text)
 where q.question_hash = '6154a8a2334de45f7a7185c71180c708'
on conflict (question_id, label) do nothing;

commit;
