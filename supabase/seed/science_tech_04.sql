-- =============================================================================
-- science_tech_04.sql — science_tech question pack, part 04
-- 250 questions. Applied after supabase/migrations/004_reference_data.sql
-- =============================================================================

begin;

-- science_tech | science-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The ''Atomic Energy Act'' in India was enacted in:',
    'The Atomic Energy Act, 1962 provided for the constitution of the Atomic Energy Commission and the licensing of the nuclear activities.',
    'medium',
    'Standard Reference',
    null,
    '3932fe222efe071dc175d558af2b6d5a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '3932fe222efe071dc175d558af2b6d5a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1954'),
            ('B', '1948'),
            ('C', '1970'),
            ('D', '1962')
           ) as v(label, option_text)
 where q.question_hash = '3932fe222efe071dc175d558af2b6d5a'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'The ''National Calibration Institute'' and the ''metrology'' in India:',
    'Metrology is the science of measurement, and the National Physical Laboratory of India is the apex laboratory for the calibration of the standards in the country.',
    'medium',
    'Standard Reference',
    null,
    '1d7d7050a257e60136c99b40f1c2abf7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '1d7d7050a257e60136c99b40f1c2abf7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The metrology is the science of measurement'),
            ('B', 'The metrology is the science of the minerals'),
            ('C', 'The metrology is the study of the meteors'),
            ('D', 'The metrology is the study of the mutation')
           ) as v(label, option_text)
 where q.question_hash = '1d7d7050a257e60136c99b40f1c2abf7'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'The ''SI base units'' number seven includes:',
    'The seven SI base units are the metre, the kilogram, the second, the ampere, the kelvin, the mole and the candela, and all the other units are derived from them.',
    'easy',
    'Standard Reference',
    null,
    '1974e8085dbe624193052fdef9632f05'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '1974e8085dbe624193052fdef9632f05'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The gram, litre, second, newton, kelvin, mole and candela'),
            ('B', 'The metre, kilogram, second, volt, ohm, tesla and weber'),
            ('C', 'The metre, kilogram, second, ampere, kelvin, mole and candela'),
            ('D', 'The metre, kilogram, second, newton, joule, watt and hertz')
           ) as v(label, option_text)
 where q.question_hash = '1974e8085dbe624193052fdef9632f05'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'The ''SI prefixes'' of the largest and the smallest:',
    'The yotta, 10 to the power of 24, is the largest and the yocto, 10 to the power of minus 24, is the smallest of the SI prefixes.',
    'medium',
    'Standard Reference',
    null,
    '4ab7337100ce2b55863897f964eafd19'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '4ab7337100ce2b55863897f964eafd19'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Yotta and yocto'),
            ('B', 'Giga and nano'),
            ('C', 'Mega and micro'),
            ('D', 'Kilo and pico')
           ) as v(label, option_text)
 where q.question_hash = '4ab7337100ce2b55863897f964eafd19'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'One horsepower equals about:',
    'One British mechanical horsepower is about 746 watts, while the metric horsepower used in Europe is about 735.5 watts.',
    'medium',
    'Standard Reference',
    null,
    '30ae2d22ae84e5fe4297253a020cb62b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '30ae2d22ae84e5fe4297253a020cb62b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '735 watts'),
            ('B', '1000 watts'),
            ('C', '500 watts'),
            ('D', '746 watts')
           ) as v(label, option_text)
 where q.question_hash = '30ae2d22ae84e5fe4297253a020cb62b'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'The ''Richter scale'' and the ''Mercalli scale'':',
    'The Richter scale expresses the magnitude of an earthquake and the Mercalli scale the observed intensity of the shaking at a place.',
    'easy',
    'Standard Reference',
    null,
    'ae3337d64ad62b617186dce96bbc6f99'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'ae3337d64ad62b617186dce96bbc6f99'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Mercalli is used for the wind speed'),
            ('B', 'The Richter measures the magnitude and the Mercalli the intensity'),
            ('C', 'Both measure the intensity'),
            ('D', 'Both measure the magnitude')
           ) as v(label, option_text)
 where q.question_hash = 'ae3337d64ad62b617186dce96bbc6f99'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'The ''Beaufort scale'' measures:',
    'The Beaufort scale is an empirical measure of the wind speed, ranging from calm at force 0 to a hurricane at force 12.',
    'medium',
    'Standard Reference',
    null,
    'f07c216d702c72e4a449fa80e80cd048'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'f07c216d702c72e4a449fa80e80cd048'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The rainfall'),
            ('B', 'The visibility'),
            ('C', 'The wind speed'),
            ('D', 'The sea depth')
           ) as v(label, option_text)
 where q.question_hash = 'f07c216d702c72e4a449fa80e80cd048'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'The ''knot'' is a unit of:',
    'A knot is a unit of speed equal to one nautical mile per hour, about 1.85 kilometres per hour, and it derives from the chip log used to measure the speed of the ship.',
    'medium',
    'Standard Reference',
    null,
    'c95bc5749b1df900130849ddd169f020'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'c95bc5749b1df900130849ddd169f020'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Weight'),
            ('B', 'Speed of the ship'),
            ('C', 'Distance'),
            ('D', 'Depth')
           ) as v(label, option_text)
 where q.question_hash = 'c95bc5749b1df900130849ddd169f020'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'The ''lux'' is the unit of:',
    'The lux is the SI unit of illuminance and the lumen measures the luminous flux while the candela measures the luminous intensity.',
    'medium',
    'Standard Reference',
    null,
    'f49e821a0469dc51fe58cf1f209fccf7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'f49e821a0469dc51fe58cf1f209fccf7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Luminous intensity'),
            ('B', 'Luminous flux'),
            ('C', 'Radiant energy'),
            ('D', 'Illuminance')
           ) as v(label, option_text)
 where q.question_hash = 'f49e821a0469dc51fe58cf1f209fccf7'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'The ''calorie'' in nutrition:',
    'The small calorie is the heat required to raise one gram of water by one degree Celsius, and the large kilocalorie or the food calorie is a thousand times that.',
    'easy',
    'Standard Reference',
    null,
    '1ae85241d6af78ebf9103426fb27aa02'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '1ae85241d6af78ebf9103426fb27aa02'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the amount of heat needed to raise one gram of water by one degree Celsius'),
            ('B', 'Is the heat needed to raise one kilogram of water by one degree'),
            ('C', 'Is a unit of power'),
            ('D', 'Is a unit of pressure')
           ) as v(label, option_text)
 where q.question_hash = '1ae85241d6af78ebf9103426fb27aa02'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'The ''hectare'' and the ''acre'':',
    'One hectare equals 10,000 square metres and is about 2.47 acres, and one square kilometre equals 100 hectares.',
    'easy',
    'Standard Reference',
    null,
    '09c294351c378fcd9cf213d4c38609ed'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '09c294351c378fcd9cf213d4c38609ed'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'One hectare is a unit of volume'),
            ('B', 'One hectare is about 2.47 acres'),
            ('C', 'One acre is about 10 hectares'),
            ('D', 'One hectare is equal to one acre')
           ) as v(label, option_text)
 where q.question_hash = '09c294351c378fcd9cf213d4c38609ed'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'The ''Celsius'' and the ''Fahrenheit'' scales:',
    'On the Celsius scale the freezing point of water is 0 degrees and on the Fahrenheit scale it is 32 degrees, and the boiling points are 100 and 212 respectively.',
    'easy',
    'Standard Reference',
    null,
    'd4ca09e89014b79d96da960704104993'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd4ca09e89014b79d96da960704104993'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Boiling point is 100 in both'),
            ('B', 'They cannot be converted'),
            ('C', 'Freezing point of water is 0 and 32 degrees'),
            ('D', 'Freezing point is 100 and 32 degrees')
           ) as v(label, option_text)
 where q.question_hash = 'd4ca09e89014b79d96da960704104993'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'The ''Kelvin'' scale:',
    'The Kelvin scale is the absolute scale of temperature and starts at absolute zero, which is minus 273.15 degrees Celsius.',
    'easy',
    'Standard Reference',
    null,
    'c4a278dc15b88fa63dba40fc0677a382'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'c4a278dc15b88fa63dba40fc0677a382'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Starts at zero Celsius'),
            ('B', 'Is a hundredth of the centigrade scale'),
            ('C', 'Is used only in India'),
            ('D', 'Starts at absolute zero, minus 273.15 degrees Celsius')
           ) as v(label, option_text)
 where q.question_hash = 'c4a278dc15b88fa63dba40fc0677a382'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'The ''molarity'' of a solution is the:',
    'Molarity is the number of moles of the solute per litre of the solution, while the molality is the number of moles per kilogram of the solvent.',
    'medium',
    'Standard Reference',
    null,
    '4bdc9f0af288f03004f822ef2257c060'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '4bdc9f0af288f03004f822ef2257c060'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Number of moles of the solute per litre of the solution'),
            ('B', 'Number of grams per litre of the solution'),
            ('C', 'Number of moles per kilogram of the solvent'),
            ('D', 'Percentage by weight')
           ) as v(label, option_text)
 where q.question_hash = '4bdc9f0af288f03004f822ef2257c060'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'The ''pressure'' of 1 atmosphere is equal to:',
    'One standard atmosphere is 101325 pascals, which is about 760 millimetres of mercury or 1.01325 bars, and the millibar is used in the weather maps.',
    'medium',
    'Standard Reference',
    null,
    '06ca75441bc495ca78af2f4419593609'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '06ca75441bc495ca78af2f4419593609'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1 bar'),
            ('B', '10 metres of water'),
            ('C', '760 mm of mercury'),
            ('D', '1.013 x 10^5 pascals')
           ) as v(label, option_text)
 where q.question_hash = '06ca75441bc495ca78af2f4419593609'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'The ''atomic mass unit'' is:',
    'The unified atomic mass unit is one-twelfth of the mass of a carbon-12 atom and is equal to about 1.66 x 10 to the power of minus 27 kilogram.',
    'medium',
    'Standard Reference',
    null,
    '3fd9bcfac8f4e038d86f92dedf7b63b2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '3fd9bcfac8f4e038d86f92dedf7b63b2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The mass of a hydrogen atom'),
            ('B', 'The mass of a proton'),
            ('C', 'The mass of an alpha particle'),
            ('D', 'One-twelfth of the mass of a carbon-12 atom')
           ) as v(label, option_text)
 where q.question_hash = '3fd9bcfac8f4e038d86f92dedf7b63b2'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'The ''magnetic declination'' is:',
    'The magnetic declination is the angle between the magnetic north and the true north at a place, and the dip is the angle that the magnetic needle makes with the horizontal.',
    'hard',
    'Standard Reference',
    null,
    'f00984dc957c8f27d66506a9636f3070'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f00984dc957c8f27d66506a9636f3070'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The angle between the magnetic north and the geographic north'),
            ('B', 'The dip of the magnetic needle'),
            ('C', 'The strength of the magnetic field'),
            ('D', 'The angle of the dip')
           ) as v(label, option_text)
 where q.question_hash = 'f00984dc957c8f27d66506a9636f3070'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'The ''isobar'' and the ''isotherm'' on a weather map:',
    'An isobar connects the places of equal atmospheric pressure and an isotherm the places of equal temperature on the weather map.',
    'easy',
    'Standard Reference',
    null,
    '3c3e1ccbd47b889faebb593b3341316d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '3c3e1ccbd47b889faebb593b3341316d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'They are the same'),
            ('B', 'The isobar joins the points of equal pressure and the isotherm the points of equal temperature'),
            ('C', 'The isobar joins the points of equal temperature'),
            ('D', 'The isotherm joins the points of equal humidity')
           ) as v(label, option_text)
 where q.question_hash = '3c3e1ccbd47b889faebb593b3341316d'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'The ''SIB'' or the ''Standard Atmosphere'' conditions:',
    'The International Standard Atmosphere is defined as 0 degrees Celsius, 101325 pascals of pressure, the standard gravity of 9.80665 metres per second squared and a relative humidity of zero.',
    'hard',
    'Standard Reference',
    null,
    '8ec2900ddccf8db523e7856fa50f7179'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '8ec2900ddccf8db523e7856fa50f7179'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '25 degrees Celsius and 1 atmosphere'),
            ('B', '20 degrees Celsius and 1 bar'),
            ('C', '15 degrees Celsius and 760 mm'),
            ('D', '0 degrees Celsius and 101325 pascals')
           ) as v(label, option_text)
 where q.question_hash = '8ec2900ddccf8db523e7856fa50f7179'
on conflict (question_id, label) do nothing;

-- science_tech | health-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'health-technology'),
    'The ''Chemotherapy'' and the ''cancer'' and the ''adjuvant'':',
    'In the adjuvant setting the chemotherapy is given after the complete surgical removal of the tumour to reduce the risk of the recurrence.',
    'medium',
    'Standard Reference',
    null,
    '229d9e9e68f995d4f1fcd93588e8c0f2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '229d9e9e68f995d4f1fcd93588e8c0f2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'An adjuvant is a diagnostic test'),
            ('B', 'An adjuvant is a type of radiation'),
            ('C', 'An adjuvant chemotherapy is given after the surgical removal of the tumour'),
            ('D', 'An adjuvant is given before the surgery only')
           ) as v(label, option_text)
 where q.question_hash = '229d9e9e68f995d4f1fcd93588e8c0f2'
on conflict (question_id, label) do nothing;

-- science_tech | health-technology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'health-technology'),
    'The ''COVAXIN'' and the ''COVISHIELD'':',
    'Covaxin, developed by the Bharat Biotech, is the inactivated whole virion vaccine, and Covishield, by the Serum Institute, is the viral vector vaccine.',
    'easy',
    'Standard Reference',
    null,
    '648ccc6e66ef753644d010cab06b98c3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '648ccc6e66ef753644d010cab06b98c3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Both are the inactivated vaccines'),
            ('B', 'Covaxin is the inactivated whole virion vaccine and Covishield the viral vector vaccine'),
            ('C', 'Both are the mRNA vaccines'),
            ('D', 'Both are the protein subunit vaccines')
           ) as v(label, option_text)
 where q.question_hash = '648ccc6e66ef753644d010cab06b98c3'
on conflict (question_id, label) do nothing;

-- science_tech | health-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'health-technology'),
    'The ''mRNA vaccines'' work by:',
    'The mRNA vaccines deliver the messenger RNA that codes for the spike protein, and the cells then present the antigen to the immune system.',
    'medium',
    'Standard Reference',
    null,
    '2bf574420224fac6b81008bd763bd8e0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '2bf574420224fac6b81008bd763bd8e0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Delivering the messenger RNA that instructs the cells to make the antigen'),
            ('B', 'Delivering the weakened virus'),
            ('C', 'Delivering the inactivated virus'),
            ('D', 'Delivering the antibodies')
           ) as v(label, option_text)
 where q.question_hash = '2bf574420224fac6b81008bd763bd8e0'
on conflict (question_id, label) do nothing;

-- science_tech | health-technology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'health-technology'),
    'The ''PCR test'' for COVID-19 detects:',
    'The RT-PCR test amplifies and detects the viral genetic material, while the serological test detects the antibodies.',
    'easy',
    'Standard Reference',
    null,
    '82f571c9d27954f1bc87487bc54f2070'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '82f571c9d27954f1bc87487bc54f2070'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The antigens only'),
            ('B', 'The whole virus'),
            ('C', 'The genetic material of the virus'),
            ('D', 'The antibodies in the serum')
           ) as v(label, option_text)
 where q.question_hash = '82f571c9d27954f1bc87487bc54f2070'
on conflict (question_id, label) do nothing;

-- science_tech | health-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'health-technology'),
    'The ''Telemedicine'' guidelines in India were notified in:',
    'The Telemedicine Practice Guidelines were notified by the Ministry of Health and Family Welfare in March 2020 during the pandemic.',
    'medium',
    'Standard Reference',
    null,
    '8425d0aa19b75595dc756b7fce8305ec'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '8425d0aa19b75595dc756b7fce8305ec'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2018'),
            ('B', '2020'),
            ('C', '2015'),
            ('D', '2008')
           ) as v(label, option_text)
 where q.question_hash = '8425d0aa19b75595dc756b7fce8305ec'
on conflict (question_id, label) do nothing;

-- science_tech | health-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'health-technology'),
    'The ''Ayushman Bharat'' and the ''National Health Mission'':',
    'The National Health Mission was launched in 2013, replacing the National Rural Health Mission, and Ayushman Bharat PM-JAY was launched in September 2018.',
    'medium',
    'Standard Reference',
    null,
    '77eecd949742cca0acb95e86bd7273e1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '77eecd949742cca0acb95e86bd7273e1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The NHM was launched in 2013 and Ayushman Bharat PM-JAY in 2018'),
            ('B', 'Both were launched in 2005'),
            ('C', 'Both were launched in 2010'),
            ('D', 'Ayushman Bharat preceded the NHM')
           ) as v(label, option_text)
 where q.question_hash = '77eecd949742cca0acb95e86bd7273e1'
on conflict (question_id, label) do nothing;

-- science_tech | health-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'health-technology'),
    'The ''One Health'' approach:',
    'One Health is a collaborative approach that recognises the interconnection of the human, the animal and the environmental health, and it is central to the pandemic preparedness.',
    'medium',
    'Standard Reference',
    null,
    '0b7d4f6625d8ba4350f4ed0de541a768'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '0b7d4f6625d8ba4350f4ed0de541a768'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is a malaria eradication programme'),
            ('B', 'Is a nutrition scheme'),
            ('C', 'Is a hospital insurance scheme'),
            ('D', 'Integrates the health of the people, the animals and the environment')
           ) as v(label, option_text)
 where q.question_hash = '0b7d4f6625d8ba4350f4ed0de541a768'
on conflict (question_id, label) do nothing;

-- science_tech | health-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'health-technology'),
    'The ''antimicrobial resistance'':',
    'Antimicrobial resistance occurs when the microorganisms evolve so that the drugs used to treat the infections no longer work, and India launched the national action plan on it in 2015.',
    'medium',
    'Standard Reference',
    null,
    'f203d1ddc48f7424aeba21cc8f8ab097'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'f203d1ddc48f7424aeba21cc8f8ab097'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is an allergy to the drugs'),
            ('B', 'Is a side effect of the vaccination'),
            ('C', 'Is a genetic disease'),
            ('D', 'Is the reduced effectiveness of the drugs against the pathogens')
           ) as v(label, option_text)
 where q.question_hash = 'f203d1ddc48f7424aeba21cc8f8ab097'
on conflict (question_id, label) do nothing;

-- science_tech | health-technology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'health-technology'),
    'The ''ROTAC'' and the ''measles'' vaccine:',
    'The rotavirus vaccine, Rotac, prevents the rotavirus diarrhoea, which is a leading cause of the deaths of the children under five in India.',
    'hard',
    'Standard Reference',
    null,
    'ea7045e8b6a6c0ac0881853bbf517e8b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'ea7045e8b6a6c0ac0881853bbf517e8b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Rotac is a tuberculosis vaccine'),
            ('B', 'The Rotavirus vaccine is given to prevent the rotavirus diarrhoea in the infants'),
            ('C', 'The Rotac is a measles vaccine'),
            ('D', 'The Rotac is a vitamin A supplement')
           ) as v(label, option_text)
 where q.question_hash = 'ea7045e8b6a6c0ac0881853bbf517e8b'
on conflict (question_id, label) do nothing;

-- science_tech | health-technology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'health-technology'),
    'The ''Japanese encephalitis'' vaccine and the ''SA 14-14-2'':',
    'The SA 14-14-2 is the live attenuated Japanese encephalitis vaccine produced in India, and it is part of the universal immunisation programme in the endemic districts.',
    'hard',
    'Standard Reference',
    null,
    '1d2b901db40aa4be43ecc82bb7b5b352'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '1d2b901db40aa4be43ecc82bb7b5b352'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The live attenuated vaccine for the Japanese encephalitis'),
            ('B', 'The vaccine for the cholera'),
            ('C', 'The vaccine for the measles'),
            ('D', 'The oral polio vaccine')
           ) as v(label, option_text)
 where q.question_hash = '1d2b901db40aa4be43ecc82bb7b5b352'
on conflict (question_id, label) do nothing;

-- science_tech | health-technology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'health-technology'),
    'The ''Chandrayaan'' and the ''AIDS vaccine'' are:',
    'The Chandrayaan is a lunar mission and the AIDS vaccine is a biomedical research programme, and they belong to entirely different fields.',
    'easy',
    'Standard Reference',
    null,
    '84af08ad4fab4707af01fe0c05bc257d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '84af08ad4fab4707af01fe0c05bc257d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Both space missions'),
            ('B', 'Both approved in 2023'),
            ('C', 'Different things entirely'),
            ('D', 'Both vaccines')
           ) as v(label, option_text)
 where q.question_hash = '84af08ad4fab4707af01fe0c05bc257d'
on conflict (question_id, label) do nothing;

