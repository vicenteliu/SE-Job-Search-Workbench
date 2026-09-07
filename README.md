# SE-Job-Search-Workbench

**A job-search workbench you fill in yourself: facts first, a resume that cites them, a JD torn
down into the questions it will ask, and practice that tells you which point you missed.**

`SE-` is the project prefix of [The Scrappy Engineer](https://linkedin.com/in/vicenteliu), the
author's channel. This is the method the author runs his own search on, published in full: the
skills, the workspace layout, and the reasoning. What is *not* here is any of his content — his
facts, his stories, his interviews — and what is not free is the hour it takes to install it on
your machine, tune it to your job family, and walk it once with someone who has run it. That hour
is what the author sells. Everything else is yours.

## The one rule

**Nothing on your resume is written by a tool.** The workbench turns your resume into a list of
facts you confirm one by one, each tagged with how far you can stand behind it — `VERIFIED` (did
it, can be interviewed on it), `EXPOSURE` (touched it), `INTENT` (want to). Every bullet that
reaches a reader cites one of those facts. A job description is measured against them and gets
**counts, never a percentage**: required covered 7 of 9, preferred 2 of 3, one hard filter unmet.
The gaps are reported, with the closest thing you *do* have, and they become the questions you
prepare for. Nothing is invented, and nothing is scored.

Every other resume tool makes your resume say more. This one makes it say only what you can
defend, and then gets you ready to defend it.

## What is in the box

| Piece | What it does | Where |
|---|---|---|
| **The method** | six short pages: how resumes are screened, facts first, resume vs JD, questions by intent, practice | [`docs/`](docs/00-the-method.md) |
| **Five skills** for [Claude Code](https://docs.anthropic.com/claude-code) | `intake` · `jd-teardown` · `question-bank` · `tech-card` · `talk-track` — the agent reads *your* workspace and assembles; it never invents a claim | [`skills/`](skills/) |
| **A workspace template** | the folder layout *is* the contract: facts, stories, JDs, tech cards, questions | [`workspace/`](workspace/) |
| **`install.sh` / `check.sh`** | one-click install into your Claude Code; a check that says in one line whether your machine can run it | root |

The desktop app that automates the resume half (facts → assessment → tailored PDF) is a separate
project by the same author and is offered to Mac users during setup as a beta; the workbench
does not depend on it.

## Where the author stands

Markers, not adjectives:

| Marker | Claim |
|---|---|
| 🔨 | The method has run every interview of the author's own 2026 search — teardowns, question banks, talk tracks, spoken drills. |
| 🔨 | Four of the five skills are the author's own, with his private paths and content removed. Nothing in them was written for this repository first and used second. |
| 🧭 | `intake` was written for this repository — the public form of the intake step the author's own tooling runs — and has **not yet been run end to end**. Its first run will be on the author's own resume, and this line changes when it has. |
| 🧭 | The workbench has been installed on the author's machine only. The first installs on other machines are what the setup service exists to do, and what `check.sh` is for. |
| ⛔ | No live-interview assistance is part of this, sold with it, or described here. Practice is practice. |

## Install

```bash
git clone https://github.com/vicenteliu/SE-Job-Search-Workbench.git
cd SE-Job-Search-Workbench
./check.sh        # tells you what is missing; nothing is changed
./install.sh      # links the skills into Claude Code and creates ~/workbench from the template
```

Prerequisites: [Claude Code](https://docs.anthropic.com/claude-code) (or an Anthropic API key
and any agent that reads `SKILL.md` files), `git`, `python3`. macOS and Linux today; Windows via
WSL is untested — `check.sh` will say so, which is the honest answer.

Then, inside Claude Code, in `~/workbench`:

```
> run intake on my resume          # it interviews you: numbered questions, a recommended answer each, ≤8
> tear down jds/acme-sre/JD.md
> file the questions from that teardown into the question bank
> build a talk track for the Acme hiring-manager round
```

## What the setup service is

If you would rather have someone install it, tune the skills to your job family and walk the
first teardown with you, that is a fixed-price job the author does — see the ad you came from.
The boundary is firm: **the seller never types a claim into your facts.** Writing your resume,
your questions or your critique for you is a different service at a different price.

## Disclosure

[`DISCLOSURE.md`](DISCLOSURE.md) says which parts of the author's own workspace this was taken
from, what was removed, and why the result carries no private fact. It also says why the live
interview tool is not here.

License: MIT.
