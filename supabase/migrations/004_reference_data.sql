-- =============================================================================
-- 004_reference_data.sql — subjects and categories
--
-- Idempotent upserts. The seed question files reference subjects and
-- categories by slug, so this file must be applied before supabase/seed/*.sql
-- =============================================================================

begin;

-- -----------------------------------------------------------------------------
-- subjects
-- -----------------------------------------------------------------------------
insert into public.subjects (slug, name, description, position) values
    ('history',        'History',            'Indian & world history from the Indus Valley to the present.',        10),
    ('geography',      'Geography',          'Physical, human and economic geography with map based questions.',    20),
    ('polity',         'Polity',             'Constitution of India, governance, institutions and foreign relations.', 30),
    ('economy',        'Economy',            'Indian economy, monetary and fiscal policy, sectors and trade.',       40),
    ('environment',    'Environment',        'Ecology, biodiversity, pollution, climate change and governance.',      50),
    ('science_tech',   'Science & Technology','Frontier science, defence, space, biotechnology and emerging tech.',   60),
    ('art_culture',    'Art & Culture',      'Indian art, architecture, literature, music, dance and heritage.',      70),
    ('current_affairs','Current Affairs',    'Static current affairs, schemes, indices, awards and international events.', 80)
on conflict (slug) do update
    set name = excluded.name,
        description = excluded.description,
        position = excluded.position;

-- -----------------------------------------------------------------------------
-- categories
-- -----------------------------------------------------------------------------
insert into public.categories (subject_id, slug, name, position)
select s.id, c.slug, c.name, c.position
  from (values
    -- history
    ('history', 'ancient-india',        'Ancient India',            10),
    ('history', 'maurya-gupta-classical','Maurya, Gupta & Post-Gupta',20),
    ('history', 'medieval-south',       'Medieval South India',     30),
    ('history', 'medieval-north',       'Medieval North India',     40),
    ('history', 'delhi-sultanate',      'Delhi Sultanate',          50),
    ('history', 'mughal-empire',        'Mughal Empire',            60),
    ('history', 'bhakti-sufi-movement', 'Bhakti & Sufi Movements',  70),
    ('history', 'maratha-empire',       'Maratha Empire',           80),
    ('history', 'british-raj',          'British Rule',             90),
    ('history', 'freedom-struggle',     'Freedom Struggle',        100),
    ('history', 'post-independence',   'Post-Independence India', 110),
    ('history', 'world-history',        'World History',           120),
    -- geography
    ('geography', 'physical-geography',     'Physical Geography',        10),
    ('geography', 'indian-physical-features','Indian Physical Features', 20),
    ('geography', 'rivers-and-lakes',       'Rivers & Lakes',            30),
    ('geography', 'climate-and-weather',    'Climate & Weather',         40),
    ('geography', 'world-geography',        'World Geography',           50),
    ('geography', 'soil-and-vegetation',   'Soil & Vegetation',         60),
    ('geography', 'oceanography',           'Oceanography',              70),
    ('geography', 'resources-and-minerals','Resources & Minerals',      80),
    ('geography', 'agriculture-and-cropping','Agriculture & Cropping',   90),
    ('geography', 'human-geography',        'Human Geography',          100),
    ('geography', 'map-locations',          'Map Based Locations',     110),
    ('geography', 'disaster-management',    'Disaster Management',     120),
    -- polity
    ('polity', 'constitution-making',      'Making of the Constitution', 10),
    ('polity', 'preamble-and-union',       'Preamble, Union & Citizenship', 20),
    ('polity', 'fundamental-rights',        'Fundamental Rights',        30),
    ('polity', 'directive-principles',      'Directive Principles',      40),
    ('polity', 'fundamental-duties',        'Fundamental Duties',        50),
    ('polity', 'union-and-states',          'Union, States & Centre-State Relations', 60),
    ('polity', 'parliament',                'Parliament',                70),
    ('polity', 'judiciary',                 'Judiciary',                 80),
    ('polity', 'elections',                 'Elections & Election Commission', 90),
    ('polity', 'governance-and-commissions','Governance & Commissions', 100),
    ('polity', 'constitutional-amendments', 'Constitutional Amendments',110),
    ('polity', 'local-government',          'Local Government',         120),
    ('polity', 'international-relations',   'International Relations',   130),
    -- economy
    ('economy', 'basic-concepts',            'Basic Concepts',                10),
    ('economy', 'national-income',           'National Income',               20),
    ('economy', 'money-and-banking',         'Money & Banking',               30),
    ('economy', 'inflation',                 'Inflation',                     40),
    ('economy', 'fiscal-policy',             'Fiscal Policy',                 50),
    ('economy', 'monetary-policy',           'Monetary Policy',               60),
    ('economy', 'rbi-and-financial-regulation','RBI & Financial Regulation', 70),
    ('economy', 'agriculture',               'Agriculture',                   80),
    ('economy', 'industry-and-manufacturing','Industry & Manufacturing',      90),
    ('economy', 'external-sector',           'External Sector',              100),
    ('economy', 'poverty-and-employment',   'Poverty & Employment',         110),
    ('economy', 'economic-survey-and-budget','Economic Survey & Budget',     120),
    ('economy', 'infrastructure-and-services','Infrastructure & Services',   130),
    -- environment
    ('environment', 'ecology-basics',           'Ecology Basics',           10),
    ('environment', 'biodiversity',              'Biodiversity',             20),
    ('environment', 'forests-and-wildlife',      'Forests & Wildlife',       30),
    ('environment', 'protected-areas',           'Protected Areas',          40),
    ('environment', 'climate-change',            'Climate Change',           50),
    ('environment', 'pollution',                 'Pollution',                60),
    ('environment', 'waste-management',          'Waste Management',         70),
    ('environment', 'ocean-and-marine',          'Ocean & Marine',           80),
    ('environment', 'renewable-energy',          'Renewable Energy',         90),
    ('environment', 'environment-governance',    'Environment Governance',  100),
    ('environment', 'international-conventions', 'International Conventions',110),
    ('environment', 'disasters-and-management',  'Disasters & Management',  120),
    -- science & technology
    ('science_tech', 'physics',                 'Physics',                 10),
    ('science_tech', 'chemistry',               'Chemistry',               20),
    ('science_tech', 'biology',                 'Biology',                 30),
    ('science_tech', 'space',                   'Space',                   40),
    ('science_tech', 'nuclear-technology',      'Nuclear Technology',      50),
    ('science_tech', 'defence-technology',      'Defence Technology',      60),
    ('science_tech', 'information-technology',  'Information Technology',  70),
    ('science_tech', 'biotechnology',           'Biotechnology',           80),
    ('science_tech', 'materials-science',       'Materials Science',       90),
    ('science_tech', 'science-policy',          'Science Policy',         100),
    ('science_tech', 'measurements-and-units',  'Measurements & Units',   110),
    ('science_tech', 'health-technology',       'Health Technology',      120),
    ('science_tech', 'agriculture-technology',  'Agriculture Technology',  130),
    -- art & culture
    ('art_culture', 'ancient-art',        'Ancient Art',            10),
    ('art_culture', 'medieval-art',       'Medieval Art',           20),
    ('art_culture', 'modern-art',         'Modern Art',             30),
    ('art_culture', 'architecture',        'Architecture',            40),
    ('art_culture', 'literature',         'Literature',              50),
    ('art_culture', 'music',              'Music',                  60),
    ('art_culture', 'dance',              'Dance',                  70),
    ('art_culture', 'theatre-and-cinema', 'Theatre & Cinema',        80),
    ('art_culture', 'painting',           'Painting',               90),
    ('art_culture', 'handicrafts-and-folk','Handicrafts & Folk',    100),
    ('art_culture', 'unesco-and-heritage', 'UNESCO & Heritage',      110),
    ('art_culture', 'festivals-and-religion','Festivals & Religion', 120),
    ('art_culture', 'books-and-authors',  'Books & Authors',        130),
    -- current affairs
    ('current_affairs', 'economy-current',                'Economy',                10),
    ('current_affairs', 'polity-current',                 'Polity',                 20),
    ('current_affairs', 'environment-current',             'Environment',             30),
    ('current_affairs', 'science-current',                 'Science',                 40),
    ('current_affairs', 'international-relations-current','International Relations', 50),
    ('current_affairs', 'schemes-and-policies',            'Schemes & Policies',      60),
    ('current_affairs', 'indices-and-reports',            'Indices & Reports',       70),
    ('current_affairs', 'awards-and-honours',             'Awards & Honours',        80),
    ('current_affairs', 'sports',                         'Sports',                  90),
    ('current_affairs', 'books-and-authors-current',      'Books & Authors',        100),
    ('current_affairs', 'geography-current',              'Geography',              110),
    ('current_affairs', 'static-current',                 'Static Current Affairs', 120)
  ) as c(subject_slug, slug, name, position)
  join public.subjects s on s.slug = c.subject_slug
 where true
on conflict (subject_id, slug) do update
    set name = excluded.name,
        position = excluded.position;

commit;
