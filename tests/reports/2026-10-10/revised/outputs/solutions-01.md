# STA-DEMO practice 01 — separate solutions

Open after attempting outputs/practice-01.md. These are original synthetic items, not instructor questions. No scoring rubric is supplied.

## Blueprint

| Item | Topic ID | Task/format | Scope/style basis | Personal target | Answer evidence |
|---|---|---|---|---|---|
| Q1 | T1 | Compare two denominator populations in short answers | materials.md O1; L1; E1 Q1 | Course-based starter; no difficulty evidence | Verified computation plus Reasoned solution |
| Q2 | T2 | Trace intermediate row counts, including a mutate after reduction | materials.md O1; L2; E1 Q2 | Course-based starter; no difficulty evidence | Reasoned solution |
| Q3 | T3 | Translate a condition from a cross-classified table | materials.md O1; L3; E1 Q3 | Course-based starter; no difficulty evidence | Verified computation plus Reasoned solution |

Historical limitation: materials.md P0 contains only a left_join question. O1 excludes joins. This sample cannot support an older-exam style match for the current topics. Current practice supports short calculations with explanations of denominators or row counts. No distractor pattern, historical topic frequency, timing, or point allocation can be inferred.

## Q1 — T1 grouped and whole-table proportions

(a) 6/15 = 2/5 = 0.4. The denominator population is fiction loans.
(b) 6/40 = 3/20 = 0.15. The denominator population is all loans.

The numerator is the same six overdue fiction loans, but the requested populations differ. Intended reasoning: distinguish a proportion within one group from a whole-table proportion.

Source basis: materials.md L1; current style E1 Q1. Answer evidence: **Verified computation** for decimal values using PowerShell 7.6.5; **Reasoned solution** for the denominator interpretation and fraction simplification. All required counts are supplied. Six is at most 15, and the groups total 40.

## Q2 — T2 row counts

After grouping: 27 rows.
After the first mutate: 27 rows.
After summarise: 3 rows.
After mutate on the summary table: 3 rows.

Grouping alone keeps rows. Mutate keeps the rows of its current input table. Summarise with one scalar per group gives one row for each of the three original groups. The final mutate takes the three-row summary table as its input, so it keeps those three rows.

Intended reasoning: track the current table rather than always returning to the original 27 rows.

Source basis: materials.md L2; current style E1 Q2. Answer evidence: **Reasoned solution** from the explicit course rules; no R execution performed. The synthetic input total 7 + 9 + 11 = 27 was executed and checked in PowerShell 7.6.5. Grouping state of the summary table does not change the last row count because the supplied mutate rule preserves input rows.

## Q3 — T3 conditional language

Numerator population: participants who are both remote and in the evening session, count 6.
Denominator population: all remote participants, count 12 + 6 = 18.
Fraction: 6/18 = 1/3.

“Among remote participants” restricts the denominator to remote participants. The evening total 20 and all-participant total 40 are different populations from the one requested.

Intended reasoning: translate “among A, what fraction are B?” into A in the denominator and both A and B in the numerator, even when A appears as a table column.

Source basis: materials.md L3; current style E1 Q3. Answer evidence: **Verified computation** for denominator and decimal quotient using PowerShell 7.6.5; **Reasoned solution** for population interpretation and fraction simplification. The table has mutually exclusive cells and a total of 40.

## Source qualification

materials.md K1 Q1–Q3 are instructor keys for the original practice, not keys for these new questions. E1 Q4 leaves its grouping population unspecified; K1 Q4 says 2/20. That answer is not treated as uniquely justified: 2/8 is relevant if Class A is intended, while 2/20 applies to the stated count relative to the full table. This ambiguity is a source issue, not a student error. All new items explicitly identify their populations.
