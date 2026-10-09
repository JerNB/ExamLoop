# Synthetic behavioral run: GPT, I'm Cooked v0.3

Date: October 10, 2026. Purpose: test supplied-content grounding, selective durable learning evidence, personalized outputs, and continuity. All packets and attempts are synthetic. Tutors were isolated model contexts explicitly given skill files, not installed-plugin sessions. A separate model reviewed the first three turns and raw artifacts without the author's conclusions.

## Executed contexts

| Context | Turns | Evidence |
|---|---:|---|
| Baseline v0.2 | 3 | [Saved reply](baseline/transcript-03.md), [graded record](baseline/record-after-02.md) |
| Revised v0.3 | 5 | [Choice and improvement](revised/transcript-04.md), [page delivery](revised/transcript-05.md), [record](revised/record-after-05.md) |
| Onboarding entry point | 2 | [First use](onboarding-reply.md), [marker recovery](marker-recovery-reply.md) |
| Fresh saved-state resume | 3 | [Guide](resume/outputs/review-guide-01.md), [no-change check](resume/no-change-check.json), [export review](resume/transcript-03.md) |
| Programming and astronomy | 1 | [Feedback](cross-domain/transcript-01.md), separate course records |

These 14 turns include 11 revised responses; all 11 have the greeting. Saved reply artifacts have minor wording differences from the returned message in a few turns; substantive grading and recording behavior were compared. Machine-local paths were normalized for archiving. [Instruction fingerprints](skill-fingerprints.json) record tested snapshots; a later help-name alias edit is cosmetic. No automated repetition or failure-probability estimate was made.

## Findings

| Requirement | Result |
|---|---|
| Supplied content | Both declined to explain skewness without notes. Revised default explicitly prohibits silently supplying general knowledge for a named topic. Old policy allowed this by default; the explicit source-only test did not expose a content violation. |
| Current scope | Both excluded the older join question and used current instructor practice for style. |
| Selective records | Revised retained explained mistakes, specific difficulty, and success. Baseline additionally saved temporary tiredness; revised omitted it. |
| Ambiguous grading | Q4's population remained unresolved, rather than a confirmed student error. |
| Improvement | The unaided Club C explanation led to Improving, preserving original errors without implying mastery. |
| Personalized alternatives | The chosen HTML targets recorded denominator/row-count difficulties and conditional transfer. Fresh-chat Markdown guide prioritizes the remaining row-count weakness and preserves denominator improvement. |
| Continuity | Fresh tutor received packet, profile, record and referenced files with paths adjusted for isolation; no previous replies. It resumed without onboarding and later reviewed an actual page export. |
| No-change turn | Thanks-only turn left actual record SHA-256 unchanged, captured before import updates. |
| Marker | All 11 revised replies include it. Recovery explicitly rejects inferring full context from its absence. |
| Course separation | CS trace corrected count 2 to 3; astronomy corrected apparent retrograde versus orbital reversal. Records are separate. Excluded/missing complexity teaching was a source gap, not a student weakness. |

The [independent review](review-first-three.md) found baseline 6 pass, 1 fail, 1 partial; revised 7 pass, 1 partial, across eight criteria. The partial item was restricted live-state access, not evidence that saving failed. These counts are small-sample rubric judgments, not reliability percentages.

## Browser exercise and import

The [page](revised/outputs/sta-demo-review.html) was opened in Chrome. [Observations](browser-observations.json), [visible-text export](browser-attempts.json), and [downloaded export](browser-downloaded-attempts.json) were preserved. JSON equality passed; automation download-event capture timed out, but the actual generated file was subsequently found.

Nine events preserve blank input, wrong denominator, revealed-feedback retry with equivalent correct inputs, hint, correct hinted row counts, explicit reveal, display reset, and a later correct number with incorrect explanation. Reset preserved history and assistance. Numeric matches stayed provisional; explanations awaited tutor review. Keyboard navigation and narrow-viewport DOM width were checked; desktop appearance was inspected.

The fresh tutor caught that **35%** was numerically right but its explanation used the wrong population. It kept the after-reveal flag across reset, moved denominator concepts to Recheck and hinted row counts to Improving, and preserved Club C success. This closes the tested loop: attempt -> export -> fresh tutor review -> saved evidence -> next practice.

## Limits and next gate

This supports a first usability pilot, not a claim that students learn faster or never receive unsupported content. Actual host installation/discovery, PDF export, large real packets, full accessibility, physical mobile devices, and other models/browsers remain untested. The full 22-case suite was not executed.

Ask a few classmates unfamiliar with the project to start from the README, study one topic, export/resume without coaching, and answer unfamiliar transfer questions afterward. Record interventions and compare reasoning before/after. Repeat critical source/record cases before each release. See [evaluation method](../../EVALUATION.md).
