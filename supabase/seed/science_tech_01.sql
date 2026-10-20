-- =============================================================================
-- science_tech_01.sql — science_tech question pack, part 01
-- 250 questions. Applied after supabase/migrations/004_reference_data.sql
-- =============================================================================

begin;

-- science_tech | physics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'Newton''s second law of motion is most accurately stated as:',
    'The general form of Newton''s second law is F = dp/dt, and the form F = ma holds only for constant mass. The other options state the first and third laws of motion.',
    'medium',
    'NCERT Class XI',
    null,
    '08a7089ab8d0753c6a74403406b049c8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '08a7089ab8d0753c6a74403406b049c8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Force is always equal to mass multiplied by acceleration'),
            ('B', 'Every action has an equal and opposite reaction'),
            ('C', 'A body continues in its state of rest or uniform motion unless compelled by an external force'),
            ('D', 'The rate of change of momentum of a body is equal to the net external force acting on it')
           ) as v(label, option_text)
 where q.question_hash = '08a7089ab8d0753c6a74403406b049c8'
on conflict (question_id, label) do nothing;

-- science_tech | physics | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'The impulse of a force acting on a body is equal in magnitude and direction to:',
    'Impulse is the integral of force over time and equals the change in momentum (J = dp) by the impulse-momentum theorem, independent of how the force varies with time.',
    'easy',
    'NCERT Class XI',
    null,
    'bf2b426b85f26fc5dbcf910943661754'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'bf2b426b85f26fc5dbcf910943661754'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The kinetic energy gained by the body'),
            ('B', 'The work done by the force'),
            ('C', 'The change in momentum it produces'),
            ('D', 'The acceleration produced in the body')
           ) as v(label, option_text)
 where q.question_hash = 'bf2b426b85f26fc5dbcf910943661754'
on conflict (question_id, label) do nothing;

-- science_tech | physics | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'One mechanical horsepower is equal to approximately:',
    'One British mechanical horsepower is 745.7 W, conventionally rounded to 746 W. The metric horsepower used in Europe is about 735.5 W, which is a different unit.',
    'easy',
    'Standard Reference',
    null,
    'dd9fd822b0d33d278ddc1add15bb868d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'dd9fd822b0d33d278ddc1add15bb868d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '746 W'),
            ('B', '500 W'),
            ('C', '1000 W'),
            ('D', '735 W')
           ) as v(label, option_text)
 where q.question_hash = 'dd9fd822b0d33d278ddc1add15bb868d'
on conflict (question_id, label) do nothing;

-- science_tech | physics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'The escape velocity from the surface of the Moon is approximately:',
    'Escape velocity is proportional to the square root of (GM/R). The Moon has roughly one eighth the surface gravity of Earth and a much smaller radius, giving about 2.4 km/s compared with 11.2 km/s for Earth.',
    'medium',
    'Standard Reference',
    null,
    '845a438e098db3025fa03f9a3a1aabe2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '845a438e098db3025fa03f9a3a1aabe2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '11.2 km/s'),
            ('B', '2.4 km/s'),
            ('C', '5.6 km/s'),
            ('D', '3.2 km/s')
           ) as v(label, option_text)
 where q.question_hash = '845a438e098db3025fa03f9a3a1aabe2'
on conflict (question_id, label) do nothing;

-- science_tech | physics | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'The time period of a simple pendulum depends on:',
    'For small oscillations T = 2 pi sqrt(L/g), so the period depends only on the effective length and g, and is independent of mass, material and (to first order) amplitude.',
    'easy',
    'NCERT Class XI',
    null,
    'fe69ce551dcc66c776424382f6c36469'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'fe69ce551dcc66c776424382f6c36469'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The material of the bob'),
            ('B', 'The length of the pendulum and the acceleration due to gravity'),
            ('C', 'The amplitude of oscillation'),
            ('D', 'The mass of the bob')
           ) as v(label, option_text)
 where q.question_hash = 'fe69ce551dcc66c776424382f6c36469'
on conflict (question_id, label) do nothing;

-- science_tech | physics | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'A body weighs 12 N in air and 9 N when completely immersed in water. The upthrust acting on the body is:',
    'By Archimedes'' principle the upthrust equals the loss of apparent weight in the fluid, which here is 12 N - 9 N = 3 N.',
    'easy',
    'NCERT Class XI',
    null,
    '45b538fe37b3bb561ec3e337f605f4c6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '45b538fe37b3bb561ec3e337f605f4c6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '3 N'),
            ('B', '9 N'),
            ('C', '12 N'),
            ('D', '21 N')
           ) as v(label, option_text)
 where q.question_hash = '45b538fe37b3bb561ec3e337f605f4c6'
on conflict (question_id, label) do nothing;

-- science_tech | physics | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'Pascal''s law states that:',
    'Pascal''s law concerns the equal transmission of pressure throughout a confined fluid, which is the principle behind the hydraulic press. The other statements describe other hydraulic effects.',
    'easy',
    'NCERT Class XI',
    null,
    'c6823dc1232f494d63ffa6914c2d929b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'c6823dc1232f494d63ffa6914c2d929b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Liquids always flow from higher to lower pressure'),
            ('B', 'A liquid rises in a capillary tube'),
            ('C', 'The pressure in a liquid is equal in all directions at a given depth'),
            ('D', 'Pressure applied to a confined fluid is transmitted undiminished in all directions')
           ) as v(label, option_text)
 where q.question_hash = 'c6823dc1232f494d63ffa6914c2d929b'
on conflict (question_id, label) do nothing;

-- science_tech | physics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'According to Bernoulli''s theorem, for steady flow of an incompressible, non-viscous fluid:',
    'Bernoulli''s equation expresses the conservation of mechanical energy per unit volume: P + rho v^2/2 + rho gh is constant along a streamline.',
    'medium',
    'NCERT Class XI',
    null,
    '2c0e80d995c5331ec0920eeceed5ae61'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '2c0e80d995c5331ec0920eeceed5ae61'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Pressure increases linearly with depth in all fluids'),
            ('B', 'The energy of the fluid is lost due to viscosity'),
            ('C', 'Pressure plus kinetic plus potential energy per unit volume is constant along a streamline'),
            ('D', 'The speed of the fluid is constant everywhere in the pipe')
           ) as v(label, option_text)
 where q.question_hash = '2c0e80d995c5331ec0920eeceed5ae61'
on conflict (question_id, label) do nothing;

-- science_tech | physics | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'Absolute zero on the Celsius scale corresponds to:',
    'Absolute zero is 0 K, which equals minus 273.15 degrees Celsius. Minus 459.67 degrees is the equivalent Fahrenheit value, and 0 degrees Celsius is the freezing point of water.',
    'easy',
    'NCERT Class XI',
    null,
    '8cb0b258dbe45f60d8a8554093cbdd17'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '8cb0b258dbe45f60d8a8554093cbdd17'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '-100 degrees Celsius'),
            ('B', '-273.15 degrees Celsius'),
            ('C', '-459.67 degrees Celsius'),
            ('D', '0 degrees Celsius')
           ) as v(label, option_text)
 where q.question_hash = '8cb0b258dbe45f60d8a8554093cbdd17'
on conflict (question_id, label) do nothing;

-- science_tech | physics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'The zeroth law of thermodynamics is concerned with:',
    'The zeroth law establishes thermal equilibrium and thereby makes temperature a measurable property, allowing thermometers to be calibrated against each other.',
    'medium',
    'NCERT Class XI',
    null,
    '7ca8e01508d80ea89372523581a737d2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '7ca8e01508d80ea89372523581a737d2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The equivalence of temperature measurements'),
            ('B', 'The direction of spontaneous processes'),
            ('C', 'The entropy increase of an isolated system'),
            ('D', 'The equivalence of heat and work')
           ) as v(label, option_text)
 where q.question_hash = '7ca8e01508d80ea89372523581a737d2'
on conflict (question_id, label) do nothing;

-- science_tech | physics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'According to the second law of thermodynamics, for an isolated system:',
    'The second law states that the entropy of an isolated system never decreases, and increases for irreversible processes. The other options contradict the first law or the Clausius statement.',
    'medium',
    'NCERT Class XI',
    null,
    '2cec40d444a4b4d22e19ab7a720ee44d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '2cec40d444a4b4d22e19ab7a720ee44d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Temperature is always constant'),
            ('B', 'Heat always flows from colder to hotter bodies'),
            ('C', 'Energy can be created but not destroyed'),
            ('D', 'Entropy never decreases')
           ) as v(label, option_text)
 where q.question_hash = '2cec40d444a4b4d22e19ab7a720ee44d'
on conflict (question_id, label) do nothing;

-- science_tech | physics | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'Sound waves with frequencies above the audible range are called:',
    'Frequencies above about 20 kHz are ultrasonic and are used in medical sonography and industrial cleaning, while below 20 Hz they are called infrasonic.',
    'easy',
    'NCERT Class XI',
    null,
    '12b04cf79f1e5a7bf223b48e0d9514ed'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '12b04cf79f1e5a7bf223b48e0d9514ed'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Infrasonic waves'),
            ('B', 'Audible waves'),
            ('C', 'Ultrasonic waves'),
            ('D', 'Microwaves')
           ) as v(label, option_text)
 where q.question_hash = '12b04cf79f1e5a7bf223b48e0d9514ed'
on conflict (question_id, label) do nothing;

-- science_tech | physics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'The SI unit of Young''s modulus is the same as that of:',
    'Young''s modulus is longitudinal stress divided by longitudinal strain, so stress (force per area) gives it the unit of pressure, N m^-2 or pascal.',
    'medium',
    'NCERT Class XI',
    null,
    'e2971de7bf3de3d946c79c16cfa1efde'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e2971de7bf3de3d946c79c16cfa1efde'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Work'),
            ('B', 'Power'),
            ('C', 'Impulse'),
            ('D', 'Pressure')
           ) as v(label, option_text)
 where q.question_hash = 'e2971de7bf3de3d946c79c16cfa1efde'
on conflict (question_id, label) do nothing;

-- science_tech | physics | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'The critical angle for light passing from glass (refractive index 1.5) to air is approximately:',
    'The critical angle satisfies sin C = 1/n, so C = inverse sin(1/1.5) which is about 41.8 degrees. Beyond this angle total internal reflection occurs.',
    'hard',
    'NCERT Class XII',
    null,
    '0f2a2d7e32794ed170eabadecc79c653'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '0f2a2d7e32794ed170eabadecc79c653'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '48 degrees'),
            ('B', '42 degrees'),
            ('C', '30 degrees'),
            ('D', '60 degrees')
           ) as v(label, option_text)
 where q.question_hash = '0f2a2d7e32794ed170eabadecc79c653'
on conflict (question_id, label) do nothing;

-- science_tech | physics | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'The mirror used as a rear-view mirror in automobiles is:',
    'A convex mirror always forms a virtual, erect and diminished image with a wide field of view, so the image remains visible even when objects are close behind the vehicle.',
    'easy',
    'NCERT Class XII',
    null,
    '5ef61bc480909906acdd832da484c7bb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '5ef61bc480909906acdd832da484c7bb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Convex'),
            ('B', 'Plane'),
            ('C', 'Cylindrical'),
            ('D', 'Concave')
           ) as v(label, option_text)
 where q.question_hash = '5ef61bc480909906acdd832da484c7bb'
on conflict (question_id, label) do nothing;

-- science_tech | physics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'The resistivity of a metallic conductor:',
    'In metals the number of free electrons roughly constant while lattice vibrations increase with temperature, so collisions rise and resistivity increases linearly over a limited range.',
    'medium',
    'NCERT Class XII',
    null,
    'a73b9a08d89b3ad12ca2f062f00afdc2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'a73b9a08d89b3ad12ca2f062f00afdc2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Becomes zero above a critical temperature'),
            ('B', 'Decreases with a rise in temperature'),
            ('C', 'Increases with a rise in temperature'),
            ('D', 'Remains constant with temperature')
           ) as v(label, option_text)
 where q.question_hash = 'a73b9a08d89b3ad12ca2f062f00afdc2'
on conflict (question_id, label) do nothing;

-- science_tech | physics | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'Two resistors of 6 ohm and 3 ohm are connected in parallel. Their equivalent resistance is:',
    'For parallel resistors, 1/R = 1/6 + 1/3 = 1/2, so R = 2 ohm, which is always less than the smallest resistor in the combination.',
    'easy',
    'NCERT Class XII',
    null,
    '5ee619e40408e05d4789043937a4afb8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '5ee619e40408e05d4789043937a4afb8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '4.5 ohm'),
            ('B', '1.8 ohm'),
            ('C', '2 ohm'),
            ('D', '9 ohm')
           ) as v(label, option_text)
 where q.question_hash = '5ee619e40408e05d4789043937a4afb8'
on conflict (question_id, label) do nothing;

-- science_tech | physics | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'The SI unit of magnetic flux density is:',
    'Tesla is the SI unit of magnetic flux density; 1 tesla equals 10^4 gauss, while the weber is the unit of magnetic flux and the henry of inductance.',
    'easy',
    'NCERT Class XII',
    null,
    '1b700b12b14a0d33469c3db0f89b753f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '1b700b12b14a0d33469c3db0f89b753f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Weber'),
            ('B', 'Henry'),
            ('C', 'Gauss'),
            ('D', 'Tesla')
           ) as v(label, option_text)
 where q.question_hash = '1b700b12b14a0d33469c3db0f89b753f'
on conflict (question_id, label) do nothing;

-- science_tech | physics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'One faraday is equal to approximately:',
    'One faraday is the charge carried by one mole of electrons, equal to about 96,485 coulombs. The other options are one thousandth of a faraday, the electronic charge and the farad, respectively.',
    'medium',
    'NCERT Class XII',
    null,
    '4c6458c643bfb516d185c057118503cc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '4c6458c643bfb516d185c057118503cc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '9,648.5 C'),
            ('B', '1,602 C'),
            ('C', '26,800 C'),
            ('D', '96,485 C')
           ) as v(label, option_text)
 where q.question_hash = '4c6458c643bfb516d185c057118503cc'
on conflict (question_id, label) do nothing;

-- science_tech | physics | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'The half-life of a radioactive element is the time taken:',
    'In each half-life interval half of the remaining radioactive nuclei decay, so the activity falls to half its initial value and the mean life equals the half-life divided by 0.693.',
    'easy',
    'NCERT Class XII',
    null,
    '5391241f6680051bef82d7286360c5c3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '5391241f6680051bef82d7286360c5c3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'For all of the nuclei to decay completely'),
            ('B', 'For half the nuclei to decay'),
            ('C', 'For the activity to double'),
            ('D', 'For the decay constant to become zero')
           ) as v(label, option_text)
 where q.question_hash = '5391241f6680051bef82d7286360c5c3'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'The energy of the ground state of the hydrogen atom is approximately:',
    'The Bohr model gives E1 = -13.6 eV for the ground state; the -3.4 eV value corresponds to n = 2 and -1.51 eV to n = 3.',
    'medium',
    'NCERT Class XI',
    null,
    'e989c43c0906e28012584314bf5f6c66'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e989c43c0906e28012584314bf5f6c66'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '0 eV'),
            ('B', '-13.6 eV'),
            ('C', '-3.4 eV'),
            ('D', '-1.51 eV')
           ) as v(label, option_text)
 where q.question_hash = 'e989c43c0906e28012584314bf5f6c66'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'The Balmer series of the hydrogen spectrum lies in the:',
    'The Balmer series corresponds to transitions to n = 2 and falls in the visible region, which is why it was the first series to be observed and named after Balmer.',
    'medium',
    'NCERT Class XI',
    null,
    'f7c3f3a9a8e46a19a841fd134082fd96'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f7c3f3a9a8e46a19a841fd134082fd96'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Visible region'),
            ('B', 'Infrared region'),
            ('C', 'X-ray region'),
            ('D', 'Ultraviolet region')
           ) as v(label, option_text)
 where q.question_hash = 'f7c3f3a9a8e46a19a841fd134082fd96'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'The maximum number of electrons that can occupy the n = 3 shell is:',
    'The maximum number of electrons in a shell is 2n^2, so for n = 3 it is 2 x 9 = 18, distributed as 3s^2 3p^6 3d^10.',
    'easy',
    'NCERT Class XI',
    null,
    'a94b94b4e675a6e5d3ab600026c633d6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a94b94b4e675a6e5d3ab600026c633d6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '32'),
            ('B', '6'),
            ('C', '10'),
            ('D', '18')
           ) as v(label, option_text)
 where q.question_hash = 'a94b94b4e675a6e5d3ab600026c633d6'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'The most electronegative element in the periodic table is:',
    'Fluorine, with a Pauling electronegativity of 3.98, is the most electronegative element, followed by oxygen (3.44) and chlorine (3.16).',
    'easy',
    'NCERT Class XI',
    null,
    'ddf0e7783eba697baaad7164f5bb6d68'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'ddf0e7783eba697baaad7164f5bb6d68'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Chlorine'),
            ('B', 'Nitrogen'),
            ('C', 'Fluorine'),
            ('D', 'Oxygen')
           ) as v(label, option_text)
 where q.question_hash = 'ddf0e7783eba697baaad7164f5bb6d68'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'Across a period from left to right, the atomic radius of elements generally:',
    'Effective nuclear charge increases across a period while shielding by inner electrons does not change much, so the atomic radius generally decreases from left to right.',
    'medium',
    'NCERT Class XI',
    null,
    '9b32153cbe9b415180aa1f8ea0d025ba'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '9b32153cbe9b415180aa1f8ea0d025ba'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Decreases'),
            ('B', 'Increases'),
            ('C', 'Remains constant'),
            ('D', 'First increases then decreases')
           ) as v(label, option_text)
 where q.question_hash = '9b32153cbe9b415180aa1f8ea0d025ba'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'Which noble gas is known to form a large number of compounds?',
    'Xenon has a filled but not extremely stable valence shell and forms fluorides and oxides such as XeF2, XeF4, XeF6 and XeO3. Helium and neon are essentially inert.',
    'medium',
    'NCERT Class XI',
    null,
    '6b95806a5979c92a98d56da2d74625ee'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '6b95806a5979c92a98d56da2d74625ee'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Helium'),
            ('B', 'Neon'),
            ('C', 'Xenon'),
            ('D', 'Argon')
           ) as v(label, option_text)
 where q.question_hash = '6b95806a5979c92a98d56da2d74625ee'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'The diagonal relationship in the periodic table is often observed between:',
    'The similarity of lithium and magnesium, the first pair in the diagonal relationship, arises from their comparable charge-to-radius ratios, which leads to polarising behaviour and covalent character.',
    'hard',
    'NCERT Class XI',
    null,
    'cc72269b35cfa81e625bd41bfb9d63d7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'cc72269b35cfa81e625bd41bfb9d63d7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'K and Ca'),
            ('B', 'Be and B'),
            ('C', 'Na and Mg'),
            ('D', 'Li and Mg')
           ) as v(label, option_text)
 where q.question_hash = 'cc72269b35cfa81e625bd41bfb9d63d7'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'Potassium chloride dissolves readily in water mainly because:',
    'KCl is an ionic compound that separates into K+ and Cl- ions, and the polar water molecules hydrate these ions through ion-dipole attractions, which overcomes the lattice energy.',
    'medium',
    'NCERT Class XI',
    null,
    '57bccbc008fd2eb82cb1d20831bbca90'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '57bccbc008fd2eb82cb1d20831bbca90'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is covalent and insoluble in water'),
            ('B', 'It dissociates into ions that are hydrated by polar water molecules'),
            ('C', 'It is covalent and reacts with water'),
            ('D', 'It forms hydrogen bonds with water molecules')
           ) as v(label, option_text)
 where q.question_hash = '57bccbc008fd2eb82cb1d20831bbca90'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'The shape of the ammonia molecule according to VSEPR theory is:',
    'In NH3 the nitrogen has three bond pairs and one lone pair, giving a tetrahedral electron-pair arrangement and a trigonal pyramidal molecular shape with a bond angle near 107 degrees.',
    'easy',
    'NCERT Class XI',
    null,
    'ccf587e7eb329ed86ffc98cc7a86498c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ccf587e7eb329ed86ffc98cc7a86498c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Trigonal pyramidal'),
            ('B', 'Tetrahedral'),
            ('C', 'Linear'),
            ('D', 'Bent')
           ) as v(label, option_text)
 where q.question_hash = 'ccf587e7eb329ed86ffc98cc7a86498c'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'The hybridisation of carbon atoms in the ethene molecule is:',
    'Each carbon in ethene forms a sigma bond with hydrogen, a sigma bond with carbon and a pi bond, giving three sp2 hybridised orbitals in a trigonal planar arrangement.',
    'medium',
    'NCERT Class XI',
    null,
    '9d5cade74b74d39bfbcd2275f80654e9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '9d5cade74b74d39bfbcd2275f80654e9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'sp'),
            ('B', 'sp3d'),
            ('C', 'sp3'),
            ('D', 'sp2')
           ) as v(label, option_text)
 where q.question_hash = '9d5cade74b74d39bfbcd2275f80654e9'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'The pH of a 0.01 molar aqueous solution of hydrochloric acid is:',
    'HCl is a strong acid that dissociates completely, so [H+] = 0.01 mol/L and pH = -log(0.01) = 2.',
    'easy',
    'NCERT Class XI',
    null,
    '1b579ac21e7cd41fc7f5a6d82dc08001'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '1b579ac21e7cd41fc7f5a6d82dc08001'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '3'),
            ('B', '1'),
            ('C', '2'),
            ('D', '12')
           ) as v(label, option_text)
 where q.question_hash = '1b579ac21e7cd41fc7f5a6d82dc08001'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'In a redox reaction, oxidation refers to:',
    'Oxidation is electron loss accompanied by an increase in the oxidation number; reduction is electron gain with a decrease in oxidation number.',
    'easy',
    'NCERT Class XII',
    null,
    '2c67a17fc9fcf1b234b6f5d5af26080f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '2c67a17fc9fcf1b234b6f5d5af26080f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Gain of electrons and decrease in oxidation state'),
            ('B', 'Loss of electrons and increase in oxidation state'),
            ('C', 'Gain of oxygen only'),
            ('D', 'Sharing of electrons between two atoms')
           ) as v(label, option_text)
 where q.question_hash = '2c67a17fc9fcf1b234b6f5d5af26080f'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'Among the following metals, the strongest reducing agent in aqueous solution is:',
    'In the electrochemical series lithium has the most negative standard reduction potential, so it is the most readily oxidised and hence the strongest reducing agent among these metals.',
    'hard',
    'NCERT Class XII',
    null,
    '03532c0b9cb314ede4b697bac7d2b055'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '03532c0b9cb314ede4b697bac7d2b055'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Lithium'),
            ('B', 'Potassium'),
            ('C', 'Calcium'),
            ('D', 'Sodium')
           ) as v(label, option_text)
 where q.question_hash = '03532c0b9cb314ede4b697bac7d2b055'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'The Nernst equation relates electrode potential to:',
    'For a cell reaction the Nernst equation is E = E standard - (RT/nF) ln Q, so the potential depends on temperature, the number of electrons transferred and the reaction quotient.',
    'medium',
    'NCERT Class XII',
    null,
    'bb01f37834fce68f741c4c36860ec8cc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'bb01f37834fce68f741c4c36860ec8cc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Resistance of the cell'),
            ('B', 'Concentration of the electrolyte'),
            ('C', 'Temperature and the reaction quotient'),
            ('D', 'Current flowing through the cell')
           ) as v(label, option_text)
 where q.question_hash = 'bb01f37834fce68f741c4c36860ec8cc'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'The number of structural isomers possible for the molecular formula C4H10 is:',
    'C4H10 has only two constitutional isomers, n-butane and isobutane (2-methylpropane), because the four carbon atoms can be arranged in only two distinct chains.',
    'medium',
    'NCERT Class XI',
    null,
    '3d09b2fd9c9e579c25e0c25c5ac5af24'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '3d09b2fd9c9e579c25e0c25c5ac5af24'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '3'),
            ('B', '4'),
            ('C', '5'),
            ('D', '2')
           ) as v(label, option_text)
 where q.question_hash = '3d09b2fd9c9e579c25e0c25c5ac5af24'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'Nylon-6,6 is a condensation polymer formed from:',
    'Nylon-6,6 is the polyamide formed by condensation of hexamethylenediamine with adipic acid, eliminating water, and is used for textiles, tyres and engineering components.',
    'medium',
    'NCERT Class XII',
    null,
    '7e1694357aeed1614151cdf502944bbb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '7e1694357aeed1614151cdf502944bbb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ethylene glycol and terephthalic acid'),
            ('B', 'Hexamethylenediamine and adipic acid'),
            ('C', 'Ethylene glycol and propylene oxide'),
            ('D', 'Caprolactam only')
           ) as v(label, option_text)
 where q.question_hash = '7e1694357aeed1614151cdf502944bbb'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'Which of the following is true about a catalyst used in a chemical reaction?',
    'A catalyst provides an alternative pathway of lower activation energy and speeds up both forward and backward reactions equally, so it does not alter the equilibrium constant or the energy change.',
    'medium',
    'NCERT Class XII',
    null,
    '1b2cab7c5337feb565613f7d19f53369'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '1b2cab7c5337feb565613f7d19f53369'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Changes the enthalpy change of a reaction'),
            ('B', 'Lowers the activation energy of a reaction'),
            ('C', 'Shifts the position of equilibrium to the products'),
            ('D', 'Increases the equilibrium constant of a reaction')
           ) as v(label, option_text)
 where q.question_hash = '1b2cab7c5337feb565613f7d19f53369'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'Avogadro''s law states that:',
    'Avogadro''s law (which follows from the ideal gas equation) states that equal volumes of all gases at the same temperature and pressure contain equal numbers of molecules.',
    'easy',
    'NCERT Class XI',
    null,
    '41cc8c9d65d995db177c7a00f3c8ac3d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '41cc8c9d65d995db177c7a00f3c8ac3d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Equal volumes of gases at the same temperature and pressure contain equal numbers of molecules'),
            ('B', 'Pressure of a gas is inversely proportional to its volume at constant temperature'),
            ('C', 'Volume of a gas is directly proportional to its absolute temperature'),
            ('D', 'Rate of diffusion is inversely proportional to the square root of density')
           ) as v(label, option_text)
 where q.question_hash = '41cc8c9d65d995db177c7a00f3c8ac3d'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'Froth flotation is generally used for the concentration of:',
    'Froth flotation exploits the difference in surface tension between the hydrophobic sulphide mineral particles and the gangue, and is the principal method for concentrating sulphide ores.',
    'medium',
    'NCERT Class XII',
    null,
    '02748f59329f9778542c7c30f621efc5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '02748f59329f9778542c7c30f621efc5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Oxide ores'),
            ('B', 'Bauxite'),
            ('C', 'Halite'),
            ('D', 'Sulphide ores')
           ) as v(label, option_text)
 where q.question_hash = '02748f59329f9778542c7c30f621efc5'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'In a blast furnace, the reduction of iron oxide takes place mainly in the:',
    'Iron oxide is reduced to iron by carbon monoxide in the reduction zone, below the combustion zone where coke burns and above the transition zone where the burden is preheated.',
    'medium',
    'NCERT Class XII',
    null,
    'ee4aabf2f349a561b1b3cfba7a02a66b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'ee4aabf2f349a561b1b3cfba7a02a66b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Transition zone'),
            ('B', 'Charging zone'),
            ('C', 'Reduction zone'),
            ('D', 'Combustion zone')
           ) as v(label, option_text)
 where q.question_hash = 'ee4aabf2f349a561b1b3cfba7a02a66b'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'The Montreal Protocol, which deals with the protection of the ozone layer, was adopted in:',
    'The Montreal Protocol was adopted in 1987 and phased out the production of chlorofluorocarbons and other ozone-depleting substances; the Vienna Convention of 1985 preceded it.',
    'medium',
    'Standard Reference',
    null,
    'e8e6fee04cf6d8e0b6dc62da7dd63166'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e8e6fee04cf6d8e0b6dc62da7dd63166'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1985'),
            ('B', '1987'),
            ('C', '1992'),
            ('D', '1979')
           ) as v(label, option_text)
 where q.question_hash = 'e8e6fee04cf6d8e0b6dc62da7dd63166'
