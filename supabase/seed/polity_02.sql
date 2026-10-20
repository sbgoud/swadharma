-- =============================================================================
-- polity_02.sql — polity question pack, part 02
-- 250 questions. Applied after supabase/migrations/004_reference_data.sql
-- =============================================================================

begin;

-- polity | judiciary | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''Third Judges case'' of 1998 modified the collegium system by:',
    'The Third Judges case in 1998 held that the government has no role in the appointment of judges and that the collegium''s recommendation is the source of truth.',
    'hard',
    'Standard Reference',
    null,
    'c6f0d2680c7ae04115edc43ac49f0fcb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'c6f0d2680c7ae04115edc43ac49f0fcb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Giving the executive a say in appointments'),
            ('B', 'Providing that the collegium is the source of truth'),
            ('C', 'Abolishing the NJAC'),
            ('D', 'Making the CJI the sole Appointments Commission')
           ) as v(label, option_text)
 where q.question_hash = 'c6f0d2680c7ae04115edc43ac49f0fcb'
on conflict (question_id, label) do nothing;

-- polity | judiciary | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The National Judicial Appointments Commission, created by the 101st Amendment, consists of:',
    'The NJAC was to consist of the CJI, the senior-most Supreme Court judge, the Union Law Minister, two eminent persons and the Chief Justice of the concerned High Court, but the Supreme Court struck it down in 2015.',
    'hard',
    'Standard Reference',
    null,
    '7d571dc4573c3624f64b752690942b7e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '7d571dc4573c3624f64b752690942b7e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The CJI, two senior Supreme Court judges, the Law Minister and two eminent persons'),
            ('B', 'The CJI and the President'),
            ('C', 'Only Supreme Court judges'),
            ('D', 'The President, the CJI and the Prime Minister')
           ) as v(label, option_text)
 where q.question_hash = '7d571dc4573c3624f64b752690942b7e'
on conflict (question_id, label) do nothing;

-- polity | judiciary | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''National Green Tribunal'' has been given the status of a:',
    'The NGT is a statutory body under the Environment Protection Act, 1986, and its orders are treated as final and binding.',
    'medium',
    'Standard Reference',
    null,
    'aa1c85acc448343687f4be766e16a73f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'aa1c85acc448343687f4be766e16a73f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Judicial body'),
            ('B', 'Constitutional body'),
            ('C', 'Statutory body'),
            ('D', 'Executive body')
           ) as v(label, option_text)
 where q.question_hash = 'aa1c85acc448343687f4be766e16a73f'
on conflict (question_id, label) do nothing;

-- polity | judiciary | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''Lok Adalat'' is:',
    'The Lok Adalat, an informal system of conciliation of disputes, was given a statutory basis under the Legal Services Authorities Act, 1987.',
    'medium',
    'Standard Reference',
    null,
    'ac02371616c308e1d94b4549f4965077'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'ac02371616c308e1d94b4549f4965077'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A judicial body'),
            ('B', 'A constitutional body'),
            ('C', 'A statutory body'),
            ('D', 'An informal system of conciliation of disputes')
           ) as v(label, option_text)
 where q.question_hash = 'ac02371616c308e1d94b4549f4965077'
on conflict (question_id, label) do nothing;

-- polity | judiciary | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''Article 227'' of the Constitution empowers the High Court to:',
    'Article 227 empowers the High Court to supervise all courts and tribunals in its jurisdiction, including the right to call for records and to issue directions.',
    'medium',
    'Standard Reference',
    null,
    '7375fafdb17582d24d4d90b3ace830f9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '7375fafdb17582d24d4d90b3ace830f9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Supervise all courts and tribunals in its jurisdiction'),
            ('B', 'Appoint judges'),
            ('C', 'Make laws'),
            ('D', 'Handle disputes between states')
           ) as v(label, option_text)
 where q.question_hash = '7375fafdb17582d24d4d90b3ace830f9'
on conflict (question_id, label) do nothing;

-- polity | judiciary | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''Article 137'' of the Constitution provides:',
    'Article 137 provides for the appellate jurisdiction of the Supreme Court in the matters of both law and fact.',
    'easy',
    'Standard Reference',
    null,
    '7fc512f04e16c04ed2ffb26bbeaa65ba'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '7fc512f04e16c04ed2ffb26bbeaa65ba'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The power to transfer cases'),
            ('B', 'The appellate jurisdiction of the Supreme Court'),
            ('C', 'The advisory jurisdiction'),
            ('D', 'The original jurisdiction')
           ) as v(label, option_text)
 where q.question_hash = '7fc512f04e16c04ed2ffb26bbeaa65ba'
on conflict (question_id, label) do nothing;

-- polity | judiciary | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The Supreme Court has the power to do which of the following under Article 142?',
    'Article 142 empowers the Supreme Court to pass such decree or order as is necessary for doing complete justice in any cause or matter pending before it.',
    'hard',
    'Standard Reference',
    null,
    'dfc7854104aa033c3e64115e705fdb84'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'dfc7854104aa033c3e64115e705fdb84'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Create new states'),
            ('B', 'Decide cases in the way it thinks fit'),
            ('C', 'Appoint judges'),
            ('D', 'Amend the Constitution')
           ) as v(label, option_text)
 where q.question_hash = 'dfc7854104aa033c3e64115e705fdb84'
on conflict (question_id, label) do nothing;

-- polity | judiciary | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''Article 139A'' was inserted in the Constitution in:',
    'Article 139A was inserted in 1987 to empower the Supreme Court to withdraw and transfer cases involving the same substantial question of law.',
    'hard',
    'Standard Reference',
    null,
    '6c7aafae4450f471462eb4fe30b1a250'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '6c7aafae4450f471462eb4fe30b1a250'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1987'),
            ('B', '1976'),
            ('C', '1991'),
            ('D', '2000')
           ) as v(label, option_text)
 where q.question_hash = '6c7aafae4450f471462eb4fe30b1a250'
on conflict (question_id, label) do nothing;

-- polity | judiciary | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''CJI''s annual conference'' and the ''National Judicial Academy'' are:',
    'Neither the National Judicial Academy nor the annual judicial conferences are statutory bodies; they are administrative institutions of the judiciary.',
    'hard',
    'Standard Reference',
    null,
    '1633ab43a8ebb77b071eb7c833823a1e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '1633ab43a8ebb77b071eb7c833823a1e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Judicial corporations'),
            ('B', 'Statutory bodies'),
            ('C', 'Not statutory bodies'),
            ('D', 'Constitutional bodies')
           ) as v(label, option_text)
 where q.question_hash = '1633ab43a8ebb77b071eb7c833823a1e'
on conflict (question_id, label) do nothing;

-- polity | judiciary | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''Article 130'' of the Constitution empowers the Supreme Court to:',
    'Article 130 empowers the Supreme Court to frame rules of procedure with the President''s approval, and to make rules of the same nature as the Rules of Procedure of Parliament.',
    'medium',
    'Standard Reference',
    null,
    '34690de96fb86aaf094ccc3a2a13046a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '34690de96fb86aaf094ccc3a2a13046a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Hold the office of the Election Commission'),
            ('B', 'Appoint the Attorney General'),
            ('C', 'Administer oaths'),
            ('D', 'Frame rules of procedure')
           ) as v(label, option_text)
 where q.question_hash = '34690de96fb86aaf094ccc3a2a13046a'
on conflict (question_id, label) do nothing;

-- polity | judiciary | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The Supreme Court was designed as a:',
    'Article 141 makes the Supreme Court a court of record for the whole country, with the power to decide all disputes and to act as a court of review, advisory and appellate.',
    'medium',
    'Standard Reference',
    null,
    'a97543a7420bec8718918719a5266624'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a97543a7420bec8718918719a5266624'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Court of law for the entire country and a court of record'),
            ('B', 'Court of appeals only'),
            ('C', 'Continental court'),
            ('D', 'Federal court')
           ) as v(label, option_text)
 where q.question_hash = 'a97543a7420bec8718918719a5266624'
on conflict (question_id, label) do nothing;

-- polity | judiciary | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''Article 233'' of the Constitution provides for the appointment of:',
    'Article 233 provides for the appointment of district judges by the Governor in consultation with the High Court.',
    'medium',
    'Standard Reference',
    null,
    '5bd9ad704e5940511ecbac8ae0fbe3e3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '5bd9ad704e5940511ecbac8ae0fbe3e3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Supreme Court judges'),
            ('B', 'Attorney General'),
            ('C', 'District judges'),
            ('D', 'High Court judges')
           ) as v(label, option_text)
 where q.question_hash = '5bd9ad704e5940511ecbac8ae0fbe3e3'
on conflict (question_id, label) do nothing;

-- polity | judiciary | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''Article 235'' gives:',
    'Article 235 gives the High Court control over the district and subordinate courts in its jurisdiction.',
    'medium',
    'Standard Reference',
    null,
    '3c3a5d4eb5fbdad7afa4cdb03dec7423'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '3c3a5d4eb5fbdad7afa4cdb03dec7423'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The President power over the judiciary'),
            ('B', 'The High Court control over subordinate courts'),
            ('C', 'The Supreme Court control over High Courts'),
            ('D', 'Parliament the power to regulate the judiciary')
           ) as v(label, option_text)
 where q.question_hash = '3c3a5d4eb5fbdad7afa4cdb03dec7423'
on conflict (question_id, label) do nothing;

-- polity | judiciary | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''Impeachment'' of a judge of a High Court in India is provided under:',
    'Article 217 provides for the removal of a High Court judge by an address passed by the legislature of the state concerned.',
    'hard',
    'Standard Reference',
    null,
    '5799ff09558737981e384f291f52dd11'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '5799ff09558737981e384f291f52dd11'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Article 218'),
            ('B', 'Article 222'),
            ('C', 'Article 124'),
            ('D', 'Article 217')
           ) as v(label, option_text)
 where q.question_hash = '5799ff09558737981e384f291f52dd11'
on conflict (question_id, label) do nothing;

-- polity | judiciary | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''Custodian of Government and Leader of the Opposition'' in a state is appointed by:',
    'The Chief Minister appoints the Leader of the Opposition in the state legislature and other office-holders of the state government.',
    'medium',
    'Standard Reference',
    null,
    'd0800c41a19a9ff17caaf90f00a0acef'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd0800c41a19a9ff17caaf90f00a0acef'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Speaker'),
            ('B', 'The Chief Minister'),
            ('C', 'The Governor'),
            ('D', 'The President')
           ) as v(label, option_text)
 where q.question_hash = 'd0800c41a19a9ff17caaf90f00a0acef'
on conflict (question_id, label) do nothing;

-- polity | judiciary | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'Which Article of the Constitution abolishes the office of the Legislative Council?',
    'Article 169 provides for the abolition or creation of legislative councils in the states, and Parliament may by law abolish a council.',
    'hard',
    'Standard Reference',
    null,
    'db948eeed5f013451f5600a74dbec262'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'db948eeed5f013451f5600a74dbec262'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Article 170'),
            ('B', 'Article 171'),
            ('C', 'Article 172'),
            ('D', 'Article 169')
           ) as v(label, option_text)
 where q.question_hash = 'db948eeed5f013451f5600a74dbec262'
on conflict (question_id, label) do nothing;

-- polity | judiciary | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The Supreme Court can issue which of the following writs?',
    'The Supreme Court can issue all the five writs, while the High Courts can issue the writ of quo warranto only for certain purposes.',
    'medium',
    'Standard Reference',
    null,
    'c47fded1b44d1e401e38a17988d0f1aa'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c47fded1b44d1e401e38a17988d0f1aa'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Only certiorari'),
            ('B', 'No writs'),
            ('C', 'All of the five writs'),
            ('D', 'Only habeas corpus and mandamus')
           ) as v(label, option_text)
 where q.question_hash = 'c47fded1b44d1e401e38a17988d0f1aa'
on conflict (question_id, label) do nothing;

-- polity | judiciary | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''Article 136'' of the Constitution provides for:',
    'Article 136 empowers the Supreme Court to grant special leave to appeal from any judgment, determination, sentence or order in any cause or matter passed by any court or tribunal in India.',
    'medium',
    'Standard Reference',
    null,
    '223de5bd64d11d9a308f3b6ce8c1706f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '223de5bd64d11d9a308f3b6ce8c1706f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Special leave to appeal to the Supreme Court'),
            ('B', 'Transfer of cases'),
            ('C', 'Advisory jurisdiction'),
            ('D', 'Appointment of judges')
           ) as v(label, option_text)
 where q.question_hash = '223de5bd64d11d9a308f3b6ce8c1706f'
on conflict (question_id, label) do nothing;

-- polity | judiciary | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The right to be tried by a court of one''s own choosing under Article 22?',
    'Article 22(1) says that no person accused of an offence shall be arrested without being informed of the grounds of arrest and the right to consult and be defended by a legal practitioner of his choice.',
    'easy',
    'NCERT Class XII (Polity)',
    null,
    'ac7b5e818561aaec9a8c6637a33e3bf4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ac7b5e818561aaec9a8c6637a33e3bf4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'No person shall be arrested without being informed of the grounds'),
            ('B', 'Protection against conviction by special court'),
            ('C', 'Right to a public trial'),
            ('D', 'Right to speedy trial')
           ) as v(label, option_text)
 where q.question_hash = 'ac7b5e818561aaec9a8c6637a33e3bf4'
on conflict (question_id, label) do nothing;

-- polity | judiciary | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''Article 23'' of the Constitution and the ''Bonded Labour System (Abolition) Act, 1976'' relate to:',
    'The Bonded Labour System (Abolition) Act of 1976 was enacted to abolish bonded labour and was the first law to give effect to Article 23.',
    'medium',
    'Standard Reference',
    null,
    '746c8c5de2608fc90e3c14d58dabca04'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '746c8c5de2608fc90e3c14d58dabca04'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Prison reform'),
            ('B', 'Land reform'),
            ('C', 'Child labour'),
            ('D', 'Forced labour')
           ) as v(label, option_text)
 where q.question_hash = '746c8c5de2608fc90e3c14d58dabca04'
on conflict (question_id, label) do nothing;

-- polity | judiciary | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''Contempt of Courts Act, 1971'' in India provides for:',
    'The Contempt of Courts Act, 1971 consolidated the law relating to contempt of courts and provided a summary procedure.',
    'medium',
    'Standard Reference',
    null,
    '7dcfd2e47f8eea318c072125950442fb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '7dcfd2e47f8eea318c072125950442fb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Legal aid'),
            ('B', 'Summary procedure for punishing contempt'),
            ('C', 'Appointment of judges'),
            ('D', 'Fast track courts')
           ) as v(label, option_text)
 where q.question_hash = '7dcfd2e47f8eea318c072125950442fb'
on conflict (question_id, label) do nothing;

-- polity | judiciary | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''Judicial Review'' is a:',
    'Judicial review is the power of the judiciary to examine the constitutionality of legislative and executive acts and to declare them unconstitutional if they violate the Constitution.',
    'easy',
    'Standard Reference',
    null,
    '33c5df8a3536e536d1d6d04010061395'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '33c5df8a3536e536d1d6d04010061395'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Power of the President to review judgments'),
            ('B', 'Power of the CAG to audit courts'),
            ('C', 'Power of the judiciary to examine the constitutionality of legislative and executive acts'),
            ('D', 'Power of the legislature over the judiciary')
           ) as v(label, option_text)
 where q.question_hash = '33c5df8a3536e536d1d6d04010061395'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'The ''Sachar Commission'' (2006) was appointed to examine:',
    'The Justice R.K. Sachar Committee was appointed in 2006 to review the performance of the police forces and recommend reforms.',
    'medium',
    'Standard Reference',
    null,
    '5ea1177c75808bd2a1719c04218367bd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '5ea1177c75808bd2a1719c04218367bd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Judicial reforms'),
            ('B', 'Electoral reforms'),
            ('C', 'Prison reforms'),
            ('D', 'Police reforms')
           ) as v(label, option_text)
 where q.question_hash = '5ea1177c75808bd2a1719c04218367bd'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'The ''Balakrishna Committee'' (2006) was related to:',
    'The Justice V.R. Balakrishna Committee set up in 2006 reviewed the working of the Supreme Court and recommended judicial reforms.',
    'medium',
    'Standard Reference',
    null,
    'cb2ea4e0b8af71fb0359f93e1413f221'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'cb2ea4e0b8af71fb0359f93e1413f221'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Pension reforms'),
            ('B', 'Judicial reforms'),
            ('C', 'Police reforms'),
            ('D', 'Electoral reforms')
           ) as v(label, option_text)
 where q.question_hash = 'cb2ea4e0b8af71fb0359f93e1413f221'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'The ''Punchhi Commission'' (2007) was related to:',
    'The Justice V.S. Punchhi Commission of 2007 reviewed the electoral process and made recommendations on the delimitation of constituencies and electoral reforms.',
    'hard',
    'Standard Reference',
    null,
    '070a850ca2b692bce42c6c33e23536e5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '070a850ca2b692bce42c6c33e23536e5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Elections'),
            ('B', 'Judicial reforms'),
            ('C', 'Police reforms'),
            ('D', 'Defence reforms')
           ) as v(label, option_text)
 where q.question_hash = '070a850ca2b692bce42c6c33e23536e5'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'The ''National Commission to Review the Working of the Constitution'' (2000) was chaired by:',
    'The National Commission to Review the Working of the Constitution was set up by the NDA government in February 2000 under the chairmanship of Justice M.N. Venkatachaliah.',
    'medium',
    'Standard Reference',
    null,
    'caea65a734df40d675be569e47039725'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'caea65a734df40d675be569e47039725'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Justice Y.V. Chandrachud'),
            ('B', 'Justice K.N. Singh'),
            ('C', 'Justice M.N. Venkatachaliah'),
            ('D', 'Justice M.S. Ramaswamy')
           ) as v(label, option_text)
 where q.question_hash = 'caea65a734df40d675be569e47039725'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'The ''National Commission to Review the Working of the Constitution'' recommended:',
    'Among its recommendations, the Venkatachaliah Commission suggested the abolition of the Legislative Council and the setting up of a National Council of States.',
    'hard',
    'Standard Reference',
    null,
    '22dbaaffc49626ffcd28b2e05e5e340b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '22dbaaffc49626ffcd28b2e05e5e340b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Abolition of the presidential system'),
            ('B', 'Abolition of the Legislative Council'),
            ('C', 'Reduction of the Lok Sabha term to four years'),
            ('D', 'Creation of a separate electorate for minorities')
           ) as v(label, option_text)
 where q.question_hash = '22dbaaffc49626ffcd28b2e05e5e340b'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'The ''Second Backward Classes Commission'' (2004) was chaired by:',
    'Justice A.S. Prasad chaired the Second Backward Classes Commission, which dealt with the extension of benefits to the OBCs created by the 85th Amendment.',
    'hard',
    'Standard Reference',
    null,
    '795a426c63d97800b62322bbb03a0b52'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '795a426c63d97800b62322bbb03a0b52'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Justice U.N. Ramanujam'),
            ('B', 'Justice Hans Raj Khanna'),
            ('C', 'Justice A.S. Prasad'),
            ('D', 'Justice K.S. Sheshadri')
           ) as v(label, option_text)
 where q.question_hash = '795a426c63d97800b62322bbb03a0b52'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'The ''Pay Commission'' in India is set up by:',
    'The Central Pay Commission is set up by the President to review the pay and service conditions of central government employees.',
    'medium',
    'Standard Reference',
    null,
    'fd4c447dc36db1bb7f127775a91d95d0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'fd4c447dc36db1bb7f127775a91d95d0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The President'),
            ('B', 'The Finance Commission'),
            ('C', 'The Parliament'),
            ('D', 'The Supreme Court')
           ) as v(label, option_text)
 where q.question_hash = 'fd4c447dc36db1bb7f127775a91d95d0'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'The ''National Commission for Women'' was established in:',
    'The National Commission for Women was established in 1990 under the National Commission for Women Act, 1990, following the recommendations of the Committee on the Status of Women in India.',
    'medium',
    'Standard Reference',
    null,
    'f967db17aadcf03d80dcf200af89d27f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'f967db17aadcf03d80dcf200af89d27f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1993'),
            ('B', '1997'),
            ('C', '2000'),
            ('D', '1990')
           ) as v(label, option_text)
 where q.question_hash = 'f967db17aadcf03d80dcf200af89d27f'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'The ''CJI headed the ''National Commission on the Status of Women'' in 1994? The commission that recommended the NCW was chaired by:',
    'The Committee on the Status of Women in India (CSWI), set up in 1990, was chaired by Justice M.N. Venkatachaliah and recommended the setting up of the National Commission for Women.',
    'hard',
    'Standard Reference',
    null,
    '6d8df996a6e44125e6131e7e001495f0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '6d8df996a6e44125e6131e7e001495f0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Justice V. Khalid'),
            ('B', 'Justice R.K. Saboo'),
            ('C', 'Justice S. Ratnavel Pandian'),
            ('D', 'Justice M.N. Venkatachaliah')
           ) as v(label, option_text)
 where q.question_hash = '6d8df996a6e44125e6131e7e001495f0'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'The ''Central Bureau of Investigation'' was established on the recommendation of:',
    'The CBI was set up in 1963 on the recommendation of the Santhanam Committee appointed after the Bakshi-Garg case.',
    'medium',
    'Standard Reference',
    null,
    '93dbde83d3f054a408e896a15c1ad1bb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '93dbde83d3f054a408e896a15c1ad1bb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Santhanam Committee'),
            ('B', 'The Kothari Commission'),
            ('C', 'The Balwant Rai Mehta Committee'),
            ('D', 'The Sarkar Commission')
           ) as v(label, option_text)
 where q.question_hash = '93dbde83d3f054a408e896a15c1ad1bb'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'The ''Cabinet Secretariat'' and the ''Prime Minister''s Office'' are:',
    'The Cabinet Secretariat and the PMO are executive bodies created by administrative orders, not constitutional bodies.',
    'medium',
    'Standard Reference',
    null,
    '27860215a58aa1a71855351c65b4c7f5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '27860215a58aa1a71855351c65b4c7f5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Judicial bodies'),
            ('B', 'Constitutional bodies'),
            ('C', 'Executive bodies'),
            ('D', 'Statutory bodies')
           ) as v(label, option_text)
 where q.question_hash = '27860215a58aa1a71855351c65b4c7f5'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'The ''Prime Minister of India'' is appointed by:',
    'Article 75 provides that the Prime Minister shall be appointed by the President and the Council of Ministers is responsible to the Lok Sabha.',
    'easy',
    'Standard Reference',
    null,
    '1d6369f4a12de1da6f4653947a0dc63d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '1d6369f4a12de1da6f4653947a0dc63d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Chief Justice'),
            ('B', 'The President'),
            ('C', 'Parliament'),
            ('D', 'The Lok Sabha')
           ) as v(label, option_text)
 where q.question_hash = '1d6369f4a12de1da6f4653947a0dc63d'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'The ''Council of Ministers'' at the Union level is headed by:',
    'Article 74 provides for a Council of Ministers with the Prime Minister at the head to aid and advise the President, who must act in accordance with that advice.',
    'easy',
    'Standard Reference',
    null,
    '22b8e27cba5f423e6080c62a0489d693'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '22b8e27cba5f423e6080c62a0489d693'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The President'),
            ('B', 'The Prime Minister'),
            ('C', 'The Finance Minister'),
            ('D', 'The Attorney General')
           ) as v(label, option_text)
 where q.question_hash = '22b8e27cba5f423e6080c62a0489d693'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'Article 75(3) of the Constitution states that a minister:',
    'A minister who is not a member of the Lok Sabha can remain in office for at most six months after the Lok Sabha is dissolved, and must become a member within that period.',
    'hard',
    'Standard Reference',
    null,
    '4b9c1d4587ef6995b82ca84a31ff3675'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '4b9c1d4587ef6995b82ca84a31ff3675'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Can be a member of a state legislature'),
            ('B', 'Cannot be appointed from outside Parliament'),
            ('C', 'May not remain in office after the Lok Sabha dissolves'),
            ('D', 'Must be a member of both houses')
           ) as v(label, option_text)
 where q.question_hash = '4b9c1d4587ef6995b82ca84a31ff3675'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'The ''NITI Aayog'' and the ''Planning Commission'' differ in that NITI Aayog:',
    'The Planning Commission allocated plan funds to the states, whereas the NITI Aayog is a think tank without the power to allocate funds.',
    'medium',
    'Standard Reference',
    null,
    'f0326bf84b3d4d2dbe05f2a6bed54ecb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f0326bf84b3d4d2dbe05f2a6bed54ecb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is a think tank without fund allocation powers'),
            ('B', 'Is chaired by the President'),
            ('C', 'Has a larger cadre of officers'),
            ('D', 'Allocates plan funds to the states')
           ) as v(label, option_text)
 where q.question_hash = 'f0326bf84b3d4d2dbe05f2a6bed54ecb'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'The ''National Development Council'' is chaired by:',
    'The National Development Council, which reviews the work of the NITI Aayog, is chaired by the Prime Minister.',
    'hard',
    'Standard Reference',
    null,
    '3590c27d1e75e6491017c978e39a0c14'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '3590c27d1e75e6491017c978e39a0c14'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The President'),
            ('B', 'The Finance Minister'),
            ('C', 'The NITI Aayog Vice-Chairperson'),
            ('D', 'The Prime Minister')
           ) as v(label, option_text)
 where q.question_hash = '3590c27d1e75e6491017c978e39a0c14'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'The ''CVC Act'' was enacted in:',
    'The Central Vigilance Commission Act, 2003 gave statutory status to the CVC and brought its personnel and functions under the control of the CVC Act.',
    'medium',
    'Standard Reference',
    null,
    '46b3ea5006e80a130d820ebbe93b32ec'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '46b3ea5006e80a130d820ebbe93b32ec'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2011'),
            ('B', '2003'),
            ('C', '1998'),
            ('D', '2006')
           ) as v(label, option_text)
 where q.question_hash = '46b3ea5006e80a130d820ebbe93b32ec'
