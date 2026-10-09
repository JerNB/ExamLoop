# Learning record

## Study setup

- Quick start shown: Yes
- Preferred review output: Unknown; offer webpage or guide when requested.
- Practice preference: Three short-answer questions, separate solutions; save progress in this workspace.
- Language: English (default).

## Active course and exam

STA-DEMO Midterm. Course profile: revised/course-profile.md

## Concepts

| Concept ID / topic ID | Concept | Status | Priority and evidence | Corrective rule | Next task |
|---|---|---|---|---|---|
| T1 | Group versus whole-table denominator | Needs practice | High: reviewed E1 Q1 error, “2/20 because I always use the whole table”; also explicit self-report of worded-denominator difficulty. E1 Q4 Class A interpretation valid, not another error. | materials.md L1: use the total of the population named in the question; Class A uses 8, not 20 | Attempt pending practice-01 Q1: name both populations before calculating |
| T2 | Transformation row counts | Needs practice | High: E1 Q2 “mutate 2 rows and summarise 2 rows because both collapse groups.” Summarise count correct, mutate count and general rule incorrect; conceptual confusion supported by reasoning | materials.md L2: grouping/mutate preserve current input rows; one scalar summarise gives one row per group | Attempt pending practice-01 Q2: track input and output at each step |
| T3 | Conditional denominator | Needs practice | Moderate, based on broad self-report about worded denominators, not a reviewed T3 error. Positive evidence: E1 Q3 “9/12 because the cyclists are the denominator” is correct with reasoning. Prior assistance not stated; transfer not yet tested | materials.md L3: among A means count A below and both A/B above | Attempt pending practice-01 Q3 to recheck in a table context; keep successful E1 Q3 reasoning in mind |

## Attempt history

Original attempts and full feedback preserved in revised/outputs/e1-attempt-01.md.

| Date when known | Attempt ID / item locator | Concept ID | Student answer or link | Outcome | Assistance | Answer evidence | Feedback |
|---|---|---|---|---|---|---|---|
| 2026-10-10 | E1-A01-Q1; materials.md E1 Q1 | T1 | 2/20 because I always use the whole table | Incorrect | Pre-attempt assistance unknown; no hint reported. Correction disclosed now | Instructor key K1 Q1; Reasoned solution L1; Verified computation | First incorrect step is denominator population: Class A total is 8, giving 2/8 = 1/4 |
| 2026-10-10 | E1-A01-Q2; materials.md E1 Q2 | T2 | mutate 2 rows and summarise 2 rows because both collapse groups | Partially complete | Pre-attempt assistance unknown; no hint reported. Correction disclosed now | Instructor key K1 Q2; Reasoned solution L2 | Mutate 20, summarise 2. Summarise number correct but shared-collapse explanation incorrect |
| 2026-10-10 | E1-A01-Q3; materials.md E1 Q3 | T3 | 9/12 because the cyclists are the denominator | Correct with explanation | Pre-attempt assistance unknown; no hint reported. Confirmation disclosed now | Instructor key K1 Q3; Reasoned solution L3; Verified computation | Correctly identified cyclists as denominator; one positive example, not demonstrated transfer |
| 2026-10-10 | E1-A01-Q4; materials.md E1 Q4 | T1 | 2/8 because I interpreted it as Class A | Valid under stated interpretation; item unresolved | Pre-attempt assistance unknown; no hint reported. Both interpretations discussed now | Unresolved prompt; Instructor key K1 Q4; Reasoned solution L1; Verified computation | Key 2/20 uses whole table, but question population unspecified. Do not count as confirmed student error |

Numeric checks were executed in PowerShell 7.6.5: 2/8 = 0.25, 2/20 = 0.1, 9/12 = 0.75. Row-count feedback follows supplied L2, without R execution. No instructor scoring rubric is supplied.

## Student-reported difficulties

- 2026-10-10: “I find choosing the denominator in worded questions really hard.” Self-report associated with T1/T3. T1 error is additionally reviewed in E1 Q1; T3 has a correct explained answer in E1 Q3. Do not infer an additional T3 error from this broad statement.

## Open questions

- T4 skewness is named in materials.md O1, but teaching notes are absent and “covered topics only” names T1–T3. Clarify scope and obtain the relevant notes before including it.
- materials.md E1 Q4 has an unspecified denominator population; K1 Q4 supplies 2/20 without resolving that ambiguity. Student's stated Class A reading and 2/8 are valid conditionally; source issue remains unresolved.
- Only an excluded joins question appears in older exam P0. A relevant older short-answer excerpt would be needed to support historical style matching.
- Exam date, duration, scoring rubric, and exam-room reference-sheet allowance are unknown.
- Pre-attempt assistance for E1 was not stated. No claim of independent mastery is made.

## Next session

- Current activity: E1 Q1–Q4 checked; practice 01 remains pending.
- Recent evidence: T1 whole-table default error; T2 mutate/summarise confusion; T3 correct cyclists denominator; E1 Q4 valid under stated reading but ambiguous prompt.
- Unresolved scope/source gaps: T4 notes/scope; E1 Q4 denominator; relevant older exam excerpt.
- Concepts to revisit: T1 and T2 first; T3 transfer recheck next.
- Artifacts to reopen: outputs/e1-attempt-01.md and outputs/practice-01.md; keep outputs/solutions-01.md separate until requested.
- Next action: Attempt practice-01 Q1–Q2 with short reasoning, naming denominator populations and tracing current row counts. Use Q3 afterward to recheck conditional translation in a table context.
- Persistence: Saved in revised/learning-record.md. Another chat must be able to access this record to resume.