on conflict (question_id, label) do nothing;

-- science_tech | biology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The cell organelle referred to as the powerhouse of the cell is the:',
    'Mitochondria carry out oxidative phosphorylation and generate ATP through the electron transport chain, which is why they are called the powerhouse of the cell.',
    'easy',
    'NCERT Class XI',
    null,
    'e5e90e078ae8a5a30b2799350e5ed0b5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'e5e90e078ae8a5a30b2799350e5ed0b5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Mitochondrion'),
            ('B', 'Ribosome'),
            ('C', 'Golgi apparatus'),
            ('D', 'Lysosome')
           ) as v(label, option_text)
 where q.question_hash = 'e5e90e078ae8a5a30b2799350e5ed0b5'
on conflict (question_id, label) do nothing;

-- science_tech | biology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The Golgi apparatus in a cell is mainly responsible for:',
    'The Golgi apparatus modifies proteins received from the endoplasmic reticulum, packages them into vesicles and dispatches them to their destinations, including secretion outside the cell.',
    'easy',
    'NCERT Class XI',
    null,
    'a98376c209fe39378873e4aa2ba7f0e7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a98376c209fe39378873e4aa2ba7f0e7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'ATP production'),
            ('B', 'Hydrolytic digestion of macromolecules'),
            ('C', 'Synthesis of proteins'),
            ('D', 'Packaging, modification and dispatch of materials')
           ) as v(label, option_text)
 where q.question_hash = 'a98376c209fe39378873e4aa2ba7f0e7'
on conflict (question_id, label) do nothing;

-- science_tech | biology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'Lysosomes are often called the suicide bags of the cell because they:',
    'Lysosomes contain acidic hydrolases and burst to release enzymes that digest the cell''s own components during autolysis, which is why they are called suicide bags.',
    'easy',
    'NCERT Class XI',
    null,
    '1148207c7144fdc8f7a7869f8a906bdc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '1148207c7144fdc8f7a7869f8a906bdc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Carry out photosynthesis'),
            ('B', 'Store carbohydrates'),
            ('C', 'Contain hydrolytic enzymes that can digest the cell itself'),
            ('D', 'Produce ATP')
           ) as v(label, option_text)
 where q.question_hash = '1148207c7144fdc8f7a7869f8a906bdc'
on conflict (question_id, label) do nothing;

-- science_tech | biology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The nucleolus is the site of:',
    'The nucleolus is the site of ribosomal RNA transcription and processing and of the assembly of ribosomal subunits, which are then exported through nuclear pores.',
    'medium',
    'NCERT Class XI',
    null,
    'e908ade66b7dcb59f99918df874a5756'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e908ade66b7dcb59f99918df874a5756'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Nuclear membrane formation'),
            ('B', 'Synthesis of rRNA and ribosome assembly'),
            ('C', 'DNA replication'),
            ('D', 'Lipid synthesis')
           ) as v(label, option_text)
 where q.question_hash = 'e908ade66b7dcb59f99918df874a5756'
on conflict (question_id, label) do nothing;

-- science_tech | biology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The fluid mosaic model of the cell membrane was proposed by:',
    'Singer and Nicolson proposed in 1972 that the membrane is a fluid bilayer of phospholipids with proteins embedded in it, able to move laterally within the bilayer.',
    'medium',
    'NCERT Class XI',
    null,
    '1a6d28b7d31ae269e1ced7d0ed3ca1b8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '1a6d28b7d31ae269e1ced7d0ed3ca1b8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Watson and Crick'),
            ('B', 'Robert Brown'),
            ('C', 'Schleiden and Schwann'),
            ('D', 'Singer and Nicolson')
           ) as v(label, option_text)
 where q.question_hash = '1a6d28b7d31ae269e1ced7d0ed3ca1b8'
on conflict (question_id, label) do nothing;

-- science_tech | biology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The cell wall of bacteria is made of:',
    'Bacterial cell walls contain peptidoglycan, a network of polysaccharide chains cross-linked by short peptides, which is the target of many antibiotics and is stained by Gram staining.',
    'medium',
    'NCERT Class XI',
    null,
    'd8378463bdbb8cc6a10530e63b8daf94'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd8378463bdbb8cc6a10530e63b8daf94'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Peptidoglycan'),
            ('B', 'Silica'),
            ('C', 'Cellulose'),
            ('D', 'Chitin')
           ) as v(label, option_text)
 where q.question_hash = 'd8378463bdbb8cc6a10530e63b8daf94'
on conflict (question_id, label) do nothing;

-- science_tech | biology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'In photosynthesis, the Calvin cycle (dark reaction) takes place in the:',
    'The stroma hosts the enzymes of the Calvin cycle, including RuBisCO, where CO2 is fixed into carbohydrates using ATP and NADPH generated in the thylakoid membranes.',
    'medium',
    'NCERT Class XI',
    null,
    '5588d1b66b22be33d56860aa52bfe4f9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '5588d1b66b22be33d56860aa52bfe4f9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Mitochondrial matrix'),
            ('B', 'Thylakoid lumen'),
            ('C', 'Stroma of the chloroplast'),
            ('D', 'Cytoplasm')
           ) as v(label, option_text)
 where q.question_hash = '5588d1b66b22be33d56860aa52bfe4f9'
on conflict (question_id, label) do nothing;

-- science_tech | biology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'In aerobic respiration, the Krebs cycle occurs in the:',
    'The Krebs (citric acid) cycle takes place in the mitochondrial matrix, whereas the electron transport chain and ATP synthase are located on the inner mitochondrial membrane.',
    'medium',
    'NCERT Class XI',
    null,
    '2b389127f6ce2973ebc89f54c3f1f2f9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '2b389127f6ce2973ebc89f54c3f1f2f9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Inner mitochondrial membrane'),
            ('B', 'Intermembrane space'),
            ('C', 'Cytoplasm'),
            ('D', 'Mitochondrial matrix')
           ) as v(label, option_text)
 where q.question_hash = '2b389127f6ce2973ebc89f54c3f1f2f9'
on conflict (question_id, label) do nothing;

-- science_tech | biology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'A test cross is performed by crossing an individual showing a dominant phenotype with:',
    'Crossing the dominant individual with a homozygous recessive (homozygous for the recessive allele) individual tests whether the dominant parent is homozygous or heterozygous.',
    'medium',
    'NCERT Class XII',
    null,
    '6114891f44a3c68efa505040acebd289'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '6114891f44a3c68efa505040acebd289'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Another F1 individual'),
            ('B', 'A homozygous recessive individual'),
            ('C', 'A heterozygous individual'),
            ('D', 'A homozygous dominant individual')
           ) as v(label, option_text)
 where q.question_hash = '6114891f44a3c68efa505040acebd289'
on conflict (question_id, label) do nothing;

-- science_tech | biology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The semiconservative mode of DNA replication was demonstrated by:',
    'Meselson and Stahl used density-gradient centrifugation with 15N and 14N to show that each daughter DNA molecule contains one old and one new strand.',
    'medium',
    'NCERT Class XII',
    null,
    'ce23899ef288d5c523d5a622232b457c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ce23899ef288d5c523d5a622232b457c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Meselson and Stahl'),
            ('B', 'Griffith'),
            ('C', 'Avery'),
            ('D', 'Watson and Crick')
           ) as v(label, option_text)
 where q.question_hash = 'ce23899ef288d5c523d5a622232b457c'
on conflict (question_id, label) do nothing;

-- science_tech | biology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The ABO blood group system was discovered by:',
    'Karl Landsteiner discovered the ABO blood groups in 1900 and received the Nobel Prize in Physiology or Medicine in 1930 for this work.',
    'easy',
    'Standard Reference',
    null,
    '2ee4aabe3237bb8bb9aff55584859213'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '2ee4aabe3237bb8bb9aff55584859213'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Louis Pasteur'),
            ('B', 'Robert Koch'),
            ('C', 'Landsteiner'),
            ('D', 'Paul Ehrlich')
           ) as v(label, option_text)
 where q.question_hash = '2ee4aabe3237bb8bb9aff55584859213'
on conflict (question_id, label) do nothing;

-- science_tech | biology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The pacemaker of the human heart is the:',
    'The sino-atrial node in the right atrial wall generates impulses at about 70-80 per minute and sets the rhythm of the heartbeat, so it is the pacemaker.',
    'easy',
    'NCERT Class XI',
    null,
    '12b05054f75521dd0ed73b0cfbb51eb0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '12b05054f75521dd0ed73b0cfbb51eb0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Purkinje fibres'),
            ('B', 'Atrio-ventricular node'),
            ('C', 'Sino-atrial node'),
            ('D', 'Bundle of His')
           ) as v(label, option_text)
 where q.question_hash = '12b05054f75521dd0ed73b0cfbb51eb0'
on conflict (question_id, label) do nothing;

-- science_tech | biology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The number of nephrons present in each human kidney is approximately:',
    'Each human kidney contains roughly one million nephrons, each consisting of a glomerulus, a tubule and a collecting duct, which together form the functional unit of the kidney.',
    'medium',
    'NCERT Class XI',
    null,
    '7b22ba02ba020a99f6e061393dec266b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '7b22ba02ba020a99f6e061393dec266b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '10 thousand'),
            ('B', '5 million'),
            ('C', '10 million'),
            ('D', '1 million')
           ) as v(label, option_text)
 where q.question_hash = '7b22ba02ba020a99f6e061393dec266b'
on conflict (question_id, label) do nothing;

-- science_tech | biology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'Deficiency of vitamin C in the human diet causes:',
    'Vitamin C (ascorbic acid) is required for collagen synthesis; its deficiency causes scurvy, with bleeding gums, poor wound healing and perifollicular haemorrhage.',
    'easy',
    'NCERT Class XII',
    null,
    '763ff78a52d3698c040c05fdc33b8c5e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '763ff78a52d3698c040c05fdc33b8c5e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Scurvy'),
            ('B', 'Beriberi'),
            ('C', 'Night blindness'),
            ('D', 'Rickets')
           ) as v(label, option_text)
 where q.question_hash = '763ff78a52d3698c040c05fdc33b8c5e'
on conflict (question_id, label) do nothing;

-- science_tech | biology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'Deficiency of vitamin B12 causes:',
    'Vitamin B12 is needed for DNA synthesis and for maturation of red blood cells; its deficiency leads to megaloblastic anaemia, as in pernicious anaemia.',
    'medium',
    'NCERT Class XII',
    null,
    'dcac63b9e4592f9266afeebf24154abc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'dcac63b9e4592f9266afeebf24154abc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Night blindness'),
            ('B', 'Pernicious anaemia'),
            ('C', 'Scurvy'),
            ('D', 'Rickets')
           ) as v(label, option_text)
 where q.question_hash = 'dcac63b9e4592f9266afeebf24154abc'
on conflict (question_id, label) do nothing;

-- science_tech | biology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'Penicillin was discovered by:',
    'Alexander Fleming observed the antibacterial effect of Penicillium mould in 1928, and the discovery was developed into a drug by Florey and Chain, earning the 1945 Nobel Prize.',
    'easy',
    'Standard Reference',
    null,
    '1c3bdee678d1c71e55855a5450eeeeb6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '1c3bdee678d1c71e55855a5450eeeeb6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Joseph Lister'),
            ('B', 'Alexander Fleming'),
            ('C', 'Robert Koch'),
            ('D', 'Louis Pasteur')
           ) as v(label, option_text)
 where q.question_hash = '1c3bdee678d1c71e55855a5450eeeeb6'
on conflict (question_id, label) do nothing;

-- science_tech | biology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'The BCG vaccine against tuberculosis was developed by:',
    'Calmette and Guerin developed the BCG vaccine in 1921 by attenuating Mycobacterium bovis, and it is now used worldwide against childhood tuberculosis.',
    'medium',
    'Standard Reference',
    null,
    'c349fa47a2cb8ffe2384ce2dd9ab67c6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'c349fa47a2cb8ffe2384ce2dd9ab67c6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Louis Pasteur and Roux'),
            ('B', 'Max Theiler and Selman Waksman'),
            ('C', 'Robert Koch and Wilhelm von Behring'),
            ('D', 'Calmette and Guerin')
           ) as v(label, option_text)
 where q.question_hash = 'c349fa47a2cb8ffe2384ce2dd9ab67c6'
on conflict (question_id, label) do nothing;

-- science_tech | biology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'HIV, the cause of AIDS, belongs to which class of viruses?',
    'HIV is a retrovirus that carries its genetic information in RNA and uses reverse transcriptase to make a DNA copy that integrates into the host genome.',
    'easy',
    'NCERT Class XII',
    null,
    '8ffbfd9c998d5d06dea547f433e7b2d1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '8ffbfd9c998d5d06dea547f433e7b2d1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Retrovirus'),
            ('B', 'RNA virus with single-stranded DNA intermediate'),
            ('C', 'Bacteriophage'),
            ('D', 'DNA virus')
           ) as v(label, option_text)
 where q.question_hash = '8ffbfd9c998d5d06dea547f433e7b2d1'
on conflict (question_id, label) do nothing;

-- science_tech | biology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'Alzheimer''s disease is associated with abnormal accumulation of:',
    'Alzheimer''s disease involves extracellular amyloid beta plaques and intracellular neurofibrillary tangles of hyperphosphorylated tau, with progressive loss of memory and cognition.',
    'medium',
    'Standard Reference',
    null,
    '5b53315dd83949c426adb5c204045e4d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '5b53315dd83949c426adb5c204045e4d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Alpha-synuclein in the cortex'),
            ('B', 'Prion protein only'),
            ('C', 'Tau protein and amyloid beta plaques'),
            ('D', 'Dopamine in the substantia nigra')
           ) as v(label, option_text)
 where q.question_hash = '5b53315dd83949c426adb5c204045e4d'
on conflict (question_id, label) do nothing;

-- science_tech | biology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biology'),
    'According to the ten per cent law of energy transfer in an ecosystem:',
    'Only about 10 per cent of the energy at one trophic level is transferred to the next, the rest being used in metabolism, dissipated as heat or lost as undigested material.',
    'easy',
    'NCERT Class XII',
    null,
    'd5b9b13476e217f3c0c4d50ef6dca42d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd5b9b13476e217f3c0c4d50ef6dca42d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Only 10 per cent of the energy of one trophic level reaches the next'),
            ('B', '90 per cent of energy is lost at each trophic level'),
            ('C', 'All the energy passes to decomposers'),
            ('D', 'Primary producers capture 90 per cent of sunlight')
           ) as v(label, option_text)
 where q.question_hash = 'd5b9b13476e217f3c0c4d50ef6dca42d'
on conflict (question_id, label) do nothing;

-- science_tech | space | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'The Chandrayaan-3 mission was launched on:',
    'Chandrayaan-3 was launched on 14 July 2023 on an LVM3-M4 rocket from Sriharikota and landed on the Moon on 23 August 2023.',
    'easy',
    'PIB 2023',
    null,
    '30bc562260bc9728031200b6200646c6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '30bc562260bc9728031200b6200646c6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '22 October 2008'),
            ('B', '23 August 2023'),
            ('C', '14 July 2023'),
            ('D', '22 July 2019')
           ) as v(label, option_text)
 where q.question_hash = '30bc562260bc9728031200b6200646c6'
on conflict (question_id, label) do nothing;

-- science_tech | space | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'The Chandrayaan-3 lander touched down near the Moon''s south pole on:',
    'The Vikram lander of Chandrayaan-3 soft-landed on 23 August 2023, a few hundred metres from the south polar region, and the Pragyan rover was deployed the next day.',
    'easy',
    'PIB 2023',
    null,
    'cf311fc49fe74e0feba79b565dfb9040'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'cf311fc49fe74e0feba79b565dfb9040'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '6 September 2019'),
            ('B', '24 September 2014'),
            ('C', '14 July 2023'),
            ('D', '23 August 2023')
           ) as v(label, option_text)
 where q.question_hash = 'cf311fc49fe74e0feba79b565dfb9040'
on conflict (question_id, label) do nothing;

-- science_tech | space | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'With the success of Chandrayaan-3, India became the:',
    'After the Soviet Union, the United States and China, India became the fourth nation to achieve a soft landing on the Moon, and the first to do so in the lunar south polar region.',
    'medium',
    'PIB 2023',
    null,
    '55077b7895528b837564068312e0be90'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '55077b7895528b837564068312e0be90'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Third country to orbit the Moon'),
            ('B', 'Fourth country to soft-land on the Moon and the first to land near the south pole'),
            ('C', 'First country to land on Mars'),
            ('D', 'Second country to soft-land on the Moon')
           ) as v(label, option_text)
 where q.question_hash = '55077b7895528b837564068312e0be90'
on conflict (question_id, label) do nothing;

-- science_tech | space | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'Chandrayaan-1 was launched on:',
    'Chandrayaan-1 was launched on 22 October 2008 on a PSLV-C11 from Sriharikota and later confirmed the presence of water molecules on the Moon.',
    'easy',
    'Standard Reference',
    null,
    '242165aeb0eaf43a17f99c86bd7c9c8d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '242165aeb0eaf43a17f99c86bd7c9c8d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '22 July 2019'),
            ('B', '19 November 2013'),
            ('C', '22 October 2008'),
            ('D', '2 November 1967')
           ) as v(label, option_text)
 where q.question_hash = '242165aeb0eaf43a17f99c86bd7c9c8d'
