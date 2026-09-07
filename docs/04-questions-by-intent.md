# Questions by intent

A JD asks about the same thing from several angles. "Tell me about a time you disagreed with your
manager", "how do you handle pushback", "describe a conflict on your team" are one question — the
interviewer is probing one thing — and if you prepare them as three you will prepare ninety.

So the question bank is keyed on **intent**, never on wording. One file per intent. The phrasings a
question really arrives in are recorded as **aliases** on that file, generously, because the alias
list is how a card gets found the night before an interview.

## A card

```
intent: troubleshooting-method
family: technical              # behavioural | technical | positioning | logistics
tier: must                     # must | likely | deep

## Asked as
- "Walk me through how you debug something you've never seen before"
- "A server is down and nobody knows why — what do you do first?"

## What this tests
Whether you have a method, or only experience.

## Answer from
- stories/intermittent-nic-failure.md
- techbank/tcpdump.md

## The trap
Starting with the fix. The question is about the first ten minutes, not the last.

## Gap answer            (only when the pointers land on RAMP / LAPSED / MISSING)
1. Boundary   — "I haven't run X in production."
2. Mechanism  — what X does and why it exists, in two sentences.
3. Analogue   — the closest thing you have done (omit if there is no honest one)
4. What I'd do — must point at something that exists: a lab you ran, a plan you opened
```

## The rules that matter

- **No written answers.** The bank stores *where* an answer comes from — a story, a tech card, a
  fact — and the trap. The answer is assembled when you prepare and spoken live. A tidy paragraph
  under "Answer from" is a second copy of your story that will drift from the first.
- **Match before you create.** Adding an intent to the vocabulary is a deliberate act. If your
  60–90 surfaces are not collapsing to 25–35 intents, you are keying on wording.
- **A gap answer's fourth beat must point at something real.** "I'd read the docs and lab it up" is a
  template, and a template is speculation with better manners.
- **A `must` card with no pointers is an emergency**, not a to-do. Say so in the card.
- **Real traps beat imagined ones.** If a question has actually been failed — where, when, how —
  that line is the most valuable thing in the bank.

## Where the questions come from

From the JD, line by line ([03](03-resume-vs-jd.md)): responsibilities, qualifications, *and* the
company's competency list, which is where behavioural questions come from and which everyone
skips. And from real interviews afterwards, which is better material, because those were actually
asked.