on conflict (question_id, label) do nothing;

-- polity | elections | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'elections'),
    'The ''Election Commission of India'' became a multi-member commission on the recommendation of:',
    'The Dinesh Goswami Committee (1975) recommended a multi-member Election Commission, and the CEC and ECs were given statutory status in 1993.',
    'hard',
    'Standard Reference',
    null,
    '97b25ae9d629daa5941382514ae28f8a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '97b25ae9d629daa5941382514ae28f8a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sarkar Commission'),
            ('B', 'Balwant Rai Mehta Committee'),
            ('C', 'Kothari Commission'),
            ('D', 'Dinesh Goswami Committee')
           ) as v(label, option_text)
 where q.question_hash = '97b25ae9d629daa5941382514ae28f8a'
on conflict (question_id, label) do nothing;

-- polity | elections | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'elections'),
    'The representation of the people in Parliament is governed by:',
    'The Representation of the People Act, 1950, amended in 1996, governs the representation of the people in Parliament and the state legislatures.',
    'medium',
    'Standard Reference',
    null,
    '1560d08d1bf45edae29f8444648660b4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '1560d08d1bf45edae29f8444648660b4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Representation of the People Act, 1950'),
            ('B', 'The Election Commission Act, 1991'),
            ('C', 'The Chief Election Commissioner''s orders'),
            ('D', 'The Constitution')
           ) as v(label, option_text)
 where q.question_hash = '1560d08d1bf45edae29f8444648660b4'
on conflict (question_id, label) do nothing;

-- polity | elections | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'elections'),
    'The ''Delimitation Commission'' is headed by:',
    'The Delimitation Commission is constituted under Article 82 and chaired by a retired Supreme Court judge, with two members of the Indian Civil Service.',
    'medium',
    'Standard Reference',
    null,
    'd5e172f58272a65f4bcb0541d902b17b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd5e172f58272a65f4bcb0541d902b17b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Home Secretary'),
            ('B', 'The Chief Election Commissioner'),
            ('C', 'A retired Supreme Court judge'),
            ('D', 'The President')
           ) as v(label, option_text)
 where q.question_hash = 'd5e172f58272a65f4bcb0541d902b17b'
on conflict (question_id, label) do nothing;

-- polity | elections | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'elections'),
    'The delimitation of constituencies can be done by:',
    'Only a Delimitation Commission constituted under Article 82 can delimit constituencies, and its orders have the force of law.',
    'hard',
    'Standard Reference',
    null,
    '7ec49526af3725f6e6dacc89bb05a822'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '7ec49526af3725f6e6dacc89bb05a822'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A commission constituted under Article 82'),
            ('B', 'The Election Commission directly'),
            ('C', 'The state governments'),
            ('D', 'Parliament by a simple resolution')
           ) as v(label, option_text)
 where q.question_hash = '7ec49526af3725f6e6dacc89bb05a822'
on conflict (question_id, label) do nothing;

-- polity | elections | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'elections'),
    'The ''anti-defection law'' in India is contained in:',
    'The Tenth Schedule, added by the 52nd Amendment of 1985, contains the anti-defection provisions inserted on the recommendation of the Dinesh Goswami Committee.',
    'medium',
    'Standard Reference',
    null,
    'b020f354acf55abd1d00183ec04d2e7d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'b020f354acf55abd1d00183ec04d2e7d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Ninth Schedule'),
            ('B', 'The Seventh Schedule'),
            ('C', 'The Tenth Schedule'),
            ('D', 'The Eleventh Schedule')
           ) as v(label, option_text)
 where q.question_hash = 'b020f354acf55abd1d00183ec04d2e7d'
on conflict (question_id, label) do nothing;

-- polity | elections | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'elections'),
    'The ''NOTA'' option was introduced following the directive of the Supreme Court in:',
    'The Supreme Court directed in the PUCL case in 2010 that the NOTA option be made available on electronic voting machines, and it was introduced in the 2013 general elections.',
    'medium',
    'Standard Reference',
    null,
    '7cb0627b5dbdc1bb515f7740ae484c7a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '7cb0627b5dbdc1bb515f7740ae484c7a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2013'),
            ('B', '2015'),
            ('C', '2007'),
            ('D', '2010')
           ) as v(label, option_text)
 where q.question_hash = '7cb0627b5dbdc1bb515f7740ae484c7a'
on conflict (question_id, label) do nothing;

-- polity | elections | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'elections'),
    'The ''Model Code of Conduct'' is applicable to:',
    'The Model Code of Conduct applies to all political parties and their candidates and is enforced by the Election Commission.',
    'easy',
    'Standard Reference',
    null,
    '863adfb783b00f392a36bba85ecaac40'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '863adfb783b00f392a36bba85ecaac40'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Only the ruling party candidates'),
            ('B', 'All political parties and candidates'),
            ('C', 'Only the opposition'),
            ('D', 'Only the state level elections')
           ) as v(label, option_text)
 where q.question_hash = '863adfb783b00f392a36bba85ecaac40'
on conflict (question_id, label) do nothing;

-- polity | elections | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'elections'),
    'The ''voter slip'' and the ''EPIC'' are issued by:',
    'The Election Commission prepares the electoral rolls and issues the voter identity cards, while the District Collector circulates the voter slips.',
    'medium',
    'Standard Reference',
    null,
    'd0cd6dee82511032acf457bc085528b8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd0cd6dee82511032acf457bc085528b8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Election Commission'),
            ('B', 'The State Governments'),
            ('C', 'The Parliament'),
            ('D', 'The District Collector')
           ) as v(label, option_text)
 where q.question_hash = 'd0cd6dee82511032acf457bc085528b8'
on conflict (question_id, label) do nothing;

-- polity | elections | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'elections'),
    'The ''Provisional list of electors'' and the ''statutory list of electors'' are:',
    'The statutory list of electors is published by the Chief Election Commissioner, and the District Collector prepares the draft roll and the preliminary list of electors.',
    'hard',
    'Standard Reference',
    null,
    '073aec3f7f9914743f675154406ca677'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '073aec3f7f9914743f675154406ca677'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Published by the District Collector'),
            ('B', 'Published by the Chief Election Commissioner'),
            ('C', 'Notified by the state government'),
            ('D', 'Published by the Returning Officer')
           ) as v(label, option_text)
 where q.question_hash = '073aec3f7f9914743f675154406ca677'
on conflict (question_id, label) do nothing;

-- polity | elections | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'elections'),
    'The ''preliminary list of electors'' is prepared by:',
    'The District Collector prepares the electoral roll, adds the names of the electors in the service of India and those of persons who have moved to a place, and then publishes the preliminary list.',
    'medium',
    'Standard Reference',
    null,
    'f4b24a598def20c0bed46757a9c301e4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'f4b24a598def20c0bed46757a9c301e4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Chief Election Commissioner'),
            ('B', 'The Superintendent of Police'),
            ('C', 'The Returning Officer'),
            ('D', 'The District Collector')
           ) as v(label, option_text)
 where q.question_hash = 'f4b24a598def20c0bed46757a9c301e4'
on conflict (question_id, label) do nothing;

-- polity | elections | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'elections'),
    'Electoral disputes for the offices of President, Vice-President and the Speaker are decided by:',
    'Under Article 71, all doubts and disputes relating to the election of the President and Vice-President are decided by the Supreme Court.',
    'medium',
    'Standard Reference',
    null,
    'ca4ecd1d127fede98523dc52f20796be'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'ca4ecd1d127fede98523dc52f20796be'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Election Commission'),
            ('B', 'Parliament'),
            ('C', 'The Supreme Court'),
            ('D', 'The High Court')
           ) as v(label, option_text)
 where q.question_hash = 'ca4ecd1d127fede98523dc52f20796be'
on conflict (question_id, label) do nothing;

-- polity | elections | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'elections'),
    'The ''Corrupt and Illegal Practices'' related to elections are covered under:',
    'The Representation of the People Act, 1951 deals with corrupt and illegal practices and the offences connected with elections.',
    'medium',
    'Standard Reference',
    null,
    'ba8bcdf34d1674fcf469d152d702b1b2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ba8bcdf34d1674fcf469d152d702b1b2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Representation of the People Act, 1951'),
            ('B', 'The Prevention of Corruption Act, 1988'),
            ('C', 'The Indian Penal Code'),
            ('D', 'The Election Commission Act, 1991')
           ) as v(label, option_text)
 where q.question_hash = 'ba8bcdf34d1674fcf469d152d702b1b2'
on conflict (question_id, label) do nothing;

-- polity | elections | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'elections'),
    'The ''captive candidates'' and the ''anticipatory bail'' provisions relate to:',
    'The Representation of the People Act, 1951 contains the provisions on corrupt and illegal practices including the offences of bribery and the grant of anticipatory bail.',
    'hard',
    'Standard Reference',
    null,
    '91b4b7ae90d4a657e385603937b1f39e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '91b4b7ae90d4a657e385603937b1f39e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Voting procedure'),
            ('B', 'Campaign finance'),
            ('C', 'Election offences'),
            ('D', 'Electoral roll revision')
           ) as v(label, option_text)
 where q.question_hash = '91b4b7ae90d4a657e385603937b1f39e'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The ''65th Amendment Act'' of 2000 was about:',
    'The 65th Amendment froze the allocation of seats in the Lok Sabha and the state assemblies until the first census after 2000, and read down the 84th Amendment to continue the 84th Amendment''s provisions on readjustment of constituencies.',
    'hard',
    'Standard Reference',
    null,
    '7e1df77a465a5a1ec49eef1c122da572'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '7e1df77a465a5a1ec49eef1c122da572'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Extension of the Rajya Sabha term'),
            ('B', 'The size of the Lok Sabha and state assemblies after the delimitation'),
            ('C', 'Reservation for the Anglo-Indians'),
            ('D', 'The vote of the Speaker in a no-confidence motion')
           ) as v(label, option_text)
 where q.question_hash = '7e1df77a465a5a1ec49eef1c122da572'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The ''84th Amendment Act'' of 2001 provided for:',
    'The 84th Amendment provided for the reservation of one-third of the total seats in the Lok Sabha and the state legislative assemblies for women and for the constitutional amendment to enable the Representation of the People Act to provide for that reservation.',
    'medium',
    'Standard Reference',
    null,
    'b7d05e7bf35a19fa8fcd75daeed96916'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'b7d05e7bf35a19fa8fcd75daeed96916'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Extension of the Rajya Sabha term'),
            ('B', 'Creation of the National Judicial Appointments Commission'),
            ('C', 'Free and compulsory education'),
            ('D', 'Reservation of one-third of seats for women in the Lok Sabha and the assemblies')
           ) as v(label, option_text)
 where q.question_hash = 'b7d05e7bf35a19fa8fcd75daeed96916'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The ''52nd Amendment Act'' of 1985 was related to:',
    'The 52nd Amendment, which came into effect in 1985, added the Tenth Schedule containing the anti-defection provisions.',
    'easy',
    'Standard Reference',
    null,
    '96c2c08556b60b5f5a8c760ba4d2e578'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '96c2c08556b60b5f5a8c760ba4d2e578'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Anti-defection law and the Tenth Schedule'),
            ('B', 'Right to education'),
            ('C', 'NITI Aayog'),
            ('D', 'GST')
           ) as v(label, option_text)
 where q.question_hash = '96c2c08556b60b5f5a8c760ba4d2e578'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The ''61st Amendment Act'' of 1988:',
    'The 61st Amendment reduced the voting age from 21 to 18 years for all elections, and the Representation of the People Act was amended accordingly.',
    'easy',
    'Standard Reference',
    null,
    'aba2385ebcf67cca513527a3d3065d15'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'aba2385ebcf67cca513527a3d3065d15'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Added the Tenth Schedule'),
            ('B', 'Gave constitutional status to the Right to Information'),
            ('C', 'Constituted the Finance Commission'),
            ('D', 'Reduced the voting age to 18')
           ) as v(label, option_text)
 where q.question_hash = 'aba2385ebcf67cca513527a3d3065d15'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The ''97th Amendment Act'' relates to:',
    'The 97th Amendment of 2011 gave constitutional status to cooperative societies and created a new Part IXB in the Constitution.',
    'medium',
    'Standard Reference',
    null,
    'f012f991de66e88cf3739aa3720a0e2a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'f012f991de66e88cf3739aa3720a0e2a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'GST'),
            ('B', 'Delimitation of constituencies'),
            ('C', 'Cooperative societies'),
            ('D', 'Right to education')
           ) as v(label, option_text)
 where q.question_hash = 'f012f991de66e88cf3739aa3720a0e2a'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The ''102nd Amendment Act'' of 2018:',
    'The 102nd Amendment gave constitutional status to the Central Educational Institutions and Higher Education Institutions Act and to the National Judicial Appointments Commission Act.',
    'hard',
    'Standard Reference',
    null,
    '2cd6969351f7b63352c0eb898c9564eb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '2cd6969351f7b63352c0eb898c9564eb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Constitutional status to the National Judicial Appointments Commission'),
            ('B', 'Constitutional status to the Central Educational Institutions and Higher Education Institutions'),
            ('C', 'Reservation for the EWS category'),
            ('D', 'Recognition of the OBC (Other Backward Classes) in central universities')
           ) as v(label, option_text)
 where q.question_hash = '2cd6969351f7b63352c0eb898c9564eb'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The ''104th Amendment'' (2019) and the ''105th Amendment'' (2021) relate to:',
    'The 104th Amendment provided for 10 per cent EWS reservation, and the 105th restored the legislative power of the states in the Eighth Schedule of the Official Languages Act, 1963.',
    'hard',
    'Standard Reference',
    null,
    'f766f0125f1918b154e274821ee91407'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f766f0125f1918b154e274821ee91407'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'EWS reservation and the restoration of the legislative power of the states regarding the Official Languages Act'),
            ('B', 'GST and the Finance Commission'),
            ('C', 'Delimitation and the census'),
            ('D', 'Judicial appointments')
           ) as v(label, option_text)
 where q.question_hash = 'f766f0125f1918b154e274821ee91407'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The ''106th Amendment Act'' of 2021 provided for:',
    'The 106th Amendment inserted the Nari Shakti Vandan Adhiniyam, providing for reservation of one-third of the seats for women in the Lok Sabha and the state legislative assemblies.',
    'medium',
    'Standard Reference',
    null,
    '91a206616a62ad8926152abfc7a7b45b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '91a206616a62ad8926152abfc7a7b45b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A uniform civil code'),
            ('B', 'Reservation for the Scheduled Tribes in the Lok Sabha'),
            ('C', 'Nari Shakti Vandan Adhiniyam'),
            ('D', 'The right to repair')
           ) as v(label, option_text)
 where q.question_hash = '91a206616a62ad8926152abfc7a7b45b'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The ''7th Amendment Act'' of 1956:',
    'The Seventh Amendment of 1956 reorganised the states on linguistic lines, and by enlarging the House of the People and the state assemblies, it restricted the representation of the Anglo-Indians and the nominated Anglo-Indian members.',
    'medium',
    'Standard Reference',
    null,
    'b59c85758c0d3f4245b28fc157d19a64'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b59c85758c0d3f4245b28fc157d19a64'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Lowered the voting age'),
            ('B', 'Reorganised the states on linguistic lines and enlarged the Lok Sabha'),
            ('C', 'Added the Ninth Schedule'),
            ('D', 'Abolished zamindari')
           ) as v(label, option_text)
 where q.question_hash = 'b59c85758c0d3f4245b28fc157d19a64'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The ''24th Amendment'' of 1971:',
    'The 24th Amendment made it compulsory for the President to assent to bills passed by Parliament, and allowed Parliament to amend the Constitution.',
    'medium',
    'Standard Reference',
    null,
    'afd83125e8721b847dc3968e1e900c82'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'afd83125e8721b847dc3968e1e900c82'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Provided for the Lokpala and the Lokayuktas'),
            ('B', 'Made the President''s election uncontested'),
            ('C', 'Declared the right to property as a fundamental right'),
            ('D', 'Enabled Parliament to amend the Constitution')
           ) as v(label, option_text)
 where q.question_hash = 'afd83125e8721b847dc3968e1e900c82'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The ''9th and 10th Amendments'' of the Constitution relate to:',
    'The First and Second Amendment Acts were renamed the Ninth and Tenth Amendments; they provided for the holding of the first two general elections and added the Ninth Schedule.',
    'hard',
    'Standard Reference',
    null,
    '4e30ab0c10ec6c57a4c902f5461b7a8d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '4e30ab0c10ec6c57a4c902f5461b7a8d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Creation of the Union Territories'),
            ('B', 'The holding of the first two general elections and the Ninth Schedule'),
            ('C', 'Language policy'),
            ('D', 'Reservation for the Anglo-Indians')
           ) as v(label, option_text)
 where q.question_hash = '4e30ab0c10ec6c57a4c902f5461b7a8d'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The ''8th Amendment'' of 1959 related to:',
    'The Eighth Amendment of 1959 provided for the reservation of seats for the Scheduled Castes and Scheduled Tribes in the Lok Sabha and the state legislative assemblies.',
    'medium',
    'Standard Reference',
    null,
    '174ce1e3e85afbf30ccf83bee5f38263'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '174ce1e3e85afbf30ccf83bee5f38263'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Reservation of seats for the Scheduled Castes and Scheduled Tribes in the Lok Sabha'),
            ('B', 'Right to property'),
            ('C', 'Emergency provisions'),
            ('D', 'The Official Languages Act')
           ) as v(label, option_text)
 where q.question_hash = '174ce1e3e85afbf30ccf83bee5f38263'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The ''30th Amendment'' of 1971:',
    'The 30th Amendment of 1971 limited the right to property to a reasonable restriction on the power of the state to acquire private property, and the 103rd Amendment provided for the 10 per cent EWS reservation.',
    'hard',
    'Standard Reference',
    null,
    'afedc12e1200af1c760932655226d3bf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'afedc12e1200af1c760932655226d3bf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Provided for the Special Courts'),
            ('B', 'Added the Ninth Schedule'),
            ('C', 'Limited the right to property and introduced the 10 per cent EWS reservation'),
            ('D', 'Prohibited the publication of the proceedings of Parliament')
           ) as v(label, option_text)
 where q.question_hash = 'afedc12e1200af1c760932655226d3bf'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The ''40th and 42nd Amendments'' were enacted during:',
    'The 40th and 42nd Amendments were enacted during the Emergency of 1975-77 by the Indira Gandhi government.',
    'easy',
    'Standard Reference',
    null,
    'eda3a9760bea14dec5b49f5c6d1bddbf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'eda3a9760bea14dec5b49f5c6d1bddbf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The coalition era'),
            ('B', 'The period of liberalisation'),
            ('C', 'The years 1976 and 1976'),
            ('D', 'The Emergency of 1975-77')
           ) as v(label, option_text)
 where q.question_hash = 'eda3a9760bea14dec5b49f5c6d1bddbf'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The ''44th Amendment'' of 1978 is significant because it:',
    'The 44th Amendment restored the Lok Sabha''s five-year term, made the proclamation of a national emergency more difficult, and removed the right to property from the list of fundamental rights.',
    'easy',
    'Standard Reference',
    null,
    '34cece427a40aef55bec4add5b3a7c6e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '34cece427a40aef55bec4add5b3a7c6e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Introduced the Right to Information'),
            ('B', 'Created the Planning Commission'),
            ('C', 'Added the Tenth Schedule'),
            ('D', 'Restored the Lok Sabha''s five-year term and made the emergency harder to proclaim')
           ) as v(label, option_text)
 where q.question_hash = '34cece427a40aef55bec4add5b3a7c6e'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The ''46th Amendment'' of 1976 related to:',
    'The 46th Amendment provided for the continuation of the five-year term of the Lok Sabha and the state assemblies even if the House is dissolved earlier, subject to the 42nd Amendment provisions.',
    'hard',
    'Standard Reference',
    null,
    '97749876aa06680812a1130b7af4c413'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '97749876aa06680812a1130b7af4c413'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Continuation of the five-year term of the Lok Sabha'),
            ('B', 'Reservation of seats for women'),
            ('C', 'Right to Education'),
            ('D', 'Creation of the District Planning Committees')
           ) as v(label, option_text)
 where q.question_hash = '97749876aa06680812a1130b7af4c413'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The ''50th Amendment'' of 1986 related to:',
    'The 50th Amendment Act of 1986 was the amendment that provided for the Tenth Schedule and the anti-defection law, and disqualified a member from the date of the disqualification petition.',
    'medium',
    'Standard Reference',
    null,
    'de888b7cf2a6741333d3e572c3dbc698'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'de888b7cf2a6741333d3e572c3dbc698'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Official Languages Act'),
            ('B', 'Right to Information'),
            ('C', 'Anti-defection and the Tenth Schedule'),
            ('D', 'The Goods and Services Tax')
           ) as v(label, option_text)
 where q.question_hash = 'de888b7cf2a6741333d3e572c3dbc698'