on conflict (question_id, label) do nothing;

-- science_tech | space | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'The discovery of water molecules on the lunar surface was made using the:',
    'The NASA-built Moon Mineralogy Mapper on Chandrayaan-1 detected absorption of sunlight by hydroxyl and water groups, and the finding was confirmed in 2009.',
    'hard',
    'Standard Reference',
    null,
    '190372dbea4694e97c43fd7fea4200db'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '190372dbea4694e97c43fd7fea4200db'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Moon Mineralogy Mapper (M3) onboard Chandrayaan-1'),
            ('B', 'Lander of Chandrayaan-2'),
            ('C', 'Radar of Chandrayaan-3'),
            ('D', 'Mangalyaan spectrometer')
           ) as v(label, option_text)
 where q.question_hash = '190372dbea4694e97c43fd7fea4200db'
on conflict (question_id, label) do nothing;

-- science_tech | space | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'Chandrayaan-2 was launched on:',
    'Chandrayaan-2 was launched on 22 July 2019 on an LVM3-M3 vehicle. Its orbiter remains functional in lunar orbit, while the Vikram lander failed during landing on 6 September 2019.',
    'easy',
    'Standard Reference',
    null,
    'fb3abb2740409e39bb3b43e52a6ac5d2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'fb3abb2740409e39bb3b43e52a6ac5d2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '14 July 2023'),
            ('B', '22 July 2019'),
            ('C', '19 November 2013'),
            ('D', '22 October 2008')
           ) as v(label, option_text)
 where q.question_hash = 'fb3abb2740409e39bb3b43e52a6ac5d2'
on conflict (question_id, label) do nothing;

-- science_tech | space | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'Which of the following statements about the Chandrayaan-2 mission is correct?',
    'The Chandrayaan-2 orbiter is healthy in a 200 km polar orbit, and has provided images and measurements of the permanently shadowed regions near the lunar south pole.',
    'medium',
    'Standard Reference',
    null,
    '22354d43a2ffbf26d9c4e2cc988ddc01'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '22354d43a2ffbf26d9c4e2cc988ddc01'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Both the orbiter and the lander reached the lunar surface successfully'),
            ('B', 'The mission was never launched'),
            ('C', 'The orbiter failed within a few months of launch'),
            ('D', 'The orbiter continues to operate in lunar orbit and has returned images and data of the south polar region')
           ) as v(label, option_text)
 where q.question_hash = '22354d43a2ffbf26d9c4e2cc988ddc01'
on conflict (question_id, label) do nothing;

-- science_tech | space | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'The Mars Orbiter Mission (Mangalyaan) was launched on:',
    'Mangalyaan was launched on 19 November 2013 aboard PSLV-C25 and reached Mars orbit on 24 September 2014, the primary mission lasting about six months.',
    'easy',
    'Standard Reference',
    null,
    'b014c9851abae95b7644e09950899be4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'b014c9851abae95b7644e09950899be4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '24 September 2014'),
            ('B', '25 December 2013'),
            ('C', '5 November 2013'),
            ('D', '19 November 2013')
           ) as v(label, option_text)
 where q.question_hash = 'b014c9851abae95b7644e09950899be4'
on conflict (question_id, label) do nothing;

-- science_tech | space | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'Mangalyaan became the first Indian spacecraft to:',
    'Mangalyaan inserted itself into Mars orbit on 24 September 2014, making India the first Asian country to reach Mars orbit and only the fourth nation to do so.',
    'easy',
    'Standard Reference',
    null,
    'c21f5e392215cca2d2f5fdb25b246b40'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'c21f5e392215cca2d2f5fdb25b246b40'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Orbit Mars'),
            ('B', 'Land on the Moon'),
            ('C', 'Return to Earth'),
            ('D', 'Orbit the Earth')
           ) as v(label, option_text)
 where q.question_hash = 'c21f5e392215cca2d2f5fdb25b246b40'
on conflict (question_id, label) do nothing;

-- science_tech | space | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'Aryabhata, India''s first satellite, was launched on:',
    'Aryabhata was launched on 19 April 1975 from Kapustin Yar in the Soviet Union on a Molniya rocket, and it was built in India with help from Soviet scientists.',
    'easy',
    'Standard Reference',
    null,
    'a8d5864c43748346df22187e4022cd02'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'a8d5864c43748346df22187e4022cd02'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '13 September 1969'),
            ('B', '22 October 2008'),
            ('C', '19 April 1975'),
            ('D', '26 November 1967')
           ) as v(label, option_text)
 where q.question_hash = 'a8d5864c43748346df22187e4022cd02'
on conflict (question_id, label) do nothing;

-- science_tech | space | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'Rohini was the first satellite placed in orbit by an Indian launch vehicle. It was launched in:',
    'Rohini RS-1 was launched on 17 August 1987 by the SLV-D3 vehicle from Sriharikota, becoming the first satellite to reach orbit using a domestically developed launcher.',
    'medium',
    'Standard Reference',
    null,
    '1ae11412da4984fb8174dd6a8f597f76'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '1ae11412da4984fb8174dd6a8f597f76'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1980'),
            ('B', '1987'),
            ('C', '1994'),
            ('D', '1975')
           ) as v(label, option_text)
 where q.question_hash = '1ae11412da4984fb8174dd6a8f597f76'
on conflict (question_id, label) do nothing;

-- science_tech | space | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'The first successful launch of the Polar Satellite Launch Vehicle (PSLV) took place in:',
    'After a failed maiden attempt in 1993, the PSLV achieved its first successful launch in 1994 with the IRS-P1 remote sensing satellite, and has been the workhorse launcher since.',
    'medium',
    'Standard Reference',
    null,
    '00096db595a7a75b184ef6c10dabf6ef'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '00096db595a7a75b184ef6c10dabf6ef'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1994'),
            ('B', '1987'),
            ('C', '2006'),
            ('D', '1993')
           ) as v(label, option_text)
 where q.question_hash = '00096db595a7a75b184ef6c10dabf6ef'
on conflict (question_id, label) do nothing;

-- science_tech | space | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'The first launch of the GSLV Mk-III (now LVM3) took place in 2014 and carried:',
    'The LVM3-D3 flight on 29 September 2014 placed the INSAT-3C communication satellite in orbit, and the vehicle later launched Chandrayaan-2 and Chandrayaan-3.',
    'medium',
    'Standard Reference',
    null,
    'e2067239d3ba0014c1da9f91514c44f4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e2067239d3ba0014c1da9f91514c44f4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Mangalyaan'),
            ('B', 'GSAT-6A'),
            ('C', 'Chandrayaan-1'),
            ('D', 'INSAT-3C')
           ) as v(label, option_text)
 where q.question_hash = 'e2067239d3ba0014c1da9f91514c44f4'
on conflict (question_id, label) do nothing;

-- science_tech | space | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'The Space Commission and the Department of Space were set up in India in:',
    'Both the Space Commission and the Department of Space were constituted in 1972, with ISRO reporting to the Department of Space, which is under the Prime Minister.',
    'medium',
    'Standard Reference',
    null,
    'f8ef5135fc9675b98439cefde4c01dfa'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f8ef5135fc9675b98439cefde4c01dfa'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1969'),
            ('B', '1972'),
            ('C', '1975'),
            ('D', '1980')
           ) as v(label, option_text)
 where q.question_hash = 'f8ef5135fc9675b98439cefde4c01dfa'
on conflict (question_id, label) do nothing;

-- science_tech | space | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'The Outer Space Treaty, which prohibits the use of the outer space for military purposes, was signed in:',
    'The Outer Space Treaty was opened for signature on 27 January 1967 and entered into force on 10 October 1967; it establishes that the Moon and outer space are not subject to appropriation.',
    'medium',
    'Standard Reference',
    null,
    'a754c7dfc68fc4395b4cb145ae436cf5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'a754c7dfc68fc4395b4cb145ae436cf5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1979'),
            ('B', '1963'),
            ('C', '1967'),
            ('D', '1972')
           ) as v(label, option_text)
 where q.question_hash = 'a754c7dfc68fc4395b4cb145ae436cf5'
on conflict (question_id, label) do nothing;

-- science_tech | space | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'The Partial Test Ban Treaty, which bans nuclear tests in the atmosphere, under water and in space, was signed in:',
    'The Partial Test Ban Treaty was signed in Moscow on 5 August 1963 and entered into force on 10 October 1963, restricting nuclear explosions to underground sites.',
    'medium',
    'Standard Reference',
    null,
    '5faf561be3668c50681c477b23a8e59b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '5faf561be3668c50681c477b23a8e59b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1972'),
            ('B', '1958'),
            ('C', '1963'),
            ('D', '1968')
           ) as v(label, option_text)
 where q.question_hash = '5faf561be3668c50681c477b23a8e59b'
on conflict (question_id, label) do nothing;

-- science_tech | space | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'The Hubble Space Telescope was launched on:',
    'Hubble was launched aboard Space Shuttle Discovery on 24 April 1990; its primary mirror had a spherical aberration, corrected in 1993 by a servicing mission.',
    'medium',
    'Standard Reference',
    null,
    'e5c0ea109e631dde51265ebeb56921c1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e5c0ea109e631dde51265ebeb56921c1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '25 December 1991'),
            ('B', '25 December 2021'),
            ('C', '8 August 1990'),
            ('D', '24 April 1990')
           ) as v(label, option_text)
 where q.question_hash = 'e5c0ea109e631dde51265ebeb56921c1'
on conflict (question_id, label) do nothing;

-- science_tech | space | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'The James Webb Space Telescope was launched on 25 December 2021 on an:',
    'JWST was launched on an Ariane 5 rocket from Kourou on 25 December 2021 and now operates near the Sun-Earth L2 point about 1.5 million km from Earth.',
    'medium',
    'Standard Reference',
    null,
    '2669ebcdef3830c4b5ac9c7045e8167d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '2669ebcdef3830c4b5ac9c7045e8167d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Space Shuttle Discovery'),
            ('B', 'Ariane 5 rocket'),
            ('C', 'Falcon Heavy'),
            ('D', 'Soyuz rocket')
           ) as v(label, option_text)
 where q.question_hash = '2669ebcdef3830c4b5ac9c7045e8167d'
on conflict (question_id, label) do nothing;

-- science_tech | space | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'The primary mirror of the James Webb Space Telescope consists of:',
    'JWST''s mirror is made of 18 gold-coated beryllium hexagonal segments that combine to a 6.5 metre collecting area, and it operates at a temperature near 40 K.',
    'hard',
    'Standard Reference',
    null,
    '875d73c88de8382b2343aa68571bde4c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '875d73c88de8382b2343aa68571bde4c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '18 hexagonal segments totalling 6.5 metres across'),
            ('B', 'A 2.4 metre mirror coated with gold'),
            ('C', 'A mirror made of 6 rectangular panels'),
            ('D', 'A single 8 metre circular mirror')
           ) as v(label, option_text)
 where q.question_hash = '875d73c88de8382b2343aa68571bde4c'
on conflict (question_id, label) do nothing;

-- science_tech | space | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'The first confirmed exoplanet orbiting a Sun-like star, 51 Pegasi b, was discovered in:',
    'Michel Mayor and Didier Queloz announced 51 Pegasi b in 1995, the first planet found around a main sequence star, and won the 2019 Nobel Prize in Physics for it.',
    'medium',
    'Standard Reference',
    null,
    '16fb9f7ad56572e5c3a3362140d51adc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '16fb9f7ad56572e5c3a3362140d51adc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2005'),
            ('B', '1992'),
            ('C', '1995'),
            ('D', '1999')
           ) as v(label, option_text)
 where q.question_hash = '16fb9f7ad56572e5c3a3362140d51adc'
on conflict (question_id, label) do nothing;

-- science_tech | space | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'The Kepler space telescope was launched in:',
    'Kepler was launched in March 2009 and, by staring at about 150,000 stars, has confirmed thousands of planets using the transit method.',
    'medium',
    'Standard Reference',
    null,
    '71147d03332e92b3dd15af43264e1cb5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '71147d03332e92b3dd15af43264e1cb5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2013'),
            ('B', '2018'),
            ('C', '1998'),
            ('D', '2009')
           ) as v(label, option_text)
 where q.question_hash = '71147d03332e92b3dd15af43264e1cb5'
on conflict (question_id, label) do nothing;

-- science_tech | space | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'space'),
    'In the astronomical magnitude scale, a lower numerical value indicates:',
    'The magnitude scale is logarithmic and inverse: brighter objects have smaller or negative magnitudes, so the Sun is about -26.7, Sirius about -1.46 and Vega is taken as zero.',
    'medium',
    'Standard Reference',
    null,
    '2a8c63bbabd56f7bfe18f6753815641b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '2a8c63bbabd56f7bfe18f6753815641b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A brighter object'),
            ('B', 'A larger angular size'),
            ('C', 'A greater distance'),
            ('D', 'A dimmer object')
           ) as v(label, option_text)
 where q.question_hash = '2a8c63bbabd56f7bfe18f6753815641b'
on conflict (question_id, label) do nothing;

-- science_tech | physics | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'A body has a mass of 2 kg and a weight of 20 N. The acceleration due to gravity at the place where it is located is:',
    'Weight equals mass multiplied by g, so g = 20 N / 2 kg = 10 m/s^2, which is close to the standard value at the Earth''s surface.',
    'easy',
    'Standard Reference',
    null,
    '016ab770fe165ce1742ab8e2d4a071b3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '016ab770fe165ce1742ab8e2d4a071b3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '5 m/s^2'),
            ('B', '10 m/s^2'),
            ('C', '20 m/s^2'),
            ('D', '40 m/s^2')
           ) as v(label, option_text)
 where q.question_hash = '016ab770fe165ce1742ab8e2d4a071b3'
on conflict (question_id, label) do nothing;

-- science_tech | nuclear-technology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'nuclear-technology'),
    'The energy released in the Sun is produced mainly by:',
    'The Sun converts about 600 million tonnes of hydrogen into helium every second by thermonuclear fusion in its core, at temperatures of about 15 million kelvin.',
    'easy',
    'NCERT Class XII',
    null,
    '424f1b22bd8485060b407f325b588b53'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '424f1b22bd8485060b407f325b588b53'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Nuclear fission of uranium'),
            ('B', 'Nuclear fusion of hydrogen into helium'),
            ('C', 'Chemical combustion of hydrogen'),
            ('D', 'Radioactive decay of thorium')
           ) as v(label, option_text)
 where q.question_hash = '424f1b22bd8485060b407f325b588b53'
on conflict (question_id, label) do nothing;

-- science_tech | nuclear-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'nuclear-technology'),
    'The natural abundance of uranium-235 in natural uranium is about:',
    'Natural uranium contains about 0.7 per cent U-235, 0.72 per cent U-234 and the remainder U-238; reactors require the fissile U-235 content to be raised by enrichment.',
    'medium',
    'Standard Reference',
    null,
    'ab6c98a39988e2c5ea96f6b2f2e7a04f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ab6c98a39988e2c5ea96f6b2f2e7a04f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '0.7 per cent'),
            ('B', '3 per cent'),
            ('C', '20 per cent'),
            ('D', '70 per cent')
           ) as v(label, option_text)
 where q.question_hash = 'ab6c98a39988e2c5ea96f6b2f2e7a04f'
on conflict (question_id, label) do nothing;

-- science_tech | nuclear-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'nuclear-technology'),
    'India''s three-stage nuclear programme consists of:',
    'Stage one uses PHWRs burning natural uranium, stage two fast breeder reactors using plutonium-239 to breed U-233, and stage three thorium-fueled reactors using U-233 produced from thorium-232.',
    'medium',
    'Standard Reference',
    null,
    '690d189b08d75d3ac1effe9b43eb946d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '690d189b08d75d3ac1effe9b43eb946d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Gas-cooled and light water reactors only'),
            ('B', 'Pressurised heavy water and boiling water reactors only'),
            ('C', 'Fast breeder and thorium reactors only'),
            ('D', 'PHWRs, fast breeder reactors and thorium-based reactors')
           ) as v(label, option_text)
 where q.question_hash = '690d189b08d75d3ac1effe9b43eb946d'
on conflict (question_id, label) do nothing;

-- science_tech | nuclear-technology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'nuclear-technology'),
    'In India''s thorium fuel cycle, thorium-232 is converted into uranium-233 by:',
    'Thorium-232 captures a neutron to become thorium-233, which undergoes two beta decays to form uranium-233, a fissile nuclide suitable for use in stage three reactors.',
    'hard',
    'Standard Reference',
    null,
    '6172c9a727c9ecd5f912c4a207c6a5fc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '6172c9a727c9ecd5f912c4a207c6a5fc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Proton bombardment'),
            ('B', 'Thermal decomposition'),
            ('C', 'Neutron capture followed by beta decay'),
            ('D', 'Neutron bombardment of uranium-238')
           ) as v(label, option_text)
 where q.question_hash = '6172c9a727c9ecd5f912c4a207c6a5fc'
on conflict (question_id, label) do nothing;

-- science_tech | nuclear-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'nuclear-technology'),
    'The Prototype Fast Breeder Reactor (PFBR) at Kalpakkam has a rated capacity of:',
    'The PFBR is a 500 MW sodium-cooled fast breeder reactor at Kalpakkam, designed to breed uranium-233 from thorium-232 and plutonium-239 from uranium-238.',
    'medium',
    'Standard Reference',
    null,
    '993a713b3c6dee51af2afc00720a7a5c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '993a713b3c6dee51af2afc00720a7a5c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '220 MW'),
            ('B', '500 MW'),
            ('C', '1000 MW'),
            ('D', '70 MW')
           ) as v(label, option_text)
 where q.question_hash = '993a713b3c6dee51af2afc00720a7a5c'
on conflict (question_id, label) do nothing;

-- science_tech | nuclear-technology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'nuclear-technology'),
    'The Advanced Heavy Water Reactor (AHWR) at Kakrapar is notable because it:',
    'The 300 MW AHWR at Kakrapar is India''s first thorium-fuelled reactor, using thorium-233 oxide fuel in a pressurised heavy water primary coolant circuit, achieving criticality in 2018.',
    'hard',
    'Standard Reference',
    null,
    '23d393528761af580be645d8e1423e8d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '23d393528761af580be645d8e1423e8d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Uses heavy water as coolant and thorium-233 as fuel'),
            ('B', 'Uses sodium as coolant and plutonium as fuel'),
            ('C', 'Is a gas-cooled reactor using natural uranium'),
            ('D', 'Uses fast neutrons and molten salt coolant')
           ) as v(label, option_text)
 where q.question_hash = '23d393528761af580be645d8e1423e8d'
on conflict (question_id, label) do nothing;

-- science_tech | nuclear-technology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'nuclear-technology'),
    'The Rajasthan Atomic Power Station is located at:',
    'RAPS is at Rawatbhata, near Kota in Rajasthan, and is India''s largest nuclear power station by installed capacity, with a programme of 700 MW PHWR units.',
    'easy',
    'Standard Reference',
    null,
    'fa6b6df3da457e31d9b140ab79222cf4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'fa6b6df3da457e31d9b140ab79222cf4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kakrapara in Gujarat'),
            ('B', 'Kaiga in Karnataka'),
            ('C', 'Rawatbhata in Rajasthan'),
            ('D', 'Tarapur in Maharashtra')
           ) as v(label, option_text)
 where q.question_hash = 'fa6b6df3da457e31d9b140ab79222cf4'
on conflict (question_id, label) do nothing;

-- science_tech | nuclear-technology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'nuclear-technology'),
    'The Kakrapar Atomic Power Station is situated in:',
    'Kakrapar, in the Tapi district of Gujarat, hosts India''s first indigenously designed 220 MWe PHWR and, since 2018, the 300 MW AHWR.',
    'easy',
    'Standard Reference',
    null,
    '2fca3538a56d04199a580123d9d58629'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '2fca3538a56d04199a580123d9d58629'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Tamil Nadu'),
            ('B', 'Rajasthan'),
            ('C', 'Uttar Pradesh'),
            ('D', 'Gujarat')
           ) as v(label, option_text)
 where q.question_hash = '2fca3538a56d04199a580123d9d58629'
on conflict (question_id, label) do nothing;

-- science_tech | nuclear-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'nuclear-technology'),
    'The Narora Atomic Power Station (NAPS) is located in:',
    'NAPS is in Bulandshahr district of Uttar Pradesh on the Ganga, and its first unit was India''s first indigenously designed and constructed 220 MWe heavy water reactor.',
    'medium',
    'Standard Reference',
    null,
    '10203e783c005ae9d7e52574e4cb5a83'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '10203e783c005ae9d7e52574e4cb5a83'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Uttar Pradesh'),
            ('B', 'Gujarat'),
            ('C', 'Karnataka'),
            ('D', 'Rajasthan')
           ) as v(label, option_text)
 where q.question_hash = '10203e783c005ae9d7e52574e4cb5a83'
on conflict (question_id, label) do nothing;

-- science_tech | nuclear-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'nuclear-technology'),
    'India''s first nuclear power plant was established at:',
    'The Tarapur Atomic Power Station in Maharashtra, commissioned in 1969, was India''s first nuclear power plant, operating under the Atomic Energy Commission with BARC as the implementing agency.',
    'medium',
    'Standard Reference',
    null,
    '512d36e83fb347d10118db2e36227b33'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '512d36e83fb347d10118db2e36227b33'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kakrapara in Gujarat'),
            ('B', 'Kalpakkam in Tamil Nadu'),
            ('C', 'Tarapur in Maharashtra'),
            ('D', 'Rawatbhata in Rajasthan')
           ) as v(label, option_text)
 where q.question_hash = '512d36e83fb347d10118db2e36227b33'
on conflict (question_id, label) do nothing;

-- science_tech | nuclear-technology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'nuclear-technology'),
    'Which of the following statements about the Comprehensive Nuclear-Test-Ban Treaty is correct?',
    'The CTBT, signed on 24 September 1996, bans all nuclear explosions, with underground tests allowed only if verified; it requires 44 ratifications to enter into force and India has signed but not ratified it.',
    'hard',
    'Standard Reference',
    null,
    '081bf2c57e3adcc71f4c6562bcfcbfaa'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '081bf2c57e3adcc71f4c6562bcfcbfaa'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a bilateral treaty between India and Pakistan'),
            ('B', 'It entered into force in 1996 after 44 ratifications'),
            ('C', 'India has ratified the treaty and it is in force for it'),
            ('D', 'It bans only underground nuclear tests')
           ) as v(label, option_text)
 where q.question_hash = '081bf2c57e3adcc71f4c6562bcfcbfaa'
on conflict (question_id, label) do nothing;

