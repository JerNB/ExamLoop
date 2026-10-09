# STA-DEMO browser attempt review

Reviewed on 2026-10-10 from browser-attempts.json, session `session-1791572413311-uqc333`, artifact `sta-demo-review` version `1.0.0`. Item IDs, field IDs, topic/source manifest, questions, embedded expected answers, and hint/reveal/reset logic were checked by reading outputs/sta-demo-review.html. The HTML was not executed. These are synthetic practice items grounded in materials.md O1 and L1–L3, with short-answer format based on E1 Q1–Q3; the page key is not an instructor key.

Export events occurred on 2026-10-09 UTC (2026-10-10 Asia/Shanghai). This review does not infer the ordering of those attempts relative to Club C C01, whose time of day is unknown. Original export and HTML remain unchanged. There is no instructor points rubric, so feedback uses correctness and completeness rather than scores.

## R1 — Same count, different populations

Question: 60 workshop participants include 24 morning and 36 afternoon participants. Six morning participants brought laptops. Find (a) the proportion of morning participants with laptops and (b) the proportion of all participants who are both morning participants and laptop users; explain both populations.

| Export locator | Original response | Tutor review | Assistance before response |
|---|---|---|---|
| events order 1, attempt 1 | Both numeric fields and explanation blank | Unattempted; no misconception inferred | No item hint/reveal recorded |
| events order 2, attempt 2 | (a) 6/60; (b) 6/60. “I always divide by the whole table.” | Partially complete: (a) incorrect, (b) numerically correct; the general denominator rule is incorrect | No item hint/reveal before attempt; this check then disclosed the solution |
| events order 4, attempt 3 | (a) 25%; (b) 1/10. “The first denominator is the morning group; the second is all participants.” | Correct numbers and explanation, after disclosure | After reveal; order 3 retry did not clear exposure |

**First incorrect step:** selecting all 60 participants for part (a). The requested population is the morning group, so (a) is 6/24 = 1/4 = 25%; (b) uses all participants, giving 6/60 = 1/10 = 10%. The numerator stays six in both parts. *(Reasoned solution: materials.md L1; page article R1 and QUESTIONS.R1. Verified computation: PowerShell 7.6.5, 6/24 = 0.25 and 6/60 = 0.1.)*

The corrected response supports assisted understanding, not independent transfer. Preserve the earlier Club C success alongside this repeated whole-table reasoning; consistency needs rechecking.

## R2 — Track each input

Question: a 36-row table has four groups of 8, 9, 9, and 10 rows. Grouping, mutate, one-scalar-per-group summarise, and mutate on the summary table are applied. Give the three requested counts and explain grouping alone too.

**Original response — events order 6, attempt 1:** 36, 4, 4. “Mutate preserves its input rows; summarise returns one per group.”

**Tutor review:** all three counts and the stated operation rules are correct. The response is **partially complete** because it does not explicitly explain grouping alone. Complete the explanation with: “Grouping alone keeps 36 rows; the final mutate receives the four-row summary table and keeps those four rows.” *(Reasoned solution: materials.md L2; page article R2 and QUESTIONS.R2. Group sizes were verified to sum to 36 in PowerShell; no R execution was used.)*

The hint at order 5 preceded the answer. The solution was disclosed by the check afterward, so this is **after-hint**, not after-reveal at submission. T2 can move to Improving for correct assisted application, with an independent recheck still needed.

## R3 — Translate the condition

Question: among remote participants, what fraction attend in the evening? The table counts morning remote 13, morning on-site 9, evening remote 7, and evening on-site 11.

**Original response — events order 9, attempt 1:** 35%. “The denominator is everyone in both attendance modes.”

**Tutor review:** the number is correct, but the explanation is incorrect, so the response is **partially complete**. “Among remote participants” sets the denominator to all remote participants: 13 + 7 = 20. The numerator is the seven participants who are both remote and evening attendees. Thus 7/20 = 35%. Everyone in both attendance modes totals 40; using that denominator with numerator seven gives 7/40 = 17.5%, which does not support the submitted 35%. *(Reasoned solution: materials.md L3; page article R3 and QUESTIONS.R3. Verified computation: PowerShell 7.6.5, 7/20 = 0.35 and 7/40 = 0.175.)*

The solution reveal at order 7 preceded the display reset at order 8 and the response at order 9. The reset cleared display fields, not hint/reveal history. This remains **after-reveal**, and numeric matching does not demonstrate a correct explanation.

## Saved next practice

Priority: independently attempt practice-01 Q1, then Q3, then Q2, with the guide and solutions closed. For proportions, name numerator and denominator populations before calculating. For row counts, explain grouping alone and identify the input to each operation. Preserve H01 as pending assisted practice; it already received a hint.

T1 and T3 are Recheck because the reviewed explanations leave consistency unresolved; their earlier correct evidence remains in the record. T2 is Improving after a correct hinted application, with the grouping explanation incomplete. No concept is Demonstrated from this export. No new weakness is inferred from blank fields, a reveal, or a display reset. T4 remains outside supported teaching until its notes and scope are clarified.