on conflict (question_id, label) do nothing;

-- polity | local-government | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'The ''75th Amendment'' of 1992:',
    'The 73rd and 74th Amendment Acts, 1992 gave constitutional status to the Panchayati Raj and urban local body institutions, and the 75th Amendment ratified them.',
    'easy',
    'Standard Reference',
    null,
    '1b6289aca2f3c6233e7da7fe0822e97c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '1b6289aca2f3c6233e7da7fe0822e97c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The 73rd and 74th Amendments'),
            ('B', 'Constitutional status to the Panchayati Raj system'),
            ('C', 'Right to Education'),
            ('D', 'Creation of the NCBC')
           ) as v(label, option_text)
 where q.question_hash = '1b6289aca2f3c6233e7da7fe0822e97c'
on conflict (question_id, label) do nothing;

-- polity | local-government | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'The ''74th Amendment'' provided for the constitution of:',
    'The 74th Amendment provides for the constitution of municipalities, their composition, the delimitation of wards, the reservation of seats and the duration of five years.',
    'medium',
    'Standard Reference',
    null,
    '0ae21c346b95df030b786a507184cd7b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '0ae21c346b95df030b786a507184cd7b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Municipalities with a five-year term'),
            ('B', 'Gram Panchayats'),
            ('C', 'Zila Parishads'),
            ('D', 'State Election Commissioner')
           ) as v(label, option_text)
 where q.question_hash = '0ae21c346b95df030b786a507184cd7b'
on conflict (question_id, label) do nothing;

-- polity | local-government | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'The Gram Sabha''s powers under the 73rd Amendment include:',
    'The Gram Sabha may regulate social and cultural matters, common property and common resources, and the grazing of cattle, and it exercises control over the minor minor assets of the Panchayat.',
    'hard',
    'Standard Reference',
    null,
    '32ebaccbb231f38cea0fccd4901cd628'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '32ebaccbb231f38cea0fccd4901cd628'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Levying taxes'),
            ('B', 'Approving the annual budget of the Gram Panchayat'),
            ('C', 'Regulating cattle grazing and village commons'),
            ('D', 'Appointing the Gram Panchayat members')
           ) as v(label, option_text)
 where q.question_hash = '32ebaccbb231f38cea0fccd4901cd628'
on conflict (question_id, label) do nothing;

-- polity | local-government | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'The reservation of seats for the Scheduled Castes in Panchayats is:',
    'The Panchayats and municipalities must reserve seats for the Scheduled Castes and the Scheduled Tribes in proportion to their population, in proportion to the seats reserved for the Scheduled Castes in the state assembly.',
    'hard',
    'Standard Reference',
    null,
    '03924759c95ebf03b6ceeb49e24c15ec'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '03924759c95ebf03b6ceeb49e24c15ec'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'One-third of the total seats'),
            ('B', 'One-half of the total seats'),
            ('C', 'As the state government decides'),
            ('D', 'Proportionate to the population')
           ) as v(label, option_text)
 where q.question_hash = '03924759c95ebf03b6ceeb49e24c15ec'
on conflict (question_id, label) do nothing;

-- polity | local-government | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'The chairperson of a Gram Panchayat must be reserved for the Scheduled Castes if the population of Scheduled Castes in the Panchayat exceeds:',
    'Where the population of the Scheduled Castes in a Panchayat exceeds 25 per cent, the chairperson must be reserved for them, similarly for the Scheduled Tribes.',
    'hard',
    'Standard Reference',
    null,
    'd563608130f4bcf77f0532c0d4d2e159'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd563608130f4bcf77f0532c0d4d2e159'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '15 per cent'),
            ('B', '25 per cent'),
            ('C', '50 per cent'),
            ('D', '33 per cent')
           ) as v(label, option_text)
 where q.question_hash = 'd563608130f4bcf77f0532c0d4d2e159'
on conflict (question_id, label) do nothing;

-- polity | local-government | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'The ''Gram Panchayat'' is a:',
    'The Gram Panchayat is the village-level body, the Panchayat Samiti is the block level body and the Zila Parishad is at the district level.',
    'easy',
    'Standard Reference',
    null,
    '3f45847126377a064b0a08c0b52e7e6f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '3f45847126377a064b0a08c0b52e7e6f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A metropolitan corporation'),
            ('B', 'A local body at the village level'),
            ('C', 'A district level body'),
            ('D', 'A block level body')
           ) as v(label, option_text)
 where q.question_hash = '3f45847126377a064b0a08c0b52e7e6f'
on conflict (question_id, label) do nothing;

-- polity | local-government | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'The ''Panchayat Samiti'' is the:',
    'The Panchayat Samiti is the block level body that supervises the Gram Panchayats and carries out the instructions of the Zila Parishad.',
    'medium',
    'Standard Reference',
    null,
    '8eaa3e835fa2477be9435153347a7b13'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '8eaa3e835fa2477be9435153347a7b13'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Block level body'),
            ('B', 'District level body'),
            ('C', 'State level body'),
            ('D', 'Village level body')
           ) as v(label, option_text)
 where q.question_hash = '8eaa3e835fa2477be9435153347a7b13'
on conflict (question_id, label) do nothing;

-- polity | local-government | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'The ''Zila Parishad'' is headed by:',
    'The Zila Parishad is headed by an elected Pradhan and its vice-pradhan is the district collector, who also acts as its chief administrative officer.',
    'hard',
    'Standard Reference',
    null,
    '2398aa8d52199ce58fd62f68fcb1bb9c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '2398aa8d52199ce58fd62f68fcb1bb9c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Chief Minister'),
            ('B', 'The District Collector'),
            ('C', 'The elected Pradhan of the district'),
            ('D', 'The Governor')
           ) as v(label, option_text)
 where q.question_hash = '2398aa8d52199ce58fd62f68fcb1bb9c'
on conflict (question_id, label) do nothing;

-- polity | local-government | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'The devolution of funds to Panchayats is recommended by:',
    'The State Finance Commission reviews the financial position of the Panchayats and recommends the distribution of taxes between the state and the local bodies.',
    'medium',
    'Standard Reference',
    null,
    '44f4ca1c3327bf9b09acd711152a2f06'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '44f4ca1c3327bf9b09acd711152a2f06'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Central Finance Commission'),
            ('B', 'The NITI Aayog'),
            ('C', 'The CAG'),
            ('D', 'The State Finance Commission')
           ) as v(label, option_text)
 where q.question_hash = '44f4ca1c3327bf9b09acd711152a2f06'
on conflict (question_id, label) do nothing;

-- polity | local-government | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'The ''Mahatma Gandhi Rural Employment Guarantee Scheme'' guarantees:',
    'The MGNREGA guarantees 100 days of wage employment in a year to every rural household whose adult members volunteer for unskilled manual work.',
    'easy',
    'Standard Reference',
    null,
    'e35cf49d7e04cfb2acb964fcc5e4179e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e35cf49d7e04cfb2acb964fcc5e4179e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '300 days of wage employment in a year'),
            ('B', '100 days of wage employment in a year'),
            ('C', '150 days of wage employment in a year'),
            ('D', '200 days of wage employment in a year')
           ) as v(label, option_text)
 where q.question_hash = 'e35cf49d7e04cfb2acb964fcc5e4179e'
on conflict (question_id, label) do nothing;

-- polity | local-government | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'The ''Panchayati Raj'' was first launched in:',
    'Panchayati Raj was first launched on 2 October 1959 in Nagaur and Moradabad districts of Rajasthan and Etawah district of Uttar Pradesh, and formally inaugurated on 15 August 1961.',
    'medium',
    'Standard Reference',
    null,
    '1c5ccb6913553b7b0e55560a8ac4baa2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '1c5ccb6913553b7b0e55560a8ac4baa2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Andhra Pradesh'),
            ('B', 'Rajasthan'),
            ('C', 'Gujarat'),
            ('D', 'Assam')
           ) as v(label, option_text)
 where q.question_hash = '1c5ccb6913553b7b0e55560a8ac4baa2'
on conflict (question_id, label) do nothing;

-- polity | local-government | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'The ''Gopalan and Wanchoo Committees'' recommended:',
    'The Gopalan and Wanchoo Committees recommended a three-tier Panchayati Raj system, which the Balwant Rai Mehta Committee endorsed in 1957.',
    'medium',
    'Standard Reference',
    null,
    'd398914c39a61932a9d5b505ea648203'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd398914c39a61932a9d5b505ea648203'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Reservation for women'),
            ('B', 'Land ceiling'),
            ('C', 'A three-tier Panchayati Raj system'),
            ('D', 'The abolition of zamindari')
           ) as v(label, option_text)
 where q.question_hash = 'd398914c39a61932a9d5b505ea648203'
on conflict (question_id, label) do nothing;

-- polity | local-government | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'The ''73rd Amendment'' provides for a ''Panchayat'' in a village with a population of:',
    'Every village with a population of 500 or more and every small town with a population of 2,500 or more is to constitute a Panchayat, unless the state government decides otherwise.',
    'medium',
    'Standard Reference',
    null,
    '2b17770f109ce527fdeb52b20b94f786'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '2b17770f109ce527fdeb52b20b94f786'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2,000 or more'),
            ('B', '5,000 or more'),
            ('C', '1,000 or more'),
            ('D', '500 or more')
           ) as v(label, option_text)
 where q.question_hash = '2b17770f109ce527fdeb52b20b94f786'
on conflict (question_id, label) do nothing;

-- polity | local-government | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'The ''Municipalities'' under the 74th Amendment:',
    'The 74th Amendment provides for three types of municipalities: municipalities, municipal corporations and nagar panchayats, with the categories left to the state governments.',
    'hard',
    'Standard Reference',
    null,
    '2b40568aff1e541e5e0dd6cd225563ef'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '2b40568aff1e541e5e0dd6cd225563ef'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Are a three-tier system'),
            ('B', 'Are divided into municipalities, municipal corporations and nagar panchayats'),
            ('C', 'Have a five-year term fixed by the 73rd Amendment'),
            ('D', 'May not be constituted in metropolitan areas')
           ) as v(label, option_text)
 where q.question_hash = '2b40568aff1e541e5e0dd6cd225563ef'
on conflict (question_id, label) do nothing;

-- polity | local-government | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'The ''Ward Committees'' in municipalities are composed of:',
    'A Ward Committee consists of one or more elected members of the municipality and the elected members of the wards falling within the jurisdiction of the committee.',
    'hard',
    'Standard Reference',
    null,
    '4edb58fecd1ba9bf9c01151c60daa0a6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '4edb58fecd1ba9bf9c01151c60daa0a6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Nominated members of the state government'),
            ('B', 'Bureaucrats of the district administration'),
            ('C', 'Only the elected councillors of the ward'),
            ('D', 'Elected members of the municipality and the wards within the jurisdiction of the committee')
           ) as v(label, option_text)
 where q.question_hash = '4edb58fecd1ba9bf9c01151c60daa0a6'
on conflict (question_id, label) do nothing;

-- polity | local-government | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'The ''Metropolitan areas'' in India are those with a population of:',
    'A metropolitan area is defined as one with a population of ten lakh or more, and the transition from a municipal corporation is required within the prescribed period.',
    'medium',
    'Standard Reference',
    null,
    'f077e5051911912a720b7ebbe471a289'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'f077e5051911912a720b7ebbe471a289'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Fifty lakh or more'),
            ('B', 'One lakh or more'),
            ('C', 'Ten lakh or more'),
            ('D', 'Twenty lakh or more')
           ) as v(label, option_text)
 where q.question_hash = 'f077e5051911912a720b7ebbe471a289'
on conflict (question_id, label) do nothing;

-- polity | local-government | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'The ''District Planning Committee'' is chaired by:',
    'The District Planning Committee is chaired by the District Collector and must consolidate the plans prepared by the Panchayats and municipalities in the district.',
    'hard',
    'Standard Reference',
    null,
    '9cb659cd4170dc00d10a085d0f1c2e89'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '9cb659cd4170dc00d10a085d0f1c2e89'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The District Collector'),
            ('B', 'The Chief Minister'),
            ('C', 'The Prime Minister'),
            ('D', 'The President of the Zila Parishad')
           ) as v(label, option_text)
 where q.question_hash = '9cb659cd4170dc00d10a085d0f1c2e89'
on conflict (question_id, label) do nothing;

-- polity | local-government | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'The ''Panchayati Raj'' institutions and the municipalities are a:',
    'The 73rd and 74th Amendments made Panchayats and municipalities constitutional bodies with a five-year term fixed by law.',
    'easy',
    'Standard Reference',
    null,
    'eef4de28f7f217ae3fafe6cfca5a9513'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'eef4de28f7f217ae3fafe6cfca5a9513'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Statutory bodies'),
            ('B', 'Executive bodies'),
            ('C', 'Judicial bodies'),
            ('D', 'Constitutional bodies after the 73rd and 74th Amendments')
           ) as v(label, option_text)
 where q.question_hash = 'eef4de28f7f217ae3fafe6cfca5a9513'
on conflict (question_id, label) do nothing;

-- polity | local-government | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'The ''Article 280'' of the Constitution empowers the Finance Commission to recommend the devolution of:',
    'Article 280 requires the Finance Commission to recommend the distribution of net tax proceeds between the Union and the states, the principles of horizontal distribution, and the grants-in-aid.',
    'medium',
    'Standard Reference',
    null,
    'e9447907d87b96510e784926d2ec829e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e9447907d87b96510e784926d2ec829e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The allocation of the discretionary grants'),
            ('B', 'Tax proceeds between the Centre and the states'),
            ('C', 'Tax proceeds between the states and the local bodies'),
            ('D', 'Central assistance to the states')
           ) as v(label, option_text)
 where q.question_hash = 'e9447907d87b96510e784926d2ec829e'
on conflict (question_id, label) do nothing;

-- polity | local-government | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'The ''Article 243ZD'' deals with:',
    'Article 243ZD provides for a District Planning Committee in every district to consolidate the plans of the Panchayats and municipalities and forward them to the state government.',
    'hard',
    'Standard Reference',
    null,
    '0aed3f853ab65b4385ffafedf1af235e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '0aed3f853ab65b4385ffafedf1af235e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Municipalities'),
            ('B', 'The Gram Sabha'),
            ('C', 'The District Planning Committee'),
            ('D', 'The State Election Commission')
           ) as v(label, option_text)
 where q.question_hash = '0aed3f853ab65b4385ffafedf1af235e'
on conflict (question_id, label) do nothing;

-- polity | local-government | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'The ''Article 243K'' provides for:',
    'Article 243K provides for a State Election Commission to conduct the elections to Panchayats and municipalities in the state.',
    'medium',
    'Standard Reference',
    null,
    '37b652cf37b89101ffdccf20c72c7a94'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '37b652cf37b89101ffdccf20c72c7a94'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'State Election Commissions'),
            ('B', 'Municipal corporations'),
            ('C', 'Panchayat Samitis'),
            ('D', 'Gram Sabhas')
           ) as v(label, option_text)
 where q.question_hash = '37b652cf37b89101ffdccf20c72c7a94'
on conflict (question_id, label) do nothing;

-- polity | local-government | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'The ''Article 280A'' of the Constitution provides for:',
    'Article 280A provides a special provision for certain irrigation projects, including the Rashtriya Krishi Vikas Yojana, enabling the state legislature to make provisions for the management.',
    'hard',
    'Standard Reference',
    null,
    'a3ad797f2f913bb155160e9c362a1682'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a3ad797f2f913bb155160e9c362a1682'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A special provision for the Rashtriya Krishi Vikas Yojana or irrigation projects'),
            ('B', 'The Goods and Services Tax Council'),
            ('C', 'The Finance Commission'),
            ('D', 'The CAG')
           ) as v(label, option_text)
 where q.question_hash = 'a3ad797f2f913bb155160e9c362a1682'
on conflict (question_id, label) do nothing;

-- polity | local-government | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'The ''Balwant Rai Mehta Committee'' recommended:',
    'The Balwant Rai Mehta Committee of 1957 recommended a three-tier Panchayati Raj system, which the 73rd Amendment later constitutionalised.',
    'medium',
    'Standard Reference',
    null,
    '3691cbf5fe32bc9e1037afdd91d9d02a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '3691cbf5fe32bc9e1037afdd91d9d02a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The abolition of the Legislative Council'),
            ('B', 'Abolition of the zamindari'),
            ('C', 'Reservation of seats for women in Panchayats'),
            ('D', 'A three-tier Panchayati Raj system')
           ) as v(label, option_text)
 where q.question_hash = '3691cbf5fe32bc9e1037afdd91d9d02a'
on conflict (question_id, label) do nothing;

-- polity | local-government | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'The ''Ashok Mehta Committee'' of 1977 recommended:',
    'The Ashok Mehta Committee of 1977 stressed democratic decentralisation and the people''s plan for development as the basis of the economy.',
    'hard',
    'Standard Reference',
    null,
    'e43fd57cb473ad430c7f6448460adb16'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e43fd57cb473ad430c7f6448460adb16'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A three-tier system'),
            ('B', 'Democratic decentralisation and a people''s plan for development'),
            ('C', 'The abolition of the District Planning Committee'),
            ('D', 'Reservation of seats for women')
           ) as v(label, option_text)
 where q.question_hash = 'e43fd57cb473ad430c7f6448460adb16'
on conflict (question_id, label) do nothing;

-- polity | local-government | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'The ''Kothari Commission'' (1985) evaluated:',
    'The Kothari Commission was appointed to review the working of the three-tier Panchayati Raj system and to suggest ways to strengthen it.',
    'medium',
    'Standard Reference',
    null,
    'af76857353ebeef4f71f05bb8e3bc9d7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'af76857353ebeef4f71f05bb8e3bc9d7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The delimitation of constituencies'),
            ('B', 'The financial inclusion programme'),
            ('C', 'The working of the three-tier Panchayati Raj system'),
            ('D', 'The Kharagwal Formula')
           ) as v(label, option_text)
 where q.question_hash = 'af76857353ebeef4f71f05bb8e3bc9d7'
on conflict (question_id, label) do nothing;