-- science_tech | nuclear-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'nuclear-technology'),
    'The International Atomic Energy Agency (IAEA) was established in:',
    'The IAEA was established in 1957 as an autonomous intergovernmental organisation under the aegis of the United Nations, with its headquarters in Vienna, and it safeguards nuclear material.',
    'medium',
    'Standard Reference',
    null,
    'f0318ba9bbb81cc4f0a4c7d97196f1ab'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f0318ba9bbb81cc4f0a4c7d97196f1ab'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1969'),
            ('B', '1957'),
            ('C', '1963'),
            ('D', '1972')
           ) as v(label, option_text)
 where q.question_hash = 'f0318ba9bbb81cc4f0a4c7d97196f1ab'
on conflict (question_id, label) do nothing;

-- science_tech | nuclear-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'nuclear-technology'),
    'Pokhran-I, conducted in May 1974, was codenamed:',
    'Pokhran-I of May 1974, code-named Smiling Buddha, involved five underground nuclear tests, and was followed by Pokhran-II in 1998 under the code name Operation Shakti.',
    'medium',
    'Standard Reference',
    null,
    '53c9d90d7be290c4be780cf90a340616'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '53c9d90d7be290c4be780cf90a340616'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Operation Vajra'),
            ('B', 'Pokhran-II'),
            ('C', 'Operation Shakti'),
            ('D', 'Smiling Buddha')
           ) as v(label, option_text)
 where q.question_hash = '53c9d90d7be290c4be780cf90a340616'
on conflict (question_id, label) do nothing;

-- science_tech | nuclear-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'nuclear-technology'),
    'How many nuclear tests were conducted in Pokhran-II in 1998?',
    'Pokhran-II in May 1998 involved three underground tests, two on 11 August and one on 13 August 1998, and was followed by Operation Shakti in 1998.',
    'medium',
    'Standard Reference',
    null,
    '236c47c5b32af39b48721b3906789439'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '236c47c5b32af39b48721b3906789439'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Seven'),
            ('B', 'Two'),
            ('C', 'Three'),
            ('D', 'Five')
           ) as v(label, option_text)
 where q.question_hash = '236c47c5b32af39b48721b3906789439'
on conflict (question_id, label) do nothing;

-- science_tech | nuclear-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'nuclear-technology'),
    'The three components of India''s nuclear triad are:',
    'The triad comprises land-based long-range missiles such as Agni, air-launched nuclear capable cruise missiles, and sea-launched ballistic missiles such as K-15 and K-4 carried by INS Arihant.',
    'medium',
    'Standard Reference',
    null,
    'd86892bad4c6433f7d32771600fc4fb4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd86892bad4c6433f7d32771600fc4fb4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Missiles, radars and command systems'),
            ('B', 'Land-based, air-based and sea-based nuclear capable delivery systems'),
            ('C', 'Land-based missiles, aircraft carriers and submarines'),
            ('D', 'Nuclear reactors, reprocessing plants and enrichment plants')
           ) as v(label, option_text)
 where q.question_hash = 'd86892bad4c6433f7d32771600fc4fb4'
on conflict (question_id, label) do nothing;

-- science_tech | nuclear-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'nuclear-technology'),
    'The K-15 missile, carried by the nuclear-powered ballistic missile submarine INS Arihant, has a range of about:',
    'K-15 (Kuthira) is a submarine-launched ballistic missile with a range of about 750 km, while the longer ranged K-4 has a range of about 3500 km.',
    'medium',
    'Standard Reference',
    null,
    '4e634226fc951868499f0711345b3051'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '4e634226fc951868499f0711345b3051'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '750 km'),
            ('B', '3500 km'),
            ('C', '5000 km'),
            ('D', '150 km')
           ) as v(label, option_text)
 where q.question_hash = '4e634226fc951868499f0711345b3051'
on conflict (question_id, label) do nothing;

-- science_tech | nuclear-technology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'nuclear-technology'),
    'Which of the following particles has the greatest penetrating power and is uncharged?',
    'Gamma rays are uncharged electromagnetic radiation and are the most penetrating of the three common emissions, passing through matter and being stopped only by thick lead or concrete.',
    'easy',
    'NCERT Class XII',
    null,
    '3493d1c1b6fc9532178609e9475331ba'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '3493d1c1b6fc9532178609e9475331ba'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Alpha particle'),
            ('B', 'Beta particle'),
            ('C', 'Gamma ray'),
            ('D', 'Neutron')
           ) as v(label, option_text)
 where q.question_hash = '3493d1c1b6fc9532178609e9475331ba'
on conflict (question_id, label) do nothing;

-- science_tech | defence-technology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'defence-technology'),
    'The Defence Research and Development Organisation (DRDO) was established in:',
    'DRDO was set up in 1958 under the Department of Defence Research and Development in the Ministry of Defence, with its headquarters in New Delhi, to build indigenous defence systems.',
    'easy',
    'Standard Reference',
    null,
    'eea84ab59b08f48b1e74503516301c5a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'eea84ab59b08f48b1e74503516301c5a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1958'),
            ('B', '1970'),
            ('C', '1969'),
            ('D', '1942')
           ) as v(label, option_text)
 where q.question_hash = 'eea84ab59b08f48b1e74503516301c5a'
on conflict (question_id, label) do nothing;

-- science_tech | defence-technology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'defence-technology'),
    'The BrahMos supersonic cruise missile is developed jointly by India and:',
    'BrahMos is a joint venture between India and Russia in which Bharat Dynamics and the Russian NPO Mashinostroyenia hold equal shares through BrahMos Aerospace India Limited.',
    'easy',
    'Standard Reference',
    null,
    'be07f5ec86194a9423e5d65982d7c44c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'be07f5ec86194a9423e5d65982d7c44c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'United States'),
            ('B', 'Russia'),
            ('C', 'France'),
            ('D', 'Israel')
           ) as v(label, option_text)
 where q.question_hash = 'be07f5ec86194a9423e5d65982d7c44c'
on conflict (question_id, label) do nothing;

-- science_tech | defence-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'defence-technology'),
    'Which of the following is a correct feature of the Akash surface-to-air missile?',
    'Akash is a three-stage, 50 km long missile with a range of 25 to 70 km, and it uses a ramjet in the second stage with a solid propellant booster, now operational in the Indian Air Force.',
    'medium',
    'Standard Reference',
    null,
    '46af46b7e967a194cca11c1c46f9ed5e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '46af46b7e967a194cca11c1c46f9ed5e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is launched only from submarines'),
            ('B', 'It is a single-stage liquid fuelled rocket'),
            ('C', 'It is a hypersonic glide vehicle'),
            ('D', 'It is a three-stage missile with a range of 25 to 70 km')
           ) as v(label, option_text)
 where q.question_hash = '46af46b7e967a194cca11c1c46f9ed5e'
on conflict (question_id, label) do nothing;

-- science_tech | defence-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'defence-technology'),
    'The Agni-V, India''s longest range strategic missile, has an approximate range of:',
    'Agni-V, canisterised and inducted in 2021, has a range of more than 5000 km, often quoted as about 6500 km, making it a long-range strategic system.',
    'medium',
    'Standard Reference',
    null,
    'fca05e14c609702dba36521fcc50a18f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'fca05e14c609702dba36521fcc50a18f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '3500 km'),
            ('B', '2000 km'),
            ('C', '6500 km'),
            ('D', '800 km')
           ) as v(label, option_text)
 where q.question_hash = 'fca05e14c609702dba36521fcc50a18f'
on conflict (question_id, label) do nothing;

-- science_tech | defence-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'defence-technology'),
    'The Prithvi-II, a liquid-fuelled road-mobile ballistic missile, has a range of about:',
    'Prithvi-II has a range of about 3500 km and can carry a payload of 500 to 1000 kg, while the shorter Prithvi-I is a 700 km range system.',
    'medium',
    'Standard Reference',
    null,
    '12f1c9e94b66e47751f1408a6ccac24d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '12f1c9e94b66e47751f1408a6ccac24d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '700 km'),
            ('B', '150 km'),
            ('C', '5000 km'),
            ('D', '3500 km')
           ) as v(label, option_text)
 where q.question_hash = '12f1c9e94b66e47751f1408a6ccac24d'
on conflict (question_id, label) do nothing;

-- science_tech | defence-technology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'defence-technology'),
    'The Light Combat Aircraft (LCA) Tejas is a indigenous multi-role fighter aircraft developed by:',
    'The Tejas was designed by the Aeronautical Development and Complex of DRDO and built by Hindustan Aeronautics Limited, and it is a fly-by-wire aircraft with a tailless compound delta wing.',
    'easy',
    'Standard Reference',
    null,
    '1e6f878537da14f2f1a55f8573b9b429'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '1e6f878537da14f2f1a55f8573b9b429'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Hindustan Aeronautics Limited and DRDO'),
            ('B', 'Tata Advanced Systems'),
            ('C', 'Mahindra Aerospace'),
            ('D', 'Adani Defence and Aerospace')
           ) as v(label, option_text)
 where q.question_hash = '1e6f878537da14f2f1a55f8573b9b429'
on conflict (question_id, label) do nothing;

-- science_tech | defence-technology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'defence-technology'),
    'The Rafale fighter aircraft inducted into the Indian Air Force is manufactured by:',
    'India ordered 36 Rafale fighter jets from Dassault Aviation of France in 2019, and the first was formally inducted into the Indian Air Force in 2020.',
    'easy',
    'Standard Reference',
    null,
    '25b0ac326e43ad033a6280645420f565'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '25b0ac326e43ad033a6280645420f565'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Saab'),
            ('B', 'Dassault Aviation'),
            ('C', 'Eurofighter'),
            ('D', 'Lockheed Martin')
           ) as v(label, option_text)
 where q.question_hash = '25b0ac326e43ad033a6280645420f565'
on conflict (question_id, label) do nothing;

-- science_tech | defence-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'defence-technology'),
    'The C-17 Globemaster III is a heavy lift strategic airlifter used by the Indian Air Force to:',
    'The C-17 can airlift about 77 tonnes of cargo over 4500 km and has been used for high-altitude resupply, disaster relief and evacuation operations such as Operation Raahat and the COVID-19 airlift.',
    'medium',
    'Standard Reference',
    null,
    '254c8e773a661ec809f037e8bdbd5310'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '254c8e773a661ec809f037e8bdbd5310'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Conduct long-range maritime surveillance'),
            ('B', 'Provide airborne command and control'),
            ('C', 'Carry out aerial refuelling'),
            ('D', 'Transport heavy cargo and undertake humanitarian relief missions')
           ) as v(label, option_text)
 where q.question_hash = '254c8e773a661ec809f037e8bdbd5310'
on conflict (question_id, label) do nothing;

-- science_tech | defence-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'defence-technology'),
    'The Arjun main battle tank developed indigenously in India has a combat weight of about:',
    'The Arjun weighs about 72 tonnes with a 1200 horsepower engine, is built by the Heavy Vehicles Factory at Avadi, and was standardised for service in 2012.',
    'medium',
    'Standard Reference',
    null,
    '23ab6e22f095a3603ce5d00782376a46'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '23ab6e22f095a3603ce5d00782376a46'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '50 tonnes'),
            ('B', '90 tonnes'),
            ('C', '72 tonnes'),
            ('D', '36 tonnes')
           ) as v(label, option_text)
 where q.question_hash = '23ab6e22f095a3603ce5d00782376a46'
on conflict (question_id, label) do nothing;

-- science_tech | defence-technology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'defence-technology'),
    'The Scorpene class submarines inducted into the Indian Navy are of which type?',
    'The Scorpene (Kalvari) class are 1,600 tonne conventional submarines with air-independent fuel cell propulsion, and six were built by Mazagon Dock in a technical transfer partnership with France.',
    'hard',
    'Standard Reference',
    null,
    'fe6f476d9eff44b815c6caea9cc65072'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'fe6f476d9eff44b815c6caea9cc65072'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Air-independent fuel cell AIP conventional submarines'),
            ('B', 'Diesel-electric submarines without AIP'),
            ('C', 'Amphibious transport submarines'),
            ('D', 'Nuclear powered attack submarines')
           ) as v(label, option_text)
 where q.question_hash = 'fe6f476d9eff44b815c6caea9cc65072'
on conflict (question_id, label) do nothing;

-- science_tech | defence-technology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'defence-technology'),
    'Which of the following is true of INS Arihant, the nuclear-powered submarine of the Indian Navy?',
    'INS Arihant, commissioned in 2016, is India''s first indigenous nuclear-powered ballistic missile submarine, designed to carry the K-15 and K-4 submarine-launched ballistic missiles.',
    'easy',
    'Standard Reference',
    null,
    '9eb8cc4eb8bc928abbb0ca6837d2e3d5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '9eb8cc4eb8bc928abbb0ca6837d2e3d5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Large aircraft carrier'),
            ('B', 'Nuclear-powered ballistic missile submarine'),
            ('C', 'Guided missile destroyer'),
            ('D', 'Deep submergence rescue vessel')
           ) as v(label, option_text)
 where q.question_hash = '9eb8cc4eb8bc928abbb0ca6837d2e3d5'
on conflict (question_id, label) do nothing;

-- science_tech | defence-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'defence-technology'),
    'The post of Chief of Defence Staff in the Indian armed forces was created in:',
    'The Chief of Defence Staff post was created in 2019 under the Armed Forces ranks revision, with General Bipin Rawat as the first CDS, and the CDS heads the integrated theatre commands.',
    'medium',
    'Standard Reference',
    null,
    '26392e28adad64cac5d1f79e500185ff'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '26392e28adad64cac5d1f79e500185ff'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2017'),
            ('B', '2019'),
            ('C', '2021'),
            ('D', '2015')
           ) as v(label, option_text)
 where q.question_hash = '26392e28adad64cac5d1f79e500185ff'
on conflict (question_id, label) do nothing;

-- science_tech | defence-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'defence-technology'),
    'The proposal to reorganise the Indian armed forces into integrated theatre commands envisages:',
    'The widely discussed plan is to convert the existing service commands into theatre commands, generally three theatres, with the two-and-a-half services merged under an integrated command in each theatre.',
    'medium',
    'Standard Reference',
    null,
    '78345e8acc18da235c4e3dfc6e41c32a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '78345e8acc18da235c4e3dfc6e41c32a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Seven commands aligned with the seven Union Territories'),
            ('B', 'Five integrated theatre commands each handling specific geographical zones'),
            ('C', 'Three commands, each combining two of the existing services'),
            ('D', 'A single unified command replacing all service headquarters')
           ) as v(label, option_text)
 where q.question_hash = '78345e8acc18da235c4e3dfc6e41c32a'
on conflict (question_id, label) do nothing;

-- science_tech | defence-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'defence-technology'),
    'Mission Shakti, conducted on 27 March 2019, was an:',
    'Operation Shakti was an anti-satellite test in which a DRDO missile destroyed a target satellite in low Earth orbit, demonstrating India''s space capability under the national security guidelines.',
    'medium',
    'Standard Reference',
    null,
    '532fc16707f559bfc75ca9642709dbfd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '532fc16707f559bfc75ca9642709dbfd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Crewed mission to orbit'),
            ('B', 'Lunar lander mission'),
            ('C', 'Missile range test'),
            ('D', 'Anti-satellite test')
           ) as v(label, option_text)
 where q.question_hash = '532fc16707f559bfc75ca9642709dbfd'
on conflict (question_id, label) do nothing;

-- science_tech | defence-technology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'defence-technology'),
    'Which of the following is a correct pairing of Indian UAVs with their makers?',
    'NASA, the Netra Advanced System for Aero-surveillance, is a medium altitude long endurance UAV developed by DRDO, as is the Rustom, which is made by the Centre for Military Electronics and Combat Vehicles.',
    'hard',
    'Standard Reference',
    null,
    '5b63750530259f4d5f871eba8de93640'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '5b63750530259f4d5f871eba8de93640'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'NASA - DRDO'),
            ('B', 'Netra - Hindustan Aeronautics Limited'),
            ('C', 'CATS Warrior - Indian Space Research Organisation'),
            ('D', 'Rustom - Tata Advanced Systems')
           ) as v(label, option_text)
 where q.question_hash = '5b63750530259f4d5f871eba8de93640'
on conflict (question_id, label) do nothing;

-- science_tech | defence-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'defence-technology'),
    'INS Shardul, an acoustic research ship of the Indian Navy, is used for:',
    'INS Shardul, an acoustic research ship, conducts anti-submarine warfare and surveillance trials, including long-range detection of submarines in the Indian Ocean region.',
    'medium',
    'Standard Reference',
    null,
    '531a04f7879edc647f4f67006ebeaaea'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '531a04f7879edc647f4f67006ebeaaea'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Naval aviation training'),
            ('B', 'Hydrographic surveying'),
            ('C', 'Anti-submarine warfare trials'),
            ('D', 'Cape-class patrol duties')
           ) as v(label, option_text)
 where q.question_hash = '531a04f7879edc647f4f67006ebeaaea'
on conflict (question_id, label) do nothing;

-- science_tech | defence-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'defence-technology'),
    'Which of the following air defence systems is developed by DRDO for the Indian Air Force?',
    'Akash and the Medium Range Surface-to-Air Missile (MRSAM) are indigenously developed by DRDO, while the S-400, S-300, Patriot and BrahMos are imported systems.',
    'medium',
    'Standard Reference',
    null,
    '445d453824dc6a2caadd921d4554b686'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '445d453824dc6a2caadd921d4554b686'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'S-400 and S-300'),
            ('B', 'Patriot and HAWK'),
            ('C', 'S-400 and BrahMos'),
            ('D', 'Akash and MRSAM')
           ) as v(label, option_text)
 where q.question_hash = '445d453824dc6a2caadd921d4554b686'
on conflict (question_id, label) do nothing;

-- science_tech | defence-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'defence-technology'),
    'India''s official nuclear doctrine is based on the principle of:',
    'The 1999 nuclear doctrine states that India will not use nuclear weapons first and will use them only in extreme cases, backed by credible minimum deterrence and civilian political control.',
    'medium',
    'Standard Reference',
    null,
    '16e4788b77f5cbab29bed4c3466751ee'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '16e4788b77f5cbab29bed4c3466751ee'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Credible minimum deterrence with no first use'),
            ('B', 'Retaliatory mass retaliation'),
            ('C', 'Defence of nuclear installations only'),
            ('D', 'First use against an adversary')
           ) as v(label, option_text)
 where q.question_hash = '16e4788b77f5cbab29bed4c3466751ee'
on conflict (question_id, label) do nothing;

-- science_tech | defence-technology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'defence-technology'),
    'The Technology Development Fund (TDF) scheme is operated by:',
    'TDF was set up by DRDO to support innovation in niche defence technologies through industry, start-ups and academia, and it is managed through a fund that disburses project grants.',
    'hard',
    'Standard Reference',
    null,
    '4e113cce1bd37b8281f627f78a5e11cd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '4e113cce1bd37b8281f627f78a5e11cd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Department of Atomic Energy'),
            ('B', 'Defence Research and Development Organisation'),
            ('C', 'Indian Council of Agricultural Research'),
            ('D', 'Council of Scientific and Industrial Research')
           ) as v(label, option_text)
 where q.question_hash = '4e113cce1bd37b8281f627f78a5e11cd'
on conflict (question_id, label) do nothing;

