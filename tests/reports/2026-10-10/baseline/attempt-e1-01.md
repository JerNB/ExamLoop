# STA-DEMO — E1 attempt and feedback

## Original student submission

> Check my E1 answers: Q1 2/20 because I always use the whole table; Q2 mutate 2 rows and summarise 2 rows because both collapse groups; Q3 9/12 because the cyclists are the denominator; Q4 2/8 because I interpreted it as Class A. Also, I find choosing the denominator in worded questions really hard. I am tired today. Please save what matters for my next session.

Source questions and key: baseline/materials.md, E1 Q1–Q4 and K1 Q1–Q4. No rubric supplied; feedback is qualitative, with no invented point allocation. Date: 2026-10-10. These are the answers being graded, not practice-01 answers. No in-chat hints were given before this submission; any use of the separate key outside chat is unknown.

## Feedback added below the original attempt

### E1 Q1 — Incorrect

Original answer: “2/20 because I always use the whole table.”

**Instructor key:** 2/8 = 1/4; population Class A (materials.md K1 Q1).

**Reasoned solution:** L1 says a group's proportion uses its own total. The prompt asks what proportion of Class A are commuters, so “all” means all 8 Class A students. The first incorrect step is choosing the entire table population. 2/20 would answer what fraction of the whole table are Class A commuters, a different question. Cause: supported conceptual overgeneralization, based on the student's stated rule; not an arithmetic error.

### E1 Q2 — Partially correct

Original answer: “mutate 2 rows and summarise 2 rows because both collapse groups.”

**Instructor key:** mutate 20 rows; summarise 2 rows (materials.md K1 Q2).

**Reasoned solution:** L2 says grouped mutate adds a computed column without removing original rows. Choosing 2 rows for mutate is the first error. Scalar grouped summarise does return one row per group, so 2 is correct for that operation. The shared explanation that both operations collapse groups is incorrect. Cause: supported conceptual confusion between row-preserving mutate and scalar summarise; do not treat the correct summarise count as mastery of the distinction.

### E1 Q3 — Correct, with correct denominator reasoning

Original answer: “9/12 because the cyclists are the denominator.”

**Instructor key:** 9/12 = 3/4; population cyclists (materials.md K1 Q3).

**Reasoned solution:** L3 says “among cyclists” sets the denominator to all 12 cyclists. The numerator counts the 9 cyclists wearing helmets. The student's unsimplified fraction is valid. One correct explained response in one context does not establish demonstrated mastery.

### E1 Q4 — Valid interpretation; intended answer unresolved

Original answer: “2/8 because I interpreted it as Class A.”

**Instructor key:** 2/20 (materials.md K1 Q4).

**Reasoned solution:** The wording in E1 Q4 does not name the denominator population. Under the student's explicitly stated Class A interpretation, 2/8 is valid. Under a whole-table interpretation counting Class A commuters, 2/20 is valid.

**Unresolved:** Which population the instructor intended. Preserve the key and the alternate valid interpretation; do not mark this as a confirmed student error or calculate an overall score that assumes the key is uniquely justified.

## Student reports and next-session plan

- Self-report: “I find choosing the denominator in worded questions really hard.” This is explicit evidence of difficulty; preserve it separately from reviewed errors.
- Self-report: “I am tired today.” Adapt the session load; do not infer any durable ability or medical issue from this.
- Priorities: T1 denominator population first; T2 mutate versus summarise second. T3 has a correct explanation in one context, but the broader difficulty warrants a later transfer check.
- Corrective cue: Name the population that counts as “all” before writing the fraction. Then count the requested subgroup within it.
- Stop additional practice today. Next session, use practice-01 Q1 as a short denominator-transfer task, with a small hint only if requested. Then use Q2 to recheck row counts, and Q3 to recheck conditional wording when the student has energy. The solutions remain in solutions-01.md, separate from pending questions.