-- polity | local-government | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'The ''L.M. Singhvi and R.K. Saboo committees'' recommended:',
    'The L.M. Singhvi and R.K. Saboo committees recommended the reservation of seats for women in the urban local bodies, which the 74th Amendment implemented.',
    'hard',
    'Standard Reference',
    null,
    '59ba104d4af66dba05eca7ae93772219'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '59ba104d4af66dba05eca7ae93772219'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Reservation for women in the urban local bodies'),
            ('B', 'Abolition of the Legislative Council'),
            ('C', 'The 73rd Amendment'),
            ('D', 'Changes in the delimitation process')
           ) as v(label, option_text)
 where q.question_hash = '59ba104d4af66dba05eca7ae93772219'
on conflict (question_id, label) do nothing;

-- polity | local-government | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'The ''Sarkar Commission'' of 1988 dealt with:',
    'The Sarkar Commission was appointed to review the performance of the PRIs and to suggest ways to strengthen them.',
    'medium',
    'Standard Reference',
    null,
    '8ef750c89dff38aae756618edcc7330c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '8ef750c89dff38aae756618edcc7330c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Police reforms'),
            ('B', 'Electoral reforms'),
            ('C', 'Rural development and the functioning of the democratic system at the grass roots level'),
            ('D', 'Judicial reforms')
           ) as v(label, option_text)
 where q.question_hash = '8ef750c89dff38aae756618edcc7330c'
on conflict (question_id, label) do nothing;

-- polity | local-government | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'The ''Panchayati Raj'' and the ''73rd Amendment'' made the local bodies:',
    'After the 73rd Amendment, Panchayats became constitutional bodies with a fixed five-year term, insulated from dissolution at the pleasure of the state government.',
    'easy',
    'Standard Reference',
    null,
    '477523f9d412203f95c363086b7dbdf6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '477523f9d412203f95c363086b7dbdf6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Advisory bodies'),
            ('B', 'Judicial bodies'),
            ('C', 'Bodies of the state government'),
            ('D', 'Constitutional bodies with a five-year term')
           ) as v(label, option_text)
 where q.question_hash = '477523f9d412203f95c363086b7dbdf6'
on conflict (question_id, label) do nothing;

-- polity | local-government | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'The ''Article 243G'' of the Constitution deals with:',
    'Article 243G lists the powers and responsibilities of Panchayats, including the power to impose taxes and the responsibility for primary health and education.',
    'medium',
    'Standard Reference',
    null,
    '858312eee29584db1fa3dbc1dee1357b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '858312eee29584db1fa3dbc1dee1357b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Gram Sabha'),
            ('B', 'Powers and responsibilities of Panchayats'),
            ('C', 'Elections to municipalities'),
            ('D', 'The District Planning Committee')
           ) as v(label, option_text)
 where q.question_hash = '858312eee29584db1fa3dbc1dee1357b'
on conflict (question_id, label) do nothing;

-- polity | local-government | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'The ''Article 243H'' of the Constitution deals with:',
    'Article 243H lists the powers and responsibilities of municipalities, which mirror those of the Panchayats in Article 243G.',
    'medium',
    'Standard Reference',
    null,
    'b6fb31e620939130c8ef005e9d422138'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'b6fb31e620939130c8ef005e9d422138'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Gram Sabha'),
            ('B', 'Elections to Panchayats'),
            ('C', 'The Zila Parishad'),
            ('D', 'Powers and responsibilities of municipalities')
           ) as v(label, option_text)
 where q.question_hash = 'b6fb31e620939130c8ef005e9d422138'
on conflict (question_id, label) do nothing;

-- polity | local-government | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'The ''Article 243F'' of the Constitution provides for the composition of:',
    'Article 243F provides for the composition of Panchayats, consisting of the Panch, the members of the ward and the sarpanch elected directly by the people.',
    'medium',
    'Standard Reference',
    null,
    '505edfd1174f8e1aa584e7f67c4715ff'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '505edfd1174f8e1aa584e7f67c4715ff'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Panchayats'),
            ('B', 'The Municipalities'),
            ('C', 'The Zila Parishads'),
            ('D', 'The Gram Sabha')
           ) as v(label, option_text)
 where q.question_hash = '505edfd1174f8e1aa584e7f67c4715ff'
on conflict (question_id, label) do nothing;

-- polity | local-government | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'The ''Article 243D'' of the Constitution deals with:',
    'Article 243D provides for the reservation of seats for the Scheduled Castes, Scheduled Tribes and women in Panchayats and in the offices of the Panch, Sarpanch and Pradhan.',
    'medium',
    'Standard Reference',
    null,
    '9fb7677468d9a9a7907f19fa533ef1ab'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '9fb7677468d9a9a7907f19fa533ef1ab'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The State Election Commission'),
            ('B', 'Reservation of seats for the Scheduled Castes and women in Panchayats'),
            ('C', 'The Gram Sabha'),
            ('D', 'Elections to municipalities')
           ) as v(label, option_text)
 where q.question_hash = '9fb7677468d9a9a7907f19fa533ef1ab'
on conflict (question_id, label) do nothing;

-- polity | local-government | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'The ''Gram Sabha'' can examine:',
    'The Gram Sabha examines the annual plan and the prepared budget of the Panchayat and may make recommendations on the allocation of funds for welfare and development activities.',
    'hard',
    'Standard Reference',
    null,
    'c68023b2ba4bbe85e2c741591593c149'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c68023b2ba4bbe85e2c741591593c149'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The accounts of the Gram Panchayat'),
            ('B', 'The election of the Sarpanch'),
            ('C', 'The annual plan and budget of the Panchayat'),
            ('D', 'The recruitment of the Panchayat secretary')
           ) as v(label, option_text)
 where q.question_hash = 'c68023b2ba4bbe85e2c741591593c149'
on conflict (question_id, label) do nothing;

-- polity | local-government | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'The ''Indian village'' and the ''Gram Panchayat'' are different because:',
    'A village is a geographic and social unit without a formal elected governance body, whereas the Gram Panchayat is a constitutional local body of at least three tiers of elected representatives.',
    'medium',
    'Standard Reference',
    null,
    '21a83504ba38c3887aaf8cd33e9fced1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '21a83504ba38c3887aaf8cd33e9fced1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Panchayat is larger'),
            ('B', 'The village has a population of over 5,000'),
            ('C', 'The Panchayat is a judicial body'),
            ('D', 'The village is a natural settlement while the Panchayat is an elected body')
           ) as v(label, option_text)
 where q.question_hash = '21a83504ba38c3887aaf8cd33e9fced1'
on conflict (question_id, label) do nothing;

-- polity | local-government | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'Which state was the first to enact the 73rd Amendment?',
    'Rajasthan was the first state to enact the 73rd Amendment through its own legislation in 1993.',
    'hard',
    'Standard Reference',
    null,
    '7b49f8ff707be9814c9103b85f26a6c3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '7b49f8ff707be9814c9103b85f26a6c3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Madhya Pradesh'),
            ('B', 'Rajasthan'),
            ('C', 'Andhra Pradesh'),
            ('D', 'Kerala')
           ) as v(label, option_text)
 where q.question_hash = '7b49f8ff707be9814c9103b85f26a6c3'
on conflict (question_id, label) do nothing;

-- polity | local-government | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'The ''Gadag'' and the ''Gulbarga'' model Panchayats refer to:',
    'The experiment in Karnataka''s Gadag and Gulbarga districts reserved a share of Panchayat seats for women in a largely reserved, backward constituency, prompting a constitutional amendment in 2009.',
    'hard',
    'Standard Reference',
    null,
    'aefc02e85b6b8cd7187bc0b7c69742c9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'aefc02e85b6b8cd7187bc0b7c69742c9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Merging of the Panchayats'),
            ('B', 'Direct elected village councils'),
            ('C', 'Reservation for women in the Panchayats'),
            ('D', 'Caste-based reservation in the urban bodies')
           ) as v(label, option_text)
 where q.question_hash = 'aefc02e85b6b8cd7187bc0b7c69742c9'
on conflict (question_id, label) do nothing;

-- polity | local-government | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'The ''73rd Amendment'' introduced the concept of:',
    'The 73rd Amendment gave the Gram Sabha the power to approve the annual plan and budget of the Panchayat, deepening grassroots democracy.',
    'medium',
    'Standard Reference',
    null,
    '2dbc14a1c0090afcba77660779d453ae'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '2dbc14a1c0090afcba77660779d453ae'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Panchayat devolution to the Gram Sabha'),
            ('B', 'Urban renewal'),
            ('C', 'Public private partnership'),
            ('D', 'Land consolidation')
           ) as v(label, option_text)
 where q.question_hash = '2dbc14a1c0090afcba77660779d453ae'
on conflict (question_id, label) do nothing;

-- polity | local-government | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'The ''Panchayat'' and the ''Municipality'' differ in that:',
    'The Panchayats are rural local bodies under Part IX and the municipalities are urban local bodies under Part IXA of the Constitution.',
    'easy',
    'Standard Reference',
    null,
    '98050203e0f8256dbb7956fd9e3e5eb1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '98050203e0f8256dbb7956fd9e3e5eb1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Panchayat is rural and the Municipality urban'),
            ('B', 'The Panchayat is elected indirectly'),
            ('C', 'The Municipality has a larger population by definition'),
            ('D', 'The Panchayat has a fixed five-year term while the Municipality does not')
           ) as v(label, option_text)
 where q.question_hash = '98050203e0f8256dbb7956fd9e3e5eb1'
on conflict (question_id, label) do nothing;

-- polity | local-government | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'The ''Article 280'' also empowers the Finance Commission to recommend:',
    'Article 280 covers the vertical and horizontal distribution of tax proceeds and the grants-in-aid to the states and the local bodies from the Consolidated Fund of India.',
    'medium',
    'Standard Reference',
    null,
    '669a568572ed949a37be9e4c25f3a069'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '669a568572ed949a37be9e4c25f3a069'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The allocation of central grants-in-aid to the states'),
            ('B', 'The conduct of elections'),
            ('C', 'The appointment of the CAG'),
            ('D', 'The allocation of net tax proceeds and the principles of horizontal distribution')
           ) as v(label, option_text)
 where q.question_hash = '669a568572ed949a37be9e4c25f3a069'
on conflict (question_id, label) do nothing;

-- polity | local-government | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'The ''Water and Municipalities'' and the ''Lifeline water supply'' for urban poor is the responsibility of:',
    'Sewerage and water supply, including the provision of a lifeline water supply to the urban poor, are among the core functions of the municipalities under the 74th Amendment.',
    'medium',
    'Standard Reference',
    null,
    '3608277a28de70d6d255ad42f8f06655'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '3608277a28de70d6d255ad42f8f06655'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Centre'),
            ('B', 'The District Collector'),
            ('C', 'The municipalities'),
            ('D', 'The state government')
           ) as v(label, option_text)
 where q.question_hash = '3608277a28de70d6d255ad42f8f06655'
on conflict (question_id, label) do nothing;

-- polity | local-government | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'The ''Gram Panchayat'' can be declared as an ''Indian village'' if it has a population of at least:',
    'An Indian village is declared when the population is not less than 500, and it is treated as a village for purposes of the Gram Panchayat.',
    'hard',
    'Standard Reference',
    null,
    '770a8d0207092e954f525ef34621a4eb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '770a8d0207092e954f525ef34621a4eb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1,000'),
            ('B', '500'),
            ('C', '2,000'),
            ('D', '5,000')
           ) as v(label, option_text)
 where q.question_hash = '770a8d0207092e954f525ef34621a4eb'
on conflict (question_id, label) do nothing;

-- polity | local-government | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'The ''73rd and 74th Amendments'' were assented to by the President on:',
    'The 73rd and 74th Amendment Bills were assented to by the President on 24 April 1992 and came into force on 24 April 1993.',
    'hard',
    'Standard Reference',
    null,
    'd338b4c84f4ad5a242ec8048d318f292'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd338b4c84f4ad5a242ec8048d318f292'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1 April 1993'),
            ('B', '26 January 1993'),
            ('C', '24 April 1992'),
            ('D', '24 April 1993')
           ) as v(label, option_text)
 where q.question_hash = 'd338b4c84f4ad5a242ec8048d318f292'
on conflict (question_id, label) do nothing;

-- polity | constitution-making | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitution-making'),
    'Article 1 of the Constitution deals with:',
    'Article 1(1) states that India, that is Bharat, shall be a Union of States, and Article 1(2) in the Seventh Schedule lists the states and the union territories.',
    'easy',
    'NCERT Class XII (Polity)',
    null,
    '63376aad04111e24de1ddc5d803a6cc2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '63376aad04111e24de1ddc5d803a6cc2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The territories'),
            ('B', 'The name of India'),
            ('C', 'The Union of States'),
            ('D', 'The citizenship')
           ) as v(label, option_text)
 where q.question_hash = '63376aad04111e24de1ddc5d803a6cc2'
on conflict (question_id, label) do nothing;

-- polity | constitution-making | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitution-making'),
    'The ''Second Schedule'' of the Constitution lists:',
    'The Second Schedule lists the languages recognized by the Constitution, which is 24 at present, with Hindi and English as the official languages of the Union.',
    'medium',
    'Standard Reference',
    null,
    'ab0b15c71b2ed4ee15fe7af78b5a1090'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'ab0b15c71b2ed4ee15fe7af78b5a1090'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The salaries of the officials'),
            ('B', 'The taxes'),
            ('C', 'The states'),
            ('D', 'The languages')
           ) as v(label, option_text)
 where q.question_hash = 'ab0b15c71b2ed4ee15fe7af78b5a1090'
on conflict (question_id, label) do nothing;

-- polity | constitution-making | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitution-making'),
    'The ''Third Schedule'' of the Constitution lists:',
    'The Third Schedule contains the forms of the oaths and the affirmations for the President, the ministers, the judges, the CAG and the legislators.',
    'medium',
    'Standard Reference',
    null,
    'ab88efac834680ed5c96bce1e7cd221e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ab88efac834680ed5c96bce1e7cd221e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The forms of the oaths and the affirmations'),
            ('B', 'The states'),
            ('C', 'The languages'),
            ('D', 'The taxes')
           ) as v(label, option_text)
 where q.question_hash = 'ab88efac834680ed5c96bce1e7cd221e'
on conflict (question_id, label) do nothing;

-- polity | constitution-making | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitution-making'),
    'The ''Fourth Schedule'' of the Constitution lists:',
    'The Fourth Schedule, added by the Fifth and the Sixth Schedules Amendment Act of 1976, lists the tribal areas of Assam, Meghalaya, Tripura and Mizoram.',
    'medium',
    'Standard Reference',
    null,
    '784e1cd0e50ca5c9aefa811f9c4b8b4f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '784e1cd0e50ca5c9aefa811f9c4b8b4f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The taxes'),
            ('B', 'The Rajya Sabha seats'),
            ('C', 'The tribal areas in Assam, Meghalaya, Tripura and Mizoram'),
            ('D', 'The official languages')
           ) as v(label, option_text)
 where q.question_hash = '784e1cd0e50ca5c9aefa811f9c4b8b4f'
on conflict (question_id, label) do nothing;

-- polity | constitution-making | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitution-making'),
    'The ''Fifth Schedule'' deals with the administration of:',
    'The Fifth Schedule deals with the administration and the governance of the Scheduled Areas and the Scheduled Tribes, and the governor has the special powers there.',
    'medium',
    'NCERT Class XII (Polity)',
    null,
    '9b12f4fcb98da90eb40418570c486207'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '9b12f4fcb98da90eb40418570c486207'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The union territories'),
            ('B', 'The Scheduled Areas and the Scheduled Tribes'),
            ('C', 'The tribal areas of the northeast'),
            ('D', 'The official languages')
           ) as v(label, option_text)
 where q.question_hash = '9b12f4fcb98da90eb40418570c486207'
on conflict (question_id, label) do nothing;

-- polity | constitution-making | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitution-making'),
    'The ''Sixth Schedule'' deals with:',
    'The Sixth Schedule provides for the administration of the tribal areas of Assam, Meghalaya, Tripura and Mizoram by the autonomous district councils.',
    'medium',
    'Standard Reference',
    null,
    '39c7b227384dfddedc9c47d796613680'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '39c7b227384dfddedc9c47d796613680'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The tribal areas of Assam, Meghalaya, Tripura and Mizoram'),
            ('B', 'The Scheduled Areas of the rest of India'),
            ('C', 'The Panchayats'),
            ('D', 'The municipalities')
           ) as v(label, option_text)
 where q.question_hash = '39c7b227384dfddedc9c47d796613680'
on conflict (question_id, label) do nothing;

-- polity | constitution-making | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitution-making'),
    'The ''Seventh Schedule'' contains:',
    'The Seventh Schedule contains the three lists, the Union List of 100 subjects, the State List of 61 subjects and the Concurrent List of 52 subjects.',
    'easy',
    'NCERT Class XII (Polity)',
    null,
    '35935830b29af37116fc8a01dc2778ca'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '35935830b29af37116fc8a01dc2778ca'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The languages'),
            ('B', 'The states'),
            ('C', 'The taxes'),
            ('D', 'The three lists of the Union and the state subjects')
           ) as v(label, option_text)
 where q.question_hash = '35935830b29af37116fc8a01dc2778ca'
on conflict (question_id, label) do nothing;

-- polity | constitution-making | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitution-making'),
    'The ''Eighth Schedule'' contains:',
    'The Eighth Schedule lists the 12 languages that were originally recognized by the Constitution, and the 92nd Amendment added Bodo, Dogri, Maithili and Santhali.',
    'easy',
    'NCERT Class XII (Polity)',
    null,
    'e94eb76b112b1a8ad246cab6850d2bf7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e94eb76b112b1a8ad246cab6850d2bf7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The tribal languages'),
            ('B', 'The 12 languages recognized by the Constitution'),
            ('C', 'The states'),
            ('D', 'The languages of the minority')
           ) as v(label, option_text)
 where q.question_hash = 'e94eb76b112b1a8ad246cab6850d2bf7'
on conflict (question_id, label) do nothing;

-- polity | constitution-making | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitution-making'),
    'The ''Ninth Schedule'' contains:',
    'The Ninth Schedule, added by the First Amendment of 1951, contains the laws that are protected from the judicial review, and it now has more than 300 entries.',
    'easy',
    'NCERT Class XII (Polity)',
    null,
    'a53ba25d02ed5e028e8120229e1a7824'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a53ba25d02ed5e028e8120229e1a7824'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The languages'),
            ('B', 'The states'),
            ('C', 'The official languages'),
            ('D', 'The laws that are protected from the judicial review')
           ) as v(label, option_text)
 where q.question_hash = 'a53ba25d02ed5e028e8120229e1a7824'
on conflict (question_id, label) do nothing;

-- polity | constitution-making | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitution-making'),
    'The ''Tenth Schedule'' contains:',
    'The Tenth Schedule, added by the 52nd Amendment of 1985, contains the anti-defection provisions, and the 91st Amendment of 2003 made the disqualification provisions applicable to the judicial and the election commissioners.',
    'medium',
    'Standard Reference',
    null,
    '4973e02cb620250f9864406e08d68e8d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '4973e02cb620250f9864406e08d68e8d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The lands'),
            ('B', 'The Panchayats'),
            ('C', 'The anti-defection provisions'),
            ('D', 'The languages')
           ) as v(label, option_text)
 where q.question_hash = '4973e02cb620250f9864406e08d68e8d'
on conflict (question_id, label) do nothing;

-- polity | constitution-making | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitution-making'),
    'The ''Eleventh Schedule'' contains:',
    'The Eleventh Schedule, added by the 42nd Amendment of 1976, lists the 21 fundamental duties of the citizen.',
    'medium',
    'Standard Reference',
    null,
    'e4758a79e6d3cd1e722efd729cf47c98'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'e4758a79e6d3cd1e722efd729cf47c98'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The 21 fundamental duties'),
            ('B', 'The 8 languages'),
            ('C', 'The 12 languages'),
            ('D', 'The 100 subjects')
           ) as v(label, option_text)
 where q.question_hash = 'e4758a79e6d3cd1e722efd729cf47c98'
on conflict (question_id, label) do nothing;

