# Question card format

One file per intent: `questions/<intent>.md`.

```md
---
intent: troubleshooting-method
family: technical            # behavioural | technical | positioning | logistics
tier: must                   # must | likely | deep
---

# {intent} — {one line: what the interviewer is actually probing for}

## Asked as
- "the surface phrasing, as an interviewer really says it"
- "another phrasing"
- "a third"

## What this tests
{One or two sentences. Not what the question says — what a good answer proves.}

## Answer from
- `stories/<file>.md` — {which part of it}
- `techbank/<card>.md`
- `facts/master.md` — f012, f031

## The trap
{The specific way this question gets failed. Where possible, a real instance: which company, which
date, what actually went wrong.}

## Gap answer
{Only when the pointers land on RAMP / LAPSED / MISSING / UNRETRIEVABLE.}
1. **Boundary** — "I haven't …"
2. **Mechanism** — what it does and why it exists, two sentences
3. **Analogue** — the closest thing actually done (facts f…)   ← omit if there is no honest one
4. **What I'd do** — → must point at something that exists

## Spoken
{Only after it has actually been said out loud. Verbatim, including its imperfections. Rewriting it
into better prose makes it an untested draft again and loses the only property that earned it a
place here.}

> "…"

_Said at {company}, {date}. Outcome: {landed / didn't}._
```

## The two-reader rule

`## Asked as` is **the retrieval surface**, and it is the reason a card gets found or does not. It
must be **deliberately wordy** — every phrasing the question really arrives in, in the interviewer's
vocabulary, not a tidied canonical form. Terseness belongs in the heading; the alias list is where
you are generous.

## Required and optional

**Required**: frontmatter · `## Asked as` · `## What this tests` · `## Answer from`.

**Optional**: `## The trap` when there is a real one — a remembered failure beats an imagined one.
`## Gap answer` when the pointers land on a gap. `## Spoken` only once it has actually been spoken.

## The rules that are easy to break

- **No written answer** outside `## Spoken`. The bank stores where the answer comes from; the answer
  is assembled at prep time or said live. A tidy paragraph under `## Answer from` is the duplication
  this bank exists to kill, wearing a different heading.
- **`## Spoken` requires it to have been spoken.** Not "drafted well". Not "this is what I'd say".
  Said, out loud, to someone.
- **Beat 4 of a gap answer must point at something that exists** — study already opened, a lab
  already run. "I'd read the docs and lab it up" is a template, and a template is speculation with
  better manners.
- **An empty `## Answer from` on a `tier: must` card is an emergency**, not a to-do. Say so in the card.
