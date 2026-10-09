# STA-DEMO interactive review — content map and separate key

Artifact: `sta-demo-review`, version `1.0.0`; file: `sta-demo-review.html`. Original synthetic practice, not instructor-authored. Questions follow current E1 short-answer style; P0 supplies only an excluded joins example and cannot establish relevant older-exam style.

## Content map

| Section/item | Topic | Exact supplied source basis | Learning evidence | Retrieval/transfer goal | Answer evidence |
|---|---|---|---|---|---|
| Rules: denominator | T1 | materials.md O1, L1 | E1 Q1 whole-table default error; C01 correct explained answer reported without hints | Name requested population before choosing total | Reasoned solution from L1 |
| Rules: current table | T2 | materials.md O1, L2 | E1 Q2 incorrectly says both operations collapse groups | Distinguish preserving rows from reducing to one row per group | Reasoned solution from L2 |
| Rules: among | T3 | materials.md O1, L3 | Worded-denominator self-report; correct E1 Q3 and C01 | Translate A and both A/B | Reasoned solution from L3 |
| Reviewed Club C example | T1, T3 | materials.md L1, L3; outputs/club-c-attempt-01.md C01 | Correct explained answer, explicitly reported without hints | Reinforce the student's own successful population identification | Reasoned solution; Verified computation 4/10 = 0.4 |
| R1: two workshop proportions | T1 | materials.md O1, L1; style E1 Q1 | E1 Q1 error and C01 improvement | Transfer by holding numerator fixed while changing requested population | Reasoned solution; Verified computation |
| R2: sequential row trace | T2 | materials.md O1, L2; style E1 Q2 | E1 Q2 mutate/summarise confusion | Apply mutate to its current input after a reduction | Reasoned solution; input arithmetic verified |
| R3: remote evening proportion | T3 | materials.md O1, L3; style E1 Q3 | Self-reported worded-denominator difficulty; E1 Q3/C01 correct | Translate a conditional population presented as a column, not a prose total | Reasoned solution; Verified computation |

## R1 solution

Morning proportion: 6/24 = 1/4 = 0.25. Denominator is all 24 morning participants.
Whole-workshop proportion: 6/60 = 1/10 = 0.1. Denominator is all 60 participants.
The numerator in both is the six morning participants with laptops. L1 distinguishes group and whole-table totals. Both requests state the population explicitly.

## R2 solution

Grouping alone: 36 rows. First mutate: 36. Summarise: 4. Final mutate: 4.
L2 says grouping and mutate preserve current input rows. One scalar summary per original group gives four rows. The final mutate receives that four-row table; it does not recreate the original rows.
This is a reasoned trace of the supplied course rules, not an executed R example. Group sizes were arithmetically checked: 8 + 9 + 9 + 10 = 36.

## R3 solution

Numerator: seven participants who are both remote and in the evening session.
Denominator: all remote participants, 13 + 7 = 20.
Fraction: 7/20 = 0.35. L3 defines “among remote” as the denominator population. Evening total 18 and all-person total 40 are different populations.

## Verification and grading limits

Numeric values 6/24 = 0.25, 6/60 = 0.1, 7/20 = 0.35 and the R2 group-size total were executed in PowerShell 7.6.5. Node source-level assertions checked equivalent fractions/decimals/percentages, wrong values, empty strings, invalid input, zero denominators, and integer-only row counts. JavaScript syntax and references to HTML IDs were checked without a browser. No browser interaction, rendering, keyboard, download, or print testing was performed.

The HTML embeds its key for self-checking, while this file retains a separate tutor key and provenance. Numeric results are provisional; explanations are preserved verbatim for tutor review rather than graded by keywords. A valid check displays the solution and therefore sets reveal history for later retries. Assistance before an attempt is exported separately from the reveal caused by feedback. Hint/reveal flags and event history survive display resets. A page counter never changes learning-record status.

## Scope qualification

T4 lacks supplied teaching notes; joins, hypothesis tests, and normal approximations are excluded by O1. E1 Q4's key conflict remains an unresolved source issue, not a student error. No exam-room reference-sheet permission or timing/rubric is assumed.