-- polity | constitution-making | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitution-making'),
    'The ''Twelfth Schedule'' contains:',
    'The Twelfth Schedule, added by the 74th Amendment of 1992, lists the powers and the privileges of the municipalities, and the Eleventh Schedule lists those of the Panchayats.',
    'hard',
    'Standard Reference',
    null,
    '82942b0b50400334b43087a4f01bb12c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '82942b0b50400334b43087a4f01bb12c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The powers of the Panchayats'),
            ('B', 'The list of the languages'),
            ('C', 'The list of the states'),
            ('D', 'The powers and the privileges of the municipalities')
           ) as v(label, option_text)
 where q.question_hash = '82942b0b50400334b43087a4f01bb12c'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The ''Article 368'' provides for:',
    'Article 368 in Part XX provides for the powers and the procedure of the amendment of the Constitution.',
    'easy',
    'NCERT Class XII (Polity)',
    null,
    '860973f6e3df053b64919f826cc6dba2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '860973f6e3df053b64919f826cc6dba2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The federalism'),
            ('B', 'The right to information'),
            ('C', 'The power of Parliament to amend the Constitution'),
            ('D', 'The judicial review')
           ) as v(label, option_text)
 where q.question_hash = '860973f6e3df053b64919f826cc6dba2'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'An amendment to the Constitution can be made:',
    'The constituent power is vested in Parliament, and the procedure in Article 368 applies, subject to the basic structure doctrine.',
    'easy',
    'Standard Reference',
    null,
    '53511a147b3a2f0cc3093206b1c11c23'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '53511a147b3a2f0cc3093206b1c11c23'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Only by the Parliament and in the prescribed procedure'),
            ('B', 'Only by a referendum'),
            ('C', 'Only by the President'),
            ('D', 'Only by the Supreme Court')
           ) as v(label, option_text)
 where q.question_hash = '53511a147b3a2f0cc3093206b1c11c23'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The ''Kesavananda Bharati'' case of 1973 held that:',
    'The majority opinion in Kesavananda Bharati, with the 7-6 verdict, laid down the basic structure doctrine, and the case was heard again in 1980 to resolve the controversy.',
    'medium',
    'Standard Reference',
    null,
    '25566b96596503cbeb6dc0b7b3a9b11a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '25566b96596503cbeb6dc0b7b3a9b11a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The doctrine of judicial review does not apply to the amendments'),
            ('B', 'Parliament can amend any part of the Constitution but cannot alter the basic structure'),
            ('C', 'Parliament cannot amend the Constitution at all'),
            ('D', 'The basic structure can be amended by a simple majority')
           ) as v(label, option_text)
 where q.question_hash = '25566b96596503cbeb6dc0b7b3a9b11a'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The ''Minerva Mills'' case of 1980 held that:',
    'In Minerva Mills the Supreme Court held that the harmony and the balance between the fundamental rights and the Directive Principles is an element of the basic structure, and that neither is absolute.',
    'hard',
    'Standard Reference',
    null,
    'c2001e6da7d401f1c8ca750c60a7eb84'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'c2001e6da7d401f1c8ca750c60a7eb84'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Directive Principles are enforceable by the courts'),
            ('B', 'The harmony and the balance between the parts of the Constitution is an element of the basic structure'),
            ('C', 'Parliament can amend the fundamental rights'),
            ('D', 'The Fundamental Rights have priority over the Directive Principles')
           ) as v(label, option_text)
 where q.question_hash = 'c2001e6da7d401f1c8ca750c60a7eb84'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'Which of the following is NOT a basic feature of the Constitution identified by the Supreme Court?',
    'The right to property was removed from the fundamental rights by the 44th Amendment and is not a basic feature, though the reasonableness of the restrictions on it is protected.',
    'hard',
    'Standard Reference',
    null,
    'fc0beb9616ac57100680bb4a1f5308ad'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'fc0beb9616ac57100680bb4a1f5308ad'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The separation of powers'),
            ('B', 'Judicial review'),
            ('C', 'The right to own a private property as an absolute right'),
            ('D', 'The supremacy of the Constitution')
           ) as v(label, option_text)
 where q.question_hash = 'fc0beb9616ac57100680bb4a1f5308ad'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The ''Article 13'' of the Constitution:',
    'Article 13 is the source of the power of the judicial review, and it declares that the laws inconsistent with the Part III rights are void.',
    'easy',
    'Standard Reference',
    null,
    '2824beea7fb916c605811bff8f3dadca'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '2824beea7fb916c605811bff8f3dadca'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Provides for the judicial review and declares the laws inconsistent with the fundamental rights to be void'),
            ('B', 'Provides for the right to equality'),
            ('C', 'Provides for the writs'),
            ('D', 'Provides for the Right to Information')
           ) as v(label, option_text)
 where q.question_hash = '2824beea7fb916c605811bff8f3dadca'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'The ''Article 14'' of the Constitution:',
    'Article 14 guarantees the equality before the law and the equal protection of the laws within the territory of India.',
    'easy',
    'Standard Reference',
    null,
    'f8faaba2dcf2f630e76005725d42af50'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'f8faaba2dcf2f630e76005725d42af50'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Guarantees the freedom of religion'),
            ('B', 'Guarantees the right to life'),
            ('C', 'Guarantees the right to property'),
            ('D', 'Guarantees equality before law and equal protection of the laws')
           ) as v(label, option_text)
 where q.question_hash = 'f8faaba2dcf2f630e76005725d42af50'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'The ''Article 19'' guarantees the six freedoms to every citizen, except:',
    'Article 19 guarantees the freedom of speech and expression, of assembly, of association, of movement, of residence and of profession, and the freedom of the press flows from the freedom of speech and expression.',
    'hard',
    'Standard Reference',
    null,
    '6970a42f834635fbd55a7327e4ae3053'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '6970a42f834635fbd55a7327e4ae3053'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Freedom of speech and expression'),
            ('B', 'Freedom of movement'),
            ('C', 'Freedom of the press'),
            ('D', 'Freedom to own and manage a business')
           ) as v(label, option_text)
 where q.question_hash = '6970a42f834635fbd55a7327e4ae3053'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'The ''Article 22'' of the Constitution provides protection against:',
    'Article 22 provides the protection against the arrest and the detention in certain cases, the right to be informed of the grounds, the right to consult and to be defended by a legal practitioner and the right to be produced before the nearest magistrate within 24 hours.',
    'medium',
    'Standard Reference',
    null,
    '2abfabbe43d5bcc29a5e62b501c33824'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '2abfabbe43d5bcc29a5e62b501c33824'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Forced labour'),
            ('B', 'Arrest and detention in certain cases'),
            ('C', 'Ex-post facto laws'),
            ('D', 'Double jeopardy')
           ) as v(label, option_text)
 where q.question_hash = '2abfabbe43d5bcc29a5e62b501c33824'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'The ''Article 21'' includes the right to:',
    'Article 21 provides that no person shall be deprived of his life or personal liberty except according to the procedure established by law.',
    'easy',
    'Standard Reference',
    null,
    '74c4c4f100535f2cdb7298809e88ab50'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '74c4c4f100535f2cdb7298809e88ab50'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Property'),
            ('B', 'Freedom of the trade'),
            ('C', 'Equality'),
            ('D', 'Life and personal liberty')
           ) as v(label, option_text)
 where q.question_hash = '74c4c4f100535f2cdb7298809e88ab50'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'The ''right to property'' is now contained in:',
    'The 44th Amendment of 1978 removed the right to property from the Part III and inserted Article 300A, which provides that no person shall be deprived of his property save by the authority of law.',
    'medium',
    'Standard Reference',
    null,
    '9a69658aefc904d0fe058dfdf916516d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '9a69658aefc904d0fe058dfdf916516d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Article 300A'),
            ('B', 'Article 19(1)(g)'),
            ('C', 'Article 31'),
            ('D', 'Article 21')
           ) as v(label, option_text)
 where q.question_hash = '9a69658aefc904d0fe058dfdf916516d'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'The ''Article 32'' can be moved only in the:',
    'The right to move the Supreme Court for the enforcement of the fundamental rights is guaranteed by Article 32 and it cannot be suspended except as provided by Article 359.',
    'medium',
    'Standard Reference',
    null,
    'f6bc315bde5e683a238484b84414a0da'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'f6bc315bde5e683a238484b84414a0da'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'District Court'),
            ('B', 'Tribunal'),
            ('C', 'Supreme Court'),
            ('D', 'High Court')
           ) as v(label, option_text)
 where q.question_hash = 'f6bc315bde5e683a238484b84414a0da'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'The ''Article 226'' of the Constitution:',
    'Article 226 empowers the High Courts to issue the directions or the orders or the writs for the enforcement of the fundamental rights and for any other purpose.',
    'easy',
    'Standard Reference',
    null,
    '4fca0c17c8a8de1262124392c8b426ec'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '4fca0c17c8a8de1262124392c8b426ec'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is about the transfer of cases'),
            ('B', 'Empowers the High Courts to issue the writs for the enforcement of the fundamental rights'),
            ('C', 'Empowers the Supreme Court to issue the writs'),
            ('D', 'Abolishes the writ system')
           ) as v(label, option_text)
 where q.question_hash = '4fca0c17c8a8de1262124392c8b426ec'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'The ''writ of habeas corpus'' is issued to:',
    'Habeas corpus means to have the body of, and it is issued for the production of a person who is detained illegally.',
    'easy',
    'Standard Reference',
    null,
    '2e791aab0ba6275568e10e3fc5fd48ce'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '2e791aab0ba6275568e10e3fc5fd48ce'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bring the detained person before the court'),
            ('B', 'Command the public authority to perform its duty'),
            ('C', 'Quash the order of a lower court'),
            ('D', 'Prevent the lower court from proceeding')
           ) as v(label, option_text)
 where q.question_hash = '2e791aab0ba6275568e10e3fc5fd48ce'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'The ''writ of mandamus'' is issued:',
    'Mandamus is issued by a higher court to a lower court, a tribunal or a public authority to perform a duty which it has failed to perform.',
    'medium',
    'Standard Reference',
    null,
    '9dd06125c0f5e57f557ad6ffe9a59370'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '9dd06125c0f5e57f557ad6ffe9a59370'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'To enforce a fundamental right only'),
            ('B', 'To quash the order of a tribunal'),
            ('C', 'To produce a detained person'),
            ('D', 'By a higher court to a lower court or a public authority')
           ) as v(label, option_text)
 where q.question_hash = '9dd06125c0f5e57f557ad6ffe9a59370'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'The ''writ of certiorari'' is issued to:',
    'Certiorari is issued to quash the order of a lower court or a tribunal acting beyond its jurisdiction or acting illegally or improperly.',
    'medium',
    'Standard Reference',
    null,
    '6835e8436026e05f9b6df9ebe4feb0a5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '6835e8436026e05f9b6df9ebe4feb0a5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Quash the order of a lower court or a tribunal for excess of jurisdiction'),
            ('B', 'Produce a detained person'),
            ('C', 'Command the public authority'),
            ('D', 'Transfer a case from one court to another')
           ) as v(label, option_text)
 where q.question_hash = '6835e8436026e05f9b6df9ebe4feb0a5'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'The ''writ of prohibition'' is issued to:',
    'Prohibition is issued to a lower court to stop it from proceeding with a matter that is beyond its jurisdiction, and it is issued only to the judicial and the quasi-judicial bodies.',
    'medium',
    'Standard Reference',
    null,
    '17aabd623ac4f2a0fb2ea244c4c05c6d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '17aabd623ac4f2a0fb2ea244c4c05c6d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Command the public authority'),
            ('B', 'Stop a lower court from exceeding its jurisdiction'),
            ('C', 'Quash the order of a lower court'),
            ('D', 'Produce a detained person')
           ) as v(label, option_text)
 where q.question_hash = '17aabd623ac4f2a0fb2ea244c4c05c6d'
on conflict (question_id, label) do nothing;

-- polity | directive-principles | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'directive-principles'),
    'The ''Article 44'' directs the state to endeavour to secure:',
    'Article 44 directs the state to endeavour to secure for the citizens a uniform civil code throughout the territory of India.',
    'easy',
    'Standard Reference',
    null,
    '9f799920547cd3b4fd5ecc85f1294d45'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '9f799920547cd3b4fd5ecc85f1294d45'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The protection of the monuments'),
            ('B', 'The promotion of the peace'),
            ('C', 'A uniform civil code'),
            ('D', 'Free education')
           ) as v(label, option_text)
 where q.question_hash = '9f799920547cd3b4fd5ecc85f1294d45'
on conflict (question_id, label) do nothing;

-- polity | directive-principles | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'directive-principles'),
    'The ''Article 43'' directs the state to:',
    'Article 43, added by the 42nd Amendment, directs the state to promote the cottage industries in the rural areas, the individual and the cottage industries and the cooperative enterprises.',
    'medium',
    'Standard Reference',
    null,
    '547f9d7c679a48a7860580e082bf0b27'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '547f9d7c679a48a7860580e082bf0b27'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Promote the scientific research'),
            ('B', 'Raise the nutrition level'),
            ('C', 'Encourage the spirit of the scientific inquiry'),
            ('D', 'Promote the cottage industries in the rural areas')
           ) as v(label, option_text)
 where q.question_hash = '547f9d7c679a48a7860580e082bf0b27'
on conflict (question_id, label) do nothing;

-- polity | directive-principles | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'directive-principles'),
    'The ''Article 48A'' relates to:',
    'Article 48A, inserted by the 42nd Amendment of 1976, provides that the state shall endeavour to protect and improve the environment and to safeguard the forests and the wildlife.',
    'medium',
    'Standard Reference',
    null,
    'faa2d22dda1f863fcb8d65540464361f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'faa2d22dda1f863fcb8d65540464361f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The care of the unborn child'),
            ('B', 'The promotion of the cottage industries'),
            ('C', 'The protection and the improvement of the environment and the safeguarding of the forests and the wildlife'),
            ('D', 'The protection of the monuments')
           ) as v(label, option_text)
 where q.question_hash = 'faa2d22dda1f863fcb8d65540464361f'
on conflict (question_id, label) do nothing;

-- polity | directive-principles | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'directive-principles'),
    'The ''Article 51'' was amended by the 42nd Amendment to include:',
    'The 42nd Amendment added the words about the promotion of the international peace and the just and honourable relations between the nations and the fostering of the respect for the international law and the treaty obligations.',
    'hard',
    'Standard Reference',
    null,
    'd6619ca010ef9fad6381164c2b366449'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'd6619ca010ef9fad6381164c2b366449'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The protection of the environment'),
            ('B', 'The free and compulsory education'),
            ('C', 'The uniform civil code'),
            ('D', 'The promotion of the international peace and the just and honourable relations between the nations')
           ) as v(label, option_text)
 where q.question_hash = 'd6619ca010ef9fad6381164c2b366449'
on conflict (question_id, label) do nothing;

-- polity | fundamental-duties | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-duties'),
    'The ''Fundamental Duties'' were recommended by the committee of:',
    'The Swaran Singh Committee of 1976 recommended the inclusion of the fundamental duties, which the 42nd Amendment implemented in the same year.',
    'medium',
    'Standard Reference',
    null,
    '02b6ab434aa1f457dd4ed046c4fa5585'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '02b6ab434aa1f457dd4ed046c4fa5585'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sarkar'),
            ('B', 'Swaran Singh'),
            ('C', 'Balwant Rai Mehta'),
            ('D', 'Kothari')
           ) as v(label, option_text)
 where q.question_hash = '02b6ab434aa1f457dd4ed046c4fa5585'
on conflict (question_id, label) do nothing;

-- polity | fundamental-duties | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-duties'),
    'The ''Article 51A'' was amended by the 86th Amendment to add the duty of the parent to:',
    'The 86th Amendment of 2002 added the duty of the parent or the guardian to provide opportunities for education to the child or the ward between the ages of six and fourteen years.',
    'medium',
    'Standard Reference',
    null,
    '5165c4d527055f297150f5c3c1eab619'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '5165c4d527055f297150f5c3c1eab619'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Provide opportunities for education to the child between the ages of six and fourteen'),
            ('B', 'Protect the environment'),
            ('C', 'Improve the public health'),
            ('D', 'Respect the national flag')
           ) as v(label, option_text)
 where q.question_hash = '5165c4d527055f297150f5c3c1eab619'
on conflict (question_id, label) do nothing;

-- polity | fundamental-duties | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-duties'),
    'Which of the following is a Fundamental Duty?',
    'The duty to protect and improve the natural environment, to have compassion for the living creatures and to develop the scientific temper are among the eleven fundamental duties.',
    'easy',
    'Standard Reference',
    null,
    '3f386f8fa25c36a7e96cff7ed4d5c585'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '3f386f8fa25c36a7e96cff7ed4d5c585'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'To pay taxes'),
            ('B', 'To protect and improve the natural environment'),
            ('C', 'To serve in the armed forces'),
            ('D', 'To vote in the elections')
           ) as v(label, option_text)
 where q.question_hash = '3f386f8fa25c36a7e96cff7ed4d5c585'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 3'' of the Constitution provides for:',
    'Article 3 deals with the formation of the new states and the increase or the diminution of the area of a state, and Article 2 with the admission of the new states.',
    'medium',
    'Standard Reference',
    null,
    'e09dd7d56b304633a239a97f92c58e7e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e09dd7d56b304633a239a97f92c58e7e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The admission of the new states into the Union'),
            ('B', 'The citizenship'),
            ('C', 'The redistribution of the territories'),
            ('D', 'The formation of the new states and the alteration of the areas and the boundaries of the existing states')
           ) as v(label, option_text)
 where q.question_hash = 'e09dd7d56b304633a239a97f92c58e7e'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 246'' and the ''distribution of the legislative subjects:',
    'Article 246 lays down the distribution of the legislative subjects: the Union List under Article 246, the State List under Article 246 and the Concurrent List under Article 246.',
    'medium',
    'Standard Reference',
    null,
    '3d1c1f8af1ab209e66c42d0b4c8f478e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '3d1c1f8af1ab209e66c42d0b4c8f478e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Gives the legislative powers of the Union, the states and the concurrent'),
            ('B', 'Is about the emergency'),
            ('C', 'Is about the judiciary'),
            ('D', 'Is about the elections')
           ) as v(label, option_text)
 where q.question_hash = '3d1c1f8af1ab209e66c42d0b4c8f478e'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 280'' of the Constitution relates to:',
    'Article 280 provides for the constitution of a Finance Commission by the President every fifth year.',
    'easy',
    'Standard Reference',
    null,
    '483e30907bc98e1923c8d7be59c24034'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '483e30907bc98e1923c8d7be59c24034'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The CAG'),
            ('B', 'The UPSC'),
            ('C', 'The Finance Commission'),
            ('D', 'The Election Commission')
           ) as v(label, option_text)
 where q.question_hash = '483e30907bc98e1923c8d7be59c24034'
on conflict (question_id, label) do nothing;

-- polity | elections | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'elections'),
    'The ''Article 324'' of the Constitution:',
    'Article 324 vests the superintendence, direction and control of the entire process of the elections in the Election Commission of India.',
    'easy',
    'Standard Reference',
    null,
    'c6474e5bfd328c5b55d741c4d18c5424'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'c6474e5bfd328c5b55d741c4d18c5424'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Vests the superintendence, direction and control of the elections in the Election Commission'),
            ('B', 'Deals with the advisory jurisdiction of the Supreme Court'),
            ('C', 'Provides for the Finance Commission'),
            ('D', 'Deals with the emergency')
           ) as v(label, option_text)
 where q.question_hash = 'c6474e5bfd328c5b55d741c4d18c5424'
on conflict (question_id, label) do nothing;

-- polity | elections | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'elections'),
    'The ''Article 326'' of the Constitution:',
    'Article 326 provides that no person shall be disqualified from the right to vote on the ground of religion, race, caste or sex, and the 61st Amendment fixed the voting age at 18.',
    'medium',
    'Standard Reference',
    null,
    'df944f428edd388e778cfc5cd047ebfe'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'df944f428edd388e778cfc5cd047ebfe'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Provides for the voters'' list'),
            ('B', 'Provides for the right to vote at the elections'),
            ('C', 'Provides for the delimitation of the constituencies'),
            ('D', 'Provides for the Electoral Court')
           ) as v(label, option_text)
 where q.question_hash = 'df944f428edd388e778cfc5cd047ebfe'
on conflict (question_id, label) do nothing;

-- polity | elections | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'elections'),
    'The ''Article 325'' of the Constitution:',
    'Article 325 provides that there shall be one general electoral roll for every territorial constituency and the principle of one person one vote one value.',
    'hard',
    'Standard Reference',
    null,
    '01a5a027bdf8e28aa72c8142aec43960'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '01a5a027bdf8e28aa72c8142aec43960'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Deals with the nominated members'),
            ('B', 'Deals with the voting by proxy'),
            ('C', 'Provides for the one general electoral roll for every territorial constituency'),
            ('D', 'Deals with the delimitation')
           ) as v(label, option_text)
 where q.question_hash = '01a5a027bdf8e28aa72c8142aec43960'
on conflict (question_id, label) do nothing;