-- science_tech | defence-technology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'defence-technology'),
    'Which of the following is a DRDO laboratory?',
    'The Defence Electronics Laboratory at Bengaluru is one of the DRDO laboratories, alongside the Defence Research and Development Establishment at Rawatbhata and the Defence Metallurgical Research Laboratory at Ranchi.',
    'hard',
    'Standard Reference',
    null,
    '296283f5712cdc673bdb2b530900b607'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '296283f5712cdc673bdb2b530900b607'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Defence Electronics Laboratory, Bengaluru'),
            ('B', 'National Aerospace Laboratories, Bengaluru'),
            ('C', 'Central Fuel Research Institute, Dhanbad'),
            ('D', 'Indian Institute of Petroleum, Dehradun')
           ) as v(label, option_text)
 where q.question_hash = '296283f5712cdc673bdb2b530900b607'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'CERT-In, the national nodal agency for cybersecurity incidents in India, was established in:',
    'CERT-In was established in 2000 under the Information Technology Act, 2000, and in 2022 it directed that incidents be reported within six hours of detection.',
    'easy',
    'Standard Reference',
    null,
    'e0f69fead256237a4f5e522175295bbe'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e0f69fead256237a4f5e522175295bbe'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2004'),
            ('B', '2011'),
            ('C', '2000'),
            ('D', '1999')
           ) as v(label, option_text)
 where q.question_hash = 'e0f69fead256237a4f5e522175295bbe'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'A zero-day exploit refers to:',
    'A zero-day exploit takes advantage of a vulnerability unknown to the vendor, so no patch is available when the attack occurs, which is why such exploits are especially dangerous.',
    'easy',
    'Standard Reference',
    null,
    '3e099b125958751055a2b0b9bd49d944'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '3e099b125958751055a2b0b9bd49d944'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'An attack that destroys all data within a day'),
            ('B', 'Software that is free for a limited period'),
            ('C', 'A malware that spreads through a messaging application'),
            ('D', 'An attack that exploits a vulnerability on the day it is disclosed')
           ) as v(label, option_text)
 where q.question_hash = '3e099b125958751055a2b0b9bd49d944'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'The RSA algorithm, used for public key cryptography, was developed by:',
    'Ron Rivest, Adi Shamir and Leonard Adleman published the RSA algorithm in 1977, and it relies on the difficulty of factoring a product of two large primes.',
    'easy',
    'Standard Reference',
    null,
    '89cbda9d7fc26cdb9e0f6ba63a8c3aa5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '89cbda9d7fc26cdb9e0f6ba63a8c3aa5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Claude Shannon and Alan Turing'),
            ('B', 'Rivest, Shamir and Adleman'),
            ('C', 'Diffie and Hellman'),
            ('D', 'Linus Torvalds and Ken Thompson')
           ) as v(label, option_text)
 where q.question_hash = '89cbda9d7fc26cdb9e0f6ba63a8c3aa5'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'The AES algorithm used for data encryption is a:',
    'AES, based on the Rijndael cipher developed by Vincent Rijmen and Joan Daemen, was adopted as a standard by NIST in 2001 and replaced DES as the widely used symmetric cipher.',
    'medium',
    'Standard Reference',
    null,
    'a6a29c30690041fe1c12b6ca9fdb0268'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a6a29c30690041fe1c12b6ca9fdb0268'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Hashing function'),
            ('B', 'Symmetric block cipher with key sizes of 128, 192 or 256 bits'),
            ('C', 'Stream cipher based on elliptic curves'),
            ('D', 'Public key algorithm')
           ) as v(label, option_text)
 where q.question_hash = 'a6a29c30690041fe1c12b6ca9fdb0268'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'A SHA-256 hash value consists of:',
    'SHA-256 produces a 256-bit digest, while SHA-1 gives 160 bits and SHA-512 gives 512 bits; hash functions are one-way and are used in digital signatures and integrity checks.',
    'medium',
    'Standard Reference',
    null,
    '6240af12e5cef5120e499c4c0753860a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '6240af12e5cef5120e499c4c0753860a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '256 bits'),
            ('B', '128 bits'),
            ('C', '512 bits'),
            ('D', '1024 bits')
           ) as v(label, option_text)
 where q.question_hash = '6240af12e5cef5120e499c4c0753860a'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'The first cryptocurrency, Bitcoin, was introduced in:',
    'Bitcoin''s white paper was published in 2008 by Satoshi Nakamoto, and the first block, the genesis block, was mined in 2009, introducing blockchain-based decentralised ledgers.',
    'easy',
    'Standard Reference',
    null,
    'c6eca594541b607485592615d2ba2f42'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'c6eca594541b607485592615d2ba2f42'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2013'),
            ('B', '2017'),
            ('C', '2005'),
            ('D', '2009')
           ) as v(label, option_text)
 where q.question_hash = 'c6eca594541b607485592615d2ba2f42'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'Smart contracts, which execute automatically when predefined conditions are met, are best known from:',
    'Ethereum, launched in 2015, popularised programmable smart contracts that run on a virtual machine, while the Bitcoin blockchain mainly records transfers of value.',
    'medium',
    'Standard Reference',
    null,
    'ae36a2242000722534a7ed475b52cd39'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'ae36a2242000722534a7ed475b52cd39'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The ARPANET'),
            ('B', 'The Bitcoin network'),
            ('C', 'The Ethereum blockchain'),
            ('D', 'The IP protocol suite')
           ) as v(label, option_text)
 where q.question_hash = 'ae36a2242000722534a7ed475b52cd39'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'In cloud computing, the service model in which the customer manages the operating system, middleware and applications but not the hardware is called:',
    'Platform as a Service gives customers an environment with the operating system, runtime and development tools managed by the provider, while IaaS leaves the customer responsible for the guest OS and above.',
    'medium',
    'Standard Reference',
    null,
    '95f270353a70cd9300eeaf62330e2b74'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '95f270353a70cd9300eeaf62330e2b74'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'SaaS'),
            ('B', 'PaaS'),
            ('C', 'IaaS'),
            ('D', 'DaaS')
           ) as v(label, option_text)
 where q.question_hash = '95f270353a70cd9300eeaf62330e2b74'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'In the 5G spectrum auctions conducted in India in 2021, the 3400-3600 MHz band was auctioned to:',
    'The 2021 auction offered 410 units of spectrum in the 3400-3600 MHz band along with the 3600-3800 MHz band and 700 MHz for rural use, with licences granted to telecom operators.',
    'hard',
    'Standard Reference',
    null,
    '28e362c90a2ed0abea4371d47bbe19e4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '28e362c90a2ed0abea4371d47bbe19e4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Telecom operators for 5G services'),
            ('B', 'Satellite operators only'),
            ('C', 'Department of Telecom for emergency use'),
            ('D', 'Railways for signalling')
           ) as v(label, option_text)
 where q.question_hash = '28e362c90a2ed0abea4371d47bbe19e4'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'Which of the following is a key 5G network technology that uses many antenna elements to improve signal capacity?',
    'Massive MIMO, combined with OFDM and millimetre wave spectrum, underpins 5G by using large base station antenna arrays for beamforming and higher spectral efficiency.',
    'medium',
    'Standard Reference',
    null,
    'f65ea9a85166a4552b7b5e28d93beddc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'f65ea9a85166a4552b7b5e28d93beddc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Time Division Duplex'),
            ('B', 'Orthogonal Frequency Division Multiplexing'),
            ('C', 'Massive MIMO'),
            ('D', 'Frequency Division Multiple Access')
           ) as v(label, option_text)
 where q.question_hash = 'f65ea9a85166a4552b7b5e28d93beddc'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'The Internet of Things (IoT) essentially refers to:',
    'IoT is a network of connected physical devices that sense, collect and exchange data through the internet, with applications in smart homes, agriculture, health monitoring and industry.',
    'easy',
    'Standard Reference',
    null,
    '2a2d273f76ecef91b1848b5424bd3f8c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '2a2d273f76ecef91b1848b5424bd3f8c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A high-speed wired network for universities'),
            ('B', 'A protocol for encrypting web traffic'),
            ('C', 'A type of cloud storage service'),
            ('D', 'A network of physical devices embedded with sensors and connected to exchange data')
           ) as v(label, option_text)
 where q.question_hash = '2a2d273f76ecef91b1848b5424bd3f8c'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'An RFID tag is identified by a reader using:',
    'Radio frequency identification uses electromagnetic waves in the radio spectrum, with the tag storing or reflecting a signal that a reader converts into data; NFC operates at 13.56 MHz.',
    'easy',
    'Standard Reference',
    null,
    '8e2e18a7d06fecb42822d67d1e9ab083'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '8e2e18a7d06fecb42822d67d1e9ab083'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Radio frequency electromagnetic waves'),
            ('B', 'Visible light'),
            ('C', 'Acoustic waves'),
            ('D', 'Infrared radiation')
           ) as v(label, option_text)
 where q.question_hash = '8e2e18a7d06fecb42822d67d1e9ab083'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'Which biometric attributes are used in Aadhaar authentication besides fingerprints?',
    'Aadhaar uses fingerprint, iris and face authentication as mandated by the UIDAI, with facial recognition introduced for contactless verification, and the data is stored in encrypted form.',
    'medium',
    'Standard Reference',
    null,
    '3268c1e0ca7dcf1a0978b7f3c7281f6b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '3268c1e0ca7dcf1a0978b7f3c7281f6b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Only handwriting'),
            ('B', 'Iris and face'),
            ('C', 'Retina scan only'),
            ('D', 'Voice print only')
           ) as v(label, option_text)
 where q.question_hash = '3268c1e0ca7dcf1a0978b7f3c7281f6b'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'DigiLocker, the national digital locker service of India, was launched by:',
    'DigiLocker was launched in 2015 by the Ministry of Electronics and Information Technology to provide citizens with a secure platform to access and manage government documents digitally.',
    'easy',
    'Standard Reference',
    null,
    'fa2f0908a8f138287984cd0e10f4952b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'fa2f0908a8f138287984cd0e10f4952b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Unique Identification Authority of India'),
            ('B', 'Department of Revenue'),
            ('C', 'Reserve Bank of India'),
            ('D', 'Ministry of Electronics and Information Technology')
           ) as v(label, option_text)
 where q.question_hash = 'fa2f0908a8f138287984cd0e10f4952b'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'The Unified Payments Interface (UPI) is operated by:',
    'UPI, launched in 2016, is run by NPCI and links to the core banking systems of many banks, allowing 24x7 real-time peer-to-peer and merchant payments through a single app.',
    'easy',
    'Standard Reference',
    null,
    'c7899276880d63591ec21f56cad68f4f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c7899276880d63591ec21f56cad68f4f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ministry of Finance'),
            ('B', 'State Bank of India'),
            ('C', 'National Payments Corporation of India'),
            ('D', 'Reserve Bank of India')
           ) as v(label, option_text)
 where q.question_hash = 'c7899276880d63591ec21f56cad68f4f'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'The PARAM series of supercomputers in India is developed by:',
    'C-DAC developed the PARAM series under its Eklavya programme of indigenous supercomputers, and the PARAM supercomputing mission was later taken forward by the National Supercomputing Mission launched in 2015.',
    'medium',
    'Standard Reference',
    null,
    '606e0aad31f25beeeb3b9c034cb636e1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '606e0aad31f25beeeb3b9c034cb636e1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'DRDO, New Delhi'),
            ('B', 'C-DAC, Pune'),
            ('C', 'ISRO, Bengaluru'),
            ('D', 'IBM Research, New Delhi')
           ) as v(label, option_text)
 where q.question_hash = '606e0aad31f25beeeb3b9c034cb636e1'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'The basic unit of information in a quantum computer is a:',
    'A qubit can exist in a superposition of 0 and 1 states and can be entangled with other qubits, allowing a quantum computer to explore many states simultaneously.',
    'easy',
    'Standard Reference',
    null,
    '9bc08b0d644cec6f035d878f61cc6cdd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '9bc08b0d644cec6f035d878f61cc6cdd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Qubit'),
            ('B', 'Trist'),
            ('C', 'Byte'),
            ('D', 'Bit')
           ) as v(label, option_text)
 where q.question_hash = '9bc08b0d644cec6f035d878f61cc6cdd'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'The National Quantum Mission approved in India in 2022 provides support of about:',
    'The National Quantum Mission, with an outlay of about Rs 6,003 crore over five years, funds research in quantum communication, computing, sensing and materials and technology development.',
    'medium',
    'Standard Reference',
    null,
    '609fe45b4e91b447ee383f47bedea862'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '609fe45b4e91b447ee383f47bedea862'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rs 60,000 crore'),
            ('B', 'Rs 1,200 crore'),
            ('C', 'Rs 6,003 crore'),
            ('D', 'Rs 600 crore')
           ) as v(label, option_text)
 where q.question_hash = '609fe45b4e91b447ee383f47bedea862'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'The India Semiconductor Mission, approved in 2021, is aimed at:',
    'The mission, with fiscal support of about Rs 76,000 crore, aims to build semiconductor fabs, compound fabs and ATMP and OSAT units, with projects approved at Sanand in Gujarat and Dholera in Gujarat.',
    'medium',
    'Standard Reference',
    null,
    'e876dedfc5687adc55ed01c74101baa3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e876dedfc5687adc55ed01c74101baa3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Importing all semiconductor chips duty free'),
            ('B', 'Setting up only software design centres'),
            ('C', 'Developing organic semiconductors only'),
            ('D', 'Promoting semiconductor manufacturing including fabrication and packaging in India')
           ) as v(label, option_text)
 where q.question_hash = 'e876dedfc5687adc55ed01c74101baa3'
on conflict (question_id, label) do nothing;

-- science_tech | information-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'information-technology'),
    'Edge computing is different from traditional cloud computing in that it:',
    'Edge computing places processing and storage near the data source, which cuts latency, reduces bandwidth use and improves privacy, while cloud computing centralises resources in large data centres.',
    'medium',
    'Standard Reference',
    null,
    '401b42e4efd359bae654c3362d615853'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '401b42e4efd359bae654c3362d615853'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is used only for supercomputing'),
            ('B', 'Requires a constant high-speed internet link'),
            ('C', 'Processes data close to where it is generated'),
            ('D', 'Stores all data permanently on smartphones')
           ) as v(label, option_text)
 where q.question_hash = '401b42e4efd359bae654c3362d615853'
on conflict (question_id, label) do nothing;

-- science_tech | biotechnology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biotechnology'),
    'Bt cotton, approved for commercial cultivation in India in 2002, carries the gene for:',
    'Bt cotton carries the cry1Ac gene from Bacillus thuringiensis, which codes for a toxin protein that kills the cotton bollworm larvae when they feed on the plant.',
    'easy',
    'Standard Reference',
    null,
    '6f11b60513aec6d3046ff6a7404fbf6f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '6f11b60513aec6d3046ff6a7404fbf6f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Cry1Ac from Bacillus thuringiensis'),
            ('B', 'Cry3Ab from Bacillus thuringiensis'),
            ('C', 'Roundup Ready glyphosate tolerance'),
            ('D', 'A Bt gene from Bacillus sphaericus')
           ) as v(label, option_text)
 where q.question_hash = '6f11b60513aec6d3046ff6a7404fbf6f'
on conflict (question_id, label) do nothing;

-- science_tech | biotechnology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biotechnology'),
    'Bt brinjal, the transgenic eggplant developed with support from Mahyco, was:',
    'The Genetic Engineering Approval Committee cleared Bt brinjal in 2009 but the Government imposed a moratorium in 2010, and the crop is still not cultivated commercially in India.',
    'medium',
    'Standard Reference',
    null,
    '08a3c7b2f787a62c54f1d23ba696d448'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '08a3c7b2f787a62c54f1d23ba696d448'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Approved and released for commercial cultivation in 2010'),
            ('B', 'Placed under a moratorium in 2010 after environmental concerns'),
            ('C', 'Never developed in India'),
            ('D', 'Approved for export to Europe')
           ) as v(label, option_text)
 where q.question_hash = '08a3c7b2f787a62c54f1d23ba696d448'
on conflict (question_id, label) do nothing;

-- science_tech | biotechnology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biotechnology'),
    'Golden Rice is a genetically modified rice variety developed to provide:',
    'Golden Rice accumulates beta-carotene in the grain, which the body converts into vitamin A, and it was developed by the Philippine Rice Research Institute with support from the International Rice Research Institute.',
    'easy',
    'Standard Reference',
    null,
    '4126bc954655a6179260c9b4f45e1d83'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '4126bc954655a6179260c9b4f45e1d83'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Resistance to bacterial blight'),
            ('B', 'Shortening of the crop duration'),
            ('C', 'Higher protein content'),
            ('D', 'Provitamin A (beta-carotene) for combating vitamin A deficiency')
           ) as v(label, option_text)
 where q.question_hash = '4126bc954655a6179260c9b4f45e1d83'
on conflict (question_id, label) do nothing;

-- science_tech | biotechnology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biotechnology'),
    'GM mustard developed by a Delhi University team with support from Bayer CropScience was:',
    'The GEAC approved GM mustard for environmental release and commercial cultivation in October 2022 after a long evaluation, though the notification was later contested and the crop has not been widely cultivated.',
    'medium',
    'Standard Reference',
    null,
    '2ae0211b9b3f0f9188571d0774903e09'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '2ae0211b9b3f0f9188571d0774903e09'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Approved by GEAC in October 2022 for environmental release and commercial cultivation'),
            ('B', 'Never submitted for approval in India'),
            ('C', 'Approved only for trials in private farms'),
            ('D', 'Rejected outright by the GEAC in 2010')
           ) as v(label, option_text)
 where q.question_hash = '2ae0211b9b3f0f9188571d0774903e09'
on conflict (question_id, label) do nothing;

-- science_tech | biotechnology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biotechnology'),
    'The CRISPR-Cas9 gene editing system was adapted for genome editing by:',
    'Doudna and Charpentier showed in 2012 that Cas9 could be guided by a single RNA to cut DNA at a chosen site, and they shared the 2020 Nobel Prize in Chemistry for this work.',
    'easy',
    'Standard Reference',
    null,
    'cf10ea4b48f7a4ff3d095c618e44fe27'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'cf10ea4b48f7a4ff3d095c618e44fe27'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sydney Brenner and Hideshi Yamanaka'),
            ('B', 'Watson and Crick'),
            ('C', 'Jennifer Doudna and Emmanuelle Charpentier'),
            ('D', 'James Watson and Francis Crick')
           ) as v(label, option_text)
 where q.question_hash = 'cf10ea4b48f7a4ff3d095c618e44fe27'
on conflict (question_id, label) do nothing;

-- science_tech | biotechnology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biotechnology'),
    'The 2020 Nobel Prize in Chemistry was awarded to:',
    'The 2020 Chemistry Nobel recognised the development of the CRISPR-Cas9 genome editing tool by Charpentier and Doudna, while the Medicine Nobel that year went to the hepatitis C and HIV researchers.',
    'medium',
    'UPSC Prelims 2021',
    2021,
    '75c09e982acac17ea11ec86ec9b619d3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '75c09e982acac17ea11ec86ec9b619d3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Harvey Alter, Michael Houghton and Charles Rice'),
            ('B', 'Tomas Lindahl, Paul Modrich and Aziz Sancar'),
            ('C', 'Frances Arnold, George Smith and Gregory Winter'),
            ('D', 'Emmanuelle Charpentier and Jennifer A. Doudna')
           ) as v(label, option_text)
 where q.question_hash = '75c09e982acac17ea11ec86ec9b619d3'
on conflict (question_id, label) do nothing;

-- science_tech | biotechnology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biotechnology'),
    'Induced pluripotent stem cells (iPS cells) were developed by:',
    'Yamanaka showed in 2006 that adult somatic cells can be reprogrammed to a pluripotent state using four transcription factors, and he shared the 2012 Nobel Prize with Gurdon for this.',
    'medium',
    'Standard Reference',
    null,
    '5152bb5cc8764b1c4f3396a67606683c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '5152bb5cc8764b1c4f3396a67606683c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'James Thomson'),
            ('B', 'Shinya Yamanaka and his team'),
            ('C', 'John Gurdon'),
            ('D', 'Robert Edwards')
           ) as v(label, option_text)
 where q.question_hash = '5152bb5cc8764b1c4f3396a67606683c'
on conflict (question_id, label) do nothing;

-- science_tech | biotechnology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biotechnology'),
    'The first CAR-T cell therapy approved by the US FDA in 2017, for childhood acute lymphoblastic leukaemia, was:',
    'Kymriah (tisagenlecleucel) from Novartis was approved by the FDA in August 2017, followed by Kite Pharma''s Yescarta in 2018, marking the start of approved cellular therapies.',
    'hard',
    'Standard Reference',
    null,
    '4bbff07a433ea8c7615c2ee59639f28c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '4bbff07a433ea8c7615c2ee59639f28c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Yescarta'),
            ('B', 'Kymriah'),
            ('C', 'Tecartus'),
            ('D', 'Breyanzi')
           ) as v(label, option_text)
 where q.question_hash = '4bbff07a433ea8c7615c2ee59639f28c'
on conflict (question_id, label) do nothing;

-- science_tech | biotechnology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biotechnology'),
    'A significant advantage of mRNA vaccines is that:',
    'mRNA vaccines deliver genetic instructions for a viral protein, so no live pathogen and no cell culture are needed, allowing rapid redesign and scale-up of production.',
    'medium',
    'Standard Reference',
    null,
    'cf63a6e0eca86a2972cf29dc5a8e8a30'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'cf63a6e0eca86a2972cf29dc5a8e8a30'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'They do not require any cell culture and can be produced rapidly in weeks'),
            ('B', 'They contain live attenuated viruses'),
            ('C', 'They can only be used for bacterial diseases'),
            ('D', 'They require a live viral vector grown in eggs')
           ) as v(label, option_text)
 where q.question_hash = 'cf63a6e0eca86a2972cf29dc5a8e8a30'
on conflict (question_id, label) do nothing;

-- science_tech | biotechnology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biotechnology'),
    'The first recombinant human insulin approved for commercial use was:',
    'Humulin, the first recombinant DNA medicine, was approved in 1982 and was made by Genentech and Eli Lilly using the modified A and B chains of insulin produced in Escherichia coli.',
    'medium',
    'Standard Reference',
    null,
    'db2165eb396fdaa57d7a9e267e52685e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'db2165eb396fdaa57d7a9e267e52685e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'V insulin, in 1923'),
            ('B', 'Porcine insulin, in 1946'),
            ('C', 'Humulin, in 1982'),
            ('D', 'Insulin glargine, in 2000')
           ) as v(label, option_text)
 where q.question_hash = 'db2165eb396fdaa57d7a9e267e52685e'
on conflict (question_id, label) do nothing;

-- science_tech | biotechnology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biotechnology'),
    'The 1980 Nobel Prize in Chemistry was awarded to:',
    'Frederick Sanger and Walter Gilbert shared the 1980 Nobel Prize in Chemistry for their contributions concerning the determination of base sequences in nucleic acids, work done in the same year as Berg''s recombinant DNA experiments.',
    'hard',
    'Standard Reference',
    null,
    '1c63ea432df8147a724a1e87022dc7a1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '1c63ea432df8147a724a1e87022dc7a1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kary Mullis alone'),
            ('B', 'Watson, Crick and Wilkins'),
            ('C', 'Sanger and Pauling'),
            ('D', 'Walter Gilbert and Frederick Sanger')
           ) as v(label, option_text)
 where q.question_hash = '1c63ea432df8147a724a1e87022dc7a1'
on conflict (question_id, label) do nothing;

-- science_tech | biotechnology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biotechnology'),
    'NBT (normal bacterial transfer) mice, used in studies of human disease, were developed at:',
    'NBT mice carry a human gene that enables them to develop human proteins in milk and other secretions, and they were developed at the National Institute of Immunology in New Delhi.',
    'hard',
    'Standard Reference',
    null,
    '95726126201de14a76c9f7d3040404b8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '95726126201de14a76c9f7d3040404b8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'National Institute of Immunology, New Delhi'),
            ('B', 'National Institute of Mental Health, Bengaluru'),
            ('C', 'Centre for Cellular and Molecular Biology, Hyderabad'),
            ('D', 'Indian Institute of Science, Bengaluru')
           ) as v(label, option_text)
 where q.question_hash = '95726126201de14a76c9f7d3040404b8'
on conflict (question_id, label) do nothing;

-- science_tech | biotechnology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biotechnology'),
    'The Cartagena Protocol on Biosafety, which deals with transboundary movement of living modified organisms, was:',
    'The Cartagena Protocol was adopted in 2000 as a protocol under the Convention on Biological Diversity and entered into force in September 2003, and India ratified it in 2003.',
    'hard',
    'Standard Reference',
    null,
    'd98c28c46cba0f3385dc75d16e68589c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd98c28c46cba0f3385dc75d16e68589c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Entered into force in 1999'),
            ('B', 'Signed at the Kyoto Protocol meeting'),
            ('C', 'Adopted in 2000 and entered into force in 2003'),
            ('D', 'Adopted in 1992 in Rio de Janeiro')
           ) as v(label, option_text)
 where q.question_hash = 'd98c28c46cba0f3385dc75d16e68589c'
on conflict (question_id, label) do nothing;

-- science_tech | biotechnology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biotechnology'),
    'Plant tissue culture technique is used to:',
    'Micropropagation through tissue culture uses small explants under sterile nutrient conditions to produce large numbers of genetically identical plants, which is used for disease-free planting material of banana, sugarcane and many horticultural crops.',
    'easy',
    'NCERT Class XII',
    null,
    'f38fb8f5ad6547367aee88b61663b00e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f38fb8f5ad6547367aee88b61663b00e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Manufacture chemical pesticides'),
            ('B', 'Produce genetically identical plants in large numbers from small plant parts'),
            ('C', 'Fertilise soil in laboratories'),
            ('D', 'Preserve dried seeds for long periods')
           ) as v(label, option_text)
 where q.question_hash = 'f38fb8f5ad6547367aee88b61663b00e'
on conflict (question_id, label) do nothing;