-- science_tech | health-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'health-technology'),
    'The ''prosthetic'' and the ''bionic'' limbs:',
    'The modern myoelectric prostheses use the electrical signals generated by the residual muscles to control the movement of the limb.',
    'medium',
    'Standard Reference',
    null,
    '564bad12238b484d761f0942c6a3f911'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '564bad12238b484d761f0942c6a3f911'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Cannot be controlled by the patient'),
            ('B', 'Are powered by the nuclear energy'),
            ('C', 'Use the myoelectric control based on the electrical signals of the residual muscles'),
            ('D', 'Are only cosmetic')
           ) as v(label, option_text)
 where q.question_hash = '564bad12238b484d761f0942c6a3f911'
on conflict (question_id, label) do nothing;

-- science_tech | health-technology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'health-technology'),
    'The ''wearable devices'' in health monitoring:',
    'The wearables, from the fitness bands to the continuous glucose monitors, allow the remote monitoring of the vital parameters and the chronic conditions.',
    'easy',
    'Standard Reference',
    null,
    '56ef1c44bb1367b5d6a640c7abd3fafa'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '56ef1c44bb1367b5d6a640c7abd3fafa'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Are only for the athletes'),
            ('B', 'Store the medical records only'),
            ('C', 'Are the implanted pacemakers'),
            ('D', 'Continuously monitor the vital parameters like the heart rate and the blood glucose')
           ) as v(label, option_text)
 where q.question_hash = '56ef1c44bb1367b5d6a640c7abd3fafa'
on conflict (question_id, label) do nothing;

-- science_tech | health-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'health-technology'),
    'The ''vertical'' and the ''horizontal'' gene transfer in bacteria:',
    'The vertical gene transfer occurs from the parent to the offspring during the reproduction, while the horizontal transfer, including the conjugation, the transformation and the transduction, takes place between the unrelated bacteria.',
    'medium',
    'Standard Reference',
    null,
    'fd5cb89546f16134b97a9fbff9d4625a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'fd5cb89546f16134b97a9fbff9d4625a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The vertical transfer is the parent to the offspring and the horizontal is between the unrelated individuals'),
            ('B', 'Both are the same'),
            ('C', 'The vertical is the mating in the eukaryotes'),
            ('D', 'The horizontal is the cell division')
           ) as v(label, option_text)
 where q.question_hash = 'fd5cb89546f16134b97a9fbff9d4625a'
on conflict (question_id, label) do nothing;

-- science_tech | health-technology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'health-technology'),
    'The ''genome editing'' with the ''CRISPR-Cas9'':',
    'The CRISPR-Cas9 system uses a guide RNA to direct the Cas9 nuclease to the specific DNA sequence, and the technology was developed from the bacterial immune system and won the Nobel Prize in 2020.',
    'easy',
    'Standard Reference',
    null,
    'b17b4ef8c440b13941cf6c4894aa832d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b17b4ef8c440b13941cf6c4894aa832d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Uses the polymerase chain reaction'),
            ('B', 'Uses a guide RNA to direct the Cas9 enzyme to the target DNA'),
            ('C', 'Uses a viral vector only'),
            ('D', 'Uses a microinjection')
           ) as v(label, option_text)
 where q.question_hash = 'b17b4ef8c440b13941cf6c4894aa832d'
on conflict (question_id, label) do nothing;

-- science_tech | agriculture-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'agriculture-technology'),
    'The ''drone'' technology in agriculture:',
    'The drones are used for the crop and the soil monitoring, the precision spraying of the pesticides and the sowing of the seeds, and the Drone Kisan Yantra and the other schemes promote their use.',
    'medium',
    'Standard Reference',
    null,
    '1e16105ada76a297c7ad2d9845caddd2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '1e16105ada76a297c7ad2d9845caddd2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is banned in India'),
            ('B', 'Is used for the warehousing only'),
            ('C', 'Is used for the crop monitoring and the spraying of the pesticides'),
            ('D', 'Is used only for the crop cutting')
           ) as v(label, option_text)
 where q.question_hash = '1e16105ada76a297c7ad2d9845caddd2'
on conflict (question_id, label) do nothing;

-- science_tech | agriculture-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'agriculture-technology'),
    'The ''precision agriculture'' in India:',
    'Precision agriculture uses the georeferencing, the remote sensing and the soil and the moisture sensors to apply the right input at the right place and time.',
    'medium',
    'Standard Reference',
    null,
    '28862e0e265567a681c1876c6b2eced1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '28862e0e265567a681c1876c6b2eced1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Uses the GPS, the remote sensing and the sensors to optimise the inputs'),
            ('B', 'Is only the organic farming'),
            ('C', 'Is the large scale mechanisation only'),
            ('D', 'Is the cultivation of the GM crops only')
           ) as v(label, option_text)
 where q.question_hash = '28862e0e265567a681c1876c6b2eced1'
on conflict (question_id, label) do nothing;

-- science_tech | agriculture-technology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'agriculture-technology'),
    'The ''hydroponics'' is the:',
    'Hydroponics is the soilless cultivation in which the plants are grown in a nutrient solution, and it saves about 90 per cent of the water used in the soil based farming.',
    'easy',
    'Standard Reference',
    null,
    '0f418b75ae12c1d150fda812fdb625f0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '0f418b75ae12c1d150fda812fdb625f0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Cultivation in the flooded fields'),
            ('B', 'The cultivation of the seaweed'),
            ('C', 'The storage of the grain'),
            ('D', 'Cultivation of the plants without soil, in a nutrient solution')
           ) as v(label, option_text)
 where q.question_hash = '0f418b75ae12c1d150fda812fdb625f0'
on conflict (question_id, label) do nothing;

-- science_tech | agriculture-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'agriculture-technology'),
    'The ''tissue culture'' in agriculture:',
    'The tissue culture, or the micropropagation, produces a large number of disease free plants from a small plant part in a sterile nutrient medium, and it is used for the banana, the sugarcane and the teak.',
    'medium',
    'Standard Reference',
    null,
    'c89c3387e13a56eefb3eec370066d16e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'c89c3387e13a56eefb3eec370066d16e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The storage of the grains'),
            ('B', 'The propagation of the plants from the small plant parts in a sterile medium'),
            ('C', 'The preservation of the seeds in the cold storage'),
            ('D', 'The cross breeding of the crops')
           ) as v(label, option_text)
 where q.question_hash = 'c89c3387e13a56eefb3eec370066d16e'
on conflict (question_id, label) do nothing;

-- science_tech | agriculture-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'agriculture-technology'),
    'The ''neem coated urea'':',
    'The neem coated urea slows the release of the nitrogen, reduces the misuse of the fertiliser and cuts down the emission of the nitrous oxide.',
    'medium',
    'Standard Reference',
    null,
    '895a3fbed502f0efc7c8e97bed444739'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '895a3fbed502f0efc7c8e97bed444739'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Increases the urea production'),
            ('B', 'Is a pesticide against the insects only'),
            ('C', 'Is a soil conditioner only'),
            ('D', 'Slows the release of the nitrogen and reduces the misuse')
           ) as v(label, option_text)
 where q.question_hash = '895a3fbed502f0efc7c8e97bed444739'
on conflict (question_id, label) do nothing;

-- science_tech | agriculture-technology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'agriculture-technology'),
    'The ''drip irrigation'' saves water because:',
    'The drip irrigation delivers the water at the root zone with a low flow rate, which reduces the evaporation, the percolation and the weeds and typically saves 30 to 50 per cent of the water.',
    'easy',
    'Standard Reference',
    null,
    'a0b79987d399caaff5570d81cfeb5e17'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a0b79987d399caaff5570d81cfeb5e17'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It delivers the water directly to the root zone and reduces the evaporation and the percolation losses'),
            ('B', 'It irrigates the whole field uniformly'),
            ('C', 'It is used only in the greenhouses'),
            ('D', 'It increases the evaporation from the soil')
           ) as v(label, option_text)
 where q.question_hash = 'a0b79987d399caaff5570d81cfeb5e17'
on conflict (question_id, label) do nothing;

-- science_tech | agriculture-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'agriculture-technology'),
    'The ''climate smart agriculture'' involves:',
    'Climate smart agriculture aims at raising the productivity sustainably while building the resilience to the climate change and reducing the greenhouse gas emissions.',
    'medium',
    'Standard Reference',
    null,
    '79f73b9643f9ba39cd50d2fd2fc01b3f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '79f73b9643f9ba39cd50d2fd2fc01b3f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Only the vertical farming'),
            ('B', 'Only the GM crops'),
            ('C', 'Sustainable productivity with the adaptation and the mitigation and the reduced emissions'),
            ('D', 'Only the organic farming')
           ) as v(label, option_text)
 where q.question_hash = '79f73b9643f9ba39cd50d2fd2fc01b3f'
on conflict (question_id, label) do nothing;

-- science_tech | agriculture-technology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'agriculture-technology'),
    'The ''artificial insemination'' in the livestock:',
    'Artificial insemination allows the wide use of the superior germ plasma of the elite bulls in the livestock, and the technique was first used in India at the Imperial Veterinary Research Institute at Mukteshwar in the 1920s.',
    'hard',
    'Standard Reference',
    null,
    '2d3f8e2e7b37291f99c4fcba8496f32f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '2d3f8e2e7b37291f99c4fcba8496f32f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the artificial insemination of the fish'),
            ('B', 'Is the technique of the artificial introduction of the semen in the female'),
            ('C', 'Is the cross breeding of the animals'),
            ('D', 'Is the feeding of the animals with the synthetic feed')
           ) as v(label, option_text)
 where q.question_hash = '2d3f8e2e7b37291f99c4fcba8496f32f'
on conflict (question_id, label) do nothing;

-- science_tech | agriculture-technology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'agriculture-technology'),
    'The ''cold chain'' in agriculture:',
    'The cold chain with the pre-cooling, the reefer transport and the storage is essential to reduce the post-harvest losses, which are substantial in the Indian horticulture sector.',
    'easy',
    'Standard Reference',
    null,
    '69fcca6d23a0763de9213fdaebfbfcfe'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '69fcca6d23a0763de9213fdaebfbfcfe'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is a method of the irrigation'),
            ('B', 'Is a method of the weed control'),
            ('C', 'Preserves the produce from the spoilage between the harvest and the market'),
            ('D', 'Is a method of the crop breeding')
           ) as v(label, option_text)
 where q.question_hash = '69fcca6d23a0763de9213fdaebfbfcfe'
on conflict (question_id, label) do nothing;

-- science_tech | agriculture-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'agriculture-technology'),
    'The ''food processing'' and the ''food fortification'':',
    'The fortification of the staples with the iron, the folic acid and the vitamin A is a cost effective public health intervention used widely in India.',
    'medium',
    'Standard Reference',
    null,
    'a1cebb67e7f319678d1d4293123c6884'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a1cebb67e7f319678d1d4293123c6884'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Fortification adds the micronutrients to the food to combat the deficiencies'),
            ('B', 'Fortification is the preservation of the food by the cold chain'),
            ('C', 'Fortification is the GM technology'),
            ('D', 'Fortification is the organic certification')
           ) as v(label, option_text)
 where q.question_hash = 'a1cebb67e7f319678d1d4293123c6884'
on conflict (question_id, label) do nothing;

-- science_tech | agriculture-technology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'agriculture-technology'),
    'The ''vertical farming'' involves:',
    'The vertical farming grows the crops in the stacked layers with the artificial light and the hydroponics, using far less water and land, and it is being tried out in the Indian metros.',
    'easy',
    'Standard Reference',
    null,
    'bc27e291dbee4b15987ed0ba2444d4c2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'bc27e291dbee4b15987ed0ba2444d4c2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Growing the forest crops'),
            ('B', 'Growing the crops in the stacked layers under the controlled conditions'),
            ('C', 'Growing the crops in the open fields'),
            ('D', 'Growing the crops in the seawater')
           ) as v(label, option_text)
 where q.question_hash = 'bc27e291dbee4b15987ed0ba2444d4c2'
on conflict (question_id, label) do nothing;

-- science_tech | agriculture-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'agriculture-technology'),
    'The ''greenhouse gas'' emission of the agriculture sector in India is mainly from:',
    'The agricultural emissions in India come mainly from the enteric fermentation, the manure management and the cultivation of the rice under the flooded conditions.',
    'medium',
    'Standard Reference',
    null,
    '44c994800f5a1c9ffb903312a7af764a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '44c994800f5a1c9ffb903312a7af764a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The tractors only'),
            ('B', 'The fertiliser plants'),
            ('C', 'The cold storage'),
            ('D', 'The enteric fermentation, the manure management and the rice cultivation')
           ) as v(label, option_text)
 where q.question_hash = '44c994800f5a1c9ffb903312a7af764a'
on conflict (question_id, label) do nothing;

-- science_tech | agriculture-technology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'agriculture-technology'),
    'The ''Sankalp'' and the ''agritech startups'':',
    'The Sankalp agri business incubation centres support the agri tech startups with the mentoring and the market linkage.',
    'hard',
    'Standard Reference',
    null,
    '94685a83cea36a35c6d57b3844423e00'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '94685a83cea36a35c6d57b3844423e00'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'They are the research institutes'),
            ('B', 'They are the seed companies'),
            ('C', 'They are the cooperatives'),
            ('D', 'They are the agri business incubation centres supported by the Department of Agriculture')
           ) as v(label, option_text)
 where q.question_hash = '94685a83cea36a35c6d57b3844423e00'
on conflict (question_id, label) do nothing;

-- science_tech | physics | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'The ''Raman effect'' was experimentally demonstrated by:',
    'Sir C.V. Raman discovered the Raman effect in 1928 and he won the Nobel Prize in Physics in 1930 for his work on the scattering of light and for the discovery of the Raman effect.',
    'easy',
    'Standard Reference',
    null,
    '1df9e5dfa0f13c2ba3e1cd93b33f192f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '1df9e5dfa0f13c2ba3e1cd93b33f192f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bose and Gupta'),
            ('B', 'Sir C.V. Raman'),
            ('C', 'S.N. Bose'),
            ('D', 'A.S. Rosenblum')
           ) as v(label, option_text)
 where q.question_hash = '1df9e5dfa0f13c2ba3e1cd93b33f192f'
on conflict (question_id, label) do nothing;

-- science_tech | physics | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'The ''Sagnac effect'' is used in:',
    'The Sagnac effect, the rotation of a ring interferometer, is the principle of the ring laser gyroscope used in the navigation and the inertial guidance.',
    'hard',
    'Standard Reference',
    null,
    'e49b9f3dca4c9c0e74a2604c044a66c3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e49b9f3dca4c9c0e74a2604c044a66c3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The PET scan'),
            ('B', 'The electron microscope'),
            ('C', 'The ring laser gyroscope'),
            ('D', 'The MRI')
           ) as v(label, option_text)
 where q.question_hash = 'e49b9f3dca4c9c0e74a2604c044a66c3'
on conflict (question_id, label) do nothing;

-- science_tech | physics | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'The ''optical fibre'' works on the principle of:',
    'The optical fibre guides the light by the total internal reflection of the light at the core-cladding interface.',
    'easy',
    'NCERT Class XII',
    null,
    '25aea02f8bc821351760e16003a2d334'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '25aea02f8bc821351760e16003a2d334'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Total internal reflection'),
            ('B', 'Refraction'),
            ('C', 'Diffraction'),
            ('D', 'Polarisation')
           ) as v(label, option_text)
 where q.question_hash = '25aea02f8bc821351760e16003a2d334'
on conflict (question_id, label) do nothing;

-- science_tech | physics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'The ''critical angle'' of a medium:',
    'The critical angle is the angle of incidence in the denser medium for which the refracted ray travels along the boundary and beyond which the total internal reflection occurs.',
    'medium',
    'NCERT Class XI',
    null,
    '5f97ae2fff88108d70f4ce36e59a65b4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '5f97ae2fff88108d70f4ce36e59a65b4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the same for all the media'),
            ('B', 'Is the angle of incidence in the denser medium for the total internal reflection'),
            ('C', 'Is always 90 degrees'),
            ('D', 'Depends on the wavelength only')
           ) as v(label, option_text)
 where q.question_hash = '5f97ae2fff88108d70f4ce36e59a65b4'
on conflict (question_id, label) do nothing;

-- science_tech | physics | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'The ''refractive index'' of a medium is the ratio of:',
    'The refractive index is the ratio of the speed of light in the vacuum to its speed in the medium and it is also the ratio of the wavelength in the vacuum to that in the medium.',
    'easy',
    'NCERT Class XII',
    null,
    '033a09e40bd987ae6e5bd8b19f7f9123'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '033a09e40bd987ae6e5bd8b19f7f9123'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The speed of light in the vacuum to the speed in the medium'),
            ('B', 'The wavelength in the medium to that in the vacuum'),
            ('C', 'The density of the medium to that of the vacuum'),
            ('D', 'The frequency in the medium to that in the vacuum')
           ) as v(label, option_text)
 where q.question_hash = '033a09e40bd987ae6e5bd8b19f7f9123'
on conflict (question_id, label) do nothing;

-- science_tech | physics | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'The ''dispersion of light'' causes:',
    'Dispersion is the phenomenon of the splitting of the white light into its constituent colours because of the dependence of the refractive index on the wavelength.',
    'easy',
    'NCERT Class XII',
    null,
    '626eaa539b3190b626e7b9463cf7c5c9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '626eaa539b3190b626e7b9463cf7c5c9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The bending of light in the prism'),
            ('B', 'The reflection of light'),
            ('C', 'The interference of light'),
            ('D', 'The splitting of the white light into the constituent colours')
           ) as v(label, option_text)
 where q.question_hash = '626eaa539b3190b626e7b9463cf7c5c9'
on conflict (question_id, label) do nothing;

-- science_tech | physics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'The ''Newton''s rings'' are produced by the interference of light:',
    'The Newton''s rings are the interference fringes of the light reflected from the two surfaces of a thin film of the air between the convex lens and the glass plate.',
    'medium',
    'Standard Reference',
    null,
    '2af00db0cb7583320df93d2cd924c7a1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '2af00db0cb7583320df93d2cd924c7a1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Between the direct and the reflected beams'),
            ('B', 'Between the polarised and the unpolarised light'),
            ('C', 'Between the two reflected beams from the upper and the lower surfaces of the thin air film'),
            ('D', 'Between the two refracted beams')
           ) as v(label, option_text)
 where q.question_hash = '2af00db0cb7583320df93d2cd924c7a1'
on conflict (question_id, label) do nothing;

-- science_tech | physics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'The ''Michelson interferometer'' was used to:',
    'The Michelson interferometer was used by Michelson and Morley to measure the speed of light and it is the classic device for the null ether-drift experiment.',
    'medium',
    'Standard Reference',
    null,
    '15a70fdd8c8cabe84aa85fde7d4190d9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '15a70fdd8c8cabe84aa85fde7d4190d9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Measure the radioactivity'),
            ('B', 'Measure the speed of light and the wavelength of the light'),
            ('C', 'Measure the atomic mass'),
            ('D', 'Observe the diffraction')
           ) as v(label, option_text)
 where q.question_hash = '15a70fdd8c8cabe84aa85fde7d4190d9'
on conflict (question_id, label) do nothing;

-- science_tech | physics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'The ''Fraunhofer lines'' in the solar spectrum are caused by the:',
    'The Fraunhofer lines are the dark absorption lines in the solar spectrum caused by the elements in the cooler outer atmosphere of the sun, and their pattern gave the first evidence of the composition of the stars.',
    'medium',
    'Standard Reference',
    null,
    '30dd790af78e97416d80f175e6a12323'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '30dd790af78e97416d80f175e6a12323'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Emission of the light by the sun''s core'),
            ('B', 'The reflection of the light by the dust'),
            ('C', 'The diffraction of the light'),
            ('D', 'Absorption of the light by the cooler gases of the sun''s atmosphere')
           ) as v(label, option_text)
 where q.question_hash = '30dd790af78e97416d80f175e6a12323'
on conflict (question_id, label) do nothing;

-- science_tech | physics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'The ''Hertz and Hertz'' and the ''photoelectric effect'':',
    'Hertz demonstrated the photoelectric effect in 1887, Lenard studied it and Einstein gave the explanation in 1905, for which he won the Nobel Prize in 1921.',
    'medium',
    'Standard Reference',
    null,
    'e55a253dd324b53499049437251e91ee'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e55a253dd324b53499049437251e91ee'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Röntgen discovered it'),
            ('B', 'Bohr explained it'),
            ('C', 'Hertz produced the effect and Lenard studied it and Einstein explained it'),
            ('D', 'Einstein discovered it')
           ) as v(label, option_text)
 where q.question_hash = 'e55a253dd324b53499049437251e91ee'
on conflict (question_id, label) do nothing;

-- science_tech | physics | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'The ''Compton effect'' demonstrated the:',
    'The Compton effect of the scattering of the X-rays by the electrons showed the particle nature of the light and the formula was explained by the quantum theory.',
    'hard',
    'Standard Reference',
    null,
    '18bd1df91a0bd481fad60746687db613'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '18bd1df91a0bd481fad60746687db613'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Particle nature of the light'),
            ('B', 'Wave nature of the electron'),
            ('C', 'The quantum of the light'),
            ('D', 'The dual nature of the matter')
           ) as v(label, option_text)
 where q.question_hash = '18bd1df91a0bd481fad60746687db613'
on conflict (question_id, label) do nothing;

