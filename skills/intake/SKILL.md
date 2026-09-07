---
name: intake
description: Turn a resume into confirmed facts by interviewing the user the way a careful colleague would — split the resume into one-claim facts with a proposed tag each, then ask, in numbered rounds with a recommended answer for every question, only what the resume left missing or unverifiable; never more than eight questions; write only what the user confirmed to facts/master.md. Use when the user says "start my workbench", "turn my resume into facts", "intake", "set up my facts", or facts/master.md is still empty.
---

# Intake

The first hour of the workbench, and the one the whole method rests on: your resume becomes a list
of **facts you have confirmed one by one**, each tagged with how far you can stand behind it. This
skill **proposes; you confirm.** It writes nothing you did not say yes to.

It runs as an interview, not a form — the way a good colleague reads your resume and asks the six
things that matter. Every question is numbered, carries a recommended answer, and the skill waits
for yours before asking the next round.

## Inputs (read these)

1. **The resume.** Pasted text, or a file in the workbench (`facts/resume-original.md` /
   `.txt`). PDF or DOCX: ask the user to paste the text. Do not tear down a job title.
2. **`facts/master.md`** — what is already there. Existing confirmed facts are never rewritten;
   new ids continue the series.
3. **`references/questions.md`** (in this skill) — the pool of questions worth asking, and the
   recommended answer each one carries.

## Workflow

### Round 0 — read, split, propose (no questions yet)

Read the whole resume once. Then produce the **fact proposals**: one concrete claim per fact, in
the resume's order, each with

- `statement` — the claim in plain past tense, one sentence, the resume's own facts only;
- `employer` — a code (`E1`, `E2`…) in order of appearance, with a legend at the top; education and
  certifications get no employer code (the institution stays in the statement);
- `period`, `scale` (the real number **as written**, never rounded, blank if absent), `tools`;
- a **proposed tag**: `VERIFIED` when the resume says *did, built, ran, owned, designed, led,
  administered*; `EXPOSURE` when it says *familiar with, assisted, participated, supported, worked
  alongside*, or lists a tool with no verb; `INTENT` when it says *learning, pursuing, interested*;
- `source` — the resume line it came from.

Show the list in a table: `# · proposed tag · statement · scale · source`. Then say how many, and
how many of each tag. **Do not write anything yet.**

### Round 1 — confirm the facts

Ask the user to go through the table and answer per fact: **keep** (tag as proposed), **change**
(give the tag), or **drop**. Offer the shortcut "keep all except …". Record the result.
A fact the user did not touch when they said "keep all" counts as confirmed.

### Rounds 2+ — ask only what the resume left missing (≤ 8 questions in total)

Now, and only now, ask questions — in the grill format:

```
❓ **Q1** - **<title>**: <the question, with the choices if there are any>

➡️ <the recommended answer, and the one-line reason>
```

Number every question, give every question a recommended answer, ask a whole round at once, and
**wait for the answers before the next round**. A question whose answer depends on another still
open belongs in the next round. Pick from `references/questions.md`, in this priority:

1. **Hard filters** — work authorization, location and remote/on-site, clearance, degree. These
   decide whole applications and are almost never on a resume.
2. **Scale numbers that are missing** on `VERIFIED` facts that clearly had one (a fleet with no size,
   "many users" with no count). Ask for the real number; a blank beats a guess.
3. **Ownership vs participation** where the wording is ambiguous ("responsible for", "involved in",
   "part of the team that").
4. **The target** — the title or two the user is actually aiming at, and the direction (the lane),
   because tailoring and the question bank key on it.
5. **The employer legend** — real names for `E1`, `E2`… (kept only in the legend), and the one-line
   reason for leaving each, in the words the user has decided to use.
6. **Don't-say** — the two or three things the user has decided never to say in an interview.

**Never more than eight questions across all rounds.** If more than eight are worth asking, ask the
eight with the highest priority and list the rest as "worth a later pass". Stop asking when the
answers stop changing what gets written.

### Final round — write, and report

Write `facts/master.md`:

- the employer legend (codes → names, periods);
- every **confirmed** fact, with `confirmed: yes`; dropped facts are not written; tags exactly as
  the user set them;
- the new fields the answers produced — hard filters and the target under a `## Profile` heading,
  the don't-say list under `## Don't say`;
- unconfirmed proposals are **not** written. Say how many were dropped or left.

Report: facts written by tag, the profile lines captured, the questions not asked, and the one
sentence the user should do next (`jd-teardown` on the first JD).

## Output

`facts/master.md` (created or appended — never rewritten; existing ids and confirmed facts are
kept byte for byte). Optionally `facts/resume-original.md` if the resume was pasted, so the source
lines can be traced later.

## Hard rules

- **Propose, never decide.** No fact reaches the file without the user's explicit keep. "Keep all"
  is explicit; silence is not.
- **Never invent a number.** If the resume has no scale and the user does not give one, the field
  stays blank.
- **Never upgrade a tag.** A `VERIFIED` proposal the resume does not support is your mistake to
  catch in Round 0, not the user's to catch later — when in doubt, propose `EXPOSURE` and let the
  user raise it.
- **Eight questions, ever.** The user's time is the scarce input. A ninth question is a later pass.
- **One round at a time.** Ask, wait, then compute the next round from the answers. Do not ask a
  question whose answer another open question would change.
- **Employer names stay in the legend.** Statements carry codes; the name appears only when a
  document is rendered for a reader.
- **No coaching in the intake.** This is not the moment to suggest what the resume should say. It
  records what is true; `jd-teardown` and `talk-track` are where shaping happens, from these facts.
- Advisory only. Nothing here is sent anywhere.