-- science_tech | biotechnology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biotechnology'),
    'The first synthetic bacterial genome was created in 2010 by:',
    'J. Craig Venter''s team synthesised and transplanted a Mycoplasma mycoides genome to create JCVI-syn1.0, the first cell controlled by a chemically synthesised genome, opening the field of synthetic biology.',
    'medium',
    'Standard Reference',
    null,
    '1dfb39a11a8ecb2a93b5cfb368dd4f6e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '1dfb39a11a8ecb2a93b5cfb368dd4f6e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Nobel laureate Kary Mullis'),
            ('B', 'James Watson''s group at Harvard'),
            ('C', 'Carl Woese'),
            ('D', 'Craig Venter''s team')
           ) as v(label, option_text)
 where q.question_hash = '1dfb39a11a8ecb2a93b5cfb368dd4f6e'
on conflict (question_id, label) do nothing;

-- science_tech | biotechnology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'biotechnology'),
    'The first successful attempt at gene therapy in a human patient was carried out in 1990 for:',
    'In 1990 a four-year-old girl with ADA-SCID was treated with autologous T cells carrying a functional ADA gene, marking the first success of gene therapy in humans.',
    'medium',
    'Standard Reference',
    null,
    '77277929b3ab3f5283add9c6162709ca'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '77277929b3ab3f5283add9c6162709ca'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Cystic fibrosis'),
            ('B', 'Duchenne muscular dystrophy'),
            ('C', 'Beta-thalassaemia'),
            ('D', 'Severe combined immunodeficiency due to adenosine deaminase deficiency')
           ) as v(label, option_text)
 where q.question_hash = '77277929b3ab3f5283add9c6162709ca'
on conflict (question_id, label) do nothing;

-- science_tech | materials-science | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'materials-science'),
    'Stainless steel contains a minimum of which metal to give it corrosion resistance?',
    'Stainless steel must contain at least about 10.5 per cent chromium, which forms a self-healing chromium oxide film, and nickel is usually added to improve toughness and corrosion resistance.',
    'easy',
    'Standard Reference',
    null,
    '37835ad564005bac2587654b64e76e06'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '37835ad564005bac2587654b64e76e06'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Chromium'),
            ('B', 'Molybdenum'),
            ('C', 'Manganese'),
            ('D', 'Nickel')
           ) as v(label, option_text)
 where q.question_hash = '37835ad564005bac2587654b64e76e06'
on conflict (question_id, label) do nothing;

-- science_tech | materials-science | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'materials-science'),
    'Brass is an alloy of:',
    'Brass is an alloy of copper and zinc, while bronze is copper with tin; brass is used for musical instruments, fittings and cartridge cases.',
    'easy',
    'Standard Reference',
    null,
    '18ecadc2583a574e9d7f815136bf3520'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '18ecadc2583a574e9d7f815136bf3520'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Copper and tin'),
            ('B', 'Copper and zinc'),
            ('C', 'Lead and tin'),
            ('D', 'Copper and aluminium')
           ) as v(label, option_text)
 where q.question_hash = '18ecadc2583a574e9d7f815136bf3520'
on conflict (question_id, label) do nothing;

-- science_tech | materials-science | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'materials-science'),
    'Duralumin, an alloy used in aircraft structures, is a mixture of aluminium with:',
    'Duralumin contains about 4 per cent copper with magnesium and manganese, and it was the key material used in the construction of the German Junkers aircraft of the 1930s.',
    'medium',
    'Standard Reference',
    null,
    '6adff86a76a97dd980b155ca26928bfb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '6adff86a76a97dd980b155ca26928bfb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Tin and lead'),
            ('B', 'Titanium and vanadium'),
            ('C', 'Copper, magnesium and manganese'),
            ('D', 'Zinc and nickel')
           ) as v(label, option_text)
 where q.question_hash = '6adff86a76a97dd980b155ca26928bfb'
on conflict (question_id, label) do nothing;

-- science_tech | materials-science | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'materials-science'),
    'Graphene, a one-atom-thick sheet of carbon, was discovered in 2004 by:',
    'Geim and Novoselov isolated graphene in 2004 by mechanically exfoliating graphite, and they received the 2010 Nobel Prize in Physics for groundbreaking experiments with this two-dimensional material.',
    'easy',
    'UPSC Prelims 2011',
    2011,
    '30990bf9bd7db616a96083dbdbcfc3b0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '30990bf9bd7db616a96083dbdbcfc3b0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Roger and Penrose'),
            ('B', 'Andre Geim and Konstantin Novoselov'),
            ('C', 'Roger Penrose and Reinhard Genzel'),
            ('D', 'Chandra Wickramasinghe and Fred Hoyle')
           ) as v(label, option_text)
 where q.question_hash = '30990bf9bd7db616a96083dbdbcfc3b0'
on conflict (question_id, label) do nothing;

-- science_tech | materials-science | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'materials-science'),
    'Carbon nanotubes were first observed in 1991 by:',
    'Sumio Iijima of NEC reported multi-walled carbon nanotubes in 1991, followed soon by the synthesis of single-walled tubes, opening the field of carbon nanotechnology.',
    'medium',
    'Standard Reference',
    null,
    '5906165a7f742ab960a59c62786b5e49'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '5906165a7f742ab960a59c62786b5e49'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Andre Geim'),
            ('B', 'Richard Feynman'),
            ('C', 'Ilia Stary'),
            ('D', 'Sumio Iijima')
           ) as v(label, option_text)
 where q.question_hash = '5906165a7f742ab960a59c62786b5e49'
on conflict (question_id, label) do nothing;

-- science_tech | materials-science | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'materials-science'),
    'Which of the following correctly describes quantum dots?',
    'Quantum dots are nanocrystals a few nanometres across whose band gap, and hence the colour of emitted light, varies with particle size, and they won the 2023 Nobel Prize in Chemistry.',
    'medium',
    'Standard Reference',
    null,
    '9c68b0950fc30296ab6f61c952d42d20'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '9c68b0950fc30296ab6f61c952d42d20'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Colloidal semiconductor nanocrystals whose emission colour depends on size'),
            ('B', 'Spherical magnetic particles used in data storage'),
            ('C', 'Radiation monitors made of sodium iodide'),
            ('D', 'Buckminsterfullerene molecules of pure carbon')
           ) as v(label, option_text)
 where q.question_hash = '9c68b0950fc30296ab6f61c952d42d20'
on conflict (question_id, label) do nothing;

-- science_tech | materials-science | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'materials-science'),
    'The Bardeen, Cooper and Schrieffer (BCS) theory explains:',
    'The BCS theory of 1957 shows that electrons form Cooper pairs in a lattice of ions and that the energy gap that opens below the critical temperature produces zero electrical resistance.',
    'hard',
    'Standard Reference',
    null,
    'a2d5cce1bfc47d8a2fc22e5433ed4990'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'a2d5cce1bfc47d8a2fc22e5433ed4990'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The band structure of insulators'),
            ('B', 'The anomalous expansion of metals with temperature'),
            ('C', 'The origin of superconductivity in metals'),
            ('D', 'The Hall effect in semiconductors')
           ) as v(label, option_text)
 where q.question_hash = 'a2d5cce1bfc47d8a2fc22e5433ed4990'
on conflict (question_id, label) do nothing;

-- science_tech | materials-science | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'materials-science'),
    'The Meissner effect in a superconductor refers to:',
    'On cooling below the critical temperature a superconductor expels magnetic flux from its interior, a distinct property that distinguishes perfect conductors from superconductors.',
    'medium',
    'Standard Reference',
    null,
    '770d7dbe5a1c8d0bae8c6dbb45a8c698'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '770d7dbe5a1c8d0bae8c6dbb45a8c698'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The increase of resistance with temperature in metals'),
            ('B', 'The bending of light in a crystal lattice'),
            ('C', 'The expulsion of magnetic flux from the material below the critical temperature'),
            ('D', 'The generation of a voltage when a conductor moves in a magnetic field')
           ) as v(label, option_text)
 where q.question_hash = '770d7dbe5a1c8d0bae8c6dbb45a8c698'
on conflict (question_id, label) do nothing;

-- science_tech | materials-science | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'materials-science'),
    'Which of the following is an example of an advanced ceramic material?',
    'Ceramics such as silicon carbide, alumina and zirconia are extremely hard, wear resistant and heat resistant, and are used in cutting tools, thermal barriers and dental implants.',
    'easy',
    'Standard Reference',
    null,
    'f6a1f44529644a9ea53b5bc8d11a3366'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'f6a1f44529644a9ea53b5bc8d11a3366'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Mild steel'),
            ('B', 'Duralumin'),
            ('C', 'Copper'),
            ('D', 'Silicon carbide and alumina')
           ) as v(label, option_text)
 where q.question_hash = 'f6a1f44529644a9ea53b5bc8d11a3366'
on conflict (question_id, label) do nothing;

-- science_tech | materials-science | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'materials-science'),
    'Thermoplastics differ from thermosetting polymers in that:',
    'Thermoplastics soften on heating and harden on cooling and can be remoulded, while thermosets undergo irreversible cross-linking on heating and cannot be remelted.',
    'easy',
    'NCERT Class XII',
    null,
    '45a4501278f52a4ce4bab4248ec29ac2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '45a4501278f52a4ce4bab4248ec29ac2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Thermoplastics can be reshaped by heating, whereas thermosets cannot'),
            ('B', 'Thermosets are always stronger and lighter'),
            ('C', 'Thermoplastics are used only for electrical wires'),
            ('D', 'Thermosets are polymers of natural origin')
           ) as v(label, option_text)
 where q.question_hash = '45a4501278f52a4ce4bab4248ec29ac2'
on conflict (question_id, label) do nothing;

-- science_tech | materials-science | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'materials-science'),
    'Carbon fibre reinforced polymer is an example of a:',
    'Carbon fibre reinforced polymer combines high strength carbon fibres with a resin matrix, giving a light, stiff material used in aircraft, spacecraft and racing cars.',
    'easy',
    'Standard Reference',
    null,
    'cd4216a8c2babcf52903febaf9667fbe'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'cd4216a8c2babcf52903febaf9667fbe'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Amorphous solid'),
            ('B', 'Composite material'),
            ('C', 'Ceramic material'),
            ('D', 'Pure metal')
           ) as v(label, option_text)
 where q.question_hash = 'cd4216a8c2babcf52903febaf9667fbe'
on conflict (question_id, label) do nothing;

-- science_tech | materials-science | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'materials-science'),
    'Borosilicate glass, sold commercially as Pyrex, is valued mainly for its:',
    'Borosilicate glass has a low coefficient of thermal expansion and resists chemical attack, which makes it suitable for laboratory glassware, ovenware and certain telescope mirrors.',
    'medium',
    'Standard Reference',
    null,
    '635c2ec90e9db042caaa7c6f2e0dd73e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '635c2ec90e9db042caaa7c6f2e0dd73e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Electrical conductivity at high temperature'),
            ('B', 'Opacity to ultraviolet light'),
            ('C', 'High thermal shock resistance and chemical durability'),
            ('D', 'High refractive index for optics')
           ) as v(label, option_text)
 where q.question_hash = '635c2ec90e9db042caaa7c6f2e0dd73e'
on conflict (question_id, label) do nothing;

-- science_tech | materials-science | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'materials-science'),
    'Portland cement is produced by heating a mixture of:',
    'In a cement plant limestone and clay are heated in a rotary kiln to about 1450 degrees Celsius to form nodules of clinker, which is ground with gypsum to make Portland cement.',
    'medium',
    'Standard Reference',
    null,
    '7741bbbbe97763653901c99520d2039d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '7741bbbbe97763653901c99520d2039d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Limestone and clay in a rotary kiln to form clinker'),
            ('B', 'Pure limestone with gypsum'),
            ('C', 'Sand and calcium carbonate'),
            ('D', 'Bauxite and silica')
           ) as v(label, option_text)
 where q.question_hash = '7741bbbbe97763653901c99520d2039d'
on conflict (question_id, label) do nothing;

-- science_tech | materials-science | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'materials-science'),
    'Titanium is widely used for orthopaedic implants mainly because it is:',
    'Titanium is well tolerated by the body and its surface forms a stable titanium oxide layer that promotes bone integration, and its strength-to-weight ratio is also advantageous.',
    'medium',
    'Standard Reference',
    null,
    '5465ac208c7f9306c59b174c2ff33f37'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '5465ac208c7f9306c59b174c2ff33f37'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The lightest of all metals'),
            ('B', 'Highly electrically conductive'),
            ('C', 'Magnetic and easily sterilised'),
            ('D', 'Biocompatible and forms a stable oxide layer')
           ) as v(label, option_text)
 where q.question_hash = '5465ac208c7f9306c59b174c2ff33f37'
on conflict (question_id, label) do nothing;

-- science_tech | materials-science | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'materials-science'),
    'The temperature above which a ferromagnetic material loses its magnetic property is called the:',
    'Above the Curie temperature thermal agitation destroys the alignment of magnetic domains, so a ferromagnetic material becomes paramagnetic; the analogous transition temperature for antiferromagnets is the Neel temperature.',
    'medium',
    'Standard Reference',
    null,
    '67dd288933d0208c00208b4e768b8535'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '67dd288933d0208c00208b4e768b8535'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Neel temperature'),
            ('B', 'Curie temperature'),
            ('C', 'Debye temperature'),
            ('D', 'Kelvin temperature')
           ) as v(label, option_text)
 where q.question_hash = '67dd288933d0208c00208b4e768b8535'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The Council of Scientific and Industrial Research (CSIR) was established in:',
    'CSIR was established in 1942 at the initiative of Shanti Swarup Bhatnagar and operates more than 37 laboratories in various scientific disciplines from its headquarters in New Delhi.',
    'easy',
    'Standard Reference',
    null,
    '9713f6e02cd2b61e02d5b7801e36a870'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '9713f6e02cd2b61e02d5b7801e36a870'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1956'),
            ('B', '1962'),
            ('C', '1971'),
            ('D', '1942')
           ) as v(label, option_text)
 where q.question_hash = '9713f6e02cd2b61e02d5b7801e36a870'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The Department of Science and Technology (DST) was created in:',
    'DST was formed in 1970 as the nodal agency for promoting research in fundamental and applied sciences, and it runs the INSPIRE, PRISM and national innovation schemes.',
    'medium',
    'Standard Reference',
    null,
    '1b5a52e1483e088f402248a3d3e1d1a2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '1b5a52e1483e088f402248a3d3e1d1a2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1990'),
            ('B', '1956'),
            ('C', '1970'),
            ('D', '1980')
           ) as v(label, option_text)
 where q.question_hash = '1b5a52e1483e088f402248a3d3e1d1a2'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The Indian Council of Agricultural Research (ICAR) was founded in:',
    'ICAR was established in 1929 as the Imperial Council of Agricultural Research and is the apex body for agricultural research, with its headquarters in New Delhi.',
    'medium',
    'Standard Reference',
    null,
    '528812f4a000a1f052de68722c9e967d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '528812f4a000a1f052de68722c9e967d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1951'),
            ('B', '1929'),
            ('C', '1935'),
            ('D', '1947')
           ) as v(label, option_text)
 where q.question_hash = '528812f4a000a1f052de68722c9e967d'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The Indian Council of Medical Research (ICMR) was founded in:',
    'ICMR began in 1911 as the Indian Research Fund Association and is the apex body for biomedical research in India, headquartered in New Delhi and under the Ministry of Health.',
    'medium',
    'Standard Reference',
    null,
    '8b2972d247c181dc38ea8efa4af73f03'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '8b2972d247c181dc38ea8efa4af73f03'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1911'),
            ('B', '1927'),
            ('C', '1943'),
            ('D', '1956')
           ) as v(label, option_text)
 where q.question_hash = '8b2972d247c181dc38ea8efa4af73f03'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The National Science, Technology and Innovation Policy of India was approved in:',
    'The Union Cabinet approved the National Science, Technology and Innovation Policy 2023 on 1 March 2023, replacing the National Science and Technology Policy of 2008 and focusing on sustainable development and national security.',
    'medium',
    'Standard Reference',
    null,
    'c6d9c97b859224162b2c3d94aede2977'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'c6d9c97b859224162b2c3d94aede2977'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2020'),
            ('B', '2023'),
            ('C', '2008'),
            ('D', '2013')
           ) as v(label, option_text)
 where q.question_hash = 'c6d9c97b859224162b2c3d94aede2977'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The NITI Aayog was constituted in:',
    'The National Institution for Transforming India was established on 1 January 2015 to replace the Planning Commission, and it publishes indices such as the India Innovation Index and the SDG India Index.',
    'easy',
    'Standard Reference',
    null,
    'd0a8ce09650ab4b9458553b2a1188fb3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd0a8ce09650ab4b9458553b2a1188fb3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2005'),
            ('B', '2010'),
            ('C', '2015'),
            ('D', '2020')
           ) as v(label, option_text)
 where q.question_hash = 'd0a8ce09650ab4b9458553b2a1188fb3'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The INSPIRE scholarship scheme is funded by:',
    'INSPIRE, meaning Innovation in Science Pursuit for Advanced Research, is a DST scheme that supports students of grades 6 to 12 with a monthly stipend to pursue science at higher levels.',
    'medium',
    'Standard Reference',
    null,
    'dc1ad2822f9117e32ff399c526c8f030'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'dc1ad2822f9117e32ff399c526c8f030'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Council of Scientific and Industrial Research'),
            ('B', 'Department of Atomic Energy'),
            ('C', 'Ministry of Education'),
            ('D', 'Department of Science and Technology')
           ) as v(label, option_text)
 where q.question_hash = 'dc1ad2822f9117e32ff399c526c8f030'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'Vigyan Prasar, the organisation that disseminates science communication in India, was established in:',
    'Vigyan Prasar, a registered society under the Department of Science and Technology, was set up in 1988 and is the national resource centre for science communication and public science outreach.',
    'medium',
    'Standard Reference',
    null,
    '699c24cf5abf4a15ffc6cf9f73380676'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '699c24cf5abf4a15ffc6cf9f73380676'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1988'),
            ('B', '1998'),
            ('C', '1969'),
            ('D', '1978')
           ) as v(label, option_text)
 where q.question_hash = '699c24cf5abf4a15ffc6cf9f73380676'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The National Supercomputing Mission was approved in India in:',
    'The National Supercomputing Mission was approved in 2015 with a target of building a network of high performance computers including the PARAM supercomputers developed by C-DAC.',
    'medium',
    'Standard Reference',
    null,
    '1cdd3f31769b6ce606838f7b64878e66'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '1cdd3f31769b6ce606838f7b64878e66'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2015'),
            ('B', '2019'),
            ('C', '2021'),
            ('D', '2011')
           ) as v(label, option_text)
 where q.question_hash = '1cdd3f31769b6ce606838f7b64878e66'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The PRISM scheme of the Department of Science and Technology promotes:',
    'PRISM, Promotion of Innovations, Individuals, Start-ups and MSMEs, provides grants for proof of concept and market development of innovative ideas by small entities and individuals.',
    'hard',
    'Standard Reference',
    null,
    '36665738694c0fc932c83dcf0274e5e1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '36665738694c0fc932c83dcf0274e5e1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Setting up of medical colleges'),
            ('B', 'Import of laboratory equipment'),
            ('C', 'Innovations by individuals, start-ups and MSMEs'),
            ('D', 'Export of patentable technologies')
           ) as v(label, option_text)
 where q.question_hash = '36665738694c0fc932c83dcf0274e5e1'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The principal law governing patents in India is the:',
    'The Patents Act 1970 was amended substantially in 1999 and 2005, and Section 3(d) of the Act as amended has been decisive in the legal status of pharmaceutical products and GM crops in India.',
    'easy',
    'Standard Reference',
    null,
    '9cb3271793b144d5378aeda23ee8355c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '9cb3271793b144d5378aeda23ee8355c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Trade Marks Act, 1999'),
            ('B', 'Patents Act, 1970'),
            ('C', 'Copyright Act, 1976'),
            ('D', 'Designs Act, 2000')
           ) as v(label, option_text)
 where q.question_hash = '9cb3271793b144d5378aeda23ee8355c'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The National Intellectual Property Right (IPR) Policy of India was approved in:',
    'The National IPR Policy was approved by the Union Cabinet in May 2016, replacing the 2008 policy, and it emphasises creating, protecting and monetising intellectual property through a collaborative model.',
    'medium',
    'Standard Reference',
    null,
    '2abfeb26ba713a39844f983738f79fd1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '2abfeb26ba713a39844f983738f79fd1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2020'),
            ('B', '2008'),
            ('C', '2012'),
            ('D', '2016')
           ) as v(label, option_text)
 where q.question_hash = '2abfeb26ba713a39844f983738f79fd1'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'Technology transfer from universities to industry in India is usually promoted through:',
    'Technology Transfer Organisations set up at IITs, IISERs and universities help patent academic inventions, licence them to industry and run proof-of-concept and incubation programmes.',
    'medium',
    'Standard Reference',
    null,
    '5306a2feaa4fa0a9b00256b209dab7a9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '5306a2feaa4fa0a9b00256b209dab7a9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Export promotion councils'),
            ('B', 'Commodity exchanges'),
            ('C', 'Technology Transfer Organisations'),
            ('D', 'District courts')
           ) as v(label, option_text)
 where q.question_hash = '5306a2feaa4fa0a9b00256b209dab7a9'
on conflict (question_id, label) do nothing;

