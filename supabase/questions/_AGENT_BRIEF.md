# Agent brief — writing one question pack file

You are writing ONE file of UPSC Prelims-style multiple choice questions as JSON
for a free UPSC test-series website. You are NOT doing research or coding: you
are producing high-quality question content.

## Output format

A JSON array of question objects, exactly as described in `_SPEC.md`:

```json
{
  "q": "Question stem?",
  "options": ["first", "second", "third", "fourth"],
  "answer": 2,
  "explanation": "One or two sentences: why option index 2 is right and why the obvious distractors are wrong.",
  "difficulty": "easy",
  "category": "category-slug",
  "source": "UPSC Prelims 2019",
  "year": 2019
}
```

* `options` — exactly 4 distinct strings (labels A/B/C/D are added later from the
  index of `answer`, never write the letter inside the option text).
* `answer` — 0-based index (0..3) of the correct option.
* `difficulty` — `easy` | `medium` | `hard`.
* `category` — a slug from the list given in your task prompt.
* `source` — short label. Cite a UPSC year ONLY when you are genuinely confident
  the question appeared in that year's prelims; otherwise use `NCERT Class XI`,
  `NCERT Class XII`, `NCERT Geography`, `Standard Reference`, `PIB`, etc.
* `year` — integer year when the source has one, otherwise `null`.

## Hard rules

1. Factually correct. The correct option must be unambiguously right and all
   three distractors unambiguously wrong. Check names, dates, numbers, article
   numbers, spellings before writing.
2. No "All of the above" / "None of the above" / "Both A and B" as the correct
   answer. They may appear as distractors.
3. No near-duplicates: within your file every question tests a different fact.
   Avoid the same stem shape repeated with swapped options.
4. No placeholder or filler text ("Option A text", "TODO", "lorem ipsum").
5. Balanced answer key: roughly 25% each of index 0, 1, 2, 3.
6. Difficulty mix: about 35% easy, 45% medium, 20% hard.
7. Spread the categories: no single category may hold more than about 15% of
   the file unless the task prompt says otherwise.
8. Explanations must be 1-2 real sentences explaining the correct fact.
9. Clean plain text: no HTML, no markdown, no stray quote characters. Escape
   apostrophes the JSON way (`\'` is NOT valid — just use a plain `'`).

## How to write the file

* Use the Write tool once with the complete JSON array.
* If the Write fails because the content is too large, write the file in two
  steps: first a shorter array, then the complete file that includes those
  entries plus more. The file on disk must finally be valid JSON with the
  requested number of question objects.
* Verify with node before reporting:

```bash
cd /workspace/swadharma && node -e "const a=require('./supabase/questions/<FILE>.json');console.log(a.length,new Set(a.map(q=>q.q.trim().toLowerCase())).size,a.filter(q=>q.options.length!==4||![0,1,2,3].includes(q.answer)||!['easy','medium','hard'].includes(q.difficulty)||!q.explanation||!q.source||!q.category).length,a.map(q=>q.answer).reduce((m,v)=>(m[v]=(m[v]||0)+1,m),{}))"
```

Expected: count, count of unique stems (must equal the count), 0 malformed, and
an answer distribution with every index between 18% and 32%.

Report only the counts and the category distribution in your final message.
Write no other files.