-- polity | elections | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'elections'),
    'The ''Article 330'' of the Constitution:',
    'Article 330 provides for the reservation of the seats for the Scheduled Castes and the Scheduled Tribes in the Lok Sabha and in the state assemblies.',
    'medium',
    'Standard Reference',
    null,
    '460b42399cbd52ffe77193a53f9b9a6c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '460b42399cbd52ffe77193a53f9b9a6c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Provides for the strength of the Lok Sabha'),
            ('B', 'Provides for the qualifications of the members'),
            ('C', 'Provides for the Speaker'),
            ('D', 'Provides for the allocation of the seats to the Scheduled Castes and the Scheduled Tribes in the Lok Sabha')
           ) as v(label, option_text)
 where q.question_hash = '460b42399cbd52ffe77193a53f9b9a6c'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 356'' of the Constitution provides:',
    'Article 356 provides for the President''s Rule when the constitutional machinery of a state fails, and the governor''s report or the president''s certification is the precondition.',
    'easy',
    'Standard Reference',
    null,
    'eec1a8b26f0e0df2a385baeb3cd89b81'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'eec1a8b26f0e0df2a385baeb3cd89b81'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'For the financial emergency'),
            ('B', 'For the President''s ordinance'),
            ('C', 'For the President''s Rule in a state'),
            ('D', 'For the national emergency')
           ) as v(label, option_text)
 where q.question_hash = 'eec1a8b26f0e0df2a385baeb3cd89b81'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 360'' of the Constitution provides for:',
    'Article 360 provides for the financial emergency, which has never been declared in India.',
    'medium',
    'Standard Reference',
    null,
    'd223ef727d21e98f5a8823dfcc3f5ce3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd223ef727d21e98f5a8823dfcc3f5ce3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The financial emergency'),
            ('B', 'The national emergency'),
            ('C', 'The President''s Rule'),
            ('D', 'The ordinance')
           ) as v(label, option_text)
 where q.question_hash = 'd223ef727d21e98f5a8823dfcc3f5ce3'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 352'' of the Constitution:',
    'Article 352 provides for the national emergency, and the 44th Amendment made the proclamation subject to the approval of both the houses within one month.',
    'easy',
    'Standard Reference',
    null,
    '7a5c4fdede0ae0f296136dacfd0fc20f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '7a5c4fdede0ae0f296136dacfd0fc20f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Provides for the President''s Rule'),
            ('B', 'Provides for the financial emergency'),
            ('C', 'Provides for the ordinance'),
            ('D', 'Provides for the national emergency')
           ) as v(label, option_text)
 where q.question_hash = '7a5c4fdede0ae0f296136dacfd0fc20f'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 353'' of the Constitution provides for:',
    'Article 353 empowers the Centre to assume to itself the powers of the state governments during a national emergency, and the 44th Amendment made the exercise of these powers subject to the parliamentary approval.',
    'hard',
    'Standard Reference',
    null,
    '4af30bd7a707bf6e63c846f5e38318cd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '4af30bd7a707bf6e63c846f5e38318cd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The President''s Rule'),
            ('B', 'The emergency powers of the Union during a national emergency'),
            ('C', 'The financial emergency'),
            ('D', 'The ordinance')
           ) as v(label, option_text)
 where q.question_hash = '4af30bd7a707bf6e63c846f5e38318cd'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 355'' of the Constitution provides for:',
    'Article 355 lays down the duty of the Union to protect the states against internal disturbance and to ensure that the integrity and the sovereignty of the Republic is respected.',
    'medium',
    'Standard Reference',
    null,
    '343f7b48d09a7692100c90a54f29233c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '343f7b48d09a7692100c90a54f29233c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The President'),
            ('B', 'The duty of the Union to protect the states against internal disturbance'),
            ('C', 'The emergency provisions'),
            ('D', 'The ordinance')
           ) as v(label, option_text)
 where q.question_hash = '343f7b48d09a7692100c90a54f29233c'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 365'' of the Constitution provides:',
    'Article 365 provides that when a state is under the President''s Rule, the governance of the state is vested in the President.',
    'hard',
    'Standard Reference',
    null,
    'aaa7e770dbd7d1e9e8f4559bec614bd1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'aaa7e770dbd7d1e9e8f4559bec614bd1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'That the governance of a state under the President''s Rule is vested in the President'),
            ('B', 'For the emergency'),
            ('C', 'For the ordinance'),
            ('D', 'For the elections')
           ) as v(label, option_text)
 where q.question_hash = 'aaa7e770dbd7d1e9e8f4559bec614bd1'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 262'' of the Constitution relates to:',
    'Article 262 provides for the adjudication of the disputes relating to the waters of the inter-state rivers and the river valleys and for the tribunals for that purpose.',
    'medium',
    'Standard Reference',
    null,
    '408b8cbdf0fe41ac0e4ba5251a696109'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '408b8cbdf0fe41ac0e4ba5251a696109'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The emergency'),
            ('B', 'The local government'),
            ('C', 'The adjudication of the inter-state water disputes'),
            ('D', 'The residuary powers')
           ) as v(label, option_text)
 where q.question_hash = '408b8cbdf0fe41ac0e4ba5251a696109'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Inter-State Council'' was created in:',
    'The Inter-State Council was established in 1990 by an executive resolution of the Union government to inquire into and advise upon the disputes between the states and the subjects of the common interest.',
    'medium',
    'Standard Reference',
    null,
    'e4af3d18dc2a753011b73fad8c29c139'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e4af3d18dc2a753011b73fad8c29c139'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1975'),
            ('B', '1985'),
            ('C', '1995'),
            ('D', '1990')
           ) as v(label, option_text)
 where q.question_hash = 'e4af3d18dc2a753011b73fad8c29c139'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''15th Finance Commission'' recommended the devolution of:',
    'The 15th Finance Commission recommended the devolution of 41 per cent of the divisible pool to the states for 2021-26 and the vertical distribution of the taxes.',
    'medium',
    'Standard Reference',
    null,
    'b8f486222598dfd56cc5cd387cd7f2a5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'b8f486222598dfd56cc5cd387cd7f2a5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '45 per cent'),
            ('B', '50 per cent'),
            ('C', '36 per cent'),
            ('D', '41 per cent of the divisible pool to the states')
           ) as v(label, option_text)
 where q.question_hash = 'b8f486222598dfd56cc5cd387cd7f2a5'
on conflict (question_id, label) do nothing;

-- polity | parliament | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'The ''Article 110'' of the Constitution defines:',
    'Article 110 lists the matters that are to be treated as money bills and the procedures for them, and the Speaker of the Lok Sabha certifies them.',
    'medium',
    'Standard Reference',
    null,
    '32a68e2c4e555c174479ce3fb6963535'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '32a68e2c4e555c174479ce3fb6963535'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The sessions of the Parliament'),
            ('B', 'The quorum'),
            ('C', 'A money bill'),
            ('D', 'The privileges of the members')
           ) as v(label, option_text)
 where q.question_hash = '32a68e2c4e555c174479ce3fb6963535'
on conflict (question_id, label) do nothing;

-- polity | parliament | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'The ''Article 109'' of the Constitution deals with:',
    'Article 109 provides the special procedure for the financial bills, and the money bill is governed by Article 110 and Article 112.',
    'hard',
    'Standard Reference',
    null,
    '143e59cca39a75d8dba0bc304218d7da'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '143e59cca39a75d8dba0bc304218d7da'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The privileges'),
            ('B', 'The special procedure for the financial bills'),
            ('C', 'The money bill'),
            ('D', 'The quorum')
           ) as v(label, option_text)
 where q.question_hash = '143e59cca39a75d8dba0bc304218d7da'
on conflict (question_id, label) do nothing;

-- polity | parliament | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'The ''Article 105'' of the Constitution:',
    'Article 105 provides for the privileges of the members of the Parliament and Article 106 for those of the state legislatures.',
    'medium',
    'Standard Reference',
    null,
    'b9de3441c6bcc4754de5a6d48db6ee81'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'b9de3441c6bcc4754de5a6d48db6ee81'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Deals with the privileges of the members of the Parliament'),
            ('B', 'Deals with the money bill'),
            ('C', 'Deals with the joint sitting'),
            ('D', 'Deals with the quorum')
           ) as v(label, option_text)
 where q.question_hash = 'b9de3441c6bcc4754de5a6d48db6ee81'
on conflict (question_id, label) do nothing;

-- polity | parliament | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'The ''Article 85'' of the Constitution deals with:',
    'Article 85 provides for the sessions of the Parliament, the summoning, the prorogation and the dissolution and the adjournment sine die.',
    'medium',
    'Standard Reference',
    null,
    '14fae5fb16bd3217fb130a2356ae6460'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '14fae5fb16bd3217fb130a2356ae6460'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The money bill'),
            ('B', 'The privileges'),
            ('C', 'The Speaker'),
            ('D', 'The sessions of the Parliament')
           ) as v(label, option_text)
 where q.question_hash = '14fae5fb16bd3217fb130a2356ae6460'
on conflict (question_id, label) do nothing;

-- polity | parliament | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'The ''Article 100'' of the Constitution relates to:',
    'Article 100 provides for the office of the Speaker and the Deputy Speaker of the Lok Sabha, and Article 101 for the vacation of the office.',
    'medium',
    'Standard Reference',
    null,
    'bbb5e8daa36413e2f29b1386e1119753'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'bbb5e8daa36413e2f29b1386e1119753'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Speaker and the Deputy Speaker of the Lok Sabha'),
            ('B', 'The Chairman of the Rajya Sabha'),
            ('C', 'The sessions'),
            ('D', 'The quorum')
           ) as v(label, option_text)
 where q.question_hash = 'bbb5e8daa36413e2f29b1386e1119753'
on conflict (question_id, label) do nothing;

-- polity | parliament | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'The ''Article 102'' of the Constitution deals with:',
    'Article 102 lists the disqualifications of the members of the Parliament and Article 103 the duration of the membership.',
    'hard',
    'Standard Reference',
    null,
    'a6097a2e90da13d6f9215d2b4c2ada62'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a6097a2e90da13d6f9215d2b4c2ada62'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Speaker'),
            ('B', 'The disqualifications of the members of the Parliament'),
            ('C', 'The sessions'),
            ('D', 'The privileges')
           ) as v(label, option_text)
 where q.question_hash = 'a6097a2e90da13d6f9215d2b4c2ada62'
on conflict (question_id, label) do nothing;

-- polity | parliament | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'The ''Article 112'' of the Constitution deals with:',
    'Article 112 provides that the President shall cause the Annual Financial Statement, the Budget, to be laid before both the houses of the Parliament.',
    'medium',
    'Standard Reference',
    null,
    '9d442068e05826e7461154dbd872f616'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '9d442068e05826e7461154dbd872f616'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The accounts of the CAG'),
            ('B', 'The audit'),
            ('C', 'The Annual Financial Statement, the Budget'),
            ('D', 'The Finance Commission')
           ) as v(label, option_text)
 where q.question_hash = '9d442068e05826e7461154dbd872f616'
on conflict (question_id, label) do nothing;

-- polity | parliament | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'The ''Article 113'' of the Constitution deals with:',
    'Article 113 provides for the assent of the President to the bills and Article 114 for the withholding of the assent.',
    'medium',
    'Standard Reference',
    null,
    'faf24c41e835416ea781215d6b24a764'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'faf24c41e835416ea781215d6b24a764'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The money bill'),
            ('B', 'The joint sitting'),
            ('C', 'The privileges'),
            ('D', 'The assent to the bills')
           ) as v(label, option_text)
 where q.question_hash = 'faf24c41e835416ea781215d6b24a764'
on conflict (question_id, label) do nothing;

-- polity | parliament | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'The ''Article 108'' of the Constitution deals with:',
    'Article 108 provides for the joint sitting of the two houses in the case of the disagreement about a bill and the deadlock over the amendments.',
    'medium',
    'Standard Reference',
    null,
    '4fec2a13b8bae22d72b29770f37d5a42'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '4fec2a13b8bae22d72b29770f37d5a42'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The joint sitting of the two houses'),
            ('B', 'The money bill'),
            ('C', 'The privileges'),
            ('D', 'The quorum')
           ) as v(label, option_text)
 where q.question_hash = '4fec2a13b8bae22d72b29770f37d5a42'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'The ''Article 75'' of the Constitution:',
    'Article 75 provides for the appointment of the Council of Ministers, the tenure of the ministers and the responsibility of the Council to the Lok Sabha.',
    'medium',
    'Standard Reference',
    null,
    'a7b21e635c190c9ae3e4a8139c416464'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a7b21e635c190c9ae3e4a8139c416464'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Deals with the salary of the ministers'),
            ('B', 'Provides for the appointment and the responsibility of the Council of Ministers at the Union level'),
            ('C', 'Deals with the oath of the ministers'),
            ('D', 'Deals with the qualifications')
           ) as v(label, option_text)
 where q.question_hash = 'a7b21e635c190c9ae3e4a8139c416464'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'The ''Article 148'' of the Constitution:',
    'Article 148 provides for the constitution of the Comptroller and Auditor General of India, who is appointed by the President and can be removed only like a Supreme Court judge.',
    'easy',
    'Standard Reference',
    null,
    '266d373aa84892f800275d8a97e81a16'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '266d373aa84892f800275d8a97e81a16'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Provides for the Election Commission'),
            ('B', 'Provides for the Finance Commission'),
            ('C', 'Provides for the CAG'),
            ('D', 'Provides for the UPSC')
           ) as v(label, option_text)
 where q.question_hash = '266d373aa84892f800275d8a97e81a16'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'The ''Article 315'' of the Constitution:',
    'Article 315 provides for the constitution of the Union Public Service Commission and the State Public Service Commissions.',
    'medium',
    'Standard Reference',
    null,
    'ef1a85fd1c6a2fefa747f92ae3aec4c8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'ef1a85fd1c6a2fefa747f92ae3aec4c8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Provides for the Election Commission'),
            ('B', 'Provides for the CAG'),
            ('C', 'Provides for the Finance Commission'),
            ('D', 'Provides for the constitution of the Public Service Commissions')
           ) as v(label, option_text)
 where q.question_hash = 'ef1a85fd1c6a2fefa747f92ae3aec4c8'
on conflict (question_id, label) do nothing;

-- polity | elections | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'elections'),
    'The ''tenure'' of the Chief Election Commissioner after the 2023 law:',
    'The CEC holds office for six years or up to the age of 65 years, whichever is earlier, and the 2023 law gave him the status of a Supreme Court judge with a removal procedure like that of a judge.',
    'hard',
    'Standard Reference',
    null,
    'a569ff02f864f1c38bb3c39dccb9fb61'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a569ff02f864f1c38bb3c39dccb9fb61'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Six years or up to the age of 65'),
            ('B', 'Five years or up to the age of 65'),
            ('C', 'Six years or up to the age of 62'),
            ('D', 'Five years or up to the age of 62')
           ) as v(label, option_text)
 where q.question_hash = 'a569ff02f864f1c38bb3c39dccb9fb61'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'The ''Article 317'' of the Constitution:',
    'Article 317 deals with the functions of the Public Service Commissions and Article 320 lists the specific functions of the UPSC.',
    'hard',
    'Standard Reference',
    null,
    '4ca0dcaeab3e20bad31c9211b33fa7c0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '4ca0dcaeab3e20bad31c9211b33fa7c0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Provides for their removal'),
            ('B', 'Provides for the functions of the Public Service Commissions'),
            ('C', 'Provides for their appointment'),
            ('D', 'Provides for their tenure')
           ) as v(label, option_text)
 where q.question_hash = '4ca0dcaeab3e20bad31c9211b33fa7c0'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'The ''National Human Rights Commission'' is constituted under:',
    'The NHRC is a statutory body under the Protection of Human Rights Act, 1993, and the 2019 amendment brought the state human rights commissions also under the Act.',
    'medium',
    'Standard Reference',
    null,
    '0936555fc2353fbdc558d0936330565b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '0936555fc2353fbdc558d0936330565b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The RTI Act'),
            ('B', 'The CAG Act'),
            ('C', 'The Protection of Human Rights Act, 1993'),
            ('D', 'The Constitution')
           ) as v(label, option_text)
 where q.question_hash = '0936555fc2353fbdc558d0936330565b'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'The ''Lokpal'' and the ''Lokayukta'' Act was enacted in:',
    'The Lokpal and Lokayuktas Act, 2013, gave the statutory basis to the Lokpal and the Lokayuktas, which had till then existed only as the executive bodies.',
    'medium',
    'Standard Reference',
    null,
    '60db5fefe63c4f6247710833d9809991'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '60db5fefe63c4f6247710833d9809991'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2011'),
            ('B', '2016'),
            ('C', '2009'),
            ('D', '2013')
           ) as v(label, option_text)
 where q.question_hash = '60db5fefe63c4f6247710833d9809991'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'The ''Central Vigilance Commission'' is under the:',
    'The CVC is a multi-member body under the executive control of the Department of Personnel, Public Grievances and Pensions.',
    'hard',
    'Standard Reference',
    null,
    'fc2d40cf79a644cdd3ac9145b6e6ce89'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'fc2d40cf79a644cdd3ac9145b6e6ce89'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Cabinet Secretariat'),
            ('B', 'Ministry of Personnel, Public Grievances and Pensions'),
            ('C', 'Ministry of Finance'),
            ('D', 'Ministry of Law and Justice')
           ) as v(label, option_text)
 where q.question_hash = 'fc2d40cf79a644cdd3ac9145b6e6ce89'
on conflict (question_id, label) do nothing;

-- polity | judiciary | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''Article 143'' and the ''advisory jurisdiction'':',
    'The President may refer any matter of importance or difficulty to the Supreme Court for its opinion under Article 143 and the opinion is not binding but is authoritative.',
    'medium',
    'Standard Reference',
    null,
    '3ba29993fc98fdeaa49528937f55330c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '3ba29993fc98fdeaa49528937f55330c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is exercised on a reference from the CAG'),
            ('B', 'Is exercised on a reference from the High Court'),
            ('C', 'Is exercised on a reference from the President'),
            ('D', 'Is exercised on a reference from the Parliament')
           ) as v(label, option_text)
 where q.question_hash = '3ba29993fc98fdeaa49528937f55330c'
on conflict (question_id, label) do nothing;

-- polity | judiciary | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''Article 226'' and the ''Power'' of the High Court:',
    'The High Courts can issue the writs for the enforcement of the fundamental rights and for any other purpose, which is wider than the scope of Article 32.',
    'hard',
    'Standard Reference',
    null,
    '955f01315e0e5f06ebbcd263637c3592'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '955f01315e0e5f06ebbcd263637c3592'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'To issue the writs for any purpose'),
            ('B', 'To issue only the five writs'),
            ('C', 'To transfer the cases'),
            ('D', 'To appoint the judges')
           ) as v(label, option_text)
 where q.question_hash = '955f01315e0e5f06ebbcd263637c3592'
on conflict (question_id, label) do nothing;

-- polity | judiciary | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''Article 137'' of the Constitution:',
    'Article 137 provides for the appellate jurisdiction of the Supreme Court in the matters of both the law and the fact.',
    'medium',
    'Standard Reference',
    null,
    '7007dd8a42157bcdfdc056f790ed2f6c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '7007dd8a42157bcdfdc056f790ed2f6c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Provides for the transfer of the cases'),
            ('B', 'Provides for the writs'),
            ('C', 'Provides for the appellate jurisdiction of the Supreme Court'),
            ('D', 'Provides for the advisory jurisdiction')
           ) as v(label, option_text)
 where q.question_hash = '7007dd8a42157bcdfdc056f790ed2f6c'
on conflict (question_id, label) do nothing;

-- polity | judiciary | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''Article 131'' of the Constitution deals with the original jurisdiction of the Supreme Court in:',
    'Article 131 vests the original jurisdiction in the Supreme Court in the federal disputes, while the rest is exercised by the High Courts under Article 226.',
    'medium',
    'Standard Reference',
    null,
    '782b652d26778ad3085e85e104474c54'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '782b652d26778ad3085e85e104474c54'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'All the criminal appeals'),
            ('B', 'The advisory matters'),
            ('C', 'The writs'),
            ('D', 'The disputes between the Centre and the states and the other specified ones')
           ) as v(label, option_text)
 where q.question_hash = '782b652d26778ad3085e85e104474c54'
on conflict (question_id, label) do nothing;

-- polity | judiciary | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''Article 136'' of the Constitution provides for the special leave to appeal:',
    'Article 136 empowers the Supreme Court to grant the special leave to appeal from any judgment, determination, sentence or order of any court or tribunal in India.',
    'medium',
    'Standard Reference',
    null,
    'a037706dadc62966e48a358acb772090'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a037706dadc62966e48a358acb772090'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'To the Parliament from the states'),
            ('B', 'To the Supreme Court from any court or tribunal'),
            ('C', 'To the High Court from the Supreme Court'),
            ('D', 'To the Executive from the judiciary')
           ) as v(label, option_text)
 where q.question_hash = 'a037706dadc62966e48a358acb772090'
on conflict (question_id, label) do nothing;

-- polity | judiciary | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''Article 142'' of the Constitution:',
    'Article 142 empowers the Supreme Court to pass such decree or order as is necessary for doing complete justice in any cause or matter pending before it.',
    'hard',
    'Standard Reference',
    null,
    '2dfc8855e6c0ace46456b3bdca6877ca'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '2dfc8855e6c0ace46456b3bdca6877ca'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Empowers the Supreme Court to pass the orders necessary for doing the complete justice'),
            ('B', 'Provides for the advisory jurisdiction'),
            ('C', 'Provides for the review of the judgments'),
            ('D', 'Provides for the transfer of the cases')
           ) as v(label, option_text)
 where q.question_hash = '2dfc8855e6c0ace46456b3bdca6877ca'
on conflict (question_id, label) do nothing;

-- polity | judiciary | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''Article 130'' of the Constitution:',
    'Article 130 empowers the Supreme Court to frame the rules of procedure with the President''s approval and to make the rules of the same nature as those of the Parliament.',
    'hard',
    'Standard Reference',
    null,
    '4e94e5521ac79b28c2bc90826b3c7b37'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '4e94e5521ac79b28c2bc90826b3c7b37'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Empowers the Supreme Court to frame the rules of procedure'),
            ('B', 'Provides for the advisory jurisdiction'),
            ('C', 'Provides for the salaries of the judges'),
            ('D', 'Provides for the retirement')
           ) as v(label, option_text)
 where q.question_hash = '4e94e5521ac79b28c2bc90826b3c7b37'
on conflict (question_id, label) do nothing;

-- polity | judiciary | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''Doctrine of Implied Powers'' and the ''Article 356'':',
    'In the S.R. Bommai case of 1994 the Supreme Court held that the imposition of the President''s Rule is a subject of the judicial review and it also articulated the doctrine of the implied powers.',
    'hard',
    'Standard Reference',
    null,
    'b9529d0482666802e7c1da952cf8fb1a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b9529d0482666802e7c1da952cf8fb1a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was in the Minerva Mills case'),
            ('B', 'Was articulated in the S.R. Bommai case'),
            ('C', 'Was in the Golaknath case'),
            ('D', 'Was in the Maneka Gandhi case')
           ) as v(label, option_text)
 where q.question_hash = 'b9529d0482666802e7c1da952cf8fb1a'
on conflict (question_id, label) do nothing;

-- polity | parliament | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'The ''Article 123'' of the Constitution provides for:',
    'Article 123 empowers the President to promulgate an ordinance when either house of the Parliament is not in session and it must be laid before the Parliament within six weeks of the reassembly.',
    'easy',
    'Standard Reference',
    null,
    'e3767c9cc3354c6e3ccde2955818533f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e3767c9cc3354c6e3ccde2955818533f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Presidential pardon'),
            ('B', 'The impeachment'),
            ('C', 'The ordinance-making power of the President'),
            ('D', 'The emergency')
           ) as v(label, option_text)
 where q.question_hash = 'e3767c9cc3354c6e3ccde2955818533f'
on conflict (question_id, label) do nothing;

