# STA-DEMO Midterm: next-session review

Spend about 15 minutes on this guide and your saved practice. Row counts are the first priority. Your unaided Club C explanation shows improvement in denominator choice; one successful context does not yet establish consistent transfer.

## 1. Retrieve the row-count rules first — 4 minutes

Before reading the example, recall what each operation does to the current input table.

- **Grouping alone:** keeps all rows.
- **Grouped mutate:** adds a computed column and keeps all input rows.
- **Grouped summarise, one scalar per group:** returns one row per group.

**Worked example — Instructor key:** E1 Q2 starts with 20 rows in two groups. Grouped mutate gives **20 rows**; grouped summarise gives **2 rows**. The reason is the operation's rule, not simply that the table is grouped. Your earlier explanation treated both operations as collapsing groups; rehearse this distinction aloud. *(Source: materials.md L2; K1 Q2.)*

**Retrieval cue:** “What table enters this step? Does this operation preserve its rows or return one row per group?”

## 2. Name the population before dividing — 4 minutes

For a group proportion, divide by that group's total. For a whole-table proportion, divide by the entire table total. In “among A, what fraction are B?”, the denominator counts **A** and the numerator counts **both A and B**. *(Source: materials.md L1–L3.)*

**Worked example — Instructor key:** Class A has eight students and two commuters, so its commuter proportion is **2/8 = 1/4**. The denominator is Class A. The whole table's 20 students answer a different population question. *(Source: E1 Q1; K1 Q1.)*

Your Club C answer used this rule correctly: you identified Club C's ten members as the denominator. Now aim to explain the same distinction in a different setting.

**Retrieval cue:** “Among whom?” Write the denominator population in words before using numbers.

## 3. Transfer independently — 7 minutes

Close this guide and attempt [practice-01.md](practice-01.md) in the order **Q2 → Q1 → Q3**. Explain every row-count transition and name each numerator and denominator. Keep the separate solution file closed until you finish. Submit your reasoning for feedback; reading this guide alone does not change your progress status.

| Focus | Source basis | Why selected / retrieval goal |
|---|---|---|
| T2: row counts | L2; E1/K1 Q2 | Reviewed mutate/summarise confusion; track each operation's input |
| T1: denominator population | L1; E1/K1 Q1 | Earlier whole-table error, followed by Club C improvement; compare requested populations |
| T3: conditional wording | L3; Club C C01 | Reported difficulty with wording, followed by a correct explanation; transfer to a table |

**Scope boundary:** Review T1–T3 only. Skewness awaits supplied teaching notes and scope clarification; joins, hypothesis tests, and normal approximations are excluded. E1 Q4 remains ambiguous about its population, so your Class A interpretation is not a confirmed error. This is a study guide; exam-room sheet permission is unknown. *(Source: materials.md O1; E1/K1 Q4.)*
