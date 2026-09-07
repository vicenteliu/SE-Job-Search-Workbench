---
name: tech-card
description: Build tech cards — atomic, retrievable records of a technology (what it is, what need it answers, whether you may claim it). Extracts the technologies a JD names, checks them against the existing tech bank, writes only the missing cards, and emits a per-interview selection list. Use when the user says "make tech cards", "which technologies does this JD name", "add this technology to the bank", or is prepping an interview whose JD names tools they have not carded.
---

# Tech Card

Produces **tech cards** — the technology-side counterpart to your stories. A story records what you
did; a tech card records what a technology *is*, what need it exists to answer, and whether you may
claim it. Cards are meant to be found fast — the night before, or by a retrieval tool if you use
one — so they are written for two readers at once; see the two-reader rule below.

This skill assembles; it does not invent. Every claim about the candidate traces to
`facts/master.md`. Claims about the technology itself trace to a named source with a date, because
vendor facts rot.

Distinct from `talk-track`, which turns **your experience** into spoken script. This turns **the
technology** into a cue. A JD usually needs both.

## The three-beat claim — what a card exists to enable

Every card is built backwards from one spoken move:

1. **I know what it is** — state the function. Cognition, *not* a claim of use.
2. **I've used something analogous** — name a genuinely equivalent thing you really ran.
3. **I understand the need it answers** — why the thing exists at all.

Beat 3 carries the value: people who can use a tool are everywhere; people who can say why it exists
are not. **Beat 2 is optional and collapses cleanly** — when no honest analogue exists the move is
two beats, and it is still honest and still lands. Forcing a third beat is where the lying starts.

## Inputs (read these)

1. **The JD or the technology list.** `jds/<slug>/JD.md`, or a list the user pastes.
2. **`techbank/`** — the existing bank. **Read it before writing anything.** The point of a bank is
   that the second interview is cheap.
3. **`facts/master.md`** — the only legal source for beat 2. If the analogue is not in the facts,
   there is no analogue.
4. **`references/card-format.md`** (in this skill) — the card template, the two-reader rule, the
   analogue test, and a worked example.

## Workflow

1. **Extract** every technology, product, protocol, and framework the JD names — including ones
   inside "preferred" qualifications, which is where the unfamiliar ones hide.
2. **Diff against the bank.** Report what is already carded. Write cards only for what is missing.
   Never regenerate a card that exists just because it is nearby.
3. **Verify the perishable ones.** Vendor names, product terms, ownership, and pricing change. Search
   before writing, and record the date and source in the card. A confidently-recited stale fact is
   worse than no card.
4. **Route each new card**:
   - **Durable across JDs** → `techbank/` — mechanisms and protocols that stay true at the next
     company (automated device enrolment, mDNS, SPF/DKIM/DMARC, a scheduler's fair-share model).
   - **Product- or company-specific** → `jds/<slug>/TECH_CARDS.md` — this vendor's terminology,
     this company's stack.
   Getting this wrong is not visible immediately: an over-stuffed bank makes every future search
   noisier.
5. **Write each card** per `references/card-format.md`. Required sections only, plus whichever
   optional ones the technology actually needs.
6. **Emit the per-interview list** — which cards this JD selects, durable and company-specific
   together, so the interview has one place to look.

## Output

- New durable cards → `techbank/<slug>.md` (one technology per file).
- Company-specific cards → `jds/<slug>/TECH_CARDS.md`.
- The selection list → appended to that file.

## Hard rules

- **Two readers, opposite needs.** The `Cue` line is for you at half a second — symbolic, no
  redundancy, in whatever language you think in. The `## Retrieval surface` block is for search —
  deliberately wordy, packed with the synonyms and phrasings an interviewer's question would use.
  Terseness constrains the Cue and Say lines only. A terse retrieval block is a card that exists and
  is never found.
- **Cue and Say are a division of labour, not a translation.** The Cue carries the whole three-beat
  skeleton so you can locate it instantly. The Say line is only beat 1 — the sentence you speak.
  Beats 2 and 3 must come out in your own words about your own experience; scripting them makes you
  recite, and reciting reads as fake.
- **Beat 2 is load-bearing and dangerous.** Legal analogue: *same need, different implementation*.
  Illegal: *same field, different need*. A wrong analogue is worse than no analogue: missing one is a
  gap, the wrong one is a judgement failure. See the analogue test in the format file.
- **Never invent an analogue.** It comes from your facts or the section is omitted.
- **Only two sections are required** — `## What it is` and `## What need it answers`. Background,
  architecture, and mechanism appear only when that technology needs them. Padding hurts both readers.
- **Cards explain the technology; the facts file holds your career.** A card that starts quoting your
  scope or scale numbers has crossed a line — those live in `facts/`.
- **Perishable cards carry a date and a source.** Mechanism cards do not rot. Vendor cards do.
- Advisory only. Cards are rehearsal material. Some interviews prohibit any assistance outright; where
  a company has said so, that is the end of it.