-- polity | parliament | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'The ''Article 72'' of the Constitution deals with:',
    'Article 72 vests the pardoning power in the President, which extends to the death sentence, the remission, the commutation and the pardon.',
    'medium',
    'Standard Reference',
    null,
    'dd2d2ff219979c154b5988efc653659a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'dd2d2ff219979c154b5988efc653659a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The ordinance'),
            ('B', 'The emergency'),
            ('C', 'The impeachment'),
            ('D', 'The pardoning power of the President')
           ) as v(label, option_text)
 where q.question_hash = 'dd2d2ff219979c154b5988efc653659a'
on conflict (question_id, label) do nothing;

-- polity | parliament | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'The ''Article 61'' of the Constitution provides for:',
    'Article 61 prescribes the impeachment procedure for the President, which requires the initiation in either house, a two-thirds majority of the total membership and a two-thirds majority of each house and a fourteen-day notice.',
    'medium',
    'Standard Reference',
    null,
    'f5fd78e5826b5693c127ded497624bb6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f5fd78e5826b5693c127ded497624bb6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The procedure of the impeachment of the President'),
            ('B', 'The election of the President'),
            ('C', 'The oath of the President'),
            ('D', 'The term of the President')
           ) as v(label, option_text)
 where q.question_hash = 'f5fd78e5826b5693c127ded497624bb6'
on conflict (question_id, label) do nothing;

-- polity | parliament | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'The ''Article 62'' of the Constitution:',
    'Article 62 provides that the President shall hold office for five years from the date on which he enters into office and shall be eligible for re-election.',
    'easy',
    'Standard Reference',
    null,
    '15cdafc79c6414c2d85329e59b169b02'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '15cdafc79c6414c2d85329e59b169b02'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Provides for the impeachment'),
            ('B', 'Provides for the election'),
            ('C', 'Provides for the term of the President'),
            ('D', 'Provides for the oath')
           ) as v(label, option_text)
 where q.question_hash = '15cdafc79c6414c2d85329e59b169b02'
on conflict (question_id, label) do nothing;

-- polity | parliament | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'The ''Article 64'' of the Constitution provides that the Vice-President:',
    'Article 64 makes the Vice-President the ex-officio Chairman of the Rajya Sabha and the Council of States under Article 63 appoints a Deputy Chairman from among its members.',
    'medium',
    'Standard Reference',
    null,
    'e983a190aded7921b6ad7242ae0bf5c7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e983a190aded7921b6ad7242ae0bf5c7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is appointed by the President'),
            ('B', 'Is the ex-officio Chairman of the Rajya Sabha'),
            ('C', 'Is elected by the Lok Sabha'),
            ('D', 'Serves as the acting President')
           ) as v(label, option_text)
 where q.question_hash = 'e983a190aded7921b6ad7242ae0bf5c7'
on conflict (question_id, label) do nothing;

-- polity | parliament | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'The ''Article 65'' of the Constitution provides:',
    'Article 65 provides for the election of the Vice-President by an electoral college consisting of the elected members of both the houses of the Parliament.',
    'medium',
    'Standard Reference',
    null,
    '960d25f49c79bee1eebe4538ebaf885e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '960d25f49c79bee1eebe4538ebaf885e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'For the election of the President by the state assemblies'),
            ('B', 'For the removal of the Vice-President'),
            ('C', 'For the oath of the Vice-President'),
            ('D', 'For the election of the Vice-President by an electoral college of the elected members of both houses')
           ) as v(label, option_text)
 where q.question_hash = '960d25f49c79bee1eebe4538ebaf885e'
on conflict (question_id, label) do nothing;

-- polity | parliament | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'The ''Article 67'' of the Constitution provides:',
    'Article 67 describes the electoral college for the Presidential election, with the elected members of the legislative assemblies of the states and the union territories included.',
    'hard',
    'Standard Reference',
    null,
    '9918c8f71ad527c216d0a380c3465a4f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '9918c8f71ad527c216d0a380c3465a4f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'For the term of the President'),
            ('B', 'For the oath'),
            ('C', 'For the electoral college for the Presidential election'),
            ('D', 'For the removal of the President')
           ) as v(label, option_text)
 where q.question_hash = '9918c8f71ad527c216d0a380c3465a4f'
on conflict (question_id, label) do nothing;

-- polity | parliament | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'The ''Article 71'' of the Constitution provides:',
    'Article 71 vests the decision of all the doubts and the disputes relating to the election of the President in the Supreme Court.',
    'medium',
    'Standard Reference',
    null,
    'dd1a086bf851623cd97243cef8415d8b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'dd1a086bf851623cd97243cef8415d8b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'For the impeachment'),
            ('B', 'For the disputes relating to the election of the President to be decided by the Supreme Court'),
            ('C', 'For the oath of the President'),
            ('D', 'For the term')
           ) as v(label, option_text)
 where q.question_hash = 'dd1a086bf851623cd97243cef8415d8b'
on conflict (question_id, label) do nothing;

-- polity | parliament | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'The ''Article 70'' of the Constitution provides:',
    'Article 70 provides that the President is entitled to the emoluments and the allowances and the privileges as may be determined by the Parliament and the emoluments are charged on the Consolidated Fund.',
    'hard',
    'Standard Reference',
    null,
    'c8c01600f05dfdb9b5d56840bd537e96'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'c8c01600f05dfdb9b5d56840bd537e96'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'For the allowances and the privileges of the President'),
            ('B', 'For the oath'),
            ('C', 'For the election'),
            ('D', 'For the term')
           ) as v(label, option_text)
 where q.question_hash = 'c8c01600f05dfdb9b5d56840bd537e96'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'The ''Article 74'' of the Constitution provides:',
    'Article 74 provides for the Council of Ministers to aid and advise the President, who must act in accordance with that advice except in the cases specified in Article 163.',
    'medium',
    'Standard Reference',
    null,
    '59e7a186b602e5cdfd70abaf50e491d0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '59e7a186b602e5cdfd70abaf50e491d0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'For the appointment of the President'),
            ('B', 'For the oath of the ministers'),
            ('C', 'For the salaries of the ministers'),
            ('D', 'For the Council of Ministers to aid and advise the President who must act in accordance with that advice')
           ) as v(label, option_text)
 where q.question_hash = '59e7a186b602e5cdfd70abaf50e491d0'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'The ''Article 76'' of the Constitution deals with:',
    'Article 76 provides for the Attorney General of India, who is appointed by the President from among the persons qualified to be a judge of the Supreme Court.',
    'medium',
    'Standard Reference',
    null,
    '8b4ea73d097616aada0e8317a0c5b799'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '8b4ea73d097616aada0e8317a0c5b799'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Attorney General of India'),
            ('B', 'The Election Commission'),
            ('C', 'The CAG'),
            ('D', 'The Finance Commission')
           ) as v(label, option_text)
 where q.question_hash = '8b4ea73d097616aada0e8317a0c5b799'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'The ''Article 165'' of the Constitution deals with:',
    'Article 165 provides for the Advocate General of a state, who is appointed by the Governor and is the highest law officer of the state.',
    'medium',
    'Standard Reference',
    null,
    '4a220fefd177d3bd3102f908329d4f30'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '4a220fefd177d3bd3102f908329d4f30'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The UPSC'),
            ('B', 'The Advocate General of a state'),
            ('C', 'The Attorney General of India'),
            ('D', 'The CAG')
           ) as v(label, option_text)
 where q.question_hash = '4a220fefd177d3bd3102f908329d4f30'
on conflict (question_id, label) do nothing;

-- polity | judiciary | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''Article 215'' of the Constitution provides:',
    'Article 215 provides for the High Courts for the states and Article 216 for their establishment.',
    'medium',
    'Standard Reference',
    null,
    '7cab8f8cca7f0401edb3bd344ad79bc0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '7cab8f8cca7f0401edb3bd344ad79bc0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'For the Supreme Court'),
            ('B', 'For the district courts'),
            ('C', 'For the tribunals'),
            ('D', 'For the High Courts in the states')
           ) as v(label, option_text)
 where q.question_hash = '7cab8f8cca7f0401edb3bd344ad79bc0'
on conflict (question_id, label) do nothing;

-- polity | judiciary | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''Article 217'' of the Constitution provides:',
    'Article 217 provides for the removal of a High Court judge by an address passed by the legislature of the state concerned.',
    'hard',
    'Standard Reference',
    null,
    '881f2f89724784713f7b4745529f9add'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '881f2f89724784713f7b4745529f9add'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'For the qualifications'),
            ('B', 'For the oath'),
            ('C', 'For the removal of a High Court judge'),
            ('D', 'For the appointment')
           ) as v(label, option_text)
 where q.question_hash = '881f2f89724784713f7b4745529f9add'
on conflict (question_id, label) do nothing;

-- polity | judiciary | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''Article 124'' of the Constitution:',
    'Article 124 constitutes the Supreme Court of India, consisting of a Chief Justice of India and such other judges as the President may appoint.',
    'easy',
    'Standard Reference',
    null,
    '580addf7cabc0880cf20f80661a6eb82'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '580addf7cabc0880cf20f80661a6eb82'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Establishes the Supreme Court with a Chief Justice and the other judges'),
            ('B', 'Provides for the High Courts'),
            ('C', 'Provides for the district courts'),
            ('D', 'Provides for the tribunals')
           ) as v(label, option_text)
 where q.question_hash = '580addf7cabc0880cf20f80661a6eb82'
on conflict (question_id, label) do nothing;

-- polity | judiciary | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''Article 125'' of the Constitution relates to:',
    'Article 125 provides for the appointment and the removal of the judges of the Supreme Court and Article 124 for their qualifications.',
    'medium',
    'Standard Reference',
    null,
    '66b3145f631aca626d9373374991c82c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '66b3145f631aca626d9373374991c82c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The oath'),
            ('B', 'The salaries'),
            ('C', 'The jurisdiction'),
            ('D', 'The removal and the appointment of the Supreme Court judges')
           ) as v(label, option_text)
 where q.question_hash = '66b3145f631aca626d9373374991c82c'
on conflict (question_id, label) do nothing;

-- polity | judiciary | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''Article 126'' of the Constitution provides:',
    'Article 126 empowers the Supreme Court to make the laws and to lay down the procedure to be followed in the exercise of its jurisdiction.',
    'hard',
    'Standard Reference',
    null,
    '680c3f51179317726ff31ab7bc04c026'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '680c3f51179317726ff31ab7bc04c026'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'For the review of the judgments'),
            ('B', 'For the law and the procedure of the Supreme Court'),
            ('C', 'For the High Courts'),
            ('D', 'For the district courts')
           ) as v(label, option_text)
 where q.question_hash = '680c3f51179317726ff31ab7bc04c026'
on conflict (question_id, label) do nothing;

-- polity | judiciary | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''Article 132'' of the Constitution provides for:',
    'Article 132 vests the appellate jurisdiction in the Supreme Court in the criminal cases and Article 134 in the civil cases.',
    'medium',
    'Standard Reference',
    null,
    '4f528623ecc2d70fbc7bd66875b19bc9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '4f528623ecc2d70fbc7bd66875b19bc9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The original jurisdiction'),
            ('B', 'The writs'),
            ('C', 'The appellate jurisdiction of the Supreme Court in the criminal cases'),
            ('D', 'The advisory jurisdiction')
           ) as v(label, option_text)
 where q.question_hash = '4f528623ecc2d70fbc7bd66875b19bc9'
on conflict (question_id, label) do nothing;

-- polity | judiciary | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''Article 134'' of the Constitution provides for:',
    'Article 134 vests the appellate jurisdiction in the Supreme Court in the civil cases and Article 136 provides for the special leave to appeal.',
    'medium',
    'Standard Reference',
    null,
    'a9ebd78cdbbada132ed3851b0c5fc89e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a9ebd78cdbbada132ed3851b0c5fc89e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The criminal appeals'),
            ('B', 'The advisory jurisdiction'),
            ('C', 'The original jurisdiction'),
            ('D', 'The appellate jurisdiction of the Supreme Court in the civil cases')
           ) as v(label, option_text)
 where q.question_hash = 'a9ebd78cdbbada132ed3851b0c5fc89e'
on conflict (question_id, label) do nothing;

-- polity | judiciary | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''Article 139A'' was inserted to empower the Supreme Court to:',
    'Article 139A, inserted in 1987, empowers the Supreme Court to withdraw and transfer the cases involving the same substantial question of law that are pending before several High Courts.',
    'hard',
    'Standard Reference',
    null,
    'c18e252468a95e726d0fda6ecffe5b15'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c18e252468a95e726d0fda6ecffe5b15'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Transfer the services'),
            ('B', 'Disqualify the members'),
            ('C', 'Withdraw and transfer the cases involving the same substantial question of law'),
            ('D', 'Appoint the judges')
           ) as v(label, option_text)
 where q.question_hash = 'c18e252468a95e726d0fda6ecffe5b15'
on conflict (question_id, label) do nothing;

-- polity | judiciary | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''National Judicial Appointments Commission'' as created by the 101st Amendment consisted of:',
    'The NJAC was to consist of the CJI, the senior-most Supreme Court judge, the Union Law Minister, two eminent persons and the Chief Justice of the concerned High Court, but it was struck down in 2015.',
    'hard',
    'Standard Reference',
    null,
    '7f2462f0317569cc45dba53c8c92a502'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '7f2462f0317569cc45dba53c8c92a502'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The CJI, two senior Supreme Court judges, the Law Minister and two eminent persons'),
            ('B', 'The CJI and the President'),
            ('C', 'Only the Supreme Court judges'),
            ('D', 'The President and the Prime Minister')
           ) as v(label, option_text)
 where q.question_hash = '7f2462f0317569cc45dba53c8c92a502'
on conflict (question_id, label) do nothing;

-- polity | judiciary | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''National Green Tribunal'' is:',
    'The NGT is a statutory body under the Environment Protection Act, 1986, and its orders are treated as final and binding on the parties.',
    'medium',
    'Standard Reference',
    null,
    '7c1f11b7df78f612de1b5b13f2b116b0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '7c1f11b7df78f612de1b5b13f2b116b0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A judicial body'),
            ('B', 'A statutory body under the Environment Protection Act, 1986'),
            ('C', 'A constitutional body'),
            ('D', 'An executive body')
           ) as v(label, option_text)
 where q.question_hash = '7c1f11b7df78f612de1b5b13f2b116b0'
on conflict (question_id, label) do nothing;

-- polity | judiciary | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''CABI'' and the ''judicial review'':',
    'In the S.R. Bommai case of 1994 the Supreme Court held that the proclamation of the President''s Rule under Article 356 is subject to the judicial review.',
    'medium',
    'Standard Reference',
    null,
    'e88c49ffe4433a2dba3c7d73facd439c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e88c49ffe4433a2dba3c7d73facd439c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Presidential Rule is not subject to the review'),
            ('B', 'The review is only for the financial emergency'),
            ('C', 'There is no review of the emergency'),
            ('D', 'The Supreme Court in the S.R. Bommai case held that the President''s Rule is subject to the judicial review')
           ) as v(label, option_text)
 where q.question_hash = 'e88c49ffe4433a2dba3c7d73facd439c'
on conflict (question_id, label) do nothing;

-- polity | judiciary | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''Article 143'' and the ''opinion'' of the Supreme Court:',
    'The opinion of the Supreme Court on a reference under Article 143 is not binding but is of great value and the authority and the Parliament and the executive are bound to take it into consideration.',
    'medium',
    'Standard Reference',
    null,
    '6b0db8736026b5a8d5eb8ba6fdfa6190'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '6b0db8736026b5a8d5eb8ba6fdfa6190'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is binding only on the Central Government'),
            ('B', 'Is not binding on anybody'),
            ('C', 'Is not binding but is authoritative'),
            ('D', 'Is binding on all the courts')
           ) as v(label, option_text)
 where q.question_hash = '6b0db8736026b5a8d5eb8ba6fdfa6190'
on conflict (question_id, label) do nothing;

-- polity | parliament | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'The ''President and the Governor'' and the ''Article 157'':',
    'Article 157 fixes the qualifications of the President, and Article 158 provides for the oath of office and Article 62 for the term.',
    'hard',
    'Standard Reference',
    null,
    'f58500e07744c53f875916fb3f516ac9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f58500e07744c53f875916fb3f516ac9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Article 157 fixes the qualifications of the President'),
            ('B', 'Article 157 deals with the oath of the President'),
            ('C', 'Article 157 provides the term of the President'),
            ('D', 'Article 157 provides the privileges')
           ) as v(label, option_text)
 where q.question_hash = 'f58500e07744c53f875916fb3f516ac9'
on conflict (question_id, label) do nothing;

-- polity | parliament | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'The ''Article 158'' of the Constitution deals with:',
    'Article 158 provides the oath of office of the President and Article 159 the oath of the ministers.',
    'medium',
    'Standard Reference',
    null,
    'b3fb31551c7701efe6e84e6a2874b900'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b3fb31551c7701efe6e84e6a2874b900'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The election'),
            ('B', 'The oath of office of the President'),
            ('C', 'The qualifications'),
            ('D', 'The term')
           ) as v(label, option_text)
 where q.question_hash = 'b3fb31551c7701efe6e84e6a2874b900'
on conflict (question_id, label) do nothing;

-- polity | parliament | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'The ''Article 53'' of the Constitution provides:',
    'Article 53 states that the term of office of the President shall be five years from the date on which he enters into office.',
    'medium',
    'Standard Reference',
    null,
    '52d0e4458602ad1059ea6cb6597a7e1f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '52d0e4458602ad1059ea6cb6597a7e1f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The qualifications of the President'),
            ('B', 'The election of the President'),
            ('C', 'The oath of the President'),
            ('D', 'The term of the President is five years')
           ) as v(label, option_text)
 where q.question_hash = '52d0e4458602ad1059ea6cb6597a7e1f'
on conflict (question_id, label) do nothing;

-- polity | parliament | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'The ''Article 54'' of the Constitution provides:',
    'Article 54 provides for the election of the President by the electoral college and Article 55 and 56 for the manner of the election.',
    'medium',
    'Standard Reference',
    null,
    '2869be153eb5e359fb0f73699cb674d2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '2869be153eb5e359fb0f73699cb674d2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'For the election of the President'),
            ('B', 'For the qualifications'),
            ('C', 'For the oath'),
            ('D', 'For the term')
           ) as v(label, option_text)
 where q.question_hash = '2869be153eb5e359fb0f73699cb674d2'
on conflict (question_id, label) do nothing;

-- polity | parliament | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'The ''Article 59'' of the Constitution provides:',
    'Article 59 lays down the conditions for the office of the President, that he must be a citizen of India, have completed the age of 35 years and be qualified for the election as a member of the Lok Sabha.',
    'hard',
    'Standard Reference',
    null,
    '68e788076ae5b634ec0f610e669165d0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '68e788076ae5b634ec0f610e669165d0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'For the oath'),
            ('B', 'For the term'),
            ('C', 'For the conditions for the office of the President'),
            ('D', 'For the election')
           ) as v(label, option_text)
 where q.question_hash = '68e788076ae5b634ec0f610e669165d0'
on conflict (question_id, label) do nothing;

-- polity | parliament | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'The ''Article 55'' of the Constitution provides:',
    'Article 55 provides for the manner of the election of the President and the value of the vote of the members of the electoral college.',
    'hard',
    'Standard Reference',
    null,
    '9767d9dd061bcb132439969a96d48ed9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '9767d9dd061bcb132439969a96d48ed9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'For the term'),
            ('B', 'For the manner of the election of the President and the value of the vote of the electoral college'),
            ('C', 'For the qualifications'),
            ('D', 'For the oath')
           ) as v(label, option_text)
 where q.question_hash = '9767d9dd061bcb132439969a96d48ed9'
on conflict (question_id, label) do nothing;

-- polity | elections | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'elections'),
    'The ''Election Commission'' and the ''Article 316'':',
    'Article 316 provides for the tenure of the Chief Election Commissioner and the other election commissioners and Article 317 for their removal.',
    'hard',
    'Standard Reference',
    null,
    'b88813ca35b2feb676234613004568e9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b88813ca35b2feb676234613004568e9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Provides for their qualifications'),
            ('B', 'Provides for the tenure of the election commissioners'),
            ('C', 'Provides for their appointment'),
            ('D', 'Provides for their removal')
           ) as v(label, option_text)
 where q.question_hash = 'b88813ca35b2feb676234613004568e9'
on conflict (question_id, label) do nothing;

-- polity | elections | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'elections'),
    'The ''Delimitation Commission'' under Article 82 is chaired by:',
    'The Delimitation Commission is chaired by a retired Supreme Court judge, with two members of the Indian Civil Services, and its orders have the force of law.',
    'medium',
    'Standard Reference',
    null,
    '71efa5f95be518973a7130fc5f63e9df'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '71efa5f95be518973a7130fc5f63e9df'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The President'),
            ('B', 'A retired High Court judge'),
            ('C', 'A retired Supreme Court judge'),
            ('D', 'The Chief Election Commissioner')
           ) as v(label, option_text)
 where q.question_hash = '71efa5f95be518973a7130fc5f63e9df'
on conflict (question_id, label) do nothing;

-- polity | elections | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'elections'),
    'The ''Model Code of Conduct'' is enforced by:',
    'The Model Code of Conduct is enforced by the Election Commission and the state election commissions, and the violations are referred to them.',
    'easy',
    'Standard Reference',
    null,
    'b0faf837d059bbad45b3699fb050e105'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'b0faf837d059bbad45b3699fb050e105'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Election Commission and the state election commissions'),
            ('B', 'The Supreme Court'),
            ('C', 'The Parliament'),
            ('D', 'The CAG')
           ) as v(label, option_text)
 where q.question_hash = 'b0faf837d059bbad45b3699fb050e105'
on conflict (question_id, label) do nothing;

