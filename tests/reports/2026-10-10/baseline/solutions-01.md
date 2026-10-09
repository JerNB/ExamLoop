# STA-DEMO — solutions to practice 01

Separate key: open after attempting practice-01.md.

## Blueprint

These are original synthetic items, not instructor questions. There is no performance evidence yet, so this set covers T1–T3 rather than targeting a diagnosed weakness. No scoring rubric was supplied; no instructor point allocation is inferred.

| Item | Topic ID | Task/format | Scope/style basis | Personal target | Answer evidence |
|---|---|---|---|---|---|
| Q1 | T1 | Compare within-group and whole-table denominators; short explanation | materials.md O1, L1; current E1 Q1 | Initial assessment | Verified computation for arithmetic; Reasoned solution for denominator interpretation |
| Q2 | T2 | Trace a sequence of grouped operations; explain row counts | materials.md O1, L2; current E1 Q2 | Initial assessment | Reasoned solution under explicit course rules; operation sequence not executed |
| Q3 | T3 | Translate a conditional proportion and diagnose its reversal | materials.md O1, L3; current E1 Q3 | Initial assessment | Verified computation for arithmetic; Reasoned solution for conditional interpretation |

Historical limitation: materials.md P0 contains only a left_join task. Joins are explicitly excluded by O1; this excerpt does not establish historical patterns for T1–T3. Current practice supports denominator explanations and row-count explanations, not guaranteed exam coverage or difficulty predictions.

## Q1

**Verified computation:** (a) 9/18 = 1/2 = 0.50. (b) 9/(18 + 42) = 9/60 = 3/20 = 0.15.

**Reasoned solution:** In (a), the denominator population is the morning class. In (b), it is every student in the table. Both numerators count morning-class students who commute by bus; the population being compared changes. The 14 evening-class bus commuters are not included in the numerator for (b).

Basis: materials.md L1; comparable explanation format in E1 Q1. Intended reasoning: hold the counted subgroup fixed while changing its reference population.

## Q2

**Reasoned solution:** (a) 29 rows; (b) 29 rows; (c) 4 rows.

Grouping labels the four groups without removing rows. Under L2, grouped mutate adds a column and preserves the original rows. The following summarise produces one row for each of the four groups because each group returns exactly one scalar summary.

**Verified computation:** 7 + 6 + 9 + 7 = 29. This checks the input counts. The operation behavior is derived from materials.md L2, not verified by executing a data-analysis library.

Basis: materials.md L2 and E1 Q2. Intended reasoning: track the output of one operation as the input to the next, using the course's explicit scalar-summary assumption.

## Q3

**Verified computation:** (a) Numerator 12; denominator 12 + 6 = 18. Fraction 12/18 = 2/3. (b) Numerator 12; denominator 12 + 18 = 30. Fraction 12/30 = 2/5.

**Reasoned solution:** (a) The denominator contains all scholarship students; the numerator contains students who both have a scholarship and belong to robotics. (b) Answers “Among robotics-club members, what fraction have a scholarship?” Reversing the conditioning population changes the denominator while retaining the intersection in the numerator.

Basis: materials.md L3 and E1 Q3. Intended reasoning: identify the population introduced by “among,” then distinguish the reversed question.

## Checks and source qualification

Arithmetic and marginal totals were executed using controlled PowerShell expressions. Fraction reductions and conceptual explanations were checked by reasoning. All questions supply complete counts, specify the relevant population, and require only O1-approved concepts. No uploaded code was executed.

The instructor key K1 Q4 says 2/20, but E1 Q4 does not specify its population. For that source item, **Instructor key:** 2/20; **Reasoned solution:** 2/8 if asking within Class A, or 2/20 if asking what fraction of the whole table are Class A commuters. **Unresolved:** which population was intended. This ambiguity is not used as a unique-answer practice item or treated as a student error.