-- science_tech | science-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'science-policy'),
    'The Committee for the Purpose of Control and Supervision of Experiments on Animals (CPCSEA) works under the:',
    'CPCSEA functions under the Animal Welfare Board, whose chairman is the Union Minister of Fisheries, Animal Husbandry and Dairying, and it oversees institutional animal experiments and ethics committees.',
    'hard',
    'Standard Reference',
    null,
    'b85ae4827537edd682f03e491f044277'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b85ae4827537edd682f03e491f044277'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Department of Biotechnology'),
            ('B', 'Animal Welfare Board, which was constituted in 2018'),
            ('C', 'National Academy of Sciences'),
            ('D', 'Indian Council of Medical Research')
           ) as v(label, option_text)
 where q.question_hash = 'b85ae4827537edd682f03e491f044277'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'The number of internationally recognised units in the SI system is:',
    'The seven SI base units are the metre, kilogram, second, ampere, kelvin, mole and candela, and all other SI units are derived from combinations of these.',
    'easy',
    'Standard Reference',
    null,
    'f640ec64fa6f707d65bd9f8e147fcfde'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f640ec64fa6f707d65bd9f8e147fcfde'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Seven'),
            ('B', 'Six'),
            ('C', 'Eight'),
            ('D', 'Nine')
           ) as v(label, option_text)
 where q.question_hash = 'f640ec64fa6f707d65bd9f8e147fcfde'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'The SI unit of luminous intensity is:',
    'The candela is the SI base unit of luminous intensity, defined as the luminous flux of one lumen emitted in a solid angle of one steradian in the direction of the normal.',
    'easy',
    'Standard Reference',
    null,
    '5ae3a85acd4600be8bcb25328ff7723d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '5ae3a85acd4600be8bcb25328ff7723d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Radian'),
            ('B', 'Lumen'),
            ('C', 'Lux'),
            ('D', 'Candela')
           ) as v(label, option_text)
 where q.question_hash = '5ae3a85acd4600be8bcb25328ff7723d'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'One standard atmosphere is equal to:',
    'One standard atmosphere is 101,325 pascal, which is equal to 760 mm of mercury at 0 degrees Celsius and to 1.01325 bar, and it is the standard reference used in gas law problems.',
    'medium',
    'Standard Reference',
    null,
    '14860b1de4e71682ee4241410cab0597'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '14860b1de4e71682ee4241410cab0597'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '76,000 Pa'),
            ('B', '101,325 Pa'),
            ('C', '100,000 Pa'),
            ('D', '1,013,250 Pa')
           ) as v(label, option_text)
 where q.question_hash = '14860b1de4e71682ee4241410cab0597'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'One bar is equal to:',
    'One bar is defined as 10^5 pascal, which is close to but slightly below the standard atmosphere of 101,325 Pa, and the millibar used in meteorology is 100 Pa.',
    'easy',
    'Standard Reference',
    null,
    'ad69a71d10bf0f29a3858517d1fe0ccb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ad69a71d10bf0f29a3858517d1fe0ccb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '10^5 Pa'),
            ('B', '1.013 x 10^5 Pa'),
            ('C', '10^6 Pa'),
            ('D', '1.01 x 10^3 Pa')
           ) as v(label, option_text)
 where q.question_hash = 'ad69a71d10bf0f29a3858517d1fe0ccb'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'The thermochemical calorie is equal to:',
    'One thermochemical calorie is exactly 4.184 joules, so a kilocalorie used in nutrition is 4184 joules, and the food Calorie used in dietary labelling is the kilocalorie.',
    'medium',
    'Standard Reference',
    null,
    '8686d4218b8537d21be85971b181a4d6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '8686d4218b8537d21be85971b181a4d6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '418.4 joules'),
            ('B', '4.184 kilojoules'),
            ('C', '4.184 joules'),
            ('D', '1 joule')
           ) as v(label, option_text)
 where q.question_hash = '8686d4218b8537d21be85971b181a4d6'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'One hectare is equal to:',
    'A hectare is 10,000 square metres, equivalent to 0.01 square kilometre and to about 2.47 acres, and it is the standard unit for measuring land holding in India.',
    'easy',
    'Standard Reference',
    null,
    '5c51409b9a0e5352c971260843a26f9c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '5c51409b9a0e5352c971260843a26f9c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1,00,000 square metres'),
            ('B', '100 square metres'),
            ('C', '1000 square metres'),
            ('D', '10,000 square metres')
           ) as v(label, option_text)
 where q.question_hash = '5c51409b9a0e5352c971260843a26f9c'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'One parsec is equal to:',
    'A parsec is the distance at which 1 astronomical unit subtends an angle of one arcsecond, which works out to about 3.26 light years or 3.086 x 10^16 m.',
    'medium',
    'Standard Reference',
    null,
    '82b702cd32ca848b6f6ffe73dae8150f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '82b702cd32ca848b6f6ffe73dae8150f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '9.46 light years'),
            ('B', '0.33 light years'),
            ('C', '15 light years'),
            ('D', '3.26 light years')
           ) as v(label, option_text)
 where q.question_hash = '82b702cd32ca848b6f6ffe73dae8150f'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'The Richter scale measures the:',
    'The Richter scale measures earthquake magnitude from the amplitude of recorded waves, and a one unit change corresponds to a tenfold change in amplitude and about a thirtyfold change in released energy.',
    'easy',
    'Standard Reference',
    null,
    'cb5caf58a4623af5322814d16c495acb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'cb5caf58a4623af5322814d16c495acb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Speed of seismic waves'),
            ('B', 'Intensity of an earthquake'),
            ('C', 'Magnitude of an earthquake'),
            ('D', 'Depth of an earthquake focus')
           ) as v(label, option_text)
 where q.question_hash = 'cb5caf58a4623af5322814d16c495acb'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'The Beaufort scale is used to measure:',
    'The Beaufort scale, devised by Admiral Francis Beaufort, rates wind force from 0 (calm) to 12 (hurricane) using visible cues such as the state of the sea and the motion of trees.',
    'medium',
    'Standard Reference',
    null,
    'fda302f7e634463f6db52de7b7fc02ca'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'fda302f7e634463f6db52de7b7fc02ca'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Wind speed'),
            ('B', 'Wave height'),
            ('C', 'Cloud cover'),
            ('D', 'Visibility')
           ) as v(label, option_text)
 where q.question_hash = 'fda302f7e634463f6db52de7b7fc02ca'
on conflict (question_id, label) do nothing;

-- science_tech | measurements-and-units | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'measurements-and-units'),
    'Molarity differs from molality in that molarity:',
    'Molarity is moles of solute per litre of solution while molality is moles of solute per kilogram of solvent, and molality is preferred for properties that depend on the number of particles at fixed mass of solvent.',
    'medium',
    'NCERT Class XI',
    null,
    '9109ec166b4912de9cf855d41a7c4c68'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '9109ec166b4912de9cf855d41a7c4c68'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the number of moles of solute per kilogram of solvent'),
            ('B', 'Is the number of moles of solute per litre of solution'),
            ('C', 'Is a dimensionless quantity'),
            ('D', 'Is measured only in gases')
           ) as v(label, option_text)
 where q.question_hash = '9109ec166b4912de9cf855d41a7c4c68'
on conflict (question_id, label) do nothing;

-- science_tech | health-technology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'health-technology'),
    'Covaxin, India''s indigenous COVID-19 vaccine, is:',
    'Covaxin (BBV-152) is a whole virion inactivated vaccine with an aluminium adjuvant developed by Bharat Biotech and authorised for emergency use in April 2021, while Covishield is the Oxford-AstraZeneca viral vector vaccine made by the Serum Institute.',
    'easy',
    'Standard Reference',
    null,
    'e2abb5fc12810707ab641f89ccdbf504'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e2abb5fc12810707ab641f89ccdbf504'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A recombinant protein vaccine for rotavirus'),
            ('B', 'A whole virion inactivated vaccine developed by Bharat Biotech'),
            ('C', 'A viral vector vaccine produced by the Serum Institute of India'),
            ('D', 'An mRNA vaccine developed by Moderna')
           ) as v(label, option_text)
 where q.question_hash = 'e2abb5fc12810707ab641f89ccdbf504'
on conflict (question_id, label) do nothing;

-- science_tech | health-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'health-technology'),
    'CoWIN, the web platform used for COVID-19 vaccination in India, was developed by:',
    'CoWIN was built by the Ministry of Health and Family Welfare with support from the National Informatics Centre, and it handled registration, scheduling and certificate download for the vaccination drive.',
    'medium',
    'Standard Reference',
    null,
    '58895ece1ac91bfdb405bc92a65a1a78'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '58895ece1ac91bfdb405bc92a65a1a78'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ministry of Health and Family Welfare with the National Informatics Centre'),
            ('B', 'State Bank of India'),
            ('C', 'Indian Council of Medical Research alone'),
            ('D', 'The Indian Space Research Organisation')
           ) as v(label, option_text)
 where q.question_hash = '58895ece1ac91bfdb405bc92a65a1a78'
on conflict (question_id, label) do nothing;

-- science_tech | health-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'health-technology'),
    'The Ayushman Bharat Digital Mission was launched to provide:',
    'The Ayushman Bharat Digital Mission, announced in 2020 and rolled out from 2021, created the Ayushman Bharat Health Account, a digital health identity linking health records across providers.',
    'medium',
    'Standard Reference',
    null,
    '32408b54c6fcf0a39bf706e569985f81'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '32408b54c6fcf0a39bf706e569985f81'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A national pharmaceutical manufacturing subsidy'),
            ('B', 'Free medicines to all citizens'),
            ('C', 'A digital health identity and health records interoperable across providers'),
            ('D', 'Insurance for all senior citizens')
           ) as v(label, option_text)
 where q.question_hash = '32408b54c6fcf0a39bf706e569985f81'
on conflict (question_id, label) do nothing;

-- science_tech | health-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'health-technology'),
    'The Telemedicine Practice Guidelines issued in India in 2020:',
    'The guidelines, notified by the Medical Council of India on 25 June 2020, allow registered medical practitioners to practise telemedicine with patient identification, consent and record keeping safeguards.',
    'medium',
    'Standard Reference',
    null,
    '7976d3b1e1e5acd4fb8897dc51fc795d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '7976d3b1e1e5acd4fb8897dc51fc795d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Made telemedicine compulsory for all specialists'),
            ('B', 'Restricted telemedicine to infectious diseases only'),
            ('C', 'Banned all online consultations'),
            ('D', 'Permitted registered medical practitioners to provide tele-consultation with specified safeguards')
           ) as v(label, option_text)
 where q.question_hash = '7976d3b1e1e5acd4fb8897dc51fc795d'
on conflict (question_id, label) do nothing;

-- science_tech | health-technology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'health-technology'),
    'The Pradhan Mantri Jan Arogya Yojana (PM-JAY) launched in 2018 provides:',
    'PM-JAY, the flagship health assurance scheme, offers cashless hospital cover of 5 lakh rupees per family per year for about 55 crore eligible beneficiaries identified from the socio-economic census.',
    'easy',
    'Standard Reference',
    null,
    '3ae30f935f1b07fd7502504fe48bebb0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '3ae30f935f1b07fd7502504fe48bebb0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Health cover of 5 lakh rupees per family per year for listed beneficiaries'),
            ('B', 'Free treatment only for cancer patients'),
            ('C', 'Universal health insurance for every household'),
            ('D', 'Outpatient cover for all senior citizens')
           ) as v(label, option_text)
 where q.question_hash = '3ae30f935f1b07fd7502504fe48bebb0'
on conflict (question_id, label) do nothing;

-- science_tech | health-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'health-technology'),
    'The National Health Mission was launched in:',
    'The National Health Mission was launched in 2014 by merging the National Rural Health Mission of 2005 and the National Programme for Health and Family Welfare of 2013 to implement the National Health Policy 2017.',
    'medium',
    'Standard Reference',
    null,
    'e13c3c0a7affd0d8061cbf290f1c3f69'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e13c3c0a7affd0d8061cbf290f1c3f69'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2017'),
            ('B', '2005'),
            ('C', '2009'),
            ('D', '2014')
           ) as v(label, option_text)
 where q.question_hash = 'e13c3c0a7affd0d8061cbf290f1c3f69'
on conflict (question_id, label) do nothing;

-- science_tech | health-technology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'health-technology'),
    'Reverse transcriptase PCR (RT-PCR) is specifically used for detecting:',
    'RT-PCR first converts viral RNA into complementary DNA using reverse transcriptase and then amplifies it, which is why it is the method of choice for SARS-CoV-2 and other RNA viruses.',
    'easy',
    'Standard Reference',
    null,
    'd8e5cebddaf4e4f8ee3452e368f19ce9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd8e5cebddaf4e4f8ee3452e368f19ce9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'DNA viruses only'),
            ('B', 'RNA viruses'),
            ('C', 'Bacterial toxins'),
            ('D', 'Antibiotic resistance genes')
           ) as v(label, option_text)
 where q.question_hash = 'd8e5cebddaf4e4f8ee3452e368f19ce9'
on conflict (question_id, label) do nothing;

-- science_tech | health-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'health-technology'),
    'The ELISA test is based on the principle of:',
    'In ELISA, an enzyme conjugate bound to antigen or antibody converts a substrate into a coloured product, and the intensity of the colour is proportional to the amount of analyte present.',
    'medium',
    'Standard Reference',
    null,
    'eb4d684842554ab13faef17f7cb1c9fe'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'eb4d684842554ab13faef17f7cb1c9fe'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Gel electrophoresis of DNA fragments'),
            ('B', 'Chromatographic separation of pigments'),
            ('C', 'Antigen-antibody reaction detected by an enzyme producing a colour change'),
            ('D', 'Radioactive tracer detection')
           ) as v(label, option_text)
 where q.question_hash = 'eb4d684842554ab13faef17f7cb1c9fe'
on conflict (question_id, label) do nothing;

-- science_tech | health-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'health-technology'),
    'The Xpert MTB/RIF test is used for the rapid diagnosis of:',
    'Xpert MTB/RIF is a cartridge based nucleic acid amplification test that detects Mycobacterium tuberculosis and rifampicin resistance in about two hours, and the Truenat equivalent is widely used in India.',
    'medium',
    'Standard Reference',
    null,
    'e04ed1f7a559cb0265a6a9c02fef3bd8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'e04ed1f7a559cb0265a6a9c02fef3bd8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Tuberculosis with rifampicin resistance'),
            ('B', 'Hepatitis B'),
            ('C', 'Malaria'),
            ('D', 'HIV viral load')
           ) as v(label, option_text)
 where q.question_hash = 'e04ed1f7a559cb0265a6a9c02fef3bd8'
on conflict (question_id, label) do nothing;

-- science_tech | health-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'health-technology'),
    'The National Action Plan on Antimicrobial Resistance in India was released in:',
    'The National Action Plan on AMR, released in 2015, adopts a One Health approach covering human, animal and environmental sectors, and India''s AMR surveillance network is coordinated by the ICMR.',
    'medium',
    'Standard Reference',
    null,
    '120a52a9ee37850df0a1a653e68293cf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '120a52a9ee37850df0a1a653e68293cf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2011'),
            ('B', '2015'),
            ('C', '2019'),
            ('D', '2021')
           ) as v(label, option_text)
 where q.question_hash = '120a52a9ee37850df0a1a653e68293cf'
on conflict (question_id, label) do nothing;

-- science_tech | health-technology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'health-technology'),
    'The Public Health Emergency Preparedness scheme, PM-ABHIM, approved in 2022, has a financial outlay of about:',
    'PM-ABHIM, with an outlay of about Rs 64,180 crore over five years, funds the creation of surge capacity, district public health laboratories, critical care blocks and the Centre''s public health emergency response force.',
    'hard',
    'Standard Reference',
    null,
    'e6123ab0c1a846210ddbf4bafae97737'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e6123ab0c1a846210ddbf4bafae97737'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rs 1,00,000 crore'),
            ('B', 'Rs 12,836 crore'),
            ('C', 'Rs 6,418 crore'),
            ('D', 'Rs 64,180 crore')
           ) as v(label, option_text)
 where q.question_hash = 'e6123ab0c1a846210ddbf4bafae97737'
on conflict (question_id, label) do nothing;

-- science_tech | health-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'health-technology'),
    'The One Health concept, which links human, animal and environmental health, is promoted internationally by:',
    'The Quadripartite, comprising FAO, UNEP, WHO and WOAH, adopted a joint One Health action plan for 2022 to 2026, and India launched a National One Health Mission in this framework.',
    'medium',
    'Standard Reference',
    null,
    '84595c754b4c9b598063d433a8c50b6a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '84595c754b4c9b598063d433a8c50b6a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The World Bank and IMF'),
            ('B', 'The European Union and NATO'),
            ('C', 'FAO, UNEP, WHO and WOAH'),
            ('D', 'Only the World Health Organization')
           ) as v(label, option_text)
 where q.question_hash = '84595c754b4c9b598063d433a8c50b6a'
on conflict (question_id, label) do nothing;

-- science_tech | health-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'health-technology'),
    'ROTAVAC 5B, used in India''s universal immunisation programme, is:',
    'ROTAVAC 5B is a live attenuated oral pentavalent rotavirus vaccine developed by the Serum Institute of India, and it was included in the national immunisation schedule in 2019 to prevent rotavirus diarrhoea.',
    'medium',
    'Standard Reference',
    null,
    'bae037dccef494ba34c062ac09ab88a2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'bae037dccef494ba34c062ac09ab88a2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A measles-rubella vaccine'),
            ('B', 'A Japanese encephalitis vaccine'),
            ('C', 'A pentavalent oral rotavirus vaccine'),
            ('D', 'An injectable rotavirus vaccine')
           ) as v(label, option_text)
 where q.question_hash = 'bae037dccef494ba34c062ac09ab88a2'
on conflict (question_id, label) do nothing;

-- science_tech | agriculture-technology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'agriculture-technology'),
    'In Bt cotton cultivated in India, the cry1Ac gene is taken from:',
    'The cry1Ac gene from the soil bacterium Bacillus thuringiensis codes for a delta-endotoxin protein that is toxic to the larvae of the cotton bollworm, Helicoverpa armigera.',
    'easy',
    'Standard Reference',
    null,
    '3bdb40f709e3c16902817ca026b05f0e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '3bdb40f709e3c16902817ca026b05f0e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Streptomyces griseus'),
            ('B', 'Bacillus thuringiensis'),
            ('C', 'Pseudomonas syringae'),
            ('D', 'Escherichia coli')
           ) as v(label, option_text)
 where q.question_hash = '3bdb40f709e3c16902817ca026b05f0e'
on conflict (question_id, label) do nothing;

-- science_tech | agriculture-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'agriculture-technology'),
    'The electronic National Agricultural Market (e-NAM) portal was launched in:',
    'e-NAM was launched on 14 April 2016 to provide a common online trading platform linking mandis across states, and it was later renamed the National Agricultural Market.',
    'medium',
    'Standard Reference',
    null,
    'f2fde7f96aebb449181af94fe0833eba'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f2fde7f96aebb449181af94fe0833eba'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2016'),
            ('B', '2018'),
            ('C', '2020'),
            ('D', '2014')
           ) as v(label, option_text)
 where q.question_hash = 'f2fde7f96aebb449181af94fe0833eba'
on conflict (question_id, label) do nothing;

-- science_tech | agriculture-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'agriculture-technology'),
    'The Soil Health Card scheme was launched in India in:',
    'Soil Health Cards were introduced in 2015 to provide farmers with a printed report of soil nutrients and recommendations for crop-wise fertiliser use, and the cards are refreshed every two years.',
    'medium',
    'Standard Reference',
    null,
    'be3bb4ef6879251c5e0229c026906274'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'be3bb4ef6879251c5e0229c026906274'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2017'),
            ('B', '2020'),
            ('C', '2012'),
            ('D', '2015')
           ) as v(label, option_text)
 where q.question_hash = 'be3bb4ef6879251c5e0229c026906274'
on conflict (question_id, label) do nothing;

-- science_tech | agriculture-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'agriculture-technology'),
    'Neem-coated urea, which slows nitrogen release into the soil, was introduced in India in:',
    'Neem-coated urea was introduced in 2015 and made mandatory for subsidised urea from 2017, as it improves nitrogen use efficiency and cuts nitrous oxide emissions.',
    'medium',
    'Standard Reference',
    null,
    '8acb681120b325a09ad3d2a01ec143ed'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '8acb681120b325a09ad3d2a01ec143ed'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2015'),
            ('B', '2020'),
            ('C', '2005'),
            ('D', '2010')
           ) as v(label, option_text)
 where q.question_hash = '8acb681120b325a09ad3d2a01ec143ed'
on conflict (question_id, label) do nothing;

-- science_tech | agriculture-technology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'agriculture-technology'),
    'Nano urea, a granular urea product coated with nanoparticles, was launched in India by:',
    'IFFCO launched nano urea in 2021 as a 46 per cent nitrogen fertiliser in granular form, designed to be applied through foliar spraying and to improve nitrogen use efficiency.',
    'hard',
    'Standard Reference',
    null,
    '809d940a489a8f8e14da3ef9a23643c9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '809d940a489a8f8e14da3ef9a23643c9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'UPL Limited'),
            ('B', 'Fertiliser and Chemical Travancore'),
            ('C', 'Indian Farmers Fertiliser Cooperative'),
            ('D', 'Tata Chemicals')
           ) as v(label, option_text)
 where q.question_hash = '809d940a489a8f8e14da3ef9a23643c9'
on conflict (question_id, label) do nothing;

-- science_tech | agriculture-technology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'agriculture-technology'),
    'The Pradhan Mantri Krishi Sinchayee Yojana, with the slogan Per Drop More Crop, focuses on:',
    'The scheme promotes water-efficient micro-irrigation including drip and sprinkler systems, watershed development and canal modernisation to raise water use efficiency in agriculture.',
    'easy',
    'Standard Reference',
    null,
    'a79064bad6f704a96247883eca3c0abb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a79064bad6f704a96247883eca3c0abb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Cold chain development'),
            ('B', 'Micro-irrigation such as drip and sprinkler systems'),
            ('C', 'Desert land reclamation'),
            ('D', 'Seed distribution in drought prone areas')
           ) as v(label, option_text)
 where q.question_hash = 'a79064bad6f704a96247883eca3c0abb'
on conflict (question_id, label) do nothing;

-- science_tech | agriculture-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'agriculture-technology'),
    'Precision farming in India makes extensive use of:',
    'Precision agriculture combines GPS guided machinery, satellite remote sensing such as ISRO''s Bhuvan and GIS based decision support tools to apply inputs only where they are needed.',
    'medium',
    'Standard Reference',
    null,
    'e564616b47c93253e41c54a178772a72'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e564616b47c93253e41c54a178772a72'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Only animal drawn implements'),
            ('B', 'Traditional almanac based sowing'),
            ('C', 'Wooden ploughs'),
            ('D', 'Global positioning system, remote sensing and geographic information system')
           ) as v(label, option_text)
 where q.question_hash = 'e564616b47c93253e41c54a178772a72'
on conflict (question_id, label) do nothing;

-- science_tech | agriculture-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'agriculture-technology'),
    'Kisan drones in India are used mainly for:',
    'Agricultural drones are increasingly used for spraying pesticides and nutrients and for surveying crop health, and India released a certification framework for agricultural drones in 2021.',
    'medium',
    'Standard Reference',
    null,
    'c1d0357a34d5f7c8d023fa365224826d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'c1d0357a34d5f7c8d023fa365224826d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Transporting grain to mandis'),
            ('B', 'Spraying pesticides and fertilizers over crop fields'),
            ('C', 'Deep sea fishing'),
            ('D', 'Forest fire fighting only')
           ) as v(label, option_text)
 where q.question_hash = 'c1d0357a34d5f7c8d023fa365224826d'
on conflict (question_id, label) do nothing;

-- science_tech | agriculture-technology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'agriculture-technology'),
    'Plant tissue culture is used commercially in India mainly for:',
    'Micropropagation through tissue culture gives disease free, uniform planting material in large numbers, and in India it is used for banana, sugarcane, bamboo, rose and medicinal plants.',
    'easy',
    'Standard Reference',
    null,
    'c179e5816449c69a7dea7a55aab55103'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c179e5816449c69a7dea7a55aab55103'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Weed control'),
            ('B', 'Drying of grains'),
            ('C', 'Multiplication of elite planting material such as banana and sugarcane'),
            ('D', 'Direct seeding of paddy')
           ) as v(label, option_text)
 where q.question_hash = 'c179e5816449c69a7dea7a55aab55103'