-- science_tech | physics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'The ''Millikan''s oil drop'' experiment measured the:',
    'Millikan''s oil drop experiment of 1909 measured the charge of the electron as 1.6 x 10 to the power of minus 19 coulomb.',
    'medium',
    'Standard Reference',
    null,
    '7c0a17a853c777a95c414cfd41bc297c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '7c0a17a853c777a95c414cfd41bc297c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Planck constant'),
            ('B', 'The charge of the electron'),
            ('C', 'The charge of the proton'),
            ('D', 'The mass of the electron')
           ) as v(label, option_text)
 where q.question_hash = '7c0a17a853c777a95c414cfd41bc297c'
on conflict (question_id, label) do nothing;

-- science_tech | physics | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'The ''Rutherford alpha particle scattering'' experiment led to the:',
    'Rutherford''s gold foil experiment of 1911 showed that the atom is mostly empty space with a small, dense, positively charged nucleus.',
    'easy',
    'NCERT Class XII',
    null,
    '3a3e7b7e9f5066b3f236e5cd8ae9531b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '3a3e7b7e9f5066b3f236e5cd8ae9531b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Nuclear model of the atom with a small dense nucleus'),
            ('B', 'Planetary model of the atom'),
            ('C', 'Bohr model'),
            ('D', 'Thomson model')
           ) as v(label, option_text)
 where q.question_hash = '3a3e7b7e9f5066b3f236e5cd8ae9531b'
on conflict (question_id, label) do nothing;

-- science_tech | physics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'The ''Thomson model'' of the atom is also known as the:',
    'The Thomson model is the watermelon model with the positive charge spread over the sphere and the electrons embedded in it, and J.J. Thomson was awarded the Nobel Prize in 1906.',
    'medium',
    'Standard Reference',
    null,
    'd2abf60a3168578badd8c2798494271f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'd2abf60a3168578badd8c2798494271f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Pudding model'),
            ('B', 'Planetary model'),
            ('C', 'Ring model'),
            ('D', 'Water melon model')
           ) as v(label, option_text)
 where q.question_hash = 'd2abf60a3168578badd8c2798494271f'
on conflict (question_id, label) do nothing;

-- science_tech | physics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'The ''Chadwick'' and the ''neutron'':',
    'James Chadwick discovered the neutron in 1932 and he won the Nobel Prize in Physics in 1935, and the neutron completed the picture of the nucleus.',
    'medium',
    'Standard Reference',
    null,
    '7b8b4f81e1f357f9f5d198b6de61112b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '7b8b4f81e1f357f9f5d198b6de61112b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Chadwick discovered the electron'),
            ('B', 'Chadwick discovered the positron'),
            ('C', 'Chadwick discovered the neutron in 1932 and it was the missing particle of the nucleus'),
            ('D', 'Chadwick discovered the proton')
           ) as v(label, option_text)
 where q.question_hash = '7b8b4f81e1f357f9f5d198b6de61112b'
on conflict (question_id, label) do nothing;

-- science_tech | physics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'The ''Anderson'' and the ''positron'':',
    'Carl Anderson discovered the positron in 1932 in the cosmic ray photographs and he shared the Nobel Prize in Physics in 1936 with Fermi.',
    'medium',
    'Standard Reference',
    null,
    'c9b62dc3c700542cf82a90b14d9b179e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'c9b62dc3c700542cf82a90b14d9b179e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Anderson discovered the positron in 1932 from the cosmic rays'),
            ('B', 'Anderson discovered the neutron'),
            ('C', 'Anderson discovered the meson'),
            ('D', 'Anderson discovered the neutrino')
           ) as v(label, option_text)
 where q.question_hash = 'c9b62dc3c700542cf82a90b14d9b179e'
on conflict (question_id, label) do nothing;

-- science_tech | physics | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'The ''neutrino'' was proposed by:',
    'Wolfgang Pauli proposed the neutrino in 1930 to explain the missing energy in the beta decay and it was detected by Reines and Cowan in 1956.',
    'hard',
    'Standard Reference',
    null,
    '4d06fee4a9b87d7c6c5cb1f90cfb2907'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '4d06fee4a9b87d7c6c5cb1f90cfb2907'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bohr'),
            ('B', 'Pauli'),
            ('C', 'Fermi'),
            ('D', 'Dirac')
           ) as v(label, option_text)
 where q.question_hash = '4d06fee4a9b87d7c6c5cb1f90cfb2907'
on conflict (question_id, label) do nothing;

-- science_tech | physics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'The ''Higgs boson'' was discovered at the:',
    'The Higgs boson was discovered at the Large Hadron Collider of CERN in 2012, and Peter Higgs and Francois Englert shared the Nobel Prize in Physics in 2013.',
    'medium',
    'Standard Reference',
    null,
    '4fc9df6a9ddb5f5796e058898bfa5a35'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '4fc9df6a9ddb5f5796e058898bfa5a35'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Fermilab'),
            ('B', 'Brookhaven National Laboratory'),
            ('C', 'Bhabha Atomic Research Centre'),
            ('D', 'Large Hadron Collider at CERN')
           ) as v(label, option_text)
 where q.question_hash = '4fc9df6a9ddb5f5796e058898bfa5a35'
on conflict (question_id, label) do nothing;

-- science_tech | physics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'The ''Large Hadron Collider'' is located at:',
    'The Large Hadron Collider is the largest particle accelerator in the world and it is operated by CERN near Geneva, with the India-US Collaboration in the DUNE experiment.',
    'medium',
    'Standard Reference',
    null,
    '037dd147e2f68e21a982bf41ba7470bc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '037dd147e2f68e21a982bf41ba7470bc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Brookhaven near New York'),
            ('B', 'KEK near Tokyo'),
            ('C', 'CERN near Geneva'),
            ('D', 'Fermilab near Chicago')
           ) as v(label, option_text)
 where q.question_hash = '037dd147e2f68e21a982bf41ba7470bc'
on conflict (question_id, label) do nothing;

-- science_tech | physics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'The ''Standard Model'' explains:',
    'The Standard Model explains the strong, the weak and the electromagnetic forces and the particles, but it does not include the gravity or the dark matter.',
    'medium',
    'Standard Reference',
    null,
    '1f1877b0e77edf085aacd5fe36896161'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '1f1877b0e77edf085aacd5fe36896161'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The four fundamental forces'),
            ('B', 'Only the electromagnetism'),
            ('C', 'The three forces other than gravity'),
            ('D', 'The gravity and the dark energy')
           ) as v(label, option_text)
 where q.question_hash = '1f1877b0e77edf085aacd5fe36896161'
on conflict (question_id, label) do nothing;

-- science_tech | physics | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'The ''neutrino observatory'' at the ''Kolar'':',
    'The Kolar Gold Fields in Karnataka has the deepest underground laboratory in India where the neutrino experiments were carried out.',
    'hard',
    'Standard Reference',
    null,
    'cbeffeaa2e36f529d49f9e2dad4651a6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'cbeffeaa2e36f529d49f9e2dad4651a6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is in the Assam mine'),
            ('B', 'Is the deepest underground laboratory in India at Kolar in Karnataka'),
            ('C', 'Is in the Rajasthan mine'),
            ('D', 'Is in the Andhra mine')
           ) as v(label, option_text)
 where q.question_hash = 'cbeffeaa2e36f529d49f9e2dad4651a6'
on conflict (question_id, label) do nothing;

-- science_tech | physics | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'The Aryabhata cosmic ray experiment at the Ooty was:',
    'The Aryabhata cosmic ray experiment at the Kolar and the Ooty was the first major scientific experiment in India and it was among the first in the world to study the cosmic rays.',
    'hard',
    'Standard Reference',
    null,
    '2a350331228a50f02a0352cad84b4e37'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '2a350331228a50f02a0352cad84b4e37'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the first experiment in India to study the cosmic rays'),
            ('B', 'a reactor'),
            ('C', 'a satellite of the communications'),
            ('D', 'a rocket')
           ) as v(label, option_text)
 where q.question_hash = '2a350331228a50f02a0352cad84b4e37'
on conflict (question_id, label) do nothing;

-- science_tech | physics | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'Which of the following statements is/are correct in relation to the STU?',
    'The STU, the muonic atom experiment at the Bose Institute in Calcutta in 1955, was a remarkable early experiment in the study of the quantum mechanics.',
    'hard',
    'Standard Reference',
    null,
    'd27436ea7ced23351c086d9dc685e3b1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'd27436ea7ced23351c086d9dc685e3b1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It was a nuclear reactor'),
            ('B', 'It was a telescope array'),
            ('C', 'It was a fusion experiment'),
            ('D', 'The STU was the muonic atom experiment of the Bose Institute')
           ) as v(label, option_text)
 where q.question_hash = 'd27436ea7ced23351c086d9dc685e3b1'
on conflict (question_id, label) do nothing;

-- science_tech | physics | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'The ASTRID and the FBR are:',
    'The ASTRID and the FBR are the heavy water research reactors of the Bhabha Atomic Research Centre at Kalpakkam.',
    'hard',
    'Standard Reference',
    null,
    '556a025326dfbdac77c56a5724a4b1d4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '556a025326dfbdac77c56a5724a4b1d4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the superconducting magnets'),
            ('B', 'the heavy water reactors of BARC'),
            ('C', 'the accelerators'),
            ('D', 'the telescopes')
           ) as v(label, option_text)
 where q.question_hash = '556a025326dfbdac77c56a5724a4b1d4'
on conflict (question_id, label) do nothing;

-- science_tech | physics | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'Consider the following statements. Which of them is correct with regard to the Saha?',
    'Saha''s ionisation equation, of 1920, gives the degree of ionisation of a gas at a high temperature and it was a landmark in the quantum theory.',
    'hard',
    'Standard Reference',
    null,
    'f9ddb987c961b58f9bed74cf273940cd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f9ddb987c961b58f9bed74cf273940cd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Saha gave the ionisation equation for the gas at a high temperature'),
            ('B', 'Saha gave the equation of the state'),
            ('C', 'Saha gave the uncertainty relation'),
            ('D', 'Saha gave the Einstein equation')
           ) as v(label, option_text)
 where q.question_hash = 'f9ddb987c961b58f9bed74cf273940cd'
on conflict (question_id, label) do nothing;

-- science_tech | physics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'Which of the following statements is/are correct in relation to the Hulse and Taylor?',
    'Hulse and Taylor discovered the first binary pulsar in 1974 and their measurement of its orbital period decay confirmed the general relativity prediction of the gravitational radiation.',
    'medium',
    'Standard Reference',
    null,
    'e114cb447ceb2bf4106ea6e53e044a50'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e114cb447ceb2bf4106ea6e53e044a50'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'They discovered the pulsars in 1967'),
            ('B', 'They discovered the black hole pulse'),
            ('C', 'They discovered the quasars'),
            ('D', 'They discovered the first binary pulsar in 1974 and won the Nobel Prize in Physics in 1993')
           ) as v(label, option_text)
 where q.question_hash = 'e114cb447ceb2bf4106ea6e53e044a50'
on conflict (question_id, label) do nothing;

-- science_tech | physics | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'In the context of the Saha and the Bose, which of the following is correct?',
    'Jagdish Chandra Bose and Meghnad Saha developed the semiconductor theory of the rectification and they also described the semiconductor crystal amplifier, the precursor of the transistor.',
    'hard',
    'Standard Reference',
    null,
    'feaa1223550b7eb3305077da66e5b4f9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'feaa1223550b7eb3305077da66e5b4f9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'They discovered the neutron'),
            ('B', 'They formulated the quantum theory'),
            ('C', 'Saha and Bose gave the semiconductor theory of the rectification and the transistor'),
            ('D', 'They invented the laser')
           ) as v(label, option_text)
 where q.question_hash = 'feaa1223550b7eb3305077da66e5b4f9'
on conflict (question_id, label) do nothing;

-- science_tech | physics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'The cosmic rays were:',
    'Victor Hess discovered the cosmic rays in 1912 in a balloon flight and he won the Nobel Prize in Physics in 1936.',
    'medium',
    'Standard Reference',
    null,
    '20b48842870e9fd62653de94ba1e22ce'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '20b48842870e9fd62653de94ba1e22ce'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'discovered by Ernest Rutherford'),
            ('B', 'discovered by J.J. Thomson'),
            ('C', 'discovered by Victor Hess in 1912'),
            ('D', 'discovered by Robert Millikan')
           ) as v(label, option_text)
 where q.question_hash = '20b48842870e9fd62653de94ba1e22ce'
on conflict (question_id, label) do nothing;

-- science_tech | physics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'Which of the following statements is/are correct in relation to the C.V. Raman?',
    'The Raman effect is the inelastic scattering of the incident light by the molecules with a change in the frequency and it gives the information of the rotational and the vibrational energy levels.',
    'medium',
    'Standard Reference',
    null,
    '8c875228297a96f3787ddcb8da6854cb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '8c875228297a96f3787ddcb8da6854cb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is the elastic scattering of the light'),
            ('B', 'It is the diffraction of the light'),
            ('C', 'It is the interference of the light'),
            ('D', 'It is the inelastic scattering of the light by the molecules')
           ) as v(label, option_text)
 where q.question_hash = '8c875228297a96f3787ddcb8da6854cb'
on conflict (question_id, label) do nothing;

-- science_tech | physics | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'The ''Bose-Einstein condensate'' was first created in 1995 by:',
    'The first Bose-Einstein condensate was created in 1995 by Cornell, Wieman and Ketterle and they shared the Nobel Prize in Physics in 2001.',
    'hard',
    'Standard Reference',
    null,
    'a96d0fb6d739b76a359f85999c6bf40f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a96d0fb6d739b76a359f85999c6bf40f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Albert Einstein'),
            ('B', 'Eric Cornell, Carl Wieman and Wolfgang Ketterle'),
            ('C', 'R Bose and A Einstein only'),
            ('D', 'Satendra Bose')
           ) as v(label, option_text)
 where q.question_hash = 'a96d0fb6d739b76a359f85999c6bf40f'
on conflict (question_id, label) do nothing;

-- science_tech | physics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'The ''gravitational waves'' were first detected in:',
    'The gravitational waves were first detected in September 2015 by the LIGO observatory and the Nobel Prize in Physics of 2017 went to Rainer Weiss, Barry Barish and Kip Thorne.',
    'medium',
    'Standard Reference',
    null,
    '32223322dcf9a9c8919736fca3b2cb58'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '32223322dcf9a9c8919736fca3b2cb58'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2015 by LIGO'),
            ('B', '1998 by LIGO'),
            ('C', '2010 by LIGO'),
            ('D', '2005 by LIGO')
           ) as v(label, option_text)
 where q.question_hash = '32223322dcf9a9c8919736fca3b2cb58'
on conflict (question_id, label) do nothing;

-- science_tech | physics | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'Which of the following is correct in the case of the CERN?',
    'The LHC was commissioned in 2008 with the first proton collisions in 2010 and the cost was about $4.5 billion with the India-US collaboration in the DUNE experiment.',
    'hard',
    'Standard Reference',
    null,
    '49c1440e7c36eb0b51bbf2b640189f41'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '49c1440e7c36eb0b51bbf2b640189f41'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It was in India'),
            ('B', 'The LHC was commissioned in 2008 and the first collisions were in 2010'),
            ('C', 'It was commissioned in 1998'),
            ('D', 'The first collisions were in 2015')
           ) as v(label, option_text)
 where q.question_hash = '49c1440e7c36eb0b51bbf2b640189f41'
on conflict (question_id, label) do nothing;

