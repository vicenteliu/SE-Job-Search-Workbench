---
name: talk-track
description: Build a spoken-delivery talk track for one interview — English lines built for the mouth, ≤18 words each, pauses marked, hard words respelled, a parallel in your own language if you want one, and every tool told as a four-beat story (problem → how I drove it → why I decided → outcome) instead of a noun list. Anchors to your confirmed facts and honest verdicts. Use when the user says "talk track", "self-intro script", "help me prepare what to say for the X interview", or has an interview booked and wants a spoken script.
---

# Talk Track

Produces one dated **spoken script** for a specific interview: English lines for delivery, inline
`word[respelling]` on hard words, `/` = small pause, `//` = bigger pause, `[brackets]` = stage
direction (not spoken), and — if you want it — a parallel line in the language you think in under
each block. The point of difference from a resume: **every tool is told as a story, never a noun
list** — what was broken, how you drove it, why you decided what you decided, what the outcome proved.

This skill assembles; it does not invent. All claims trace to the files below and respect the
verdicts (`HANDS-ON` / `RAMP` / `REVIEW` / `LAPSED`). Never upgrade one.

## Inputs (read these)

1. **The interview** — ask: company, role, interviewer and format (recruiter screen / hiring manager
   / technical / panel). Read `jds/<slug>/JD.md` and the teardown if one exists.
2. **`stories/*.md`** — your four-beat story cards (`workspace/stories/TEMPLATE.md` is the shape).
   This is the raw material. Pick the cards the JD calls for; reorder; retune the opening line to the
   company. Do **not** rewrite the facts or relax a verdict.
3. **`facts/master.md`** — the source of truth for any claim not already in a story.
4. **`facts/lexicon.md`** — your pronunciation glossary: the words *you* stop on, with respellings.
   Use it so every hard term is annotated consistently; add new terms in the same session.
5. **`questions/`** — the intents this role's questions map to. That lookup names the stories.
6. **`references/template.md`** (in this skill) — the frame sections and the story-card shape.
7. **`references/pronunciation.md`** — the notation rules.

## Workflow

1. Gather the interview context (prompt for anything missing in input 1).
2. Pull the frame sections from `references/template.md` (Open / About me / Why this company / Why
   I'm leaving / Tool stories / Honest limits / Logistics / My questions / Close) and the matching
   story cards.
3. **Tune, don't fabricate.** Rewrite only the company-specific opener of each section and the "why
   this company" beat. Keep every fact, number, and verdict as carded. If a JD asks for a tool with no
   card, either map it honestly from an adjacent card (state the mapping out loud) or add a new card
   from `facts/master.md` — never bluff.
4. **Annotate for delivery — mandatory.** Run every hard word through `facts/lexicon.md` and inline
   `word[respelling]`. Add `/` `//` pauses and `[stage directions]`. A talk track shipped without the
   annotation layer is incomplete. 🔴 **And "hard word" does not mean "technical word."** The words
   people stop on in a finished track are usually ordinary English with consonant clusters and
   moveable stress — *straightforward, collaboration, authority, evaluated*. Annotate those as readily
   as product names, and watch stress-shift pairs (`record` verb vs noun): wrong stress is not an
   accent, it is a different word.
5. **Three depth layers**, every time:
   - **Study version** — full, with respellings and the parallel line, for memorising.
   - **Spoken-simple** — clean English only, pauses kept, no brackets, for the room.
   - **30-second** — the compressed one-liner of each story card, for fast rounds.
6. **Run a grill pass — and it ships as its own file.** A talk track is what you plan to say; a grill
   is what happens when someone pushes back. Write `jds/<slug>/GRILL_V<n>_<date>.md` with the hard
   questions this specific role invites, tiered by likelihood (first tier = will certainly be asked).
   Each entry: **the question · the trap it sets · the answer in ≤18-word lines · an explicit
   don't-say**. Sources: every `RAMP` / `REVIEW` / `LAPSED` verdict in the track (each one is a
   question), every gap disclosed, the comp line, the leaving line, and `questions/` for the intents
   the role maps to. Include the standing trap — **"what do you know about us"** — an inference may be
   asked as a question, never asserted as a fact. Format it to be self-drilled: cover the answer, say
   it aloud, compare.

## Output

Two files, always both: `jds/<slug>/TALK_TRACK_V<n>_<date>.md` and `jds/<slug>/GRILL_V<n>_<date>.md`.
Always offer the clean **Spoken-simple** block separately so it can be read in the room.

## Hard rules

- 🔴 **Write for the delivery bandwidth, not for the page.** A prepared 60-second opening is ~150
  words; under pressure most people sustain lines of 15–20 words. **So every spoken line is built at
  ≤18 words and broken with `/`.** Never emit a paragraph to be read aloud, and never chain two lines
  into one breath. A track that reads well silently and collapses in the room has failed.
- **Verdicts are law.** `HANDS-ON` = speak with full confidence. `RAMP` / `REVIEW` / `LAPSED` = use the
  exact boundary line from the claim check; never imply production ownership. Never upgrade a verdict
  to win a point.
- **Stories, not nouns.** Each story card must keep all four beats (problem → how → why → outcome). If
  a beat is missing, the card is not ready — go to `facts/master.md`, don't invent the beat.
- 🔴 **An inference is never spoken as a fact.** Facts drawn from a document *other than the JD* — an
  investor update, a news page, a profile — are inferences, are labelled as such, and may not be
  promoted into anything said out loud, least of all a reverse question. If it must be asked, ask it
  as a question, not as knowledge.
- 🔴 **Agency material is not employer material.** When a recruiter supplies the JD, the summary, comp
  or logistics: the employer's own written JD governs, and a retyped agency copy is not the JD.
  Re-diff the official JD against the agency copy the moment it arrives, and read the recruiter's
  written summary of you as a document the interviewer is holding — correct any inflated line through
  your own gap disclosure, not by auditing the agency in the room.
- **No fabricated scale or metrics.** Use only the numbers in `facts/master.md`. If a number is not
  carded, leave it out.
- **Match your voice.** Plain, hands-on, "I won't oversell it." No corporate filler.
- **The don't-say list carries over every time** (from `facts/master.md` › Don't say, if you keep
  one): the reasons you left framed as you have decided to frame them, no employer internals, no
  disparagement, and never a tool you have not run described as if you had.
- Advisory only. You speak; this never sends or posts anything.
