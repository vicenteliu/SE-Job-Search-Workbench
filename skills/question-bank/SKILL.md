---
name: question-bank
description: File interview questions into the question bank by intent — match a new question to an existing intent before creating one, record its real phrasings as aliases, point at the stories / tech cards / facts that answer it, and attach a gap answer where it lands on a gap. Use when the user says "file these questions", "build the question bank", "how should I answer this", after a JD teardown produces its `## Questions` section, or after a real interview produces questions that were actually asked.
---

# Question Bank

Files questions by **intent** — what the interviewer is probing for — so that the second interview
costs less than the first. One markdown file per intent in `questions/`, keyed by intent and never
by wording.

**The bank stores pointers, traps and intents. It does not store answers.** The one exception is an
answer that has actually been spoken and worked, pasted in verbatim under `## Spoken`.

A card looks incomplete to a stranger — a question with no answer under it. That is the design, and
it is written down precisely because it looks like a bug.

## Inputs (read these)

1. **`questions/INTENTS.md`** — the closed intent vocabulary. **Read it first, every time.** Filing
   under an invented intent is the failure this whole design exists to prevent, and it is invisible
   until the bank is big enough to be worth searching.
2. **The source of the questions** — a teardown's `## Questions` section, or an interview
   `DEBRIEF_*.md`, which is better material because those questions were actually asked.
3. **`questions/`** — the existing cards. **Match before you create.**
4. **`stories/`**, **`techbank/`**, **`facts/master.md`** — what a card can point at.
5. **`references/card-format.md`** (in this skill) — the card template and the two-reader rule.

## Workflow

1. **Read `INTENTS.md`.** Non-negotiable, and it is the step that gets skipped.
2. **For each incoming question, find its intent.** Check the **aliases** of existing cards before
   anything else — the same question arrives worded a dozen ways, and the whole point of the key is
   that all dozen land on one card. Roughly 60–90 question surfaces from one JD collapse to 25–35
   intents; if yours are not collapsing, you are keying on wording.
3. **Only then consider a new intent.** Adding to a closed vocabulary is a deliberate act, not a side
   effect of filing. A new intent needs a name, a family, and a one-line statement of what it probes
   that is not already covered. Append it to `INTENTS.md` in the same change as the card.
4. **Write or extend the card** per `references/card-format.md`. Extending is the common case and is
   the point — a second JD hitting an existing intent adds aliases and maybe a tier bump, not a
   second file.
5. **Point, don't answer.** Fill `## Answer from` with real paths. If nothing points, say so: an empty
   pointer list on a `must` card is a finding, and a more useful one than a tidy answer.
6. **Attach a gap answer** wherever the pointers land on `RAMP` / `LAPSED` / `MISSING` /
   `UNRETRIEVABLE`. **Beat 4 must point at something that exists.** If nothing exists yet, that is
   study that needs opening — say which.
7. **Report back**: how many surfaces came in, how many intents they landed on, how many were new, and
   which `must` cards have no pointers.

## Output

- `questions/<intent>.md` — one file per intent.
- `questions/INTENTS.md` — the vocabulary, appended to when it grows.
- The teardown or debrief the questions came from keeps only *which intents it hit* plus its coverage
  figure. The cards are cross-JD and outlive it.

## Hard rules

- **Match before you create.** A duplicate intent splits a card's aliases across two files, so both
  become harder to find, and the symptom is that the bank silently stops working.
- **No answers** outside `## Spoken`, and `## Spoken` requires that it was actually spoken.
- **Aliases are generous, headings are terse.** The alias list is the retrieval surface. A card
  nobody can find is a card that does not exist.
- **Never upgrade a verdict** to make a pointer look better. A card over a gap is supposed to look
  like a gap.
- **Real traps beat imagined ones.** If a question has a recorded failure — which company, which date,
  what went wrong — that belongs in the card. Those are the highest-value lines in the whole bank.
- **The tier is about this role, and roles differ.** A `deep` intent for one JD is `must` for
  another. Record the tier the current source implies and note the disagreement rather than
  averaging it away.
- Advisory only. This organises preparation material; it never contacts anyone.
