# Tech card format

One technology per file. Sections in this order. Delete every optional section the technology does
not need — an empty heading is padding, and padding costs twice (slower to read, noisier to find).

## Layout rule: every block stands alone

If you ever point a retrieval tool at the bank, it will split each file on blank lines and hand back
**one block at a time**. So: no HTML comments (they get quoted back as if they were content); keep the
title, the status line, `Cue` and `Say` together in one block (markdown hard breaks: two trailing
spaces, no blank line between them); and open the retrieval block by repeating `Cue`, `Say` and the
first sentence of *What it is* — the duplication is what lets that block stand on its own.

## Template

```markdown
# <Technology> · <alias or your-language name>
♾️ **durable** · mechanism, does not change with vendors
(or, for anything a vendor can change:)
🕐 **perishable** · written 2026-08-08 · source: <where, with date>
**Cue** — `<your shorthand, in the language you think in>`
**Say** — "<one English sentence, ≤20 words>"

## What it is
One or two sentences. What it IS.

## What need it answers
One or two sentences. Why it exists at all. This is beat 3 — the beat that separates you from
someone who merely used the tool.

## The closest thing I have done
<the analogue> — facts f012, VERIFIED
(Omit this whole section when there is no honest analogue. Three beats collapse to two.)

## Background / Architecture / How it works
Optional. Include only the one(s) this technology actually needs.

## Retrieval surface
**Cue** — `<repeat verbatim>`
**Say** — "<repeat verbatim>"
<first sentence of What it is, repeated>
Deliberately verbose keywords and question shapes. Not for reading — this is what a search
matches an interviewer's question against.
```

## The two-reader rule

| Reader | Reads | Wants |
|---|---|---|
| **You**, mid-preparation or the night before, ~0.5 s | `Cue` + `Say` | symbolic, minimal, zero redundancy |
| **A search** (yours, or a tool's) | `## Retrieval surface` | prose, synonyms, the words a question would use |

`Kandji=Iru｜like: Jamf Smart Group｜need: small team, no operator` is perfect for you and nearly
invisible to a search — it contains no *patching*, no *deployment*, no *fleet*. So the retrieval
block is written the opposite way from everything else in the workbench: **long, redundant, and
stuffed with the phrasings an interviewer actually uses.** The more ways it says the same thing, the
better it works.

## Analogue test

**Legal — same need, different implementation:**

| Analogue | Why it holds |
|---|---|
| Jamf Smart Group + Policy → Kandji Blueprint | Same need (scope a config to a device set), different product |
| Entra tenant-wide MFA → Google 2-Step enforced by OU | Same need (org-wide second factor), different IdP |
| PBS job queue → Slurm partition | Same need (share a cluster fairly), different scheduler |

**Illegal — same field, different need:**

| Non-analogue | Why it fails |
|---|---|
| Ansible → Terraform | Imperative config management vs declarative resource orchestration with state and plan. A real user will ask which part is "the same idea", and there is no good answer |
| ServiceNow → Jira | Both ticket things, but ITSM process vs issue tracking; the claim collapses on the first process question |
| A proof of concept → running it in production | Same technology, but a PoC is not operating it — scope inflation, not analogy |

When in doubt, omit. A missing beat 2 is a gap; a wrong beat 2 is a judgement failure, and
interviewers punish the second far harder.

## Worked example

```markdown
# Slurm · cluster scheduler
♾️ **durable** · the scheduling model does not change with releases
**Cue** — `Slurm｜like: PBS queues I ran｜need: share a cluster fairly, prove who used what`
**Say** — "Slurm is the scheduler: it decides which job gets which nodes, and for how long."

## What it is
An open-source workload manager for Linux clusters: partitions, a queue, a scheduler with
priority and fair-share, and an accounting database of who ran what.

## What need it answers
A shared cluster with more demand than nodes needs one arbiter, or the loudest user wins and
nobody can say afterwards where the compute went. Slurm is the arbiter and the ledger.

## The closest thing I have done
Ran a PBS queue for a departmental cluster — facts f044, VERIFIED

## Retrieval surface
**Cue** — `Slurm｜like: PBS queues I ran｜need: share a cluster fairly, prove who used what`
**Say** — "Slurm is the scheduler: it decides which job gets which nodes, and for how long."
An open-source workload manager for Linux clusters. HPC job scheduler, batch scheduler, cluster
queue, sbatch, srun, partitions, fair-share, priority, backfill, node allocation, GPU scheduling,
accounting, sacct, how do you schedule jobs on a cluster, how would you handle a user hogging the
cluster, Slurm vs PBS vs Kubernetes, why not Kubernetes for HPC.
```

Note what the retrieval block does that the rest of the card does not: it contains *"how would you
handle a user hogging the cluster"* — the shape of the question, not the shape of the answer.