-- science_tech | physics | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'Ramanujans 1911 paper on the scattering of the light is:',
    'Ramanujan''s 1911 paper on the scattering of the light is regarded as the first theoretical treatment of what became the Raman effect.',
    'hard',
    'Standard Reference',
    null,
    '9200907cbce40d4c5ef7c3f265b99aba'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '9200907cbce40d4c5ef7c3f265b99aba'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the foundation of the Raman effect'),
            ('B', 'on the theory of the relativity'),
            ('C', 'on the partition function'),
            ('D', 'on the Hardy-Ramanujan formula')
           ) as v(label, option_text)
 where q.question_hash = '9200907cbce40d4c5ef7c3f265b99aba'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The ''Shanti Swarup Bhatnagar Prize'' is awarded for:',
    'The Shanti Swarup Bhatnagar Prize is the premier Indian award in the fundamental sciences and it is awarded by the CSIR.',
    'easy',
    'Standard Reference',
    null,
    '945f673b1fd792bfcd08d9f915ebee2f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '945f673b1fd792bfcd08d9f915ebee2f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The contributions in the social sciences'),
            ('B', 'The contributions in the arts'),
            ('C', 'The contributions in the fundamental science'),
            ('D', 'The contributions in the applied science')
           ) as v(label, option_text)
 where q.question_hash = '945f673b1fd792bfcd08d9f915ebee2f'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The Abdus Salam International Centre for Theoretical Physics is:',
    'The ICTP in Trieste was founded by the Abdus Salam and it is a joint initiative of the IAEA and the UNESCO.',
    'medium',
    'Standard Reference',
    null,
    '7d1efb56421d1f9df78fe68de043d450'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '7d1efb56421d1f9df78fe68de043d450'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'in Bangalore'),
            ('B', 'in Geneva'),
            ('C', 'a nuclear research centre in Rajasthan'),
            ('D', 'in Trieste, Italy')
           ) as v(label, option_text)
 where q.question_hash = '7d1efb56421d1f9df78fe68de043d450'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The ''TIFR'' was founded in:',
    'The Tata Institute of Fundamental Research was founded in 1945 in Mumbai and it is a premier research institute of the DAE.',
    'medium',
    'Standard Reference',
    null,
    '61809a462f2f308113c23574526c01a7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '61809a462f2f308113c23574526c01a7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1947'),
            ('B', '1937'),
            ('C', '1945'),
            ('D', '1950')
           ) as v(label, option_text)
 where q.question_hash = '61809a462f2f308113c23574526c01a7'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The ''Saha Institute of Nuclear Physics'' is at:',
    'The Saha Institute of Nuclear Physics is at Kolkata and it was established in 1949 by the DAE.',
    'hard',
    'Standard Reference',
    null,
    'f6701a3dc83fe056e72d20e0e0de2f93'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'f6701a3dc83fe056e72d20e0e0de2f93'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Mumbai'),
            ('B', 'Chennai'),
            ('C', 'Hyderabad'),
            ('D', 'Kolkata')
           ) as v(label, option_text)
 where q.question_hash = 'f6701a3dc83fe056e72d20e0e0de2f93'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The ''Physical Research Laboratory'' is at:',
    'The Physical Research Laboratory, the premier space and the astronomy research institute of India, is at Ahmedabad and it was founded in 1947.',
    'medium',
    'Standard Reference',
    null,
    '2c6902b0e6c2df8d11d4465ecd1c41be'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '2c6902b0e6c2df8d11d4465ecd1c41be'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ahmedabad'),
            ('B', 'Bangalore'),
            ('C', 'Hyderabad'),
            ('D', 'Chennai')
           ) as v(label, option_text)
 where q.question_hash = '2c6902b0e6c2df8d11d4465ecd1c41be'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The ''Indian Institute of Astrophysics'' is at:',
    'The Indian Institute of Astrophysics is at Bengaluru and it was set up in 1971 as the Indian Institute of Astrophysics, and it operates the Kodaikanal and the Vainu Bappu observatories.',
    'hard',
    'Standard Reference',
    null,
    '77019d0884053925e72d325ad7f18941'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '77019d0884053925e72d325ad7f18941'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Hyderabad'),
            ('B', 'Bengaluru'),
            ('C', 'Nainital'),
            ('D', 'Ujjain')
           ) as v(label, option_text)
 where q.question_hash = '77019d0884053925e72d325ad7f18941'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The ''Aryabhatta Research Institute of Observational Sciences'' (ARIES) is at:',
    'The ARIES has its observatories at Nainital and Manali and the Indian Astronomical Observatory at Hanle is one of the highest in the world.',
    'hard',
    'Standard Reference',
    null,
    'a07584e0d6d81ec0a010ddaf2755f7ae'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a07584e0d6d81ec0a010ddaf2755f7ae'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ujjain'),
            ('B', 'Manali in Himachal Pradesh'),
            ('C', 'Nainital'),
            ('D', 'Nainital and the Manali observatories')
           ) as v(label, option_text)
 where q.question_hash = 'a07584e0d6d81ec0a010ddaf2755f7ae'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The ''GMRT'' is the:',
    'The Giant Metrewave Radio Telescope at the Khajuraho near Pune is the largest radio telescope in India at a wavelength of about 6 m.',
    'hard',
    'Standard Reference',
    null,
    '0aef0df7f20ac0703f4e366233f1dac8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '0aef0df7f20ac0703f4e366233f1dac8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Giant Metrewave Radio Telescope at the Khajuraho near Pune'),
            ('B', 'Giant Metrewave Radio Telescope at Bengaluru'),
            ('C', 'Optical telescope at the Kodaikanal'),
            ('D', 'The gamma ray telescope at the Ooty')
           ) as v(label, option_text)
 where q.question_hash = '0aef0df7f20ac0703f4e366233f1dac8'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The ''IUCAA'' is at:',
    'The Inter-University Centre for Astronomy and Astrophysics is at Pune and it was established in 1988.',
    'medium',
    'Standard Reference',
    null,
    '7598ac1ab4257290a5b50da5c0e7a48d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '7598ac1ab4257290a5b50da5c0e7a48d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Jaipur'),
            ('B', 'Pune'),
            ('C', 'Bengaluru'),
            ('D', 'Ahmedabad')
           ) as v(label, option_text)
 where q.question_hash = '7598ac1ab4257290a5b50da5c0e7a48d'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The Survey of India is:',
    'The Survey of India, established in 1767, is the national authority for the geodetic surveys, the topographic maps and the theodolite and the gravity surveys of India.',
    'medium',
    'Standard Reference',
    null,
    '94586efd2409fd188403acca6130c1b6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '94586efd2409fd188403acca6130c1b6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a private mapping company'),
            ('B', 'under the NITI Aayog'),
            ('C', 'the national authority for the geodetic surveys and the maps'),
            ('D', 'a state body of the Rajasthan')
           ) as v(label, option_text)
 where q.question_hash = '94586efd2409fd188403acca6130c1b6'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The ''National Remote Sensing Centre'' is at:',
    'The National Remote Sensing Centre is at Hyderabad and it is the national centre for the acquisition, the processing and the dissemination of the satellite data.',
    'medium',
    'Standard Reference',
    null,
    '8d1960f09fd1f020fd9ae224813feeb3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '8d1960f09fd1f020fd9ae224813feeb3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ahmedabad'),
            ('B', 'Hyderabad'),
            ('C', 'Bengaluru'),
            ('D', 'Dehradun')
           ) as v(label, option_text)
 where q.question_hash = '8d1960f09fd1f020fd9ae224813feeb3'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The ''National Institute of Oceanography'' is at:',
    'The National Institute of Oceanography, one of the six national institutes of the earth sciences, is at Dona Paula in Goa.',
    'medium',
    'Standard Reference',
    null,
    '885a11b37736bf83a94f9b769b92fb66'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '885a11b37736bf83a94f9b769b92fb66'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kochi'),
            ('B', 'Mumbai'),
            ('C', 'Goa'),
            ('D', 'Chennai')
           ) as v(label, option_text)
 where q.question_hash = '885a11b37736bf83a94f9b769b92fb66'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The ''National Geophysical Research Institute'' is at:',
    'The National Geophysical Research Institute is at Hyderabad and the Andaman and the National Institute of Oceanography at Goa are the other earth science institutes.',
    'hard',
    'Standard Reference',
    null,
    'f3243f5b81438fcadcc574b4ac341911'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f3243f5b81438fcadcc574b4ac341911'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Hyderabad'),
            ('B', 'Hyderabad and the Andaman'),
            ('C', 'Dehradun'),
            ('D', 'Ahmedabad')
           ) as v(label, option_text)
 where q.question_hash = 'f3243f5b81438fcadcc574b4ac341911'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The ''National Institute of Fundamental Research'' is at:',
    'The National Institute of Fundamental Research is at Pune and the National Centre for Biological Sciences and the National Institute of Immunology are the other institutes in Bangalore.',
    'hard',
    'Standard Reference',
    null,
    '38d1d273490cd5278464327f60664845'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '38d1d273490cd5278464327f60664845'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Goa'),
            ('B', 'Ahmedabad'),
            ('C', 'Dehradun'),
            ('D', 'Pune')
           ) as v(label, option_text)
 where q.question_hash = '38d1d273490cd5278464327f60664845'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The ''National Institute of Advanced Studies'' is at:',
    'The National Institute of Advanced Studies is at Bengaluru and it is a premier centre for the interdisciplinary research in the social sciences and the related fields.',
    'hard',
    'Standard Reference',
    null,
    '332bc3ee764c5fa0f49c0e2e4500d3b6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '332bc3ee764c5fa0f49c0e2e4500d3b6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bengaluru'),
            ('B', 'Mumbai'),
            ('C', 'Hyderabad'),
            ('D', 'Pune')
           ) as v(label, option_text)
 where q.question_hash = '332bc3ee764c5fa0f49c0e2e4500d3b6'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The ''National Botanical Research Institute'' is at:',
    'The National Botanical Research Institute is at Lucknow and it is a premier institute of the CSIR with the BSI herbarium and the industrial products and the ethnobotany divisions.',
    'medium',
    'Standard Reference',
    null,
    '9072e7ce43cde0dc62846fc6657532e8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '9072e7ce43cde0dc62846fc6657532e8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Dehradun'),
            ('B', 'Bhopal'),
            ('C', 'Jodhpur'),
            ('D', 'Lucknow')
           ) as v(label, option_text)
 where q.question_hash = '9072e7ce43cde0dc62846fc6657532e8'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The ''National Chemical Laboratory'' is at:',
    'The National Chemical Laboratory is at Pune and it is the largest of the CSIR laboratories with the notable work in the catalysis, the spectroscopy and the chemical instrumentation.',
    'medium',
    'Standard Reference',
    null,
    'a4dbda1c0a539836658a9647f7329817'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a4dbda1c0a539836658a9647f7329817'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kolkata'),
            ('B', 'Pune'),
            ('C', 'Bengaluru'),
            ('D', 'Hyderabad')
           ) as v(label, option_text)
 where q.question_hash = 'a4dbda1c0a539836658a9647f7329817'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The ''Central Electrochemical Research Institute'' is at:',
    'The Central Electrochemical Research Institute is at Karaikal in the Puducherry and it is the CSIR laboratory for the electrochemistry, the corrosion science and the the battery technology.',
    'hard',
    'Standard Reference',
    null,
    'd9b5b145eb2fbe7e34282c2bf3c06f78'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd9b5b145eb2fbe7e34282c2bf3c06f78'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bengaluru'),
            ('B', 'Kolkata'),
            ('C', 'Karaikal'),
            ('D', 'Chennai')
           ) as v(label, option_text)
 where q.question_hash = 'd9b5b145eb2fbe7e34282c2bf3c06f78'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The ''Central Fuel Research Institute'' and the ''Dhanbad'':',
    'The Central Fuel Research Institute is at Dhanbad in the coal belt and it works on the coal characterisation, the gasification and the carbon materials.',
    'hard',
    'Standard Reference',
    null,
    'b604474254f078e89cca5d96a4a61bf3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'b604474254f078e89cca5d96a4a61bf3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The CFRI is at Dhanbad and it works on the coal and the gasification'),
            ('B', 'It is at Pune'),
            ('C', 'It is a nuclear institute'),
            ('D', 'It is at Bangalore')
           ) as v(label, option_text)
 where q.question_hash = 'b604474254f078e89cca5d96a4a61bf3'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The ''Central Glass and Ceramic Research Institute'' is at:',
    'The Central Glass and Ceramic Research Institute is at Kolkata and it works on the optical glass, the fibre optics and the advanced ceramics.',
    'hard',
    'Standard Reference',
    null,
    '91e153d63d8ed2e3d52c0b3f813643db'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '91e153d63d8ed2e3d52c0b3f813643db'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bhubaneswar'),
            ('B', 'Jaipur'),
            ('C', 'Bengaluru'),
            ('D', 'Kolkata')
           ) as v(label, option_text)
 where q.question_hash = '91e153d63d8ed2e3d52c0b3f813643db'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The ''National Metallurgical Laboratory'' is at:',
    'The National Metallurgical Laboratory is at Jamshedpur and it is the CSIR laboratory for the metallurgy, the materials and the corrosion engineering.',
    'medium',
    'Standard Reference',
    null,
    '8cbdb531854a95accf3b00769038308f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '8cbdb531854a95accf3b00769038308f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rourkela'),
            ('B', 'Durgapur'),
            ('C', 'Jamshedpur'),
            ('D', 'Bhilai')
           ) as v(label, option_text)
 where q.question_hash = '8cbdb531854a95accf3b00769038308f'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The ''Central Mining Research Institute'':',
    'The Central Mining Research Institute is at Dhanbad and it is the CSIR laboratory for the mining, the mineral processing and the mine safety.',
    'hard',
    'Standard Reference',
    null,
    '978bec6f0993f2abba1e6f05e4691e6a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '978bec6f0993f2abba1e6f05e4691e6a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the ocean laboratory'),
            ('B', 'Is the CSIR laboratory at Dhanbad for the mining and the metallurgy'),
            ('C', 'Is the space laboratory'),
            ('D', 'Is the nuclear laboratory')
           ) as v(label, option_text)
 where q.question_hash = '978bec6f0993f2abba1e6f05e4691e6a'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The ''CSIR'' has how many laboratories?',
    'The CSIR has 38 laboratories across the country and it is one of the largest publicly funded research organisations in the world.',
    'medium',
    'Standard Reference',
    null,
    '89c34f7a68a5ecf3e469fb252a4308b6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '89c34f7a68a5ecf3e469fb252a4308b6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '28'),
            ('B', '38'),
            ('C', '40'),
            ('D', '22')
           ) as v(label, option_text)
 where q.question_hash = '89c34f7a68a5ecf3e469fb252a4308b6'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The INSPIRE was launched:',
    'The INSPIRE, the Innovation in Science Pursuit for Inspired Research, was launched in 2008 to build the scientific talent at the school and the undergraduate level.',
    'medium',
    'Standard Reference',
    2008,
    'd65530fd894ed8e396375d61dea817d2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd65530fd894ed8e396375d61dea817d2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a scheme for the doctoral students'),
            ('B', 'a scheme of the CSIR'),
            ('C', 'in 2008 for the students of the classes 5 to 12'),
            ('D', 'in 1991')
           ) as v(label, option_text)
 where q.question_hash = 'd65530fd894ed8e396375d61dea817d2'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'National Science Talent Search is:',
    'The National Science Talent Search, conducted by the NCERT, is for the school students of the classes 5 to 12 and the successful students get the scholarship for the higher studies.',
    'medium',
    'Standard Reference',
    null,
    '83adbc3c36bfcd989adc5c54a8c829ba'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '83adbc3c36bfcd989adc5c54a8c829ba'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'conducted by the NCERT for the school students of the classes 5 to 12'),
            ('B', 'for the college students'),
            ('C', 'conducted by the ISRO'),
            ('D', 'a scheme of the DRDO')
           ) as v(label, option_text)
 where q.question_hash = '83adbc3c36bfcd989adc5c54a8c829ba'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The units of the CNNT are:',
    'The Centre for Nanotechnology has the units at Kannur, at the Gujarat and the Jawaharlal Nehru University and it was set up with the MHRD in 2009.',
    'hard',
    'Standard Reference',
    null,
    'fd85915f3469087b0736b4c31243a551'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'fd85915f3469087b0736b4c31243a551'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a nuclear centre'),
            ('B', 'a space centre'),
            ('C', 'a medical centre'),
            ('D', 'in the Kannur and the Gujarat and the Jawaharlal Nehru University')
           ) as v(label, option_text)
 where q.question_hash = 'fd85915f3469087b0736b4c31243a551'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'Which of the following statements is/are correct in relation to the Inter University Centre?',
    'The Inter-University Centre for Biotechnology and Bioinformatics in Bangalore is an autonomous DAE institution with the major research in the genomics and the structural biology.',
    'hard',
    'Standard Reference',
    null,
    '68353d02a6f9118ddf0c9a4c3fe7f7ee'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '68353d02a6f9118ddf0c9a4c3fe7f7ee'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a private university'),
            ('B', 'The IUCB is in Bangalore and it is a DAE institution'),
            ('C', 'It is in Kolkata'),
            ('D', 'It is a CSIR laboratory')
           ) as v(label, option_text)
 where q.question_hash = '68353d02a6f9118ddf0c9a4c3fe7f7ee'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'Which of the following is correct in the case of the DAE?',
    'The Department of Atomic Energy is under the direct charge of the Prime Minister and the Atomic Energy Commission is its nodal organisation for the atomic matters.',
    'medium',
    'Standard Reference',
    null,
    '8280c476090834a67a79a251f7fe6215'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '8280c476090834a67a79a251f7fe6215'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The DAE is under the Ministry of Science'),
            ('B', 'The AEC is a private body'),
            ('C', 'The DAE is a state body'),
            ('D', 'The DAE is under the Prime Minister and the Atomic Energy Commission is the nodal organisation')
           ) as v(label, option_text)
 where q.question_hash = '8280c476090834a67a79a251f7fe6215'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The ''Space Commission'' was set up in:',
    'The Space Commission was set up in 1972 and it recommended the setting up of the Department of Space and the Space Research Organisation.',
    'medium',
    'Standard Reference',
    1972,
    '26c7c1ab487a298d688c004497013ffd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '26c7c1ab487a298d688c004497013ffd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2001'),
            ('B', '1967'),
            ('C', '1972'),
            ('D', '1990')
           ) as v(label, option_text)
 where q.question_hash = '26c7c1ab487a298d688c004497013ffd'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The ''National Science and Technology Policy'' of 2023:',
    'The National Science and Technology Policy of 2023 was the fifth in the series and it has the vision of making India a global leader in the science and the technology by 2047.',
    'hard',
    'Standard Reference',
    2023,
    'abeada27cf4be8ae2ccd1519f1431e57'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'abeada27cf4be8ae2ccd1519f1431e57'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was the fifth in the series and it aimed at India being a global leader by 2047'),
            ('B', 'Was the first in the series'),
            ('C', 'Was of 1983'),
            ('D', 'Was about the agriculture only')
           ) as v(label, option_text)
 where q.question_hash = 'abeada27cf4be8ae2ccd1519f1431e57'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The ''seven pillars'' of the Technology India roadmap:',
    'The Technology India roadmap of 2018 rests on the seven pillars of the bio-economy, the advanced manufacturing, the space, the nuclear and the energy, the deep ocean, the additive manufacturing and the new materials.',
    'hard',
    'Standard Reference',
    2018,
    'db437708082f75d45a116489fd8b466f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'db437708082f75d45a116489fd8b466f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Include only the space'),
            ('B', 'Include the bio-economy, the advanced manufacturing, the space, the nuclear and the energy, the deep ocean, the additive manufacturing and the new materials'),
            ('C', 'Include only the IT'),
            ('D', 'Include the agriculture only')
           ) as v(label, option_text)
 where q.question_hash = 'db437708082f75d45a116489fd8b466f'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The National IPR Policy of 2016 aims:',
    'The National IPR Policy of 2016 has the aim of making the intellectual property a vital tool for the creation of the wealth and for the social and the economic development.',
    'medium',
    'Standard Reference',
    2016,
    '26db2793c2f25ecdba12cd17b29654fe'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '26db2793c2f25ecdba12cd17b29654fe'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'about the science funding'),
            ('B', 'about the agriculture'),
            ('C', 'to make the IP a vital tool for the wealth creation'),
            ('D', 'about the space policy')
           ) as v(label, option_text)
 where q.question_hash = '26db2793c2f25ecdba12cd17b29654fe'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'Which of the following statements is/are correct in relation to the Patent?',
    'The Patent Rules of 2021 streamlined the patent prosecution, introduced the grace period of twelve months for the public disclosures and the expedited examination for the recognised institutes.',
    'hard',
    'Standard Reference',
    2021,
    '46841c8e01f3da32d39b0b2d5f4fb881'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '46841c8e01f3da32d39b0b2d5f4fb881'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The 2021 amendment streamlined the prosecution and introduced the grace period of 12 months'),
            ('B', 'The 2021 amendment abolished the patents'),
            ('C', 'The 2021 amendment raised the fees for the individuals'),
            ('D', 'The 2021 amendment banned the software patents')
           ) as v(label, option_text)
 where q.question_hash = '46841c8e01f3da32d39b0b2d5f4fb881'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The Trade Marks Act of 1999 was:',
    'The Trade Marks Act of 1999, the first major reform of the intellectual property laws after the amendment of 1970, overhauled the trade marks legislation and aligned it with the TRIPS.',
    'hard',
    'Standard Reference',
    1999,
    '1a8429e6d1595abfaf950b374d9b4ae3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '1a8429e6d1595abfaf950b374d9b4ae3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'of 1970'),
            ('B', 'of 1947'),
            ('C', 'of 2021'),
            ('D', 'the first major reform of the IP laws after the 1970s')
           ) as v(label, option_text)
 where q.question_hash = '1a8429e6d1595abfaf950b374d9b4ae3'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The ''Copyright Act'' of India was enacted in:',
    'The Copyright Act of 1957 was enacted at the time of the first Copyright Act of 1911 in the British India and it was amended in 1984, 1992 and 2010.',
    'easy',
    'Standard Reference',
    1957,
    'd3d643c2e5db6f7632b358dd485d2d00'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd3d643c2e5db6f7632b358dd485d2d00'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1999'),
            ('B', '1950'),
            ('C', '1957'),
            ('D', '1970')
           ) as v(label, option_text)
 where q.question_hash = 'd3d643c2e5db6f7632b358dd485d2d00'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The ''Geographical Indications'' of India:',
    'India has hundreds of the registered geographical indications, and the Darjeeling tea, the Mysore silk, the Channapatna toys and the Kullu shawls are among the well known ones.',
    'medium',
    'Standard Reference',
    null,
    '5fe6d963eaafd18ba4a6f1ae3e0a9c36'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '5fe6d963eaafd18ba4a6f1ae3e0a9c36'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Include only the tea'),
            ('B', 'Include only the handicrafts'),
            ('C', 'There are none'),
            ('D', 'Include the Darjeeling tea, the Mysore silk and the Channapatna toys')
           ) as v(label, option_text)
 where q.question_hash = '5fe6d963eaafd18ba4a6f1ae3e0a9c36'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'In the context of the Biotech patents, which of the following is correct?',
    'The 2021 amendment, in force from June 2021, removed the limitation on the patenting of the microorganisms and the plants and the seeds, and it was challenged in the Delhi High Court.',
    'hard',
    'Standard Reference',
    2021,
    'c560ab9bcb9fb11fcbd3801a0ac6743a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'c560ab9bcb9fb11fcbd3801a0ac6743a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The 2021 amendment allowed the patent of the microorganisms and the plants'),
            ('B', 'The 2021 amendment banned the agricultural patents'),
            ('C', 'The 2021 amendment allowed the patenting of the human genes'),
            ('D', 'The 2021 amendment restored the section 3')
           ) as v(label, option_text)
 where q.question_hash = 'c560ab9bcb9fb11fcbd3801a0ac6743a'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The Plant Varieties Protection and the Rights Act, 2001 was:',
    'The Protection of Plant Varieties and Farmers'' Rights Act, 2001, was enacted to provide for the protection of the plant breeders'' rights and the farmers'' rights.',
    'hard',
    'Standard Reference',
    2001,
    'a399b6605d6c0f7d8c90ad8e50033045'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a399b6605d6c0f7d8c90ad8e50033045'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'of 2021'),
            ('B', 'enacted for the breeders'),
            ('C', 'of 1970'),
            ('D', 'of 1999')
           ) as v(label, option_text)
 where q.question_hash = 'a399b6605d6c0f7d8c90ad8e50033045'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The Turmeric patent and the basmati trade issues are:',
    'The turmeric patent of 1997 and the basmati trade dispute are the classic examples of the biopiracy, the commercial use of the biological resources without the sharing of the benefits with the originators.',
    'medium',
    'Standard Reference',
    null,
    'a94ba139ceac11130e561028797af887'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a94ba139ceac11130e561028797af887'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the examples of the gene therapy'),
            ('B', 'the examples of the bioremediation'),
            ('C', 'the examples of the cloning'),
            ('D', 'the classic examples of the biopiracy')
           ) as v(label, option_text)
 where q.question_hash = 'a94ba139ceac11130e561028797af887'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The ''Millennium Ecosystem Assessment'' and the ''2001:',
    'The Millennium Ecosystem Assessment of 2001 assessed the consequences of the change in the biodiversity for the human well-being and the ecosystem services.',
    'hard',
    'Standard Reference',
    2001,
    '70a80ab196cf63a7daa225b17833f4f9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '70a80ab196cf63a7daa225b17833f4f9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It was a space programme'),
            ('B', 'It was a health programme'),
            ('C', 'It assessed the consequences of the biodiversity change for the human well-being and the ecosystem services'),
            ('D', 'It was a trade agreement')
           ) as v(label, option_text)
 where q.question_hash = '70a80ab196cf63a7daa225b17833f4f9'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The ''State of the World''s Forests'' is published by:',
    'The State of the World''s Forests is published by the Food and Agriculture Organization of the United Nations.',
    'medium',
    'Standard Reference',
    null,
    '6d6eeface0e00bc4db2b743706ea81b6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '6d6eeface0e00bc4db2b743706ea81b6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The FAO'),
            ('B', 'The UNDP'),
            ('C', 'The World Bank'),
            ('D', 'The IUCN')
           ) as v(label, option_text)
 where q.question_hash = '6d6eeface0e00bc4db2b743706ea81b6'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The Global Competitiveness Report is:',
    'The Global Competitiveness Report and the World Economic Forum''s other indices are published by the WEF at Davos.',
    'easy',
    'Standard Reference',
    null,
    '437a42afb6803240b04403997ac4b523'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '437a42afb6803240b04403997ac4b523'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'published by the WTO'),
            ('B', 'published by the WEF'),
            ('C', 'published by the IMF'),
            ('D', 'published by the OECD')
           ) as v(label, option_text)
 where q.question_hash = '437a42afb6803240b04403997ac4b523'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The ''Global Health Security Index'' is published by:',
    'The Global Health Security Index is published by the Johns Hopkins Center for Health Security and India has ranked in the middle of the lower-middle group.',
    'hard',
    'Standard Reference',
    null,
    '891be1630a8746a1c5aaf993c1f739ba'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '891be1630a8746a1c5aaf993c1f739ba'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The G20'),
            ('B', 'The Johns Hopkins Center for Health Security'),
            ('C', 'The WHO'),
            ('D', 'The World Bank')
           ) as v(label, option_text)
 where q.question_hash = '891be1630a8746a1c5aaf993c1f739ba'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'Consider the following statements. Which of them is correct with regard to the Global Innovation Index 2023?',
    'In the Global Innovation Index 2023 India improved to the 43rd rank from the 47th of 2022, with the 61st rank in the science and the technology clusters.',
    'hard',
    'WIPO',
    2023,
    '04a2d98fff0c07f6c37a80d312f00e70'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '04a2d98fff0c07f6c37a80d312f00e70'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'India ranked 43rd in 2023 with the 61st rank in the science and the technology clusters'),
            ('B', 'India ranked 81st'),
            ('C', 'India ranked 10th'),
            ('D', 'India was not ranked')
           ) as v(label, option_text)
 where q.question_hash = '04a2d98fff0c07f6c37a80d312f00e70'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The STIP is the science, technology and innovation policy of India that was launched:',
    'The Science, Technology and Innovation Policy of 2023, the STIP, replaced the Science and Technology Policy of 2013 and it has the vision of making India a global leader in the innovation by 2030.',
    'medium',
    'Standard Reference',
    2023,
    'e9f9777716ebe4cfcc8d8a768f14f1eb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e9f9777716ebe4cfcc8d8a768f14f1eb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a scheme of the agriculture'),
            ('B', 'the industrial policy'),
            ('C', 'the education policy'),
            ('D', 'in 2023')
           ) as v(label, option_text)
 where q.question_hash = 'e9f9777716ebe4cfcc8d8a768f14f1eb'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'Consider the following statements. Which of them is correct with regard to the CARE?',
    'The CARES, the Scheme for Promoting Innovation in Individuals, Start-ups and MSMEs, and the Promoting International Research Partnerships for the STEM, are the DST programmes for the international research collaborations.',
    'hard',
    'Standard Reference',
    null,
    'c8f6a87aad80f1416dafb61c2023241a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c8f6a87aad80f1416dafb61c2023241a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is an education scheme'),
            ('B', 'It is the defence procurement'),
            ('C', 'The CARES is a programme of the DST to promote the international research partnerships with the foreign agencies'),
            ('D', 'It is a farm scheme')
           ) as v(label, option_text)
 where q.question_hash = 'c8f6a87aad80f1416dafb61c2023241a'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'Which of the following is correct in the case of the Global Innovation?',
    'The Global Innovation Index identifies the science and the technology clusters that are in the top 10 per cent of the performance, and the Indian clusters include the Delhi, the Bengaluru and the Chennai.',
    'hard',
    'Standard Reference',
    null,
    'b11545f4cce9f93d1032010494290b89'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'b11545f4cce9f93d1032010494290b89'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The GII identifies the science and the technology clusters that rank in the top 10 per cent'),
            ('B', 'The GII ranks only the countries'),
            ('C', 'The GII measures only the patents'),
            ('D', 'The GII is a trade index')
           ) as v(label, option_text)
 where q.question_hash = 'b11545f4cce9f93d1032010494290b89'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'In the context of the STIP, which of the following is correct?',
    'The STIP 2023 is built on the five pillars of the Steering, the Collaborative, the Inclusive, the Thoughtful and the Transformative science and it has the five focus areas of the ''Energy'', the ''Environment'', the ''Health'', the ''Agriculture and Food'' and the ''Materials'' and the ''Astronomy and the Space''.',
    'hard',
    'Standard Reference',
    2023,
    '03c019b3fce2cf9acb34b6b17cbc0a3e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '03c019b3fce2cf9acb34b6b17cbc0a3e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It has three pillars'),
            ('B', 'It has no pillars'),
            ('C', 'It is a state scheme'),
            ('D', 'The STIP has the five pillars of the ''Steering'' , the ''Collaborative'', the ''Inclusive'', the ''Thoughtful'' and the ''Transformative'' science')
           ) as v(label, option_text)
 where q.question_hash = '03c019b3fce2cf9acb34b6b17cbc0a3e'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'Consider the following statements. Which of them is correct with regard to the Units of the Measurement?',
    'The kelvin, symbol K, is the SI base unit of the thermodynamic temperature and it is defined as the ratio of the Boltzmann constant to the Boltzmann constant.',
    'medium',
    'Standard Reference',
    null,
    '6e73107fd56e56fd175e4d05244080bd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '6e73107fd56e56fd175e4d05244080bd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The kelvin is the unit of the energy'),
            ('B', 'The kelvin is a CGS unit'),
            ('C', 'The kelvin is the SI base unit of the thermodynamic temperature'),
            ('D', 'The kelvin is a derived unit')
           ) as v(label, option_text)
 where q.question_hash = '6e73107fd56e56fd175e4d05244080bd'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'The ''Ampere'' is the SI base unit of:',
    'The ampere, symbol A, is the SI base unit of the electric current and it is defined in terms of the elementary charge and the second.',
    'easy',
    'Standard Reference',
    null,
    'b579186bdb46d0b77ecfdd2f77672dac'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b579186bdb46d0b77ecfdd2f77672dac'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Electric resistance'),
            ('B', 'Electric current'),
            ('C', 'Electric charge'),
            ('D', 'Electric potential')
           ) as v(label, option_text)
 where q.question_hash = 'b579186bdb46d0b77ecfdd2f77672dac'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'The ''mole'' is the SI base unit of:',
    'The mole, symbol mol, is the SI base unit of the amount of substance and it is defined as the number of elementary entities in a given sample of a substance.',
    'easy',
    'Standard Reference',
    null,
    '1231496c005a9ffe1d0aaef3f39a014a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '1231496c005a9ffe1d0aaef3f39a014a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Time'),
            ('B', 'Amount of substance'),
            ('C', 'Mass'),
            ('D', 'Length')
           ) as v(label, option_text)
 where q.question_hash = '1231496c005a9ffe1d0aaef3f39a014a'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'The ''candela'' is the SI base unit of:',
    'The candela, symbol cd, is the SI base unit of the luminous intensity and the lux and the lumen are the derived units.',
    'medium',
    'Standard Reference',
    null,
    'faf55011f184fda178c04f59ed3ab8d8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'faf55011f184fda178c04f59ed3ab8d8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Luminous flux'),
            ('B', 'Illuminance'),
            ('C', 'Radiant intensity'),
            ('D', 'Luminous intensity')
           ) as v(label, option_text)
 where q.question_hash = 'faf55011f184fda178c04f59ed3ab8d8'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'The ''kilogram'' is the SI base unit of:',
    'The kilogram is the SI base unit of the mass and since 2019 it is defined in terms of the fixed numerical value of the Planck constant.',
    'medium',
    'Standard Reference',
    null,
    'ef6bbcd9dae2d663e0879ea918a14715'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ef6bbcd9dae2d663e0879ea918a14715'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Mass'),
            ('B', 'Force'),
            ('C', 'Weight'),
            ('D', 'Momentum')
           ) as v(label, option_text)
 where q.question_hash = 'ef6bbcd9dae2d663e0879ea918a14715'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'The ''metre'' is the SI base unit of:',
    'The metre is the SI base unit of the length and it is defined in terms of the speed of light, and the are and the volume are the derived units.',
    'easy',
    'Standard Reference',
    null,
    '60f8d8d5ea871f95a9cdcbeb733f686e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '60f8d8d5ea871f95a9cdcbeb733f686e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Volume'),
            ('B', 'Time'),
            ('C', 'Length'),
            ('D', 'Area')
           ) as v(label, option_text)
 where q.question_hash = '60f8d8d5ea871f95a9cdcbeb733f686e'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'The ''second'' is the SI base unit of:',
    'The second is the SI base unit of the time and it is defined in terms of the cesium-133 hyperfine transition frequency.',
    'easy',
    'Standard Reference',
    null,
    'a9fa9d23542f17c779597252debfccea'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a9fa9d23542f17c779597252debfccea'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Frequency'),
            ('B', 'Angular velocity'),
            ('C', 'Speed'),
            ('D', 'Time')
           ) as v(label, option_text)
 where q.question_hash = 'a9fa9d23542f17c779597252debfccea'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'The ''smoot'' is a unit of:',
    'The smoot is a non-SI unit of length of about 1.70 m, named after the American engineer and the fraternity member of the MIT, and it is used in the American football and the surveying.',
    'hard',
    'Standard Reference',
    null,
    '8d51ab7a2273ae64d87d85b2a2bc4911'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '8d51ab7a2273ae64d87d85b2a2bc4911'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Mass'),
            ('B', 'Length'),
            ('C', 'Volume'),
            ('D', 'Time')
           ) as v(label, option_text)
 where q.question_hash = '8d51ab7a2273ae64d87d85b2a2bc4911'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'The ''troy ounce'' is used for:',
    'The troy ounce, about 31.1 grams, is the unit of the precious metals and the avoirdupois ounce of about 28.35 grams is used for the ordinary commodities.',
    'medium',
    'Standard Reference',
    null,
    'ac818f490b33c3666a021bea54ae5e1b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'ac818f490b33c3666a021bea54ae5e1b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The chemicals'),
            ('B', 'The textiles'),
            ('C', 'The precious metals'),
            ('D', 'The paper')
           ) as v(label, option_text)
 where q.question_hash = 'ac818f490b33c3666a021bea54ae5e1b'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'The ''nautical mile'' is equal to:',
    'The nautical mile is exactly 1,852 metres and it is based on the one minute of the latitude and it is used in the navigation and the aviation.',
    'medium',
    'Standard Reference',
    null,
    'b572c4d1bc82f36346275bc87a2bad4c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'b572c4d1bc82f36346275bc87a2bad4c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1,852 metres'),
            ('B', '1,000 metres'),
            ('C', '1,609 metres'),
            ('D', '1,000 yards')
           ) as v(label, option_text)
 where q.question_hash = 'b572c4d1bc82f36346275bc87a2bad4c'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'The ''bar'' and the ''pressure:',
    'One bar is 100,000 pascals and the millibar of 100 pascals is the unit used in the weather maps and in the atmospheric science.',
    'medium',
    'Standard Reference',
    null,
    'b503719dddae7e221df38c391028b17f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b503719dddae7e221df38c391028b17f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1 bar is 10,000 pascals'),
            ('B', '1 bar is 100,000 pascals'),
            ('C', '1 bar is 1,000 pascals'),
            ('D', '1 bar is 10 pascals')
           ) as v(label, option_text)
 where q.question_hash = 'b503719dddae7e221df38c391028b17f'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'Which of the following statements regarding the poundal is correct?',
    'The poundal is the force needed to accelerate one pound mass at one foot per second squared, equal to about 0.1382 newton, and the slug is the corresponding unit of mass.',
    'hard',
    'Standard Reference',
    null,
    'e55e7e884e618b9b20f5fa0f297f5d6f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e55e7e884e618b9b20f5fa0f297f5d6f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is a unit of energy'),
            ('B', 'Is a unit of pressure'),
            ('C', 'Is a unit of power'),
            ('D', 'Is an imperial unit of force equal to about 0.1382 newton')
           ) as v(label, option_text)
 where q.question_hash = 'e55e7e884e618b9b20f5fa0f297f5d6f'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'The ''tog'' is a unit of:',
    'The tog, or the clo, is the unit of thermal resistance, and one tog is the thermal resistance of one square metre of a fabric that would take one hour to raise by one degree.',
    'hard',
    'Standard Reference',
    null,
    '0b1ac258abeaeee67db2c9fe21ff4071'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '0b1ac258abeaeee67db2c9fe21ff4071'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Thermal resistance'),
            ('B', 'Thermal conductivity'),
            ('C', 'Heat flux'),
            ('D', 'Specific heat')
           ) as v(label, option_text)
 where q.question_hash = '0b1ac258abeaeee67db2c9fe21ff4071'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'The ''barn'' is the unit of:',
    'The barn, symbol b, is the unit of the nuclear cross section and one barn is 10 to the power of minus 28 square metres, and the millibarn is the practical unit.',
    'hard',
    'Standard Reference',
    null,
    '3d7b3df433459fb43bfa6975ec0db19a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '3d7b3df433459fb43bfa6975ec0db19a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Radioactive activity'),
            ('B', 'Magnetic flux'),
            ('C', 'Nuclear cross section'),
            ('D', 'Electric field')
           ) as v(label, option_text)
 where q.question_hash = '3d7b3df433459fb43bfa6975ec0db19a'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'The ''curie'' is the unit of:',
    'The curie is the unit of the radioactive activity and it is equal to 3.7 x 10 to the power of 10 decays per second, and the becquerel replaced it in the SI.',
    'medium',
    'Standard Reference',
    null,
    '58bf117f63cd4c93f648cb0ee0230bcf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '58bf117f63cd4c93f648cb0ee0230bcf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The radioactivity of the radon'),
            ('B', 'Radioactive activity'),
            ('C', 'Absorbed dose of the radiation'),
            ('D', 'Equivalent dose')
           ) as v(label, option_text)
 where q.question_hash = '58bf117f63cd4c93f648cb0ee0230bcf'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'The ''gray'' is the unit of:',
    'The gray, named after Louis Harold Gray, is the SI unit of the absorbed dose of the ionising radiation and one gray is one joule per kilogram.',
    'hard',
    'Standard Reference',
    null,
    'd7393b6af06e4d912fd8d23e7df5c5d5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'd7393b6af06e4d912fd8d23e7df5c5d5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The equivalent dose'),
            ('B', 'The activity'),
            ('C', 'The dose rate'),
            ('D', 'Absorbed dose of the radiation')
           ) as v(label, option_text)
 where q.question_hash = 'd7393b6af06e4d912fd8d23e7df5c5d5'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'The ''sievert'' is the unit of:',
    'The sievert is the SI unit of the equivalent dose that takes the effect of the radiation on the human tissue into account, and the rem was the CGS unit.',
    'hard',
    'Standard Reference',
    null,
    '172a50c46f1bbe4076d79f31835d0f56'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '172a50c46f1bbe4076d79f31835d0f56'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The activity'),
            ('B', 'The power'),
            ('C', 'Equivalent dose of the radiation'),
            ('D', 'The absorbed dose')
           ) as v(label, option_text)
 where q.question_hash = '172a50c46f1bbe4076d79f31835d0f56'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'The ''katal'' is the SI unit of:',
    'The katal is the SI unit of the catalytic activity and it is equal to one mole per second of the conversion, and the enzyme unit is the practical unit.',
    'hard',
    'Standard Reference',
    null,
    '369d5b05452e792cac322df10386edb9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '369d5b05452e792cac322df10386edb9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Catalytic activity'),
            ('B', 'The enzyme activity of the mass'),
            ('C', 'The rate of the reaction'),
            ('D', 'The molar concentration')
           ) as v(label, option_text)
 where q.question_hash = '369d5b05452e792cac322df10386edb9'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'Which of the following statements regarding the hectare is correct?',
    'The crop yields are usually expressed in the quintals per hectare, with one quintal being 100 kg, and the paddy yield is about 25 quintals per hectare.',
    'hard',
    'Standard Reference',
    null,
    '18b09ea6fcadfb3b8657a4a68b7c56e5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '18b09ea6fcadfb3b8657a4a68b7c56e5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'In the bushels'),
            ('B', 'The yield of the crops is measured in the quintals per hectare'),
            ('C', 'In the tonnes per hectare only'),
            ('D', 'In the kilograms per acre')
           ) as v(label, option_text)
 where q.question_hash = '18b09ea6fcadfb3b8657a4a68b7c56e5'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'The standard atmosphere is:',
    'The International Standard Atmosphere is 101325 pascals, 0 degrees Celsius, the standard gravity of 9.80665 m/s2 and the sea level of the mean sea level.',
    'medium',
    'Standard Reference',
    null,
    'aa75622f6224c35172087d7e2c07fbd3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'aa75622f6224c35172087d7e2c07fbd3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1000 pascals'),
            ('B', '760 pascals'),
            ('C', '1 bar exactly'),
            ('D', '101325 pascals at the sea level')
           ) as v(label, option_text)
 where q.question_hash = 'aa75622f6224c35172087d7e2c07fbd3'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'The ''fathom'' is a unit of:',
    'The fathom, six feet, is the unit of the depth of the water and the nautical depth is measured in the fathoms and the cables.',
    'medium',
    'Standard Reference',
    null,
    '726f0ffd441cb57a0445a0f2b7ec1a0d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '726f0ffd441cb57a0445a0f2b7ec1a0d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Depth of the water'),
            ('B', 'Distance on the land'),
            ('C', 'Length of the rope'),
            ('D', 'The speed of the ship')
           ) as v(label, option_text)
 where q.question_hash = '726f0ffd441cb57a0445a0f2b7ec1a0d'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'The ''grain'' is a unit of:',
    'The grain is a small unit of mass equal to 64.79891 milligrams and it was the basis of the avoirdupois and the troy systems.',
    'medium',
    'Standard Reference',
    null,
    '5c4dbd09293c74888b69bfb6b37fe19d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '5c4dbd09293c74888b69bfb6b37fe19d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Time'),
            ('B', 'Volume'),
            ('C', 'Mass'),
            ('D', 'Length')
           ) as v(label, option_text)
 where q.question_hash = '5c4dbd09293c74888b69bfb6b37fe19d'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'The ''Mach number'' measures the:',
    'The Mach number is the ratio of the speed of an aircraft to the local speed of sound and Mach 1 is the speed of sound at the sea level.',
    'medium',
    'Standard Reference',
    null,
    '95257ac9e23aad3a358009fc8b5af884'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '95257ac9e23aad3a358009fc8b5af884'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The lift of the aircraft'),
            ('B', 'The thrust of the engine'),
            ('C', 'The speed of the aircraft relative to the speed of sound'),
            ('D', 'The speed of the wind')
           ) as v(label, option_text)
 where q.question_hash = '95257ac9e23aad3a358009fc8b5af884'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'The ''Reynolds number'' measures the:',
    'The Reynolds number is the ratio of the inertial to the viscous forces and it predicts whether the flow will be laminar or turbulent.',
    'hard',
    'Standard Reference',
    null,
    '4d2d4c056136945ff5fe6c8e32b0b7da'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '4d2d4c056136945ff5fe6c8e32b0b7da'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The ratio of the inertial to the viscous forces in a fluid flow'),
            ('B', 'The speed of the flow'),
            ('C', 'The density of the fluid'),
            ('D', 'The viscosity of the fluid')
           ) as v(label, option_text)
 where q.question_hash = '4d2d4c056136945ff5fe6c8e32b0b7da'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'The ''Prandtl number'' is the ratio of the:',
    'The Prandtl number is the ratio of the momentum diffusivity to the thermal diffusivity and it is important in the heat transfer calculations.',
    'hard',
    'Standard Reference',
    null,
    'cdb787f8813c54906ab4e2bab327db7f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'cdb787f8813c54906ab4e2bab327db7f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The viscous to the inertial forces'),
            ('B', 'The density to the viscosity'),
            ('C', 'The pressure to the flow'),
            ('D', 'The momentum diffusivity to the thermal diffusivity')
           ) as v(label, option_text)
 where q.question_hash = 'cdb787f8813c54906ab4e2bab327db7f'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'The ''Poiseuille''s law'' gives the:',
    'The Poiseuille''s law gives the volume flow rate of a laminar flow through a pipe as proportional to the pressure difference and to the fourth power of the radius.',
    'hard',
    'Standard Reference',
    null,
    '6c9d5fd6155eaf6f7d2228bbbc6cceda'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '6c9d5fd6155eaf6f7d2228bbbc6cceda'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The critical velocity'),
            ('B', 'The flow rate of a laminar flow through a pipe in terms of the pressure gradient'),
            ('C', 'The turbulence of the flow'),
            ('D', 'The viscosity of the oil')
           ) as v(label, option_text)
 where q.question_hash = '6c9d5fd6155eaf6f7d2228bbbc6cceda'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'The ''Stefan-Boltzmann law'' relates the:',
    'The Stefan-Boltzmann law states that the radiant power emitted per unit area of a black body is proportional to the fourth power of the absolute temperature, and the Wien''s displacement law gives the wavelength.',
    'hard',
    'Standard Reference',
    null,
    '2c87b4d4df645f644fcc032fb8c39d28'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '2c87b4d4df645f644fcc032fb8c39d28'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The volume of the gas to the temperature'),
            ('B', 'The radiant energy emitted by a black body to the fourth power of the temperature'),
            ('C', 'The pressure of the gas to the temperature'),
            ('D', 'The wavelength of the radiation to the temperature')
           ) as v(label, option_text)
 where q.question_hash = '2c87b4d4df645f644fcc032fb8c39d28'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'The ''Planck''s constant'' is:',
    'The Planck constant, 6.626 x 10 to the power of minus 34 joule second, is the constant of proportionality in the energy relation of the quantum theory.',
    'medium',
    'Standard Reference',
    null,
    '8ce1a259612ba1fcb784c2f65b6db672'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '8ce1a259612ba1fcb784c2f65b6db672'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '9.8 metre per second squared'),
            ('B', '3 x 10^8 metre per second'),
            ('C', '6.626 x 10-34 joule second'),
            ('D', '1.6 x 10-19 coulomb')
           ) as v(label, option_text)
 where q.question_hash = '8ce1a259612ba1fcb784c2f65b6db672'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'The ''Faraday''s constant'' is:',
    'The Faraday constant, 96,485 coulombs per mole of electrons, relates the charge to the amount of the substance in the electrolysis.',
    'hard',
    'Standard Reference',
    null,
    'cf2afe9b78b6e1650ea1dd2c657ba51c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'cf2afe9b78b6e1650ea1dd2c657ba51c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '6.022 x 10^23 per mole'),
            ('B', '1.38 x 10-23 joule kelvin'),
            ('C', '8.314 joule per mole kelvin'),
            ('D', '96,485 coulombs per mole')
           ) as v(label, option_text)
 where q.question_hash = 'cf2afe9b78b6e1650ea1dd2c657ba51c'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'The ''gas constant'' R is:',
    'The gas constant, 8.314 joule per mole kelvin, is the product of the Boltzmann constant and the Avogadro number.',
    'medium',
    'Standard Reference',
    null,
    '7eb53356b820e6f9ee057d41dbd95bd6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '7eb53356b820e6f9ee057d41dbd95bd6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '8.314 joule per mole kelvin'),
            ('B', '6.022 x 10^23 joule per kelvin'),
            ('C', '1.38 x 10-23 joule per kelvin'),
            ('D', '96,485 joule per mole')
           ) as v(label, option_text)
 where q.question_hash = '7eb53356b820e6f9ee057d41dbd95bd6'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'The ''Boltzmann constant'' is:',
    'The Boltzmann constant, 1.38 x 10 to the power of minus 23 joule per kelvin, relates the average kinetic energy of the particles to the absolute temperature.',
    'hard',
    'Standard Reference',
    null,
    'a47bc9fb5788c45261d71a233471c886'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'a47bc9fb5788c45261d71a233471c886'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '8.314 joule per mole kelvin'),
            ('B', '9.8 joule per mole'),
            ('C', '1.38 x 10-23 joule per kelvin'),
            ('D', '6.022 x 10^23 per mole')
           ) as v(label, option_text)
 where q.question_hash = 'a47bc9fb5788c45261d71a233471c886'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'The ''parsec'' is used to measure:',
    'The parsec is the unit of the distance of the stars and beyond, and it is about 3.26 light years or 206,265 astronomical units.',
    'medium',
    'Standard Reference',
    null,
    '603c962370a601752a710d86ffe491e1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '603c962370a601752a710d86ffe491e1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The distances of the stars'),
            ('B', 'The distances within the solar system'),
            ('C', 'The wavelengths'),
            ('D', 'The brightness of the stars')
           ) as v(label, option_text)
 where q.question_hash = '603c962370a601752a710d86ffe491e1'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'The ''magnitude'' of a star measures its:',
    'The magnitude scale is logarithmic and it measures the brightness, and a lower magnitude number denotes a brighter object, and it was devised by Hipparchus.',
    'medium',
    'Standard Reference',
    null,
    'aaa12f7aae47bd9abbd5b62f86a4e7ab'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'aaa12f7aae47bd9abbd5b62f86a4e7ab'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Distance'),
            ('B', 'Temperature'),
            ('C', 'Mass'),
            ('D', 'Brightness')
           ) as v(label, option_text)
 where q.question_hash = 'aaa12f7aae47bd9abbd5b62f86a4e7ab'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'Consider the following statements. Which of them is correct with regard to the redshift?',
    'The Hubble constant, of about 70 km per second per megaparsec, measures the rate of the expansion of the universe and the age of the universe is roughly its inverse.',
    'hard',
    'Standard Reference',
    null,
    'cd54e14c4aff05131d45421426d1a817'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'cd54e14c4aff05131d45421426d1a817'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It measures the distance to the sun'),
            ('B', 'The Hubble constant measures the rate of the expansion of the universe'),
            ('C', 'It measures the age of the earth'),
            ('D', 'It measures the mass of the galaxy')
           ) as v(label, option_text)
 where q.question_hash = 'cd54e14c4aff05131d45421426d1a817'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'Which of the following statements is/are correct in relation to the seismic magnitude?',
    'The Richter scale measures the magnitude of the earthquake and the Modified Mercalli scale describes the observed effects and the intensity at a place.',
    'medium',
    'Standard Reference',
    null,
    'b139df4bbb6bdebdb015dca99b26852c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'b139df4bbb6bdebdb015dca99b26852c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Both measure the intensity'),
            ('B', 'The Richter measures the distance'),
            ('C', 'The Richter scale measures the magnitude and the Mercalli the intensity'),
            ('D', 'The Mercalli measures the magnitude')
           ) as v(label, option_text)
 where q.question_hash = 'b139df4bbb6bdebdb015dca99b26852c'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'The ''Brix scale'' is used to measure the:',
    'The Brix scale measures the sugar content of the solutions, and it is used in the sugar industry and in the fruit juice processing.',
    'hard',
    'Standard Reference',
    null,
    '03c7f3905dc9abe507ae5fffb550e88e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '03c7f3905dc9abe507ae5fffb550e88e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The viscosity of the oil'),
            ('B', 'The sugar content of the solutions'),
            ('C', 'The salinity of the water'),
            ('D', 'The density of the milk')
           ) as v(label, option_text)
 where q.question_hash = '03c7f3905dc9abe507ae5fffb550e88e'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'The ''Baume scale'' is used for:',
    'The Baume scale measures the specific gravity of the liquids and it is used in the brewing, the chemical industry and the honey testing.',
    'hard',
    'Standard Reference',
    null,
    'd326f0eda6c1ab695308dc9f6a7979d9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'd326f0eda6c1ab695308dc9f6a7979d9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The temperature'),
            ('B', 'The humidity'),
            ('C', 'The pressure'),
            ('D', 'The specific gravity of the liquids')
           ) as v(label, option_text)
 where q.question_hash = 'd326f0eda6c1ab695308dc9f6a7979d9'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'The ''Mohs scale'' measures the:',
    'The Mohs scale of the hardness of the minerals from the talc of 1 to the diamond of 10 is the oldest of the scales of the hardness that is still in use.',
    'medium',
    'Standard Reference',
    null,
    '1f7fb06ce31a30b6e36c450a30dacd9d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '1f7fb06ce31a30b6e36c450a30dacd9d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The hardness of the minerals'),
            ('B', 'The specific gravity'),
            ('C', 'The lustre'),
            ('D', 'The crystal structure')
           ) as v(label, option_text)
 where q.question_hash = '1f7fb06ce31a30b6e36c450a30dacd9d'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'The ''Vickers hardness'' and the ''Brinell'':',
    'The Brinell, the Rockwell, the Vickers and the Knoop are the methods of the hardness testing of the metals, and the Vickers is used for the thin sheets and the coated materials.',
    'hard',
    'Standard Reference',
    null,
    '4f114a7a3b42b223f02dc11ec9ed0640'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '4f114a7a3b42b223f02dc11ec9ed0640'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Both measure the elasticity'),
            ('B', 'Both measure the toughness'),
            ('C', 'Both are the methods of measuring the hardness of the metals'),
            ('D', 'Both measure the tensile strength')
           ) as v(label, option_text)
 where q.question_hash = '4f114a7a3b42b223f02dc11ec9ed0640'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'The ''tensile strength'' of a material is the:',
    'The tensile strength is the maximum stress that a material can withstand while being stretched or pulled before breaking, and the yield strength is the stress at which the plastic deformation begins.',
    'medium',
    'Standard Reference',
    null,
    'c7b49d78255676803320cd06e5f6970e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'c7b49d78255676803320cd06e5f6970e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The energy absorbed before the fracture'),
            ('B', 'The maximum stress that the material can withstand before breaking'),
            ('C', 'The resistance to the scratching'),
            ('D', 'The resistance to the indentation')
           ) as v(label, option_text)
 where q.question_hash = 'c7b49d78255676803320cd06e5f6970e'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'The ''durometer'' measures the:',
    'The durometer measures the hardness of the rubber and the elastomeric materials with a scale of 0 to 100.',
    'hard',
    'Standard Reference',
    null,
    '7cbf8df5335d6386c9c3e2be13e18b57'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '7cbf8df5335d6386c9c3e2be13e18b57'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The hardness of the rubber and the plastics'),
            ('B', 'The density of the plastics'),
            ('C', 'The tensile strength of the steel'),
            ('D', 'The viscosity of the oils')
           ) as v(label, option_text)
 where q.question_hash = '7cbf8df5335d6386c9c3e2be13e18b57'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'The ''pycnometer'' is used to measure the:',
    'The pycnometer is a calibrated vessel used to determine the density and the specific gravity of the liquids and the solids in the powdered form.',
    'hard',
    'Standard Reference',
    null,
    'a8ace5d5e5f0d93fa6d8cff319de39bf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a8ace5d5e5f0d93fa6d8cff319de39bf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The viscosity'),
            ('B', 'The boiling point'),
            ('C', 'The refractive index'),
            ('D', 'The density and the relative density of the liquids')
           ) as v(label, option_text)
 where q.question_hash = 'a8ace5d5e5f0d93fa6d8cff319de39bf'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'The ''Svedberg unit'' measures the:',
    'The Svedberg unit measures the sedimentation rate of the particles in the centrifugation and the combination of the units gives the molecular weight in the electrophoresis.',
    'hard',
    'Standard Reference',
    null,
    '7430236d407049dec70faf8e53c8d5bc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '7430236d407049dec70faf8e53c8d5bc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The sedimentation rate of the particles in the centrifugation'),
            ('B', 'The size of the proteins'),
            ('C', 'The density of the solution'),
            ('D', 'The pH of the solution')
           ) as v(label, option_text)
 where q.question_hash = '7430236d407049dec70faf8e53c8d5bc'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'In the context of the viscosity, which of the following is correct?',
    'The poise, of 0.1 pascal second, is the CGS unit of the dynamic viscosity and the stokes, of one square centimetre per second, of the kinematic viscosity.',
    'hard',
    'Standard Reference',
    null,
    '8176c454893d8fe68b80d99d369be50c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '8176c454893d8fe68b80d99d369be50c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The stokes is the unit of the pressure'),
            ('B', 'The poise is the CGS unit of the dynamic viscosity and the stokes of the kinematic viscosity'),
            ('C', 'The stokes is the unit of the dynamic viscosity'),
            ('D', 'The poise is the unit of the surface tension')
           ) as v(label, option_text)
 where q.question_hash = '8176c454893d8fe68b80d99d369be50c'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'The ''angle of the dip'' of a magnetic needle:',
    'The angle of the dip is the angle that a freely suspended magnetic needle makes with the horizontal and it is 90 degrees at the magnetic poles and 0 degrees at the equator.',
    'hard',
    'Standard Reference',
    null,
    'eec58e069cc5944cf86a9e22bb5f41e3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'eec58e069cc5944cf86a9e22bb5f41e3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is 0 degrees at the equator'),
            ('B', 'Is measured with the declination'),
            ('C', 'Is the angle with the horizontal in the vertical plane and it is 90 degrees at the poles'),
            ('D', 'Is the angle with the geographic north')
           ) as v(label, option_text)
 where q.question_hash = 'eec58e069cc5944cf86a9e22bb5f41e3'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'The ''horizontal component of the earth''s magnetic field'' at the equator:',
    'At the equator the vertical component of the earth''s magnetic field is zero and the horizontal component is the maximum, and the reverse is true at the poles.',
    'hard',
    'Standard Reference',
    null,
    'ac8d86a674120f51056692992c682fc2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'ac8d86a674120f51056692992c682fc2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is zero'),
            ('B', 'Is the minimum'),
            ('C', 'Is equal to the vertical component'),
            ('D', 'Is the maximum and the vertical component is zero')
           ) as v(label, option_text)
 where q.question_hash = 'ac8d86a674120f51056692992c682fc2'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'The ''Gauss'' is the unit of:',
    'The gauss, of 10 to the power of minus 4 tesla, is the CGS unit of the magnetic flux density and the maxwell is the unit of the magnetic flux.',
    'hard',
    'Standard Reference',
    null,
    '0fba981f22ebab67561d417cca647cc0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '0fba981f22ebab67561d417cca647cc0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The resistance'),
            ('B', 'The capacitance'),
            ('C', 'The magnetic flux density'),
            ('D', 'The magnetic field strength')
           ) as v(label, option_text)
 where q.question_hash = '0fba981f22ebab67561d417cca647cc0'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'The SCR is the silicon carbide rectifier used:',
    'The silicon controlled rectifier, the SCR, is the thyristor used in the high voltage power electronics, in the drives and in the HVDC systems.',
    'hard',
    'Standard Reference',
    null,
    'e1524aa8bece54dabc7e154198bc0b00'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e1524aa8bece54dabc7e154198bc0b00'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a memory device'),
            ('B', 'in the high voltage power electronics'),
            ('C', 'a solar cell'),
            ('D', 'a semiconductor sensor')
           ) as v(label, option_text)
 where q.question_hash = 'e1524aa8bece54dabc7e154198bc0b00'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'The MEMS are the microscopic electro-mechanical systems used:',
    'The microelectromechanical systems are the microscopic devices that combine the mechanical and the electrical components and they are used in the accelerometers and the gyroscopes.',
    'hard',
    'Standard Reference',
    null,
    '172e83c7b09b5b131b408d6d5e984d06'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '172e83c7b09b5b131b408d6d5e984d06'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the quantum computers'),
            ('B', 'the high power lasers'),
            ('C', 'the satellite links'),
            ('D', 'in the sensors and the actuators')
           ) as v(label, option_text)
 where q.question_hash = '172e83c7b09b5b131b408d6d5e984d06'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'Which of the following is correct in the case of the 5G?',
    'The 5G operates in the sub-6 GHz band for the wider coverage and the millimetre wave band for the very high data rates.',
    'medium',
    'Standard Reference',
    null,
    'f615cd2f54afe6f0f468ce2d5f8bc647'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f615cd2f54afe6f0f468ce2d5f8bc647'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The 5G uses the millimetre wave and the sub-6 GHz bands'),
            ('B', 'The 5G uses only the sub-6 GHz band'),
            ('C', 'The 5G uses the same band as the 2G'),
            ('D', 'There is no spectrum for the 5G')
           ) as v(label, option_text)
 where q.question_hash = 'f615cd2f54afe6f0f468ce2d5f8bc647'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'Which of the following is correct in the case of the phishing?',
    'Phishing is the practice of sending the deceptive emails or the messages to steal the sensitive data such as the passwords and the card details.',
    'easy',
    'Standard Reference',
    null,
    'd7ffb88809ff3f908a2c69c54d07484f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd7ffb88809ff3f908a2c69c54d07484f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Phishing is a firewall'),
            ('B', 'Phishing is the fraudulent practice of sending the emails to obtain the sensitive data'),
            ('C', 'Phishing is a type of the malware'),
            ('D', 'Phishing is a network protocol')
           ) as v(label, option_text)
 where q.question_hash = 'd7ffb88809ff3f908a2c69c54d07484f'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'Consider the following statements. Which of them is correct with regard to the firewall?',
    'A firewall monitors and controls the incoming and the outgoing network traffic based on the defined security rules and it is the first line of the defence.',
    'easy',
    'Standard Reference',
    null,
    'd425b19b8dbcaa75f189e0932305875f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd425b19b8dbcaa75f189e0932305875f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A firewall is a backup system'),
            ('B', 'A firewall is an encryption protocol'),
            ('C', 'A firewall monitors and controls the network traffic'),
            ('D', 'A firewall is a malware')
           ) as v(label, option_text)
 where q.question_hash = 'd425b19b8dbcaa75f189e0932305875f'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'Consider the following statements. Which of them is correct with regard to the VPN?',
    'The virtual private network creates an encrypted tunnel over the public network so that the remote user can access the private network securely.',
    'easy',
    'Standard Reference',
    null,
    '3071a0d3ab15ec58fb512b861e33fd0a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '3071a0d3ab15ec58fb512b861e33fd0a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A VPN creates an encrypted tunnel over a public network'),
            ('B', 'A VPN is a type of the firewall hardware'),
            ('C', 'A VPN is an anti-virus'),
            ('D', 'A VPN is a type of the processor')
           ) as v(label, option_text)
 where q.question_hash = '3071a0d3ab15ec58fb512b861e33fd0a'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'Which of the following statements is/are correct in relation to the IoT?',
    'The Internet of Things connects the physical devices to the internet and it is used in the smart agriculture, the health monitoring, the smart cities, the industrial automation and the transport.',
    'easy',
    'Standard Reference',
    null,
    '025569cda3a82d0fbba2cedc96a71496'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '025569cda3a82d0fbba2cedc96a71496'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The IoT is only for the entertainment'),
            ('B', 'The IoT is a satellite network'),
            ('C', 'The IoT is a programming language'),
            ('D', 'The IoT is used in the smart agriculture, the health monitoring and the smart cities')
           ) as v(label, option_text)
 where q.question_hash = '025569cda3a82d0fbba2cedc96a71496'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'The IaaS, the PaaS and the SaaS are:',
    'The three service models of the cloud are the IaaS, the PaaS and the SaaS, and the deployment models are the public, the private, the hybrid and the community.',
    'medium',
    'Standard Reference',
    null,
    '38915c11f6e009c7b0b702f065b4b42c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '38915c11f6e009c7b0b702f065b4b42c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the free, the paid and the freemium'),
            ('B', 'no service models'),
            ('C', 'the three service models of the cloud'),
            ('D', 'the public, the private and the hybrid')
           ) as v(label, option_text)
 where q.question_hash = '38915c11f6e009c7b0b702f065b4b42c'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'Which of the following statements regarding the Blockchain is correct?',
    'A blockchain is a distributed, append-only and tamper-evident ledger of the transactions, and the decentralisation removes the need for an intermediary.',
    'easy',
    'Standard Reference',
    null,
    '2170f2f8a3da3f076cc94b20df1bd2c8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '2170f2f8a3da3f076cc94b20df1bd2c8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a type of the processor'),
            ('B', 'It is a distributed, immutable and transparent ledger'),
            ('C', 'It is a centralised database'),
            ('D', 'It is a programming language')
           ) as v(label, option_text)
 where q.question_hash = '2170f2f8a3da3f076cc94b20df1bd2c8'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'Which of the following statements regarding the NFT is correct?',
    'The non-fungible token, the unique digital asset recorded on the blockchain, gained the mainstream attention in 2021 with the sale of the digital art.',
    'medium',
    'Standard Reference',
    2021,
    'be493d75cea8dff36ee1a45fb7b5c9fd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'be493d75cea8dff36ee1a45fb7b5c9fd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It was introduced in 2015'),
            ('B', 'It is a cryptocurrency of the Bitcoin'),
            ('C', 'It is banned in India'),
            ('D', 'The non-fungible token gained the mainstream attention in 2021')
           ) as v(label, option_text)
 where q.question_hash = 'be493d75cea8dff36ee1a45fb7b5c9fd'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'Which of the following is correct in the case of the Machine learning?',
    'The machine learning is broadly of the supervised, the unsupervised and the reinforcement learning, and the deep learning is a subset of the machine learning.',
    'easy',
    'Standard Reference',
    null,
    '9d60854ef47e5e49e48b21ad456caed0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '9d60854ef47e5e49e48b21ad456caed0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The supervised, the unsupervised and the reinforcement learning'),
            ('B', 'The supervised and the unsupervised only'),
            ('C', 'The reinforcement learning only'),
            ('D', 'The machine learning is a type of the statistics')
           ) as v(label, option_text)
 where q.question_hash = '9d60854ef47e5e49e48b21ad456caed0'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'Consider the following statements. Which of them is correct with regard to the Big Data?',
    'The big data is characterised by the five Vs of the volume, the velocity, the variety, the veracity and the value, with the volatility sometimes added.',
    'medium',
    'Standard Reference',
    null,
    '0913f0b0914b7804ed8cfc9d2de8f253'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '0913f0b0914b7804ed8cfc9d2de8f253'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The five laws of the robotics'),
            ('B', 'The five pillars of the constitution'),
            ('C', 'The volume, the velocity, the variety, the veracity and the value'),
            ('D', 'The five elements of the periodic table')
           ) as v(label, option_text)
 where q.question_hash = '0913f0b0914b7804ed8cfc9d2de8f253'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'The National Cyber Security Policy of 2012 was:',
    'The National Cyber Security Policy of 2012 was the first comprehensive policy framework of India and it was superseded by the National Cyber Security Policy of 2020.',
    'hard',
    'Standard Reference',
    2012,
    'd448078676653d7c4f9fbf645a3093e4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'd448078676653d7c4f9fbf645a3093e4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'of 2000'),
            ('B', 'no policy'),
            ('C', 'of 2018'),
            ('D', 'the first comprehensive policy framework of India')
           ) as v(label, option_text)
 where q.question_hash = 'd448078676653d7c4f9fbf645a3093e4'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'The ''CERT-In'' was set up in:',
    'The Indian Computer Emergency Response Team was established in 2004 under the MeitY and it is the national agency for the cyber security incidents.',
    'medium',
    'Standard Reference',
    2004,
    '723469608b9a7257b68d9cf74554b0d5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '723469608b9a7257b68d9cf74554b0d5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2004'),
            ('B', '2000'),
            ('C', '2010'),
            ('D', '2008')
           ) as v(label, option_text)
 where q.question_hash = '723469608b9a7257b68d9cf74554b0d5'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'The ''Digital Personal Data Protection Act, 2023'' established:',
    'The Digital Personal Data Protection Act, 2023 established the Data Protection Board of India as the regulator of the personal data and it also provided for the Data Protection Tribunal.',
    'medium',
    'Standard Reference',
    2023,
    '1838710c5074195fbccc7c8fb68981f2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '1838710c5074195fbccc7c8fb68981f2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The cyber appellate tribunal'),
            ('B', 'The Data Protection Board of India'),
            ('C', 'The CERT-In'),
            ('D', 'The MeitY''s cyber cell')
           ) as v(label, option_text)
 where q.question_hash = '1838710c5074195fbccc7c8fb68981f2'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'Which of the following is correct in the case of the UIDAI?',
    'The Aadhaar is a 12 digit unique identification number based on the biometric and the demographic data and the UIDAI is the statutory body that issues it.',
    'easy',
    'Standard Reference',
    null,
    '2c7f58779351848814997a0ad3803e63'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '2c7f58779351848814997a0ad3803e63'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a passport number'),
            ('B', 'It is a voter number'),
            ('C', 'The Aadhaar is a 12 digit biometric identity number and the UIDAI is the statutory body'),
            ('D', 'It is a 16 digit number')
           ) as v(label, option_text)
 where q.question_hash = '2c7f58779351848814997a0ad3803e63'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'DigiLocker was launched:',
    'DigiLocker was launched in 2015 by the NeGD and it allows the citizens to access the government issued documents digitally from any device.',
    'medium',
    'Standard Reference',
    2015,
    '60108783a7eeb48a61926c9da79d5ec8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '60108783a7eeb48a61926c9da79d5ec8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a payment system'),
            ('B', 'in 2015 as the national digital platform of the e-governance'),
            ('C', 'in 2010'),
            ('D', 'in 2018')
           ) as v(label, option_text)
 where q.question_hash = '60108783a7eeb48a61926c9da79d5ec8'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'The ''UMANG'' app:',
    'The UMANG, the Unified Mobile Application for all the Government services, was launched in 2016 and it offers more than 2,000 services.',
    'hard',
    'Standard Reference',
    2016,
    '39bd6b5c303779f39e971e20a4f32c6d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '39bd6b5c303779f39e971e20a4f32c6d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is a payment app'),
            ('B', 'Is a satellite navigation app'),
            ('C', 'Is a health app'),
            ('D', 'Is the platform of the government for the delivery of the services to the citizens')
           ) as v(label, option_text)
 where q.question_hash = '39bd6b5c303779f39e971e20a4f32c6d'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'Consider the following statements. Which of them is correct with regard to the CoWIN?',
    'CoWIN, the Co-Win Information Network, was the digital platform of the covid vaccination drive that enabled the registration and the scheduling and the certificate download.',
    'easy',
    'Standard Reference',
    2021,
    'f4371e24a657178af18837ee3ea62ecc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f4371e24a657178af18837ee3ea62ecc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'CoWIN was the digital platform of the covid vaccination drive'),
            ('B', 'CoWIN was the e-commerce portal'),
            ('C', 'CoWIN was the digital public infrastructure'),
            ('D', 'CoWIN was a satellite navigation system')
           ) as v(label, option_text)
 where q.question_hash = 'f4371e24a657178af18837ee3ea62ecc'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'The ''UPI 123Pay'':',
    'The UPI 123Pay is the simplified payment for the small merchants and the street vendors that can be done with the tap on the QR code without the PIN.',
    'hard',
    'Standard Reference',
    null,
    '3f08ac09837433453bcf647b4d21125e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '3f08ac09837433453bcf647b4d21125e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is the international payment'),
            ('B', 'It is the payment of the securities'),
            ('C', 'It is the payment of the toll'),
            ('D', 'Is the payment for the small merchants on the UPI with the tap on the QR')
           ) as v(label, option_text)
 where q.question_hash = '3f08ac09837433453bcf647b4d21125e'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'The Account Aggregator, the Merchants and the Payments and the Securities Depositories are:',
    'The India stack of the digital public infrastructure is built on the four pillars of the Aadhaar, the UPI, the Account Aggregator and the Merchants and the Payments and the Securities Depositories.',
    'hard',
    'Standard Reference',
    null,
    'c2044e08d901a63fe1f022d43617eb95'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'c2044e08d901a63fe1f022d43617eb95'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the IT Act'),
            ('B', 'the four financial DPI of the India'),
            ('C', 'only the Aadhaar'),
            ('D', 'only the UPI')
           ) as v(label, option_text)
 where q.question_hash = 'c2044e08d901a63fe1f022d43617eb95'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'The ''post-quantum cryptography'' is:',
    'The post-quantum cryptography is the cryptography that is designed to be secure against the attacks by both the classical and the quantum computers, and the NIST has standardised the first algorithms.',
    'hard',
    'Standard Reference',
    null,
    '87ee43cfc8d95faf11687c1a7dc84212'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '87ee43cfc8d95faf11687c1a7dc84212'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The cryptography that is secure against the quantum computer attacks'),
            ('B', 'The cryptography of the quantum data'),
            ('C', 'The cryptography of the space data'),
            ('D', 'A type of the encryption for the quantum teleportation')
           ) as v(label, option_text)
 where q.question_hash = '87ee43cfc8d95faf11687c1a7dc84212'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'The ''e-waste'' rules of 2022:',
    'The E-Waste (Management) Rules, 2022 came into force in April 2023 and they extended the producer responsibility for the electronic equipment and introduced the registration of the producers and the centralised collection facilities.',
    'hard',
    'Standard Reference',
    2022,
    '116f0adc2ec069fa4b3f836f43a7b7a3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '116f0adc2ec069fa4b3f836f43a7b7a3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Are the rules of the plastic waste'),
            ('B', 'Are the rules of the batteries only'),
            ('C', 'Are the Extended Producer Responsibility rules for the electrical and the electronic equipment'),
            ('D', 'Are the rules of the solid waste')
           ) as v(label, option_text)
 where q.question_hash = '116f0adc2ec069fa4b3f836f43a7b7a3'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'Consider the following statements. Which of them is correct with regard to the satellite?',
    'The 5G uses the low earth orbit satellite constellations for the coverage of the remote areas and for the direct-to-device connectivity.',
    'hard',
    'Standard Reference',
    null,
    'a003e51dbcc097877921cb2e15c0d263'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a003e51dbcc097877921cb2e15c0d263'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The 5G requires the geostationary satellites only'),
            ('B', 'The 5G has no satellite component'),
            ('C', 'The 5G is the terrestrial radio only'),
            ('D', 'The 5G requires the dense constellation of the low earth orbit satellites')
           ) as v(label, option_text)
 where q.question_hash = 'a003e51dbcc097877921cb2e15c0d263'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'A deepfake is a synthetic media created:',
    'A deepfake is the synthetic media, the video or the audio, created with the AI and the deep learning, and it is a growing threat to the electoral integrity.',
    'medium',
    'Standard Reference',
    null,
    '2e78bfc1313001e89a3b76c23173723f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '2e78bfc1313001e89a3b76c23173723f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'with the AI and the deep learning'),
            ('B', 'a physical forgery of the currency'),
            ('C', 'a type of the firewall breach'),
            ('D', 'a hardware clone')
           ) as v(label, option_text)
 where q.question_hash = '2e78bfc1313001e89a3b76c23173723f'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'The ''cryptojacking'' is:',
    'The cryptojacking is the unauthorised use of the computers and the servers of the others to mine the cryptocurrency, and it is a form of the cyber crime.',
    'hard',
    'Standard Reference',
    null,
    'f1c3051cf227f850a3d283f239a9bb14'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f1c3051cf227f850a3d283f239a9bb14'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The phishing attack'),
            ('B', 'The unauthorised use of the computing resources of the others to mine the cryptocurrency'),
            ('C', 'The theft of the wallets'),
            ('D', 'The ransomware attack')
           ) as v(label, option_text)
 where q.question_hash = 'f1c3051cf227f850a3d283f239a9bb14'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'The India Digital Cyber Security Review was:',
    'The India Digital Cyber Security Review of 2016 was the first study of the digital security of the nation and it was undertaken with the Data Security and Privacy Framework.',
    'hard',
    'Standard Reference',
    2016,
    'e3a6d162c5a740b08ddf9cd8913de508'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e3a6d162c5a740b08ddf9cd8913de508'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a survey of the banking sector'),
            ('B', 'a survey of the nuclear plants'),
            ('C', 'undertaken by the Data Security and Privacy Framework'),
            ('D', 'a survey of the mobile phones')
           ) as v(label, option_text)
 where q.question_hash = 'e3a6d162c5a740b08ddf9cd8913de508'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'Which of the following statements regarding the ISRO is correct?',
    'The NavIC has been adopted for the navigation in the fisheries and the deep sea vessels, the surveying, the drone and the vehicle tracking and the timing of the financial sectors.',
    'medium',
    'Standard Reference',
    null,
    '375a9855105983cb199e58a0e26b779f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '375a9855105983cb199e58a0e26b779f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The NavIC is a communication system'),
            ('B', 'The NavIC is a weather system'),
            ('C', 'The NavIC is used in the fisheries, the surveying and the drone navigation'),
            ('D', 'The NavIC is used only for the defence')
           ) as v(label, option_text)
 where q.question_hash = '375a9855105983cb199e58a0e26b779f'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'Which of the following statements is/are correct in relation to the Digital Krishi?',
    'The Digital Krishi, launched in 2017, is the digital platform that connects the farmers to the buyers and the agriculture inputs and it is operated by the eNAM.',
    'hard',
    'Standard Reference',
    2017,
    'f00658d001b8d0716e998baa7796248c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f00658d001b8d0716e998baa7796248c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Digital Krishi is the digital platform of the agriculture that links the farmers to the buyers'),
            ('B', 'It is the digital payments for the agriculture'),
            ('C', 'It is a satellite of the agriculture'),
            ('D', 'It is a crop insurance portal')
           ) as v(label, option_text)
 where q.question_hash = 'f00658d001b8d0716e998baa7796248c'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'Which of the following statements regarding the Sanchar is correct?',
    'The Sanchar, the e-auction and the Sanchar portal, was launched in 2022 by the Department of Telecommunications to bring the transparency in the spectrum auctions.',
    'hard',
    'Standard Reference',
    2022,
    '4f6392fbe1ca0166125e9f23d1774077'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '4f6392fbe1ca0166125e9f23d1774077'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a spectrum auction itself'),
            ('B', 'The Sanchar is the portal of the telecom department for the spectrum and the services'),
            ('C', 'It is a satellite navigation system'),
            ('D', 'It is a payment system')
           ) as v(label, option_text)
 where q.question_hash = '4f6392fbe1ca0166125e9f23d1774077'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'The Aadhaar Act was:',
    'The Aadhaar Amendment Act of 2019 allowed the private sector entities to use the Aadhaar authentication and it also made the UIDAI a statutory body.',
    'hard',
    'Standard Reference',
    2019,
    '3e661ca8a23ab81a7198602e0b0bbcb2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '3e661ca8a23ab81a7198602e0b0bbcb2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'amended to abolish the UIDAI'),
            ('B', 'amended to make the Aadhaar voluntary for the banks'),
            ('C', 'amended in 2005'),
            ('D', 'amended in 2019 to allow the private sector use of the Aadhaar authentication')
           ) as v(label, option_text)
 where q.question_hash = '3e661ca8a23ab81a7198602e0b0bbcb2'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'The e-SIM is the embedded SIM that can be:',
    'The e-SIM, the embedded SIM, can be reprogrammed to switch between the operators and it was made available in India in 2021.',
    'medium',
    'Standard Reference',
    2021,
    'cc309e994bcbbd809f2e072378a15762'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'cc309e994bcbbd809f2e072378a15762'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a physical card'),
            ('B', 'the 5G band'),
            ('C', 'the digital wallet'),
            ('D', 'reprogrammed for the multiple operators')
           ) as v(label, option_text)
 where q.question_hash = 'cc309e994bcbbd809f2e072378a15762'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'In the context of the Quantum Communication, which of the following is correct?',
    'India has been working on the quantum communication and the quantum computing and the Ministry of Communications launched the quantum communication technology development programme.',
    'hard',
    'Standard Reference',
    null,
    '2f36908903cb8dea99cd05214a7b676d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '2f36908903cb8dea99cd05214a7b676d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Quantum communication is banned'),
            ('B', 'India had the optical fibre and the quantum communication technology for the secure communication'),
            ('C', 'There is no quantum communication in India'),
            ('D', 'India has the only quantum computer')
           ) as v(label, option_text)
 where q.question_hash = '2f36908903cb8dea99cd05214a7b676d'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'The AI in the agriculture is:',
    'The AI is used in the crop monitoring and the yield prediction, the disease detection, the soil analysis and the multilingual advisory services to the farmers.',
    'medium',
    'Standard Reference',
    null,
    '0d876c95b8c17d6ebdc83e902a91565d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '0d876c95b8c17d6ebdc83e902a91565d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'used for the crop monitoring, the yield prediction and the advisory to the farmers'),
            ('B', 'only for the autonomous cars'),
            ('C', 'only for the drug discovery'),
            ('D', 'banned in the farms')
           ) as v(label, option_text)
 where q.question_hash = '0d876c95b8c17d6ebdc83e902a91565d'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'The blockchain is:',
    'The blockchain enables the traceability of the agriculture produce, the certification of the organic and the quality assurance and the direct benefit transfer to the farmers.',
    'hard',
    'Standard Reference',
    null,
    'ca5ca0258a38ffdf87ce409949d76b36'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'ca5ca0258a38ffdf87ce409949d76b36'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a type of the sensor'),
            ('B', 'banned'),
            ('C', 'used in the traceability of the food and the agriculture produce'),
            ('D', 'only for the cryptocurrency')
           ) as v(label, option_text)
 where q.question_hash = 'ca5ca0258a38ffdf87ce409949d76b36'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'The India Semiconductor Mission covers:',
    'The India Semiconductor Mission covers the fabs, the display fabs, the design and the packaging, with the fiscal support of about Rs. 76,000 crore.',
    'hard',
    'Standard Reference',
    null,
    '34c7a9c2970756b550ed42be9d467e78'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '34c7a9c2970756b550ed42be9d467e78'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'limited to the packaging'),
            ('B', 'the display fabs as well'),
            ('C', 'only the logic chips'),
            ('D', 'only the memory')
           ) as v(label, option_text)
 where q.question_hash = '34c7a9c2970756b550ed42be9d467e78'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'The first display fab unit in India was:',
    'The first display fab unit of India was approved in 2022 for the Sanand in the Gujarat with the support of the Micron and the Tata-Panel display fab.',
    'hard',
    'Standard Reference',
    2022,
    'c0ebe3652e503a8be49ab8b58ef28617'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'c0ebe3652e503a8be49ab8b58ef28617'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'approved for the Sanand in the Gujarat in 2022'),
            ('B', 'approved in 2010'),
            ('C', 'approved in 2020'),
            ('D', 'no such unit')
           ) as v(label, option_text)
 where q.question_hash = 'c0ebe3652e503a8be49ab8b58ef28617'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'The PM E-DRIVE scheme of 2022 was:',
    'The PM E-DRIVE, the Electric Mobility Transformation Scheme, was approved in September 2022 with a subsidy of about Rs. 10,900 crore for the electric vehicles and the charging infrastructure.',
    'medium',
    'Standard Reference',
    2022,
    '7e9a249bb19935b194e1624304ccd419'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '7e9a249bb19935b194e1624304ccd419'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the metro rail project'),
            ('B', 'a state scheme of the Kerala'),
            ('C', 'the electric mobility transformation with the subsidy of about Rs. 10,900 crore'),
            ('D', 'the LPG subsidy')
           ) as v(label, option_text)
 where q.question_hash = '7e9a249bb19935b194e1624304ccd419'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'Which of the following is correct in the case of the Tata?',
    'Tata Motors is the largest electric vehicle manufacturer in India and the Nexon EV has been among the best selling electric cars, with the Tata Unacademy and the Tira 4 the recent launches.',
    'medium',
    'Standard Reference',
    null,
    '0aabd07cfda4999f47d9ac4a7b912848'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '0aabd07cfda4999f47d9ac4a7b912848'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Tata Motors has no electric vehicles'),
            ('B', 'Tata is a steel company only'),
            ('C', 'Tata exited the EV business'),
            ('D', 'Tata Motors is the largest electric vehicle manufacturer in India and the Tata Nexon EV is among the best selling')
           ) as v(label, option_text)
 where q.question_hash = '0aabd07cfda4999f47d9ac4a7b912848'
