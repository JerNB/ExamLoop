# E1 attempt 01 — submitted 2026-10-10

Question source: materials.md E1 Q1–Q4. These answers concern the instructor practice E1, not outputs/practice-01.md. Assistance before submission was not stated; no tutor hint is reported. Preserve the following original reasoning.

## Original student answers

- Q1: “2/20 because I always use the whole table”
- Q2: “mutate 2 rows and summarise 2 rows because both collapse groups”
- Q3: “9/12 because the cyclists are the denominator”
- Q4: “2/8 because I interpreted it as Class A”

Related self-report: “I find choosing the denominator in worded questions really hard.”

## Tutor feedback added below the original attempt

No numerical grade: instructor rubric unavailable.

| Item | Outcome | Feedback | Answer evidence |
|---|---|---|---|
| E1 Q1 | Incorrect | First error: using the whole table despite the question specifying Class A. Two commuters out of eight Class A students gives 2/8 = 1/4. Name the requested population before selecting the denominator. | Instructor key: materials.md K1 Q1; Reasoned solution: L1; Verified computation: 2/8 = 0.25 in PowerShell 7.6.5 |
| E1 Q2 | Partially complete | Summarise count 2 is correct; mutate count 2 and “both collapse groups” are incorrect. Mutate preserves all 20 input rows; one scalar summarise per group returns 2 rows. This reasoning establishes a conceptual confusion between the operations. | Instructor key: materials.md K1 Q2; Reasoned solution: L2 |
| E1 Q3 | Correct | 9/12 = 3/4, with cyclists correctly named as the denominator population. This is positive evidence on one question; independence and transfer remain unverified. | Instructor key: materials.md K1 Q3; Reasoned solution: L3; Verified computation: 9/12 = 0.75 in PowerShell 7.6.5 |
| E1 Q4 | Valid under stated Class A interpretation; overall item unresolved | Student explicitly interprets Class A: 2/8 is valid under that reading. The key says 2/20, using the entire table, but E1 does not specify the population. Retain both qualified interpretations; do not count this as a confirmed error. | Unresolved prompt: materials.md E1 Q4; Instructor key: K1 Q4 says 2/20; Reasoned solution: L1 supports 2/8 for Class A; Verified computation: 2/20 = 0.1 and 2/8 = 0.25 in PowerShell 7.6.5 |

## Next retrieval task

Use outputs/practice-01.md Q1–Q2: first name the denominator population before calculating; then track each operation's current input rows. Keep the pending practice key separate. Submitted E1 solutions are now disclosed in feedback; later E1 repetition should not be treated as a new unaided transfer success.