-- polity | elections | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'elections'),
    'The ''NOTA'' was introduced in the general elections of:',
    'The NOTA option was introduced in the 2013 general elections after the Supreme Court directive of 2010 in the PUCL case.',
    'medium',
    'Standard Reference',
    null,
    'ed260059ee608dbf42b4386e496c03b2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'ed260059ee608dbf42b4386e496c03b2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2010'),
            ('B', '2009'),
            ('C', '2014'),
            ('D', '2013')
           ) as v(label, option_text)
 where q.question_hash = 'ed260059ee608dbf42b4386e496c03b2'
on conflict (question_id, label) do nothing;

-- polity | elections | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'elections'),
    'The ''electoral roll'' is prepared by:',
    'The District Collector prepares the electoral roll and adds the names of the persons in the service of India and of those who have moved to the place, and the statutory list is published by the CEC.',
    'medium',
    'Standard Reference',
    null,
    '0c4ca93d8b6fae1911996f4099a433ab'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '0c4ca93d8b6fae1911996f4099a433ab'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Chief Election Commissioner'),
            ('B', 'The Returning Officer of the constituency'),
            ('C', 'The state government'),
            ('D', 'The District Collector')
           ) as v(label, option_text)
 where q.question_hash = '0c4ca93d8b6fae1911996f4099a433ab'
on conflict (question_id, label) do nothing;

-- polity | local-government | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'The ''Article 243G'' lists:',
    'Article 243G lists the powers and the responsibilities of the Panchayats, including the power to impose the taxes and the responsibility for the primary health and the education.',
    'medium',
    'Standard Reference',
    null,
    'a6957bd01556c10937835fc3434f8565'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a6957bd01556c10937835fc3434f8565'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The State Election Commission'),
            ('B', 'The powers and the responsibilities of the Panchayats'),
            ('C', 'The composition of the Panchayats'),
            ('D', 'The Gram Sabha')
           ) as v(label, option_text)
 where q.question_hash = 'a6957bd01556c10937835fc3434f8565'
on conflict (question_id, label) do nothing;

-- polity | local-government | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'The ''Article 243H'' lists:',
    'Article 243H lists the powers and the responsibilities of the municipalities, which mirror those of the Panchayats under Article 243G.',
    'medium',
    'Standard Reference',
    null,
    'dfc8bf018b9633141ebb081ec477dfa6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'dfc8bf018b9633141ebb081ec477dfa6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Gram Sabha'),
            ('B', 'The Ward Committees'),
            ('C', 'The powers and the responsibilities of the municipalities'),
            ('D', 'The composition of the municipalities')
           ) as v(label, option_text)
 where q.question_hash = 'dfc8bf018b9633141ebb081ec477dfa6'
on conflict (question_id, label) do nothing;

-- polity | local-government | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'The ''Article 243D'' provides for:',
    'Article 243D provides for the reservation of the seats for the Scheduled Castes, the Scheduled Tribes and the women in the Panchayats and in the offices of the Panch, the Sarpanch and the Pradhan.',
    'medium',
    'Standard Reference',
    null,
    '98bd411565b819add3f1b65bdb480b6f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '98bd411565b819add3f1b65bdb480b6f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The reservation of the seats for the Scheduled Castes, the Scheduled Tribes and the women in the Panchayats'),
            ('B', 'The composition of the Panchayats'),
            ('C', 'The Gram Sabha'),
            ('D', 'The District Planning Committee')
           ) as v(label, option_text)
 where q.question_hash = '98bd411565b819add3f1b65bdb480b6f'
on conflict (question_id, label) do nothing;

-- polity | local-government | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'The ''Article 243E'' provides for:',
    'Article 243E provides that the Panchayats and the municipalities shall continue for five years from the date of the first meeting and shall be dissolved if a fresh election is not held before the expiry of that period.',
    'easy',
    'Standard Reference',
    null,
    '514d29c8ee48d1cf044c0a85f7e64eac'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '514d29c8ee48d1cf044c0a85f7e64eac'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Gram Sabha'),
            ('B', 'The reservation'),
            ('C', 'The duration of the Panchayats and the municipalities of five years'),
            ('D', 'The composition')
           ) as v(label, option_text)
 where q.question_hash = '514d29c8ee48d1cf044c0a85f7e64eac'
on conflict (question_id, label) do nothing;

-- polity | local-government | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'The ''Article 243O'' provides for:',
    'Article 243O provides for the Gram Sabha, consisting of the persons registered in the electoral rolls of the village, and it has the powers to approve the budget and the developmental plans of the Panchayat.',
    'medium',
    'Standard Reference',
    null,
    'ea00c1e28d6839cc187fb54cbed32e08'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'ea00c1e28d6839cc187fb54cbed32e08'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The District Planning Committee'),
            ('B', 'The State Election Commission'),
            ('C', 'The Municipalities'),
            ('D', 'The Gram Sabha')
           ) as v(label, option_text)
 where q.question_hash = 'ea00c1e28d6839cc187fb54cbed32e08'
on conflict (question_id, label) do nothing;

-- polity | local-government | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'The ''Article 243ZD'' provides for:',
    'Article 243ZD provides for a District Planning Committee in every district to consolidate the plans of the Panchayats and the municipalities and forward them to the state government.',
    'hard',
    'Standard Reference',
    null,
    '1545b9bacc58dedadccbe05e9e175949'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '1545b9bacc58dedadccbe05e9e175949'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The District Planning Committee'),
            ('B', 'The Gram Sabha'),
            ('C', 'The State Election Commission'),
            ('D', 'The Zila Parishad')
           ) as v(label, option_text)
 where q.question_hash = '1545b9bacc58dedadccbe05e9e175949'
on conflict (question_id, label) do nothing;

-- polity | local-government | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'The 73rd Amendment was:',
    'The 73rd Amendment deals with the rural local bodies and the 74th with the urban local bodies, and both gave them a constitutional status with a five-year term.',
    'easy',
    'Standard Reference',
    null,
    '674db8cc1b5cf899315b60d07ad0edcf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '674db8cc1b5cf899315b60d07ad0edcf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'for the municipalities'),
            ('B', 'for the rural bodies and the 74th for the urban'),
            ('C', 'for the urban areas'),
            ('D', 'for the rural areas')
           ) as v(label, option_text)
 where q.question_hash = '674db8cc1b5cf899315b60d07ad0edcf'
on conflict (question_id, label) do nothing;

-- polity | local-government | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'The ''Gram Sabha'' may:',
    'The Gram Sabha examines the annual plan and the prepared budget of the Panchayat and may make the recommendations on the allocation of the funds for the welfare and the developmental activities.',
    'hard',
    'Standard Reference',
    null,
    '1418519181b31bf2d8a1f2191acd37e6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '1418519181b31bf2d8a1f2191acd37e6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Examine the annual plan and the budget of the Panchayat'),
            ('B', 'Appoint the Gram Panchayat members'),
            ('C', 'Impose the taxes'),
            ('D', 'Elect the Sarpanch directly')
           ) as v(label, option_text)
 where q.question_hash = '1418519181b31bf2d8a1f2191acd37e6'
on conflict (question_id, label) do nothing;

-- polity | local-government | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'Which of the following is correct in the case of the Panchayati Raj?',
    'The three tiers of the Panchayati Raj are the Gram Panchayat at the village level, the Panchayat Samiti at the block level and the Zila Parishad at the district level.',
    'easy',
    'Standard Reference',
    null,
    '780b9a8817244c64c52cdf70a6796c02'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '780b9a8817244c64c52cdf70a6796c02'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Ward Committee, the Municipal Corporation and the Zila Parishad'),
            ('B', 'The Gram Sabha, the Nyay Panchayat and the Kalyan Panchayat'),
            ('C', 'The Mandal, the Mandal Parishad and the Zila Praja Parishad'),
            ('D', 'The Gram Panchayat, the Panchayat Samiti and the Zila Parishad')
           ) as v(label, option_text)
 where q.question_hash = '780b9a8817244c64c52cdf70a6796c02'
on conflict (question_id, label) do nothing;

-- polity | local-government | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'The ''Panchayats'' are financed by:',
    'The State Finance Commission reviews the financial position of the Panchayats and recommends the distribution of the taxes and the grants in aid between the state and the local bodies.',
    'medium',
    'Standard Reference',
    null,
    'd87c07d93e63934d593a84eb300d62b7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd87c07d93e63934d593a84eb300d62b7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Prime Minister''s funds'),
            ('B', 'The devolution of the taxes and the grants in aid recommended by the State Finance Commission'),
            ('C', 'The central grants only'),
            ('D', 'The donations of the villagers')
           ) as v(label, option_text)
 where q.question_hash = 'd87c07d93e63934d593a84eb300d62b7'
on conflict (question_id, label) do nothing;

-- polity | local-government | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'The ''Article 280A'' provides a special provision for:',
    'Article 280A provides a special provision for the management of certain irrigation projects, including the Rashtriya Krishi Vikas Yojana, enabling the state legislature to make the provisions.',
    'hard',
    'Standard Reference',
    null,
    'fe73bf33368941d7ddd8c4da4029d058'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'fe73bf33368941d7ddd8c4da4029d058'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Panchayats'),
            ('B', 'The tribal areas'),
            ('C', 'Certain irrigation projects including the Rashtriya Krishi Vikas Yojana'),
            ('D', 'The municipal corporations')
           ) as v(label, option_text)
 where q.question_hash = 'fe73bf33368941d7ddd8c4da4029d058'
on conflict (question_id, label) do nothing;

-- polity | local-government | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'The ''Ward Committee'' consists of:',
    'A Ward Committee consists of one or more elected members of the municipality and the elected members of the wards falling within the jurisdiction of the committee.',
    'hard',
    'Standard Reference',
    null,
    'c6ecc75fe510f4091043b7936c5b0a2f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'c6ecc75fe510f4091043b7936c5b0a2f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The elected members of the municipality and of the wards within its jurisdiction'),
            ('B', 'The nominees of the state government'),
            ('C', 'The officials of the district administration'),
            ('D', 'Only the councillors of the ward')
           ) as v(label, option_text)
 where q.question_hash = 'c6ecc75fe510f4091043b7936c5b0a2f'
on conflict (question_id, label) do nothing;

-- polity | local-government | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'The ''Metropolitan area'' in the municipal law:',
    'A metropolitan area is defined as one with a population of ten lakh or more, and the transition from a municipal corporation is required within the prescribed period.',
    'medium',
    'Standard Reference',
    null,
    'da274725e1f2678d78b75f23becb8954'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'da274725e1f2678d78b75f23becb8954'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the area of a metropolitan corporation'),
            ('B', 'Is any city with a corporation'),
            ('C', 'Is one with a population of ten lakh or more'),
            ('D', 'Is one with a population of one lakh or more')
           ) as v(label, option_text)
 where q.question_hash = 'da274725e1f2678d78b75f23becb8954'
on conflict (question_id, label) do nothing;

-- polity | local-government | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'The ''Article 280'' and the ''recommendation'' on the grants in aid:',
    'Article 280 requires the Finance Commission to recommend the grants in aid to the states and the local bodies from the Consolidated Fund and the principles governing their distribution.',
    'medium',
    'Standard Reference',
    null,
    '49bfe3ad518a505a72d8f071eafe2346'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '49bfe3ad518a505a72d8f071eafe2346'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Commission does not recommend the grants'),
            ('B', 'The Commission also recommends the grants in aid to the states and the local bodies'),
            ('C', 'The Commission recommends the taxes only'),
            ('D', 'The Commission recommends the loan assistance only')
           ) as v(label, option_text)
 where q.question_hash = '49bfe3ad518a505a72d8f071eafe2346'
on conflict (question_id, label) do nothing;

-- polity | international-relations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'international-relations'),
    'The ''Article 253'' of the Constitution:',
    'Article 253 empowers Parliament to make laws to carry out the obligations of India under the international treaties and the agreements, and Article 262 deals with the water disputes.',
    'medium',
    'Standard Reference',
    null,
    'c105f3b51fd037c108fd9b38f27b08c7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'c105f3b51fd037c108fd9b38f27b08c7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Deals with the distribution of the legislative subjects'),
            ('B', 'Deals with the emergency'),
            ('C', 'Deals with the local government'),
            ('D', 'Empowers Parliament to legislate to give effect to the international treaties')
           ) as v(label, option_text)
 where q.question_hash = 'c105f3b51fd037c108fd9b38f27b08c7'
on conflict (question_id, label) do nothing;

-- polity | international-relations | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'international-relations'),
    'The ''Article 261'' of the Constitution:',
    'Article 261 provides for the agreements between the states, the alteration of their areas, the apportionment of their assets and their liabilities and the jurisdiction in the public interest.',
    'hard',
    'Standard Reference',
    null,
    'd250c9a5111c41522f8d747173bb8235'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'd250c9a5111c41522f8d747173bb8235'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Deals with the international treaties'),
            ('B', 'Deals with the residuary powers'),
            ('C', 'Deals with the emergency'),
            ('D', 'Provides for the agreements between the states and their jurisdiction in the public interest')
           ) as v(label, option_text)
 where q.question_hash = 'd250c9a5111c41522f8d747173bb8235'
on conflict (question_id, label) do nothing;

-- polity | international-relations | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'international-relations'),
    'The ''Article 293'' of the Constitution:',
    'Article 293 empowers the Parliament to control the agreements with the foreign states and the other international agreements of the character of the treaties and the agreements.',
    'hard',
    'Standard Reference',
    null,
    '0faf1bc7b38de4b113ec10098014f6cd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '0faf1bc7b38de4b113ec10098014f6cd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Deals with the agreements with the foreign states'),
            ('B', 'Deals with the international treaties'),
            ('C', 'Deals with the war'),
            ('D', 'Deals with the emergency')
           ) as v(label, option_text)
 where q.question_hash = '0faf1bc7b38de4b113ec10098014f6cd'
on conflict (question_id, label) do nothing;

-- polity | international-relations | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'international-relations'),
    'The ''Article 364'' of the Constitution provides for:',
    'Article 364 provides that the freedom of trade, commerce and intercourse throughout the territory of India shall be subject to the restrictions in the public interest.',
    'hard',
    'Standard Reference',
    null,
    'a8b70320a97bdac1428f6a33011c6f67'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'a8b70320a97bdac1428f6a33011c6f67'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The ordinance'),
            ('B', 'The taxation'),
            ('C', 'The freedom of trade, commerce and intercourse throughout the territory of India'),
            ('D', 'The emergency')
           ) as v(label, option_text)
 where q.question_hash = 'a8b70320a97bdac1428f6a33011c6f67'
on conflict (question_id, label) do nothing;

-- polity | international-relations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'international-relations'),
    'The ''Non-Aligned Movement'' and the ''Article 40''? The NAM was founded with the:',
    'The Non-Aligned Movement took shape at the Bandung Conference of 1955 and was formally initiated at the first summit of the heads of state at Belgrade in September 1961.',
    'medium',
    'Standard Reference',
    null,
    '310d09085d04a097b0d839984fb4bf41'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '310d09085d04a097b0d839984fb4bf41'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Colombo Conference of 1970'),
            ('B', 'The Bandung Conference of 1955 and the Belgrade Conference of 1961'),
            ('C', 'The first summit in 1961 only'),
            ('D', 'The Bandung Conference of 1945')
           ) as v(label, option_text)
 where q.question_hash = '310d09085d04a097b0d839984fb4bf41'
on conflict (question_id, label) do nothing;

-- polity | international-relations | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'international-relations'),
    'The ''SAARC'' and the ''Article'' of the Constitution and the ''Charter'':',
    'The South Asian Association for Regional Cooperation was founded with the charter signed in Dhaka on 8 December 1985 by the seven South Asian states.',
    'easy',
    'Standard Reference',
    null,
    'e01a19c42fd16d594edf6858c974ba49'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e01a19c42fd16d594edf6858c974ba49'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It was signed in Kathmandu in 1985'),
            ('B', 'It was signed in Colombo in 1975'),
            ('C', 'It was signed in Geneva in 1985'),
            ('D', 'The SAARC charter was signed in Dhaka in 1985')
           ) as v(label, option_text)
 where q.question_hash = 'e01a19c42fd16d594edf6858c974ba49'
on conflict (question_id, label) do nothing;

-- polity | international-relations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'international-relations'),
    'The ''India'' and the ''non-alignment'' and the ''Panchsheel'':',
    'The Panchsheel was first incorporated in the 1954 Agreement on Trade and Intercourse between the Tibet Region of China and India.',
    'medium',
    'Standard Reference',
    null,
    'bac4715ac6881a642c8d244682cd60cd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'bac4715ac6881a642c8d244682cd60cd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It was signed in 1954 with Pakistan'),
            ('B', 'The Panchsheel was incorporated in the Agreement on Trade and Intercourse between Tibet and India in 1954'),
            ('C', 'It was signed in 1950 with China'),
            ('D', 'It was signed with the Soviet Union')
           ) as v(label, option_text)
 where q.question_hash = 'bac4715ac6881a642c8d244682cd60cd'
on conflict (question_id, label) do nothing;

-- polity | international-relations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'international-relations'),
    'The ''Non-Proliferation Treaty'' and the ''India'':',
    'India has never signed the NPT and it maintains a self-imposed moratorium on the nuclear tests, and it declared itself a nuclear capable state in 1998.',
    'medium',
    'Standard Reference',
    null,
    '19494d09f9a4f713d0c10d3a6bb426e9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '19494d09f9a4f713d0c10d3a6bb426e9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'India has not signed the NPT and has declared itself a nuclear capable state'),
            ('B', 'India signed the NPT in 1968'),
            ('C', 'India ratified it in 1998'),
            ('D', 'India is a non-nuclear weapon state under the treaty')
           ) as v(label, option_text)
 where q.question_hash = '19494d09f9a4f713d0c10d3a6bb426e9'
on conflict (question_id, label) do nothing;

-- polity | international-relations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'international-relations'),
    'Consider the following statements. Which of them is correct with regard to the Gandhi?',
    'Nehru''s policy of non-alignment was described as the GuLook by K. Natwar Singh, and it was articulated in the context of the Cold War and the Asian Relations Conference of 1947.',
    'medium',
    'Standard Reference',
    null,
    '220271ad557fa745da409c9088552d90'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '220271ad557fa745da409c9088552d90'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It was articulated by K. Natwar Singh'),
            ('B', 'It was articulated by Zakir Husain'),
            ('C', 'The doctrine was articulated by Nehru and it was described as the GuLook by the journalist K. Natwar Singh'),
            ('D', 'It was articulated by Gandhi')
           ) as v(label, option_text)
 where q.question_hash = '220271ad557fa745da409c9088552d90'
on conflict (question_id, label) do nothing;

-- polity | international-relations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'international-relations'),
    'The ''Bandung Conference'' of 1955 was significant because:',
    'The Bandung or the Afro-Asian Conference of April 1955 was the first large meeting of the Asian and the African countries and it adopted the ten principles of the Bandung, including the opposition to the colonialism.',
    'medium',
    'Standard Reference',
    null,
    'd2caf5b3b8cff91e12dbfcb7522da2b3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd2caf5b3b8cff91e12dbfcb7522da2b3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It was a trade conference of the Commonwealth'),
            ('B', 'It was the first large meeting of the Asian and the African countries and it adopted the ten principles of the Bandung'),
            ('C', 'It was a military alliance'),
            ('D', 'It was the founding of the Non-Aligned Movement')
           ) as v(label, option_text)
 where q.question_hash = 'd2caf5b3b8cff91e12dbfcb7522da2b3'
on conflict (question_id, label) do nothing;

-- polity | international-relations | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'international-relations'),
    'It was founded in 1927 and is:',
    'The Indian Council of World Affairs was founded in 1927 under the leadership of Lala Lajpat Rai and V.O. Chidambaram and it is the oldest think tank of India.',
    'hard',
    'Standard Reference',
    null,
    '52991fac79c5c93475067974f9f1ae22'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '52991fac79c5c93475067974f9f1ae22'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the oldest think tank of India'),
            ('B', 'founded in 1947'),
            ('C', 'a part of the UN'),
            ('D', 'the foreign policy department of the government')
           ) as v(label, option_text)
 where q.question_hash = '52991fac79c5c93475067974f9f1ae22'
on conflict (question_id, label) do nothing;

-- polity | international-relations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'international-relations'),
    'The ''G4'' nations for the UNSC reform are:',
    'The G4 group, comprising India, Brazil, Germany and Japan, campaigns for a permanent seat and for the reform of the Security Council.',
    'medium',
    'Standard Reference',
    null,
    '3f6f54d0fee4220dc8870c3f66e4cad3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '3f6f54d0fee4220dc8870c3f66e4cad3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'India, Japan, Germany and the UK'),
            ('B', 'India, Brazil, South Africa and Japan'),
            ('C', 'India, Brazil, Germany and Japan'),
            ('D', 'India, Brazil, Germany and China')
           ) as v(label, option_text)
 where q.question_hash = '3f6f54d0fee4220dc8870c3f66e4cad3'
on conflict (question_id, label) do nothing;

-- polity | international-relations | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'international-relations'),
    'The ''IBSA'' grouping consists of:',
    'The India, Brazil and South Africa Dialogue Forum was established in 1997 as a platform for the trilateral cooperation.',
    'easy',
    'Standard Reference',
    null,
    '30761c0e5ca2f2fbc6aca20227f889cf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '30761c0e5ca2f2fbc6aca20227f889cf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'India, Brazil, South Africa and China'),
            ('B', 'India, South Africa and Nigeria'),
            ('C', 'Brazil, South Africa and Russia'),
            ('D', 'India, Brazil and South Africa')
           ) as v(label, option_text)
 where q.question_hash = '30761c0e5ca2f2fbc6aca20227f889cf'
on conflict (question_id, label) do nothing;

commit;
