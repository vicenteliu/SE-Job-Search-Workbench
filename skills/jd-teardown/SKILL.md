---
name: jd-teardown
description: Tear one real job description down a fixed chain — responsibilities → the skills each one demands → what you can honestly claim → what is missing → the line through each responsibility between what an agent runs and what a person decides → every question the JD will provoke, merged by intent. Use when the user says "tear down this JD", "what am I missing for this role", "what will they ask", or is starting preparation for a job whose JD has not been torn down yet.
---

# JD Teardown

Produces one **teardown**: a single markdown file that turns one real job description into
everything downstream needs — the gaps to close, the questions to expect, and the line through each
responsibility separating what an agent executes from what a human decides.

The teardown itself is **disposable**. Wrong today, rerun tomorrow, no consequence. What survives it
are the things it feeds: the question bank (`questions/`), tech cards (`techbank/`), and talk-track
material. Write it accordingly — do not polish it, and do not put anything in it that has a permanent
home elsewhere.

This skill **assembles; it does not invent.** Every claim about the candidate traces to
`facts/master.md`. If a fact is not there, it is not claimable — say so.

## Inputs (read these)

1. **The JD.** Saved under `jds/<company-slug>/JD.md`. If it is not there, ask for it — do not tear
   down a job title, and do not fetch a URL: paste the text.
2. **`facts/master.md`** — the only legal source for what the candidate can claim, with its tags
   (`VERIFIED` / `EXPOSURE` / `INTENT`) and the confirmation state of each fact.
3. **`techbank/`** — what is already carded. Do not re-card what exists.
4. **`stories/*.md`** — the real experiences a responsibility might map onto.
5. **Any prior round with this company** — `jds/<slug>/DEBRIEF_*.md` if it exists. For any role past
   first contact this is the highest-value input to `## Questions`: it holds the questions actually
   asked, the answers that landed, and the reverse questions that went unused.
6. **`references/responsibility-shape.md`** (in this skill) — how to classify a responsibility as
   harness / loop / graph shaped. This is the step most likely to be done lazily; read it.
7. **`references/template.md`** (in this skill) — the output skeleton, including the two headings
   that are a machine-readable contract.

## Workflow

1. **Identify the role, and the environment it sits in.** Company, title, source, date, and the JD's
   own link or file. Then find the **one fact about the environment that changes the answers** — the
   constraint the JD states in passing and never mentions again. A research facility's is "downtime is
   lost beam time"; a trading firm's is the market open; a hospital's is patient safety. Write it down
   before step 2, because a responsibility classified without it gets classified wrong.

2. **Extract responsibilities.** One line each, numbered, close to the JD's own wording. Include the
   ones buried in "preferred" and "nice to have" — that is where the unfamiliar work hides. Merge
   near-duplicates; a JD that lists the same duty three ways is one responsibility.

3. **Name the skills each responsibility demands.** Not the JD's keyword list — the skills actually
   required to *do* the line. A responsibility usually demands two or three.

4. **Claim check.** For every skill, one verdict, sourced from `facts/master.md`:
   - `HANDS-ON` — ran it in production. Speak with full confidence.
   - `RAMP` — touched it, studied it, lab only. Give the exact boundary line.
   - `REVIEW` — reviewed or directed others doing it, did not operate it.
   - `LAPSED` — certified or genuinely experienced, years ago, no role since. **Not the same as
     `MISSING`**: the fix is recall, the framing is "the cert is from 2013 and the protocol detail
     needs redoing — the operations half I still use," and the one thing never to say is "I've
     forgotten it all."
   - `UNRETRIEVABLE` — a tech card exists and the question was still missed in a real interview. A
     delivery failure, not a knowledge gap; more content will not fix it. Route it to practice.
   - `MISSING` — cannot currently hold a conversation about it.

   Cite the fact id or the story file for anything above `MISSING`. Uncited means `MISSING`. Give a
   boundary line for `RAMP`, `REVIEW`, `LAPSED` **and** `MISSING` — an honest sentence for a gap is
   more useful than a blank cell, and it is what actually gets said in the room. An `EXPOSURE` fact
   can support at most `RAMP` or `REVIEW`, never `HANDS-ON`.

