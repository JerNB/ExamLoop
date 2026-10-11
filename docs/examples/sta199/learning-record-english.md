# STA199: selected learning evidence, translated into English

This is an English selection from the original Chinese record, not a reconstructed chat transcript. Read [the original record](learning-record-original.md) for all entries. Local computer paths are removed from that copy. The sessions took place before the packaged skill release.

## What was saved, and what changed

| Evidence in the original record | Status and next review decision |
|---|---|
| Practice Q9: grouped `mutate` was predicted to return 3 rows; the actual output keeps 18. The `summarize` prediction of 3 was correct. | High priority: say what a row represents before predicting output shape. Compare both verbs on a new table. |
| Practice Q30: duplicate-key `left_join` output was predicted as 3 rows rather than 4, although the code was correct. | High priority: count right-side matches for each left row, including unmatched rows. |
| Practice Q12: earlier difficulty with within-group proportions; original code was later executed successfully. | Correct on this attempt. Remove the stale “unmastered” label; retain a future proportion-plot check. |
| Practice Q13: totals, nonmissing count, and mean were correct; column naming and written comparison were unfinished. | Preserve the correct reasoning. Target the missing output requirements rather than reteaching the calculation. |
| The student reported difficulty with joins and factors before the exam. | Joins had observed prior evidence; the new factor difficulty was self-reported. Reading explanations did not upgrade mastery. |
| Six immediate checks after a complete explanation were correct, including duplicate-key joins and factor reversal. | Improving: assisted-session retrieval. Factor levels/coding and delayed, unfamiliar problems still needed verification. |

## How that record shaped Practice B

The saved priorities include multiple-select precision, graph choice, proportion denominators, `mutate` versus `summarize`, pipe output versus the original object, duplicate join keys, filtering boundaries, imports, and types. Practice B contains 32 original English questions in the supplied review formats, six graphs, datasets, and a separate answer key. It keeps broad exam coverage while revisiting those difficulties.

The historical record says the numerical answers were checked in R and the blank QMD rendered. This publication checks the original files and links; it does not rerun the historical R validation or establish learning gains.

## Example requests you can reuse

These English requests illustrate the workflow; they are not verbatim transcripts.

```text
Use $gpt-im-cooked. Here are my STA199 notes, exam outline,
and the review papers. Map the covered topics and exclusions.
Use these materials as the teaching boundary.
```

```text
Here is my completed attempt. Keep my original answers and reasoning.
Check the code against the supplied data. Save meaningful mistakes,
uncertainty, and improvements. Do not treat a correct assisted answer
as independent mastery, or count a valid alternative as an error.
```

```text
Read my saved learning record. Build an original English mock midterm
using the supported question formats and broad course coverage.
Revisit my row-count, join, and multi-select difficulties.
Give me a browser-readable worksheet and editable QMD with data.
Keep the answers in a separate file until I ask.
```

```text
Continue from my saved record. Start with unfamiliar join and factor
checks without showing answers. Update only the relevant evidence.
Then offer a personalized webpage, review guide, or permitted sheet.
```