on conflict (question_id, label) do nothing;

-- science_tech | space | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'The four astronauts of the Gaganyaan were:',
    'The four astronauts of the Gaganyaan were selected in 2022 and their training in the human spaceflight centre at Bengaluru began in 2023.',
    'hard',
    'Standard Reference',
    2022,
    '5667d125e609f9052dcf4e3474c2b669'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '5667d125e609f9052dcf4e3474c2b669'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'selected in 2022 and the training began in 2023'),
            ('B', 'selected in 2019'),
            ('C', 'the first mission in 2015'),
            ('D', 'a robotic mission')
           ) as v(label, option_text)
 where q.question_hash = '5667d125e609f9052dcf4e3474c2b669'
on conflict (question_id, label) do nothing;

-- science_tech | space | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'The Axiom-4 mission of the ISRO sent:',
    'The Axiom-4 mission, launched in 2025, carried the Indian astronaut Shubhanshu Shukla to the International Space Station and it was the first Indian in space since 1984.',
    'hard',
    'Standard Reference',
    null,
    'b9005eee922ef997c8df3bace0793e07'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b9005eee922ef997c8df3bace0793e07'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a test in 2023'),
            ('B', 'the Indian astronaut Shubhanshu Shukla to the International Space Station in 2025'),
            ('C', 'the Chandrayaan-3'),
            ('D', 'the Aditya-L1')
           ) as v(label, option_text)
 where q.question_hash = 'b9005eee922ef997c8df3bace0793e07'
