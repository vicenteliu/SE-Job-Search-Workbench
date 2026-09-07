# JD Teardown — output template

Copy this skeleton. `## Missing Knowledge` and `## Questions` are read by the other skills — those
two headings are fixed. Everything else can flex to the role.

---

```md
# JD Teardown — {Company}, {Role Title}

- **Source**: {job link or file; which copy — employer's own or agency-retyped}
- **Date torn down**: {YYYY-MM-DD}
- **The constraint the JD states in passing**: {one line}
- **Status**: {watching / applied / interviewing / …}

## Responsibilities

| # | Responsibility (JD's wording) | Skills it actually demands |
|---|---|---|
| R1 | … | … |
| R2 | … | … |

## Claim check

| Skill | Verdict | Source | Boundary line (everything except HANDS-ON) |
|---|---|---|---|
| … | HANDS-ON | facts f012 | — |
| … | RAMP | facts f031 (EXPOSURE) | "{the exact sentence}" |
| … | LAPSED | cert year, nothing since | "{the cert is from …; the operations half I still use, the protocol detail needs redoing}" |
| … | UNRETRIEVABLE | techbank/… exists, missed anyway | → practice, not more content |
| … | MISSING | — | "{the honest sentence said in the room}" |

## Missing Knowledge

- **{subject}** — {why this JD needs it, one line} → study
- **{subject}** — {…} → read and move on; only this role cares

## Agent Boundary

| # | Responsibility | Shape | Agent executes | Human decides |
|---|---|---|---|---|
| R1 | … | harness | … | … |
| R2 | … | loop | … | … |

{Optional: one paragraph on the boundary that is most interesting or most contested in this role.}

## Questions

**Coverage: {n} of {total} JD lines mapped.** Uncovered: {list, or "none"}.
**{n} question surfaces → {n} intents.**

| Intent | Tier | Asked as (surface + aliases) | Answered from | Hole? |
|---|---|---|---|---|
| `conflict-with-manager` | must | "…" · "…" · "…" | `stories/…` | |
| `debug-under-pressure` | must | "…" · "…" | — | ⚠️ no pointer |
| `…` | deep | "…" | `techbank/…` | gap answer, beat 4 → … |

### By round

| Round | Intents to read the night before |
|---|---|
| recruiter screen | … |
| hiring manager | … |
| technical | … |
| panel | … |

### Questions to ask them

{The reverse questions this role earns — and any from a previous round that went unused. For each:
what answer would make you not want this job. A question whose answer changes no decision is deleted.}

## Owed

- **Tech cards to write**: {technologies the JD names that are not in `techbank/`}
- **Talk-track sections needed**: {which frames, for which format of interview}
- **Worth study**: {from Missing Knowledge above}
- **Blocking actions, unrelated to preparation**: {a number never recorded, a follow-up owed, a
  boundary that needs stating before the next round. These decay; list them separately.}
```

---

## Notes on filling it in

- **Keep it ugly.** This file is disposable. Time spent making it read well is time not spent on the
  artifacts that survive it.
- **The `Hole?` column is the most useful column.** A question with no pointer is a real finding; a
  question with a tidy pointer is bookkeeping.
- **The `Owed` section is the handoff.** If it is empty, either the JD was fully covered — rare — or
  the teardown was done too gently.