on conflict (question_id, label) do nothing;

-- science_tech | agriculture-technology | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'agriculture-technology'),
    'An integrated cold chain in agriculture is important mainly to:',
    'Cold chain facilities, including pack houses, pre-cooling, reefer transport and storage, cut post-harvest losses of perishables such as fruits, vegetables and milk and help farmers get better prices.',
    'easy',
    'Standard Reference',
    null,
    '929192af5b9dec8ac46f4a291e94fda6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '929192af5b9dec8ac46f4a291e94fda6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Reduce post-harvest losses and extend shelf life of produce'),
            ('B', 'Increase the moisture content of grains'),
            ('C', 'Improve the germination of seeds in the field'),
            ('D', 'Pollinate crop plants')
           ) as v(label, option_text)
 where q.question_hash = '929192af5b9dec8ac46f4a291e94fda6'
on conflict (question_id, label) do nothing;

-- science_tech | health-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'health-technology'),
    'Ayushman Arogya Mandir, the network of primary health care units under the National Health Mission, was earlier known as:',
    'The Health and Wellness Centres, announced in 2018 and renamed Ayushman Arogya Mandir in 2022, are the primary care units that deliver a package of services including free essential medicines and diagnostics.',
    'medium',
    'Standard Reference',
    null,
    'a4821525d2aa9f87a1c33ef820e1ebb6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a4821525d2aa9f87a1c33ef820e1ebb6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Community Health Centres'),
            ('B', 'Primary Health Centres'),
            ('C', 'Sub Centres'),
            ('D', 'Ayushman Bharat Health and Wellness Centres')
           ) as v(label, option_text)
 where q.question_hash = 'a4821525d2aa9f87a1c33ef820e1ebb6'
on conflict (question_id, label) do nothing;

-- science_tech | physics | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'Rutherford''s alpha particle scattering experiment of 1911 led to the discovery of:',
    'The large deflections of alpha particles showed that the positive charge and most of the mass of the atom are concentrated in a tiny central region, which Rutherford named the nucleus.',
    'easy',
    'NCERT Class XII',
    null,
    '1a7cde74fd4a32981700b14798bc614a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '1a7cde74fd4a32981700b14798bc614a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The neutron'),
            ('B', 'The proton'),
            ('C', 'The electron'),
            ('D', 'The atomic nucleus')
           ) as v(label, option_text)
 where q.question_hash = '1a7cde74fd4a32981700b14798bc614a'
on conflict (question_id, label) do nothing;

-- science_tech | physics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'According to Bohr''s model of the hydrogen atom:',
    'Bohr postulated stationary orbits with quantised energies and that radiation is emitted or absorbed only during transitions between these orbits, which he called quantised emission and absorption.',
    'medium',
    'NCERT Class XII',
    null,
    'd7ed47901b36172aa40f6a0d5275f1fd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd7ed47901b36172aa40f6a0d5275f1fd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The electron moves in a circular orbit and radiates energy continuously'),
            ('B', 'The electron moves in certain permitted orbits and radiates energy only when it jumps between them'),
            ('C', 'Electrons are embedded in a positively charged sphere'),
            ('D', 'The electron radiates energy only when it is at the ground state')
           ) as v(label, option_text)
 where q.question_hash = 'd7ed47901b36172aa40f6a0d5275f1fd'
on conflict (question_id, label) do nothing;

-- science_tech | physics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'The Davisson-Germer experiment demonstrated that:',
    'The diffraction of electrons by a nickel crystal confirmed de Broglie''s hypothesis and established the wave nature of matter.',
    'medium',
    'Standard Reference',
    null,
    '6198e00127d1945408ac1cbd1630b047'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '6198e00127d1945408ac1cbd1630b047'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Electrons possess a wave nature'),
            ('B', 'Light is deflected by magnetic fields'),
            ('C', 'Radio waves can be reflected by the ionosphere'),
            ('D', 'Alpha particles have a positive charge')
           ) as v(label, option_text)
 where q.question_hash = '6198e00127d1945408ac1cbd1630b047'
on conflict (question_id, label) do nothing;

-- science_tech | physics | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'The neutron was discovered by:',
    'James Chadwick identified the neutron in 1932 by bombarding beryllium with alpha particles, and it was later shown to be a constituent of the atomic nucleus.',
    'easy',
    'Standard Reference',
    null,
    '7692a6b18a2f7365d617e74e1ee74fd2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '7692a6b18a2f7365d617e74e1ee74fd2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Niels Bohr'),
            ('B', 'Ernest Rutherford'),
            ('C', 'James Chadwick'),
            ('D', 'Ernest Walton')
           ) as v(label, option_text)
 where q.question_hash = '7692a6b18a2f7365d617e74e1ee74fd2'
on conflict (question_id, label) do nothing;

-- science_tech | physics | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'The general theory of relativity was proposed by Albert Einstein in:',
    'Einstein published the general theory of relativity in 1915, describing gravitation as the curvature of spacetime produced by mass and energy.',
    'easy',
    'Standard Reference',
    null,
    '0d5ccac180ce09cd77cd893a04c6d1c8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '0d5ccac180ce09cd77cd893a04c6d1c8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1927'),
            ('B', '1935'),
            ('C', '1905'),
            ('D', '1915')
           ) as v(label, option_text)
 where q.question_hash = '0d5ccac180ce09cd77cd893a04c6d1c8'
on conflict (question_id, label) do nothing;

-- science_tech | physics | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'The Michelson-Morley experiment of 1887 was important because it:',
    'The null result of the Michelson-Morley experiment found no ether wind in the Earth''s motion, removing the main experimental support for the ether theory and helping pave the way for special relativity.',
    'hard',
    'Standard Reference',
    null,
    'bb4d9b32551cb33af0f3db68dccff1df'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'bb4d9b32551cb33af0f3db68dccff1df'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Proved the existence of the ether wind'),
            ('B', 'Found no detectable difference in the speed of light in different directions'),
            ('C', 'Measured the speed of sound in air'),
            ('D', 'Demonstrated the photoelectric effect')
           ) as v(label, option_text)
 where q.question_hash = 'bb4d9b32551cb33af0f3db68dccff1df'
on conflict (question_id, label) do nothing;

-- science_tech | physics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'The Heisenberg uncertainty principle states that:',
    'The uncertainty relation limits the product of the uncertainty in position and momentum to at least h/4 pi, an intrinsic feature of quantum mechanics rather than a limitation of instruments.',
    'medium',
    'NCERT Class XII',
    null,
    '16bcd2cd2f13bf3fef0a3d4cf5b86cb6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '16bcd2cd2f13bf3fef0a3d4cf5b86cb6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Photons always travel in straight lines'),
            ('B', 'Energy and time can be measured with unlimited accuracy'),
            ('C', 'Position and momentum of a particle cannot both be measured with arbitrary precision'),
            ('D', 'All electrons move in fixed circular orbits')
           ) as v(label, option_text)
 where q.question_hash = '16bcd2cd2f13bf3fef0a3d4cf5b86cb6'
on conflict (question_id, label) do nothing;

-- science_tech | physics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'In the ideal gas equation PV = nRT, the universal gas constant R has a value of:',
    'The universal gas constant is 8.314 joule per mole per kelvin, while 1.38 x 10^-23 J K^-1 is the Boltzmann constant and 6.022 x 10^23 is Avogadro''s number.',
    'medium',
    'NCERT Class XI',
    null,
    'a850baa70b39f03ee45849b09c182cd3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a850baa70b39f03ee45849b09c182cd3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '8.314 J mol^-1 K^-1'),
            ('B', '1.38 x 10^-23 J K^-1'),
            ('C', '6.022 x 10^23 mol^-1'),
            ('D', '1.602 x 10^-19 C')
           ) as v(label, option_text)
 where q.question_hash = 'a850baa70b39f03ee45849b09c182cd3'
on conflict (question_id, label) do nothing;

-- science_tech | physics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'According to the kinetic theory of gases, the temperature of a gas is proportional to:',
    'Kinetic theory gives the average translational kinetic energy per molecule as three halves kT, so temperature is proportional to the mean square speed of the molecules.',
    'medium',
    'NCERT Class XI',
    null,
    '9be27aff64a55ff7bff58fb5f28bc1d4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '9be27aff64a55ff7bff58fb5f28bc1d4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The pressure of the gas'),
            ('B', 'The mean square speed of its molecules'),
            ('C', 'The number of molecules'),
            ('D', 'The volume of the gas')
           ) as v(label, option_text)
 where q.question_hash = '9be27aff64a55ff7bff58fb5f28bc1d4'
on conflict (question_id, label) do nothing;

-- science_tech | physics | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'A small sphere falling through a viscous liquid attains a constant speed called terminal velocity. Its dependence on radius follows:',
    'By Stokes'' law the viscous drag is 6 pi eta r v, and balancing it with weight gives a terminal velocity proportional to r squared.',
    'hard',
    'NCERT Class XI',
    null,
    '0b9b91a50df8d11e7535dcc4420dde1a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '0b9b91a50df8d11e7535dcc4420dde1a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Proportional to r^3'),
            ('B', 'Inversely proportional to r'),
            ('C', 'Proportional to r'),
            ('D', 'Proportional to r^2')
           ) as v(label, option_text)
 where q.question_hash = '0b9b91a50df8d11e7535dcc4420dde1a'
on conflict (question_id, label) do nothing;

-- science_tech | physics | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'According to Poiseuille''s law, the volume flow rate through a tube varies as:',
    'Poiseuille''s law gives V proportional to r^4 and inversely proportional to the length, which is why a small constriction in an artery drastically reduces blood flow.',
    'hard',
    'Standard Reference',
    null,
    '2e4996617ea39860956924a50b3b17b3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '2e4996617ea39860956924a50b3b17b3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The fourth power of the radius'),
            ('B', 'The square of the length'),
            ('C', 'The first power of the radius'),
            ('D', 'The second power of the radius')
           ) as v(label, option_text)
 where q.question_hash = '2e4996617ea39860956924a50b3b17b3'
on conflict (question_id, label) do nothing;

-- science_tech | physics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'Newton''s law of cooling states that the rate of cooling of a body is proportional to:',
    'Newton''s law of cooling gives dQ/dt proportional to (T - T_surroundings), so a body cools fastest when the temperature difference is greatest.',
    'medium',
    'NCERT Class XII',
    null,
    'e7376c80a34f9c7c4c5810e190b839e1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e7376c80a34f9c7c4c5810e190b839e1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Its surface area only'),
            ('B', 'The temperature of the surroundings only'),
            ('C', 'The difference between the body temperature and the surroundings'),
            ('D', 'The square of its temperature')
           ) as v(label, option_text)
 where q.question_hash = 'e7376c80a34f9c7c4c5810e190b839e1'
on conflict (question_id, label) do nothing;

-- science_tech | physics | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'The capacitance of a parallel plate capacitor is increased by:',
    'Inserting a dielectric of constant K multiplies the capacitance by K, and it also stores more charge for the same applied potential difference.',
    'easy',
    'NCERT Class XII',
    null,
    'bfb8a27a79cb8e1704c7a7dea13a5fdb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'bfb8a27a79cb8e1704c7a7dea13a5fdb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Increasing the separation between the plates'),
            ('B', 'Introducing a dielectric between the plates'),
            ('C', 'Reducing the area of the plates'),
            ('D', 'Charging the capacitor fully')
           ) as v(label, option_text)
 where q.question_hash = 'bfb8a27a79cb8e1704c7a7dea13a5fdb'
on conflict (question_id, label) do nothing;

-- science_tech | physics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'Kirchhoff''s laws are used in the analysis of:',
    'Kirchhoff''s junction rule states that the algebraic sum of currents at a junction is zero, and the loop rule states that the algebraic sum of potential differences around a closed loop is zero.',
    'medium',
    'NCERT Class XII',
    null,
    '7e215f11d57eae6e26285d012a5ed781'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '7e215f11d57eae6e26285d012a5ed781'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Motion of satellites'),
            ('B', 'Reflection of light at plane mirrors'),
            ('C', 'Electric circuits'),
            ('D', 'Heat conduction in solids')
           ) as v(label, option_text)
 where q.question_hash = '7e215f11d57eae6e26285d012a5ed781'
on conflict (question_id, label) do nothing;

-- science_tech | physics | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'The frequency of the alternating current supplied in India is:',
    'Indian power supply is 50 Hz with 230 V for domestic consumers, and the rms value of the voltage quoted is the standard one used in formulas.',
    'easy',
    'Standard Reference',
    null,
    'f5b0f463ecf49115c98a995635e9703f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'f5b0f463ecf49115c98a995635e9703f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '60 Hz'),
            ('B', '100 Hz'),
            ('C', '25 Hz'),
            ('D', '50 Hz')
           ) as v(label, option_text)
 where q.question_hash = 'f5b0f463ecf49115c98a995635e9703f'
on conflict (question_id, label) do nothing;

-- science_tech | physics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'physics'),
    'In the resonance column experiment, the length of the first resonance column is:',
    'With a closed pipe, the first resonance occurs when the air column is one quarter of the wavelength, and successive resonances are separated by lambda/2.',
    'medium',
    'NCERT Class XI',
    null,
    'eaf17ffc7770b0dd8ffb3fb95affd3a3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'eaf17ffc7770b0dd8ffb3fb95affd3a3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'lambda/4'),
            ('B', 'lambda/2'),
            ('C', '3lambda/4'),
            ('D', 'lambda')
           ) as v(label, option_text)
 where q.question_hash = 'eaf17ffc7770b0dd8ffb3fb95affd3a3'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'The modern periodic law of Mendeleev was based on:',
    'Mendeleev''s original law was based on atomic mass, but Moseley''s work showed that the properties of elements are a periodic function of atomic number, and this is the modern periodic law.',
    'easy',
    'NCERT Class XI',
    null,
    'ef5a6a2ff3c95b7e9cc52c9eb7f842bb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'ef5a6a2ff3c95b7e9cc52c9eb7f842bb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Atomic mass'),
            ('B', 'Atomic number'),
            ('C', 'Number of neutrons'),
            ('D', 'Isotope mass')
           ) as v(label, option_text)
 where q.question_hash = 'ef5a6a2ff3c95b7e9cc52c9eb7f842bb'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'The lanthanides and actinides are placed separately in the periodic table because:',
    'In the f-block elements the differentiating electron is filled in the inner f subshell, and this common property justifies separating them from the main body of the table.',
    'medium',
    'NCERT Class XI',
    null,
    '50fa77b51aa732efc19037b02de185fc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '50fa77b51aa732efc19037b02de185fc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The differentiating electron enters the f subshell'),
            ('B', 'They are all radioactive'),
            ('C', 'They have very high melting points'),
            ('D', 'Their atoms are much larger')
           ) as v(label, option_text)
 where q.question_hash = '50fa77b51aa732efc19037b02de185fc'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'Two nuclides with the same mass number but different atomic numbers are called:',
    'Isobars have the same mass number but different atomic numbers, isotopes have the same atomic number but different mass numbers, and isotones have the same number of neutrons.',
    'medium',
    'NCERT Class XI',
    null,
    'cebe07880bab536f908c72a97286c958'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'cebe07880bab536f908c72a97286c958'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Isomers'),
            ('B', 'Isotopes'),
            ('C', 'Isobars'),
            ('D', 'Isotones')
           ) as v(label, option_text)
 where q.question_hash = 'cebe07880bab536f908c72a97286c958'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'The maximum number of electrons that can occupy an orbital is:',
    'According to the Pauli exclusion principle no two electrons in an atom can have the same set of four quantum numbers, so an orbital holds at most two electrons with opposite spins.',
    'easy',
    'NCERT Class XI',
    null,
    'a1acf30fcfb92b53f1fc685152da8a78'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a1acf30fcfb92b53f1fc685152da8a78'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Four'),
            ('B', 'Six'),
            ('C', 'One'),
            ('D', 'Two')
           ) as v(label, option_text)
 where q.question_hash = 'a1acf30fcfb92b53f1fc685152da8a78'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'Hund''s rule of maximum multiplicity states that:',
    'Hund''s rule says that for a set of degenerate orbitals the electrons occupy them singly with parallel spins before any pairing, which lowers the total energy of the configuration.',
    'medium',
    'NCERT Class XI',
    null,
    '4bf894d4b7e07ef70be484f2c524cb73'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '4bf894d4b7e07ef70be484f2c524cb73'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'For a given subshell, degenerate orbitals are singly occupied before pairing begins'),
            ('B', 'Opposite spins are always paired'),
            ('C', 'Only two electrons can occupy a subshell'),
            ('D', 'Electrons pair up in an orbital before occupying higher orbitals')
           ) as v(label, option_text)
 where q.question_hash = '4bf894d4b7e07ef70be484f2c524cb73'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'The Lyman series of hydrogen spectra corresponds to transitions ending at:',
    'The Lyman series involves transitions to n = 1 and lies in the ultraviolet region, while the Balmer series to n = 2 is visible and the Paschen series to n = 3 is in the infrared.',
    'medium',
    'NCERT Class XI',
    null,
    'd518fb92710e61e4473fe2d881a00dcc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'd518fb92710e61e4473fe2d881a00dcc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'n = 2'),
            ('B', 'n = 3'),
            ('C', 'n = 4'),
            ('D', 'n = 1')
           ) as v(label, option_text)
 where q.question_hash = 'd518fb92710e61e4473fe2d881a00dcc'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'Across a period, the first ionisation enthalpy of elements generally:',
    'Effective nuclear charge rises across a period while the added electron goes into a shell of the same principal quantum number, so the first ionisation enthalpy generally increases from left to right.',
    'medium',
    'NCERT Class XI',
    null,
    '0a766c145d668e2cce821a19a6e02e5f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '0a766c145d668e2cce821a19a6e02e5f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Decreases'),
            ('B', 'Increases'),
            ('C', 'Remains constant'),
            ('D', 'First increases then decreases')
           ) as v(label, option_text)
 where q.question_hash = '0a766c145d668e2cce821a19a6e02e5f'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'The shape of the XeF4 molecule according to VSEPR theory is:',
    'Xenon in XeF4 has four bond pairs and two lone pairs, so the six electron pairs form an octahedral arrangement with the lone pairs trans, giving a square planar molecule.',
    'hard',
    'NCERT Class XI',
    null,
    '3b4a7d333dbd22b9d0736fbc2b071ea6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '3b4a7d333dbd22b9d0736fbc2b071ea6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Octahedral'),
            ('B', 'Tetrahedral'),
            ('C', 'Square planar'),
            ('D', 'Trigonal bipyramidal')
           ) as v(label, option_text)
 where q.question_hash = '3b4a7d333dbd22b9d0736fbc2b071ea6'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'In the Hall-Heroult process, alumina is electrolysed in a:',
    'Aluminium is extracted by electrolysing a suspension of alumina in molten cryolite with a graphite anode, and the cathode gives the molten metal that is tapped off.',
    'medium',
    'NCERT Class XII',
    null,
    '816242f1ba3b84c8d0c52e761d8a5cfb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '816242f1ba3b84c8d0c52e761d8a5cfb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Molten sodium chloride solution'),
            ('B', 'Dilute sulphuric acid'),
            ('C', 'Molten cryolite dissolved alumina mixture'),
            ('D', 'Aqueous sodium hydroxide solution')
           ) as v(label, option_text)
 where q.question_hash = '816242f1ba3b84c8d0c52e761d8a5cfb'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'Bauxite is purified by the:',
    'In the Bayer process alumina from bauxite is leached with hot concentrated sodium hydroxide, the impurities are separated as red mud, and alumina is then precipitated and calcined.',
    'hard',
    'NCERT Class XII',
    null,
    '97215393a6ef9073eecefaf45a4275a9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '97215393a6ef9073eecefaf45a4275a9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bayer process involving leaching with hot sodium hydroxide'),
            ('B', 'Froth flotation'),
            ('C', 'Magnetic separation'),
            ('D', 'Calcination')
           ) as v(label, option_text)
 where q.question_hash = '97215393a6ef9073eecefaf45a4275a9'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'Rusting of iron is prevented by:',
    'Rusting requires both moisture and oxygen, so painting, oiling, galvanising with zinc and alloying with nickel or chromium all interrupt the corrosion process.',
    'easy',
    'NCERT Class XII',
    null,
    '18841de970343c19251989a03b759dca'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '18841de970343c19251989a03b759dca'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Cooling the metal below zero degrees'),
            ('B', 'Adding carbon to the metal'),
            ('C', 'Exposing the metal to sunlight'),
            ('D', 'Painting, galvanisation and alloying')
           ) as v(label, option_text)
 where q.question_hash = '18841de970343c19251989a03b759dca'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'Werner''s contribution to coordination chemistry was the explanation of:',
    'Werner proposed that metal ions coordinate with ligands to form complex ions and used this idea to explain optical isomerism and the structure of metal carbonyls, winning the 1913 Nobel Prize.',
    'medium',
    'Standard Reference',
    null,
    '5187bfa2db505f5dd0d46b757ea9bd78'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '5187bfa2db505f5dd0d46b757ea9bd78'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Periodic trends'),
            ('B', 'Isomerism in coordination compounds'),
            ('C', 'Oxidation states of metals'),
            ('D', 'Radioactivity')
           ) as v(label, option_text)
 where q.question_hash = '5187bfa2db505f5dd0d46b757ea9bd78'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'The colour of a transition metal complex often arises from:',
    'In crystal field theory the splitting of degenerate d orbitals by the ligands creates energy gaps, and absorption of visible light in these gaps produces the observed colour.',
    'hard',
    'NCERT Class XII',
    null,
    '61bcfbbde187213a4594c3707962b879'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '61bcfbbde187213a4594c3707962b879'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Complete ionisation of the metal'),
            ('B', 'Presence of ligands of high molecular mass'),
            ('C', 'Isotopes of the metal'),
            ('D', 'd-d transitions caused by crystal field splitting')
           ) as v(label, option_text)
 where q.question_hash = '61bcfbbde187213a4594c3707962b879'
on conflict (question_id, label) do nothing;

-- science_tech | chemistry | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'chemistry'),
    'The number of Bravais lattices in the three-dimensional crystal system is:',
    'There are 14 distinct Bravais lattices, corresponding to the 7 crystal systems with additional body-centred, face-centred and base-centred variants.',
    'hard',
    'NCERT Class XII',
    null,
    'e4e83779bc81dc1cf9f4ceed59ee5edb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e4e83779bc81dc1cf9f4ceed59ee5edb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '7'),
            ('B', '10'),
            ('C', '14'),
            ('D', '32')
           ) as v(label, option_text)
 where q.question_hash = 'e4e83779bc81dc1cf9f4ceed59ee5edb'
on conflict (question_id, label) do nothing;

commit;