on conflict (question_id, label) do nothing;

-- science_tech | space | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'The ''Venus Orbiter Mission'' (Shukrayaan) of India:',
    'The Shukrayaan, the Venus Orbiter Mission, was approved in 2019 and is planned for 2024 or beyond, and it would be the first Indian mission to Venus.',
    'medium',
    'Standard Reference',
    null,
    '10a236d6ebfeb58f0540f9c37003ea30'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '10a236d6ebfeb58f0540f9c37003ea30'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is the lunar mission'),
            ('B', 'It was cancelled in 2020'),
            ('C', 'Is planned for 2024 or beyond as the first Indian mission to Venus'),
            ('D', 'Was launched in 2019')
           ) as v(label, option_text)
 where q.question_hash = '10a236d6ebfeb58f0540f9c37003ea30'
on conflict (question_id, label) do nothing;

-- science_tech | space | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'The uncrewed test flight of the Gaganyaan was:',
    'The uncrewed test flight of the Gaganyaan was carried out in 2024 and the human mission is to follow.',
    'medium',
    'Standard Reference',
    2024,
    '57778bc95a5069c9902c76cb39d9e73f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '57778bc95a5069c9902c76cb39d9e73f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'in 2019'),
            ('B', 'in 2022'),
            ('C', 'yet to be flown'),
            ('D', 'carried out in 2024')
           ) as v(label, option_text)
 where q.question_hash = '57778bc95a5069c9902c76cb39d9e73f'
