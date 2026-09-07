# Facts first

`workspace/facts/master.md` is the one document in your search that is **append-only**: it grows as
your career does and is never edited to fit a job. Everything else — resumes, talk tracks, answers —
is assembled from it.

## A fact

```
- id: f012
  statement: Built the PXE provisioning platform for Windows and Linux
  employer: E1               # a code; the name lives in the legend at the top
  period: 2019-06 / 2026-06
  scale: peak 200 machines a day
  tools: dnsmasq, tftp, preseed
  tag: VERIFIED
  source: resume line 14     # or: intake answer 3
```

- **One concrete claim per fact.** "Managed servers and networks" is two facts, or four.
- **The scale is the real number, in your words.** If you do not know it, leave it blank rather than
  estimate; a blank scale is a fact you can still talk about, an invented one is not.
- **The employer is a code.** Names appear only when a document is rendered for a reader. It keeps
  every intermediate file safe to share with a coach, a friend, or a tool.

## The three tags

| Tag | Means | On the resume |
|---|---|---|
| `VERIFIED` | You did it, and you can be interviewed on it in detail | Yes |
| `EXPOSURE` | You touched it, assisted, or watched it done; you cannot claim ownership | Only knowingly, and phrased as what it was |
| `INTENT` | You want to; you have not | Never |

The tag is proposed by whoever reads your old resume — the `intake` skill, a friend, you — and
**confirmed by you**, once, per fact. The skill then asks only what the resume left out, as numbered
questions with a recommended answer each, and never more than eight. An unconfirmed fact is a proposal and cannot be cited. This one screen of
checkboxes is the whole cost of the rule, and it is where most of the value is: the first time
through, people discover that a third of their resume is `EXPOSURE` wearing `VERIFIED` language.

## The verdicts a JD gets

When a job description names a skill, the claim check records one of:

| Verdict | Means | What you say in the room |
|---|---|---|
| `HANDS-ON` | Ran it in production | Speak with full confidence |
| `RAMP` | Touched it, studied it, lab only | Your exact boundary line — "I've set it up in a lab, not run it for a fleet" |
| `REVIEW` | Reviewed or directed others doing it | "I owned the decision, not the keyboard" |
| `LAPSED` | Real experience, years ago, nothing since | "The cert is from 2013; the operations half I still use, the protocol detail needs redoing" |
| `MISSING` | Cannot hold a conversation about it yet | The honest sentence, prepared in advance — see the gap answer in [04](04-questions-by-intent.md) |

**Never upgrade a verdict to make a fit look better.** A `RAMP` written as `HANDS-ON` survives into
a resume, a talk track and a live answer before anyone catches it, and the catch is an interview.
