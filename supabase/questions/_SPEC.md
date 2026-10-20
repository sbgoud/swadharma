# Question data pack — format spec

Every subject pack is a JSON array of question objects. Files live in
`supabase/questions/<subject_slug>_NN.json` (NN = 01..04).

```json
[
  {
    "q": "Which of the following statements about X is/are correct?",
    "options": ["first option", "second option", "third option", "fourth option"],
    "answer": 2,
    "explanation": "One or two sentences explaining why option index 2 is correct and why the obvious distractors are wrong.",
    "difficulty": "medium",
    "category": "category-slug-from-the-list-below",
    "source": "UPSC Prelims 2019",
    "year": 2019
  }
]
```

Field rules (the validator enforces all of them):

| field | rule |
|---|---|
| `q` | Question stem only. No "Q1:", no trailing "?"-only text. 20–300 characters. Unique across the whole pack. |
| `options` | Exactly 4 strings, each 1–200 characters, all mutually distinct (case-insensitive), none equal to the stem. |
| `answer` | 0-based index of the correct option, integer 0–3. |
| `explanation` | 30–450 characters, mentions the correct fact, no filler ("This is correct", "Option B"). |
| `difficulty` | one of `easy`, `medium`, `hard`. Target mix ≈ 35% easy / 45% medium / 20% hard. |
| `category` | exactly one slug from the subject's category list below. Spread across ALL listed categories (no category may hold more than ~15% of the pack). |
| `source` | short label, e.g. `UPSC Prelims 2019`, `NCERT Class XI`, `NCERT Class XII`, `NCERT Geography`, `Economic Survey 2020`, `PIB 2019`, `Standard Reference`, `Static GK`. Cite a UPSC year ONLY when you are genuinely confident the question appeared in that year's prelims; otherwise use a generic source. |
| `year` | integer year (2010–2024) when the source has a year, otherwise `null`. |

Quality rules (a reviewer will check these):

1. **Factually correct.** The single correct option must be unambiguously right, and all three distractors unambiguously wrong. Never use "All of the above" / "None of the above" / "Both A and B" as the *correct* answer; they may appear as distractors.
2. **Real UPSC-prelims style.** Factual, objective, no opinion/ideology, no trivia about celebrities' personal lives, no "guess the personality" style filler.
3. **No near-duplicates.** Two questions in the same pack must not test the same fact in different words. Vary the sub-topic across 1000 questions.
4. **No templated junk.** No fill-in-the-blank auto-generation, no "Which of the following is true?" with vague options, no placeholder text like "Option A text", no lorem ipsum, no repeated stems with shuffled options.
5. **Balanced answer key.** Across a pack, `answer` should be roughly 25% each of 0, 1, 2, 3 (validator flags >32% or <18% for any index).
6. **No repeats of the same option set** across questions in a pack.
7. Write clean prose: no HTML, no markdown, no stray quotes, ASCII-safe except for names/diacritics.

## Category catalog

### history
ancient-india, maurya-gupta-classical, medieval-south, medieval-north, delhi-sultanate, mughal-empire, bhakti-sufi-movement, maratha-empire, british-raj, freedom-struggle, post-independence, world-history

### geography
physical-geography, indian-physical-features, rivers-and-lakes, climate-and-weather, world-geography, soil-and-vegetation, oceanography, resources-and-minerals, agriculture-and-cropping, human-geography, map-locations, disaster-management

### polity
constitution-making, preamble-and-union, fundamental-rights, directive-principles, fundamental-duties, union-and-states, parliament, judiciary, elections, governance-and-commissions, constitutional-amendments, local-government, international-relations

### economy
basic-concepts, national-income, money-and-banking, inflation, fiscal-policy, monetary-policy, rbi-and-financial-regulation, agriculture, industry-and-manufacturing, external-sector, poverty-and-employment, economic-survey-and-budget, infrastructure-and-services

### environment
ecology-basics, biodiversity, forests-and-wildlife, protected-areas, climate-change, pollution, waste-management, ocean-and-marine, renewable-energy, environment-governance, international-conventions, disasters-and-management

### science_tech
physics, chemistry, biology, space, nuclear-technology, defence-technology, information-technology, biotechnology, materials-science, science-policy, measurements-and-units, health-technology, agriculture-technology

### art_culture
ancient-art, medieval-art, modern-art, architecture, literature, music, dance, theatre-and-cinema, painting, handicrafts-and-folk, unesco-and-heritage, festivals-and-religion, books-and-authors

### current_affairs
economy-current, polity-current, environment-current, science-current, international-relations-current, schemes-and-policies, indices-and-reports, awards-and-honours, sports, books-and-authors-current, geography-current, static-current