on conflict (question_id, label) do nothing;

-- science_tech | space | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'The Next Generation Launch Vehicle is:',
    'The NGLV, the Next Generation Launch Vehicle, is the indigenous human rated launch vehicle of India that will be used for the Gaganyaan.',
    'hard',
    'Standard Reference',
    null,
    '7bf3df11237d01bbfcf1758027c28492'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '7bf3df11237d01bbfcf1758027c28492'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the indigenous human rated launch vehicle of India'),
            ('B', 'a cryogenic test vehicle'),
            ('C', 'a reusable satellite'),
            ('D', 'the PSLV Mk III')
           ) as v(label, option_text)
 where q.question_hash = '7bf3df11237d01bbfcf1758027c28492'
on conflict (question_id, label) do nothing;

-- science_tech | space | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'In the context of the SSLV, which of the following is correct?',
    'The Small Satellite Launch Vehicle was developed to serve the commercial and the private space operators of India, with the aim of the cost-effective access to the space.',
    'hard',
    'Standard Reference',
    null,
    '9120e0d16b40a19b1b67582eabcf0b16'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '9120e0d16b40a19b1b67582eabcf0b16'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is the launch vehicle of the Chandrayaan'),
            ('B', 'The SSLV is a small satellite launch vehicle for the private space operators of India'),
            ('C', 'It is a crewed vehicle'),
            ('D', 'It is the human rated vehicle')
           ) as v(label, option_text)
 where q.question_hash = '9120e0d16b40a19b1b67582eabcf0b16'
