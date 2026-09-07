# Responsibility Shape — harness / loop / graph

Every responsibility gets exactly one shape. The shape decides where the **Agent Boundary** falls,
so a lazy classification produces a boundary that is wrong in a way nobody notices — it will read
fine and be useless. The three shapes come from agent architecture and are reused here to classify
*work*, not software.

## The three shapes

### Harness-shaped

Inputs, outputs, and acceptance are all definable up front. A human writes the rule once; an agent
executes the bulk of the runs.

- **Test:** could you write down, in advance, what a correct result looks like — and check it
  automatically?
- **Agent does:** the execution, at whatever volume.
- **Human decides:** the rule, and what counts as acceptable. Once.
- **Examples:** provisioning a machine to a known image; enforcing a baseline across a fleet;
  onboarding/offboarding accounts against a defined entitlement set; patch rollout to a defined ring.

### Loop-shaped

The right answer is not knowable in advance. You converge on it by repeated attempts.

- **Test:** do you know when to stop, but not what the answer is?
- **Agent does:** runs the iterations, gathers evidence, proposes the next attempt.
- **Human decides:** **the stopping condition.** "Good enough" is a judgement, and it is the whole job.
- **Examples:** troubleshooting an intermittent failure; performance tuning; capacity sizing before
  the workload exists; narrowing down a flaky hardware fault.

### Graph-shaped

Dependencies cross systems, failures propagate, and the goals genuinely conflict.

- **Test:** does being right about one node still let you be wrong overall?
- **Agent does:** work a single node — gather state, execute a scoped change, report.
- **Human decides:** sequencing, blast radius, and which goal loses. The decision is the deliverable.
- **Examples:** a migration touching identity, network, and endpoints at once; an incident where the
  fix for one system degrades another; vendor or architecture selection under conflicting constraints.

## Classifying, in practice

Work the tests in order — harness, then loop, then graph — and take the first that fits. Most
responsibilities look graph-shaped at first glance because real jobs are messy; that reading is
usually wrong, and it is wrong in the direction that makes AI look useless.

**Split before you classify.** A JD line is often two responsibilities wearing one sentence:
"maintain and troubleshoot the virtualization environment" is a harness-shaped half (maintain to a
known state) and a loop-shaped half (troubleshoot). Split it. A mixed line classified as one thing
produces a boundary that is wrong for both halves.

**Watch for the fake harness.** A responsibility with definable inputs and outputs but no automatic
acceptance check is not harness-shaped — it is loop-shaped with a human as the acceptance check, and
that human is the boundary. This is the most common misclassification.

**Watch for the fake graph.** "It's complicated" is not the graph test. Genuine conflict between
goals is. If the constraints could all be satisfied at once given enough time, it is not graph-shaped.

## Writing the boundary

Two sentences per responsibility, always both:

```
Agent: <what it executes>
Human: <what it decides>
```

If the human sentence comes out as "reviews the output" or "approves it", stop — that is not a
decision, that is a rubber stamp, and it means the shape is wrong or the responsibility needs
splitting. A real human sentence names a judgement: what to trade off, when to stop, what order,
what is acceptable.

## Why this is the valuable part

The gap analysis of a JD is commodity work. The line between what an agent runs and what a person
decides is not — it is what an interviewer has not heard from the previous five candidates, and it is
the part of a teardown that is yours rather than the JD's. Spend the time here.