5. **`## Missing Knowledge`** — collect every `MISSING` verdict, one subject per bullet, phrased as a
   subject rather than a tool ("how live migration fails", not "VMware"). **Fixed heading.** Mark each
   as `→ study` (worth a plan) or `→ read and move on` (only this role cares).

6. **Responsibility Shape + Agent Boundary.** For every responsibility from step 2, classify it
   harness / loop / graph per `references/responsibility-shape.md`, then state in one sentence each:
   what an agent executes, and what the human decides. The second half is the point — a boundary
   where the human decides nothing means the shape was misclassified. This section is what an
   interviewer has not heard from the previous five candidates.

7. **`## Questions`** — and the coverage bar here is **line-level, not "a good selection"**.

   **Coverage rule: every line of the JD maps to at least one question**, most to two or three —
   responsibilities, qualifications, *and* the company competency list, which is where behavioural
   questions come from and which everyone skips. A 32-line JD therefore yields roughly 60–90
   question surfaces. That number is derived, not chosen, and the teardown states its own coverage:
   lines covered / lines total, with any uncovered line named.

   **Then merge by intent.** Those 60–90 surfaces collapse to roughly **25–35 intents**, because a
   JD asks about the same thing from several angles. One card per intent, the other phrasings
   recorded as its aliases. **This is the step that makes the set usable**: 30 answers can be held in
   a head the night before; 90 cannot.

   Grade each by tier — `must` / `likely` / `deep`. A `must` with no pointer is an emergency; a
   `deep` one with no pointer is a note.

   For each: the question as an interviewer would actually phrase it, its intent, its aliases, its
   tier, and pointers to the **stories** / **tech cards** / **facts** that answer it. **No written
   answers.** The question bank stores intent and pointers; answers are assembled at prep time or
   spoken live.

   **Every gap needs its answer prepared, not just listed.** A question pointing at a `RAMP` /
   `LAPSED` / `MISSING` verdict carries the **gap answer** skeleton — above all beat 4, which must
   point at something that exists. A gap listed without one is a defect in the teardown.

   Also emit a **by-round view** — recruiter screen / hiring manager / technical / panel. The intents
   barely overlap between rounds, and this is what decides which dozen cards to read the night before.

8. **Hand off.** List explicitly, at the end of the file:
   - technologies named by the JD but absent from `techbank/` → run `tech-card`
   - the sections a talk track will need → run `talk-track`
   - Missing Knowledge items worth study
   Do not run those skills as part of this one unless asked. The teardown's job is to say what is owed.

## Output

`jds/<company-slug>/TEARDOWN_<role-slug>_V<n>_<date>.md`, following `references/template.md`.
Slug = lowercased, non-alphanumerics → `-`. Create the folder if this is the first artifact for it.

## Hard rules

- **The two headings are a contract.** `## Missing Knowledge` and `## Questions` are read by the
  other skills. Do not reword them, nest them, or split them.
- **Never upgrade a verdict** to make a fit look better. A `RAMP` that gets written as `HANDS-ON`
  survives into a resume, a talk track, and a live answer before anyone catches it.
- **No answers in `## Questions`.** The bank stores intent and pointers; answers are assembled at
  prep time or spoken live. Writing them here rebuilds the duplication the bank exists to kill.
- **A gap is not a verdict on the role.** Teardown output feeds preparation, not the go/no-go call. A
  JD with six Missing Knowledge items may still be worth pursuing.
- 🔴 **Record the JD's provenance, and re-diff when a better copy arrives.** An agency-retyped JD is
  *not* the JD — it drops named tools, softens requirements, and carries typos. Note at the top of the
  teardown which copy it was built from. When the employer's own JD arrives later, diff it and
  rewrite the affected sections.
- 🔴 **Label inferences, and never let one graduate.** Anything concluded from a source other than
  the JD — a news article, a funding announcement, a recruiter's phone call — is marked as an
  inference with its source. It may inform preparation. It may **not** be handed to a talk track as if
  the JD said it.
- **Don't tune the JD.** Extract what it says, including the parts that are unflattering or vague. A
  responsibility written charitably is a question that arrives unprepared for.
- Advisory only. This produces preparation material; it never contacts anyone.