on conflict (question_id, label) do nothing;

-- science_tech | space | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'The PM Surya Ghar and the solar parks are:',
    'The rooftop solar of the PM Surya Ghar and the large solar parks are the steps towards the 500 GW of the non-fossil capacity by 2030.',
    'medium',
    'Standard Reference',
    null,
    '6912fecbc87bd2f6a88b66e0d9a87889'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '6912fecbc87bd2f6a88b66e0d9a87889'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a state scheme'),
            ('B', 'a nuclear project'),
            ('C', 'a thermal power project'),
            ('D', 'the steps to the 500 GW target')
           ) as v(label, option_text)
 where q.question_hash = '6912fecbc87bd2f6a88b66e0d9a87889'
on conflict (question_id, label) do nothing;

-- science_tech | space | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'The ISRO has completed over 100 launches and over 220 satellites launched:',
    'The ISRO has completed more than 100 launches and has launched over 220 satellites for 22 countries and it is the largest space agency of the developing world.',
    'medium',
    'Standard Reference',
    null,
    'a57afee0d227b5c056724763bbcca307'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'a57afee0d227b5c056724763bbcca307'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'only the Indian satellites'),
            ('B', 'no commercial launches'),
            ('C', 'for 22 countries'),
            ('D', '10 launches')
           ) as v(label, option_text)
 where q.question_hash = 'a57afee0d227b5c056724763bbcca307'
on conflict (question_id, label) do nothing;

-- science_tech | space | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'Consider the following statements. Which of them is correct with regard to the RISAT?',
    'The RISAT-2BR, launched in 2022, is the first synthetic aperture radar satellite of India and it is used for the disaster management and the agriculture.',
    'medium',
    'Standard Reference',
    2022,
    '8db615bee313ff294e446c4adb4f6d64'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '8db615bee313ff294e446c4adb4f6d64'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'RISAT is a weather satellite'),
            ('B', 'RISAT-2BR is the first synthetic aperture radar satellite of India for the disaster management'),
            ('C', 'RISAT is a communication satellite'),
            ('D', 'RISAT is a navigation satellite')
           ) as v(label, option_text)
 where q.question_hash = '8db615bee313ff294e446c4adb4f6d64'
on conflict (question_id, label) do nothing;

-- science_tech | space | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'GSAT-18 is the communication satellite of India launched:',
    'The GSAT-18, launched in 2018, is the communication satellite of India with the transponders for the communication, the broadcasting and the data services.',
    'medium',
    'Standard Reference',
    2018,
    '90857d20b58987f9e1ab1a80a3d347ec'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '90857d20b58987f9e1ab1a80a3d347ec'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'in 2018'),
            ('B', 'a navigation satellite'),
            ('C', 'a weather satellite'),
            ('D', 'a lunar probe')
           ) as v(label, option_text)
 where q.question_hash = '90857d20b58987f9e1ab1a80a3d347ec'
on conflict (question_id, label) do nothing;

-- science_tech | space | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'The commemorative coins of the 75 years of the independence were:',
    'The Azadi Ka Amrit Mahotsav marked the 75 years of the independence with the commemorative coins and the stamps of the Indian Heritage series in 2022.',
    'medium',
    'Standard Reference',
    2022,
    '0c056bdb249df6c5f51340c0f654ea08'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '0c056bdb249df6c5f51340c0f654ea08'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'released in 2015'),
            ('B', 'released in 1999'),
            ('C', 'never released'),
            ('D', 'released in 2022')
           ) as v(label, option_text)
 where q.question_hash = '0c056bdb249df6c5f51340c0f654ea08'
on conflict (question_id, label) do nothing;

-- science_tech | space | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'The Suryanayana was:',
    'The Suryanayana, the CE-20, was the first indigenous cryogenic upper stage and it was used in the GSLV Mk III of 2014.',
    'hard',
    'Standard Reference',
    null,
    'f5139e13e07591ea7d08fee9a1d1f694'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'f5139e13e07591ea7d08fee9a1d1f694'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a solid propellant booster'),
            ('B', 'a nuclear engine'),
            ('C', 'the first indigenous cryogenic upper stage engine of India'),
            ('D', 'a liquid propellant engine')
           ) as v(label, option_text)
 where q.question_hash = 'f5139e13e07591ea7d08fee9a1d1f694'
on conflict (question_id, label) do nothing;

-- science_tech | space | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'Which of the following statements regarding the PSLV-C35 is correct?',
    'The PSLV-C35 of 2014 was the first launch of the PSLV with the cryogenic upper stage and it carried the Mars Orbiter Mission.',
    'hard',
    'Standard Reference',
    2014,
    'b8ecb73241c535cb35e94f8c49888e66'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'b8ecb73241c535cb35e94f8c49888e66'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It was the first manned flight'),
            ('B', 'It was the first private launch'),
            ('C', 'It was the first launch of the PSLV with the cryogenic upper stage'),
            ('D', 'It was the first Mars mission')
           ) as v(label, option_text)
 where q.question_hash = 'b8ecb73241c535cb35e94f8c49888e66'
on conflict (question_id, label) do nothing;

-- science_tech | space | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'The Chandrayaan-1 was:',
    'The Chandrayaan-1 was launched on 22 October 2008 and it had the payloads of the M3 and the MIM and the Mineralogy Mapper and the terrain camera.',
    'medium',
    'Standard Reference',
    2008,
    '89103b4ce6685dedaf22b5ed627b22dc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '89103b4ce6685dedaf22b5ed627b22dc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'launched on 22 October 2008'),
            ('B', 'launched in 2005'),
            ('C', 'launched in 2013'),
            ('D', 'launched in 2019')
           ) as v(label, option_text)
 where q.question_hash = '89103b4ce6685dedaf22b5ed627b22dc'
on conflict (question_id, label) do nothing;

-- science_tech | space | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'The Mangalyaan was:',
    'The Mangalyaan was launched on 5 November 2013 on the PSLV-C25 and it entered the Mars orbit on 24 September 2014.',
    'medium',
    'Standard Reference',
    2013,
    'cfcfd9e5ccda187409320ad864ce70f2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'cfcfd9e5ccda187409320ad864ce70f2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'launched on 24 September 2014'),
            ('B', 'launched on 1 July 2013'),
            ('C', 'launched in 2015'),
            ('D', 'launched on 5 November 2013')
           ) as v(label, option_text)
 where q.question_hash = 'cfcfd9e5ccda187409320ad864ce70f2'
on conflict (question_id, label) do nothing;

-- science_tech | space | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'The ''Indian Institute of Space Science and Technology'' is at:',
    'The Indian Institute of Space Science and Technology is at Thiruvananthapuram and it was formerly the Space Technology and the Aeronautical Engineering of the VSSC.',
    'hard',
    'Standard Reference',
    null,
    '89d1bc787eb008589dfe0dfeeba80e35'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '89d1bc787eb008589dfe0dfeeba80e35'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ahmedabad'),
            ('B', 'Thiruvananthapuram'),
            ('C', 'Bengaluru'),
            ('D', 'Hyderabad')
           ) as v(label, option_text)
 where q.question_hash = '89d1bc787eb008589dfe0dfeeba80e35'
on conflict (question_id, label) do nothing;

-- science_tech | space | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'Consider the following statements. Which of them is correct with regard to the National Remote Sensing Centre?',
    'The NRSC operates the earth observation and the atmospheric science satellites and it provides the data to the users in the country.',
    'hard',
    'Standard Reference',
    null,
    '71ca95d2d300f1a9618547eb1174a325'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '71ca95d2d300f1a9618547eb1174a325'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It operates the navigation satellites'),
            ('B', 'It is a private body'),
            ('C', 'The NRSC operates the earth observation and the atmospheric science satellites'),
            ('D', 'It operates the communication satellites')
           ) as v(label, option_text)
 where q.question_hash = '71ca95d2d300f1a9618547eb1174a325'
on conflict (question_id, label) do nothing;

-- science_tech | space | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'In the context of the INSAT, which of the following is correct?',
    'The INSAT series of the geostationary satellites serves the communication, the broadcasting and the meteorological purposes, and the INSAT-3D and the INSAT-3DR are the recent weather satellites.',
    'medium',
    'Standard Reference',
    null,
    '4ffb29586cdb6c9e9f9e4d932d6404dd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '4ffb29586cdb6c9e9f9e4d932d6404dd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It serves only the communication'),
            ('B', 'It serves only the navigation'),
            ('C', 'It serves only the remote sensing'),
            ('D', 'The INSAT series serves the communication, the broadcasting and the meteorology')
           ) as v(label, option_text)
 where q.question_hash = '4ffb29586cdb6c9e9f9e4d932d6404dd'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'The first Indian made computer, the Nandi was:',
    'The Nandi, the first Indian made computer, was developed at the Tata Institute of Fundamental Research in 1958 and it was based on the transistor technology.',
    'medium',
    'Standard Reference',
    null,
    'a0da115edd45ed5c9d7e616a4643f8f1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a0da115edd45ed5c9d7e616a4643f8f1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the first transistor computer'),
            ('B', 'developed at the TIFR in 1958'),
            ('C', 'developed in 1975'),
            ('D', 'developed at the BARC')
           ) as v(label, option_text)
 where q.question_hash = 'a0da115edd45ed5c9d7e616a4643f8f1'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'The TDC-12 was the second indigenous computer of India developed:',
    'The TDC-12, the second indigenous computer, was developed at the TIFR in 1970 and the PARAM series followed in the 1990s.',
    'hard',
    'Standard Reference',
    null,
    'f8e818cd5cc3a12eae900a8c9a9a776b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f8e818cd5cc3a12eae900a8c9a9a776b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'at the TIFR'),
            ('B', 'at the IIT Kanpur'),
            ('C', 'a supercomputer'),
            ('D', 'a main frame of the BARC')
           ) as v(label, option_text)
 where q.question_hash = 'f8e818cd5cc3a12eae900a8c9a9a776b'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'The ''ECIL'' is:',
    'The Electronics Corporation of India Limited, under the MeitY, was set up in 1967 and it develops the computers, the communication systems and the electronic components.',
    'medium',
    'Standard Reference',
    null,
    'a957f23ac2eb18db68d0b92111a809a6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a957f23ac2eb18db68d0b92111a809a6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A private electronics company'),
            ('B', 'A research laboratory of the ISRO'),
            ('C', 'A university'),
            ('D', 'The Electronics Corporation of India Limited, a public sector unit under the MeitY')
           ) as v(label, option_text)
 where q.question_hash = 'a957f23ac2eb18db68d0b92111a809a6'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'Consider the following statements. Which of them is correct with regard to the Centre for Development of Advanced Computing?',
    'The C-DAC was set up in 1988 at Pune as a DAE institution and it developed the PARAM series of the supercomputers and the language technologies.',
    'medium',
    'Standard Reference',
    null,
    'c33841491d576cc8fb602e1ac94ef984'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c33841491d576cc8fb602e1ac94ef984'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It was set up in 1988 at Bengaluru'),
            ('B', 'It was set up in 1998 at Kolkata'),
            ('C', 'The C-DAC was set up in 1988 at Pune'),
            ('D', 'It was set up in 1978 at Pune')
           ) as v(label, option_text)
 where q.question_hash = 'c33841491d576cc8fb602e1ac94ef984'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'The PARAM K-Yuga is:',
    'The PARAM K-Yuga, a 1.5 petaflop system built by the C-DAC, was installed at the National Supercomputing Centre in Bengaluru and it was dedicated in 2022.',
    'hard',
    'Standard Reference',
    null,
    '2e296ef4f4bbd2618724e5e71da00362'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '2e296ef4f4bbd2618724e5e71da00362'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a missile'),
            ('B', 'a 1.5 petaflop supercomputer built by the CDAC'),
            ('C', 'a satellite'),
            ('D', 'a nuclear reactor')
           ) as v(label, option_text)
 where q.question_hash = '2e296ef4f4bbd2618724e5e71da00362'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'Which of the following is correct in the case of the SWAYAM national portal?',
    'SWAYAM, the Study Webs of Active-Learning for Young Aspiring Minds, is the national portal of the free online courses and it is run by the Ministry of Education with the NPTEL and the IITs.',
    'easy',
    'Standard Reference',
    null,
    'ace9245ed7b8cc7ae7346543f8d26559'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ace9245ed7b8cc7ae7346543f8d26559'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'SWAYAM is the national portal of the MOOCs and the courses of the Indian universities'),
            ('B', 'SWAYAM is a satellite navigation system'),
            ('C', 'SWAYAM is a payment platform'),
            ('D', 'SWAYAM is a defence project')
           ) as v(label, option_text)
 where q.question_hash = 'ace9245ed7b8cc7ae7346543f8d26559'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'Which of the following statements regarding the e-Shodh is correct?',
    'The e-Shodh policy of 2011 was a national commitment to the open access to the education and the research publications and it was later subsumed in the One Nation One Subscription Access.',
    'medium',
    'Standard Reference',
    null,
    '9145a90a41f5b96936f00d281cb6ef16'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '9145a90a41f5b96936f00d281cb6ef16'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a scheme of the school infrastructure'),
            ('B', 'It is a scheme of the university ranking'),
            ('C', 'The e-Shodh is the policy of the open access to the education and the research publications of India'),
            ('D', 'It is a scheme of the digital payments')
           ) as v(label, option_text)
 where q.question_hash = '9145a90a41f5b96936f00d281cb6ef16'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'one nation one subscription is:',
    'The One Nation One Subscription Access was launched in 2017 to provide the access to the over 12,000 research journals and the periodicals subscribed by the Indian libraries and the universities.',
    'medium',
    'Standard Reference',
    2017,
    '7b743cf5bb2a988410e9d67239a5c05c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '7b743cf5bb2a988410e9d67239a5c05c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a scheme of the journals'),
            ('B', 'a scheme of the libraries for the schools'),
            ('C', 'a scheme of the textbooks'),
            ('D', 'the initiative of the government for the access to the research publications of the Indian universities')
           ) as v(label, option_text)
 where q.question_hash = '7b743cf5bb2a988410e9d67239a5c05c'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'Consider the following statements. Which of them is correct with regard to the mission MeitY?',
    'The Bhashini mission, launched in 2022 by the MeitY, aims at the creation of the digital public infrastructure for the Indian languages and the translation with the AI assistance.',
    'hard',
    'Standard Reference',
    2022,
    '4f093ba168940aca387688d80253983e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '4f093ba168940aca387688d80253983e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a mission of the DRDO'),
            ('B', 'It is the mission of the MeitY for the translation of the Indian languages with the AI assistance'),
            ('C', 'It is a mission of the education ministry'),
            ('D', 'It is a mission of the ISRO')
           ) as v(label, option_text)
 where q.question_hash = '4f093ba168940aca387688d80253983e'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'Which of the following statements is/are correct in relation to the IndiaAI?',
    'The IndiaAI Mission, approved in March 2024 with a fiscal outlay of about Rs. 10,372 crore, is the umbrella programme of the AI ecosystem with the compute, the datasets, the applications and the innovation.',
    'medium',
    'Standard Reference',
    2024,
    '99823428ed58cc01d8dae3e6a295f313'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '99823428ed58cc01d8dae3e6a295f313'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is the umbrella programme of the MeitY for the artificial intelligence with the compute and the datasets and the innovation'),
            ('B', 'It is a scheme of the education'),
            ('C', 'It is a scheme of the defence'),
            ('D', 'It is a scheme of the space')
           ) as v(label, option_text)
 where q.question_hash = '99823428ed58cc01d8dae3e6a295f313'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'The C-DAC developed:',
    'The C-DAC developed the multilingual and the speech technologies, the Jeevan and the Dakshin for the speech recognition and the translation, the study of the Indian languages and the accessibility tools.',
    'hard',
    'Standard Reference',
    null,
    'f81c3d06a0bfc99b78faaae4a99761e9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'f81c3d06a0bfc99b78faaae4a99761e9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the rockets'),
            ('B', 'the telescopes'),
            ('C', 'the multilingual and the speech technologies and the Jeevan and the Dakshin tools'),
            ('D', 'the PARAM only')
           ) as v(label, option_text)
 where q.question_hash = 'f81c3d06a0bfc99b78faaae4a99761e9'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'Swayam Prakasha is:',
    'The Swayam Prakasha, the National Credit Framework and the National Rating Framework, is the framework of the National Education Policy for the higher education with the quality assurance, the credit mobility and the grading.',
    'hard',
    'Standard Reference',
    null,
    '57ada161104361ed680114be1244ad73'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '57ada161104361ed680114be1244ad73'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a scheme of the school education'),
            ('B', 'a scheme of the skill development'),
            ('C', 'a scheme of the digital literacy'),
            ('D', 'the framework of the National Education Policy for the higher education with the rating and the accreditation')
           ) as v(label, option_text)
 where q.question_hash = '57ada161104361ed680114be1244ad73'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'A multicore processor has:',
    'A multicore processor integrates more than one processing unit in a single chip and it improves the performance and the energy efficiency of the parallel workloads.',
    'medium',
    'Standard Reference',
    null,
    'bd7dce27335328cd82a3f15ab9ff9cad'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'bd7dce27335328cd82a3f15ab9ff9cad'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'more than one processing unit in a single chip'),
            ('B', 'a processor with the multiple chips'),
            ('C', 'a server with the multiple CPUs'),
            ('D', 'a GPU')
           ) as v(label, option_text)
 where q.question_hash = 'bd7dce27335328cd82a3f15ab9ff9cad'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'Which of the following statements is/are correct in relation to the quantum computing?',
    'A qubit can be in a superposition of the 0 and the 1 states, and the entanglement of the qubits is the resource that gives the quantum computers their advantage.',
    'medium',
    'Standard Reference',
    null,
    '000da8dfc8d2703f57fcb05ca7f062f1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '000da8dfc8d2703f57fcb05ca7f062f1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A qubit is a transistor'),
            ('B', 'A qubit can be in a superposition of the 0 and the 1 states'),
            ('C', 'A qubit is a classical bit'),
            ('D', 'A qubit is a byte')
           ) as v(label, option_text)
 where q.question_hash = '000da8dfc8d2703f57fcb05ca7f062f1'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'The Micron and the Tata-Panel and the CG Power-Renesas units were:',
    'The Micron, the Tata-Panel and the CG Power-Renesas semiconductor units were approved in 2022 under the India Semiconductor Mission, with the Micron and the Tata units in Sanand in the Gujarat.',
    'hard',
    'Standard Reference',
    2022,
    '12a80e157d1f90e31b27303366886201'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '12a80e157d1f90e31b27303366886201'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'no fabs'),
            ('B', 'approved in 2022'),
            ('C', 'approved in 1991'),
            ('D', 'approved in 2010')
           ) as v(label, option_text)
 where q.question_hash = '12a80e157d1f90e31b27303366886201'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'The definition of the open source was revised in 2021 to include:',
    'The OSI revised the definition of the open source in 2021 to include the open source hardware and it has been the first time the definition was changed since 1998.',
    'hard',
    'Standard Reference',
    2021,
    '8dc2815307f82e897ec96f937f47ea7b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '8dc2815307f82e897ec96f937f47ea7b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'revised in 2015'),
            ('B', 'no revision'),
            ('C', 'the open source hardware'),
            ('D', 'revised in 1998')
           ) as v(label, option_text)
 where q.question_hash = '8dc2815307f82e897ec96f937f47ea7b'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'The tesseract is a four-dimensional hypercube used:',
    'The tesseract, the four-dimensional analogue of the cube, is used in the popular explanations of the additional dimensions of the string theory and the quantum computing.',
    'hard',
    'Standard Reference',
    null,
    '4ff9eb99a2cc0ad4f82a9ca7cb3777f1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '4ff9eb99a2cc0ad4f82a9ca7cb3777f1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a quantum satellite'),
            ('B', 'a type of the processor'),
            ('C', 'a cryptographic algorithm'),
            ('D', 'as a model in the quantum computing')
           ) as v(label, option_text)
 where q.question_hash = '4ff9eb99a2cc0ad4f82a9ca7cb3777f1'
on conflict (question_id, label) do nothing;

-- science_tech | defence-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'defence-technology'),
    'Consider the following statements. Which of them is correct with regard to the DRDO?',
    'The DRDO has been at the forefront of the indigenous defence systems with the Akash, the BrahMos, the Astra and the new UAVs and the electronic warfare systems.',
    'medium',
    'Standard Reference',
    null,
    '5496f099e630c4742d88e0a2b7dbb33e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '5496f099e630c4742d88e0a2b7dbb33e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The DRDO developed the new UAVs and the systems and the Akash and the Astra and the new missiles'),
            ('B', 'The DRDO is a civil body'),
            ('C', 'The DRDO works on the agriculture'),
            ('D', 'The DRDO is under the Ministry of Finance')
           ) as v(label, option_text)
 where q.question_hash = '5496f099e630c4742d88e0a2b7dbb33e'
on conflict (question_id, label) do nothing;

commit;
