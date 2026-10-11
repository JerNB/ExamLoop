# STA 199 — Mock Practice B: Answer Key

Open after your first pass. Numerical answers have been checked with R against the supplied data.

## Question 1: Read a tibble — choose all that apply

**A, C, D, F.** B confuses a numerical identifier with a meaningful measurement. E cannot be concluded from a six-row preview (there are actually 8 missing scores).

## Question 2: Choose a plot — choose all that apply

**A, B, D.** These show a numerical distribution within each categorical group. C/F show plan composition. E addresses time versus an identifier, rather than comparing the two distributions directly.

## Question 3: Interpret histograms — choose all that apply

**A, C, E.** There is overlap and Plus has large values (B false). Bin height is a count, not automatically 50% (D false). The data do not establish causality (F false). Verified medians: Basic 21 h; Plus 12 h.

## Question 4: Spread — select one and explain

**B (Plus).** Plus has observations much farther from its center, including its long right tail. Sample SDs are approximately 6.06 h (Basic) and 13.20 h (Plus); sample size alone does not determine SD.

## Question 5: Compare panels — select one

**B.** The same numerical scale and bin boundaries allow direct comparison. Independently rescaled panels can make different locations or spreads look similar.

## Question 6: Counts versus proportions — interpretation

1. Count panel. 2. Within-plan proportion panel. 3. Plus has more High-priority tickets (12 versus 6), but Basic has the larger within-plan High proportion (60% versus 40%).

## Question 7: Denominators — choose all that apply

**A, B, D, F.** C uses the wrong denominator: 12/(6+12) = 66.7%. D: 18/40 = 45%. E confuses 12/6 with (12/30)/(6/10).

## Question 8: Factor order — fill in the blanks

`factor(priority, levels = c("Low", "Medium", "High"))`. To also encode an ordered factor, use `factor(..., ordered = TRUE)` or `ordered(...)`; explicit levels control the order in either case.

## Question 9: Filter precisely — fill in the blanks

Blanks: `==`, `>=`, `!is.na`. **5 rows** remain: ticket IDs 5, 6, 8, 9, 10. Both the boundary at 20 and the missing score at 24 matter.

## Question 10: Equivalent pipelines — choose all that apply

**A, D.** B sorts ascending. C has the columns in the wrong order. Sorting before filtering works here because filtering preserves the order of retained rows.

## Question 11: Grouped mutate versus summarize — choose all that apply

**A, C, D, F.** `mutate()` preserves rows; this `summarize()` gives one row per group. E is false because assignment is to new objects, not back to `tickets`.

## Question 12: Missing values and group summaries — fill in the blanks

Blanks: `plan`, `n()`, `sum(!is.na(followup_score))`, `mean(followup_score, na.rm = TRUE)`, `"drop"`. **Do not filter first** if `n_all` must include all tickets. Basic: 10, 8, 4.25; Plus: 30, 24, 4.00.

## Question 13: Peer review a scatterplot interpretation — choose all that apply

**B, C, D, F.** “Positive” already describes direction (A false). The plotted points follow a strong, approximately linear positive association without one clearly isolated outlier (E false). A good rewrite mentions direction, form, strength, and the observational limitation.

## Question 14: Match two views of the same data

**A = Maple; B = Harbor; C = Orion.** Maple has the highest median and the unusually low season 4 score (5.7). Harbor is centered near 7.0; Orion near 7.9. A connects seasons chronologically; its drop is not a change in which show it represents.

## Question 15: Debug Quarto and ggplot

Use `#| label: ticket-followup` and add `+` after `geom_point()`. Missing followup scores cannot be plotted, so that warning alone does not indicate incorrect code. In these data 8 scores are missing; check the reason rather than assuming all warnings are errors.

```r
#| label: ticket-followup
ggplot(tickets, aes(x = resolution_hours, y = followup_score)) +
  geom_point() +
  labs(title = "Ticket followup")
```

## Question 16: Match code to a chart — select one

**A.** The x-axis is plan, fill is priority, and default `geom_bar()` counts rows and stacks the counts. B uses `position = "fill"`; C reverses the mappings; D dodges bars.

## Question 17: Mapping versus setting — choose all that apply

**A, B, D, F.** A value inside `aes()` is a mapping; the scale selects its display color (C false). Default `geom_bar()` uses counts, not within-plan proportions (E false). `geom_col()` uses the supplied heights.

## Question 18: Proportion bars and percent labels — fill in the blanks

Blanks: `plan`, `priority`, `"fill"`, `label_percent`. **No.** The label function displays values on a 0–1 scale as percentages; multiplying again would label 0.5 as 5000% after conversion.

## Question 19: Pivot output and original objects — choose all that apply

**A, C, D, F.** By default `values_drop_na = FALSE`, so NA rows remain. No assignment modifies `annual_wide`, which stays 6 × 4.

## Question 20: Pivot with explicit types — fill in the blanks

Blanks: `"week_"`, `as.integer`, `as.numeric`. The result is 9 × 3; `typeof(week)` is `"integer"`, `typeof(score)` is `"double"`. A missing score remains one missing row.

## Question 21: Count then pivot — choose all that apply

**A, B, D, F.** Three audiences become rows, four genres become count columns plus the audience column. `books` remains 12 × 3 because there is no assignment. Zero is an unobserved combination, not a missing original measurement.

## Question 22: Assignment matters — choose all that apply

**A, C, E.** `count()` on an initially ungrouped tibble returns an ungrouped table; merely naming two variables does not leave audience groups. The second expression is not assigned back to `book_counts`, so B is false. Without grouping, its denominator is all 12 books.

## Question 23: Join cardinalities — short answer

**7, 4, 8 rows.** C01 contributes two matching shipment rows; C02/C03 one each. C04 (two rows) and C99 (one) lack registry matches. C88 adds one registry-only row to the full join. A unique right key means this left join does not multiply left rows.

## Question 24: Repeated keys — choose all that apply

**B, C, D, E.** Contributions to the left join are id1:1, id2:2, id3:1 unmatched row. Inner drops id3; full adds id4. Keeping every left row does not imply keeping exactly the same row count when the right keys repeat.

## Question 25: Unmatched records versus unmatched keys — choose all that apply

**A, C, D.** Unmatched shipment records are C04, C04, C99: three records but two distinct codes. Reversing the anti join finds registry entries with no shipment, namely C88.

## Question 26: Join, filter, summarize — fill in the blanks

Blanks: `service == "Express"`, `left_join`, `n()`, `mean(days, na.rm = TRUE)`. The missing-region row pools the two Express shipments whose hub codes were absent from the registry: n = 2 and mean = 10 days. It does not identify a known region. Other rows: East 1/2, South 1/5, West 1/6 (n/mean).

## Question 27: Import a CSV — fill in the blanks

Blanks: `read_csv` (or `readr::read_csv`), `2`, `"MISSING"`, `""` (either order), `clean_names` (or `janitor::clean_names`). Clean names: `participant_id`, `track`, `satisfaction`. Numeric satisfaction is inferred once the missing markers are recognized.

## Question 28: Summaries after import — choose all that apply

**A, B, D.** Filtering missing scores first changes n_all to 3 and 2. `n()` counts group rows, regardless of missingness in a particular column.

## Question 29: Import an Excel sheet — fill in the blanks

Blanks: `read_excel` (or `readxl::read_excel`), `"Scores"`, `2`, `"N/A"`, `""` (either order). The result has 5 rows; score is numeric with 2 missing values. Object names are case-sensitive.

## Question 30: R types and factor levels — choose all that apply

**A, B, C, D.** Whole-valued doubles are still doubles. Levels are the possible categories, not the number of observations; p has length 2. A Date has a Date class, which is separate from its underlying storage type.

## Question 31: Render, commit, push, fetch — short answers

**Render:** Execute the document's code and combine its results with the text to produce the output document. Review the rendered output for errors and presentation.

**Commit:** Save a snapshot of staged changes in the local Git repository. Include a message describing the changes so the history is understandable.

**Push:** Upload local commits to the configured remote repository, such as GitHub. This makes the pushed commits available remotely to collaborators.

**Fetch:** Download remote commits and update remote-tracking information. Fetch alone does not merge those changes into your current branch or change your working files.

Likely missing step: **push**. Rendering is not publishing Git commits.

## Question 32: Final integrated task — write code and interpret

```r
tickets |>
  filter(plan == "Plus", !is.na(followup_score), resolution_hours >= 15) |>
  arrange(desc(resolution_hours)) |>
  slice_head(n = 3) |>
  select(ticket_id, resolution_hours, followup_score)
```

Output ticket IDs **39, 38, 37** with hours **45, 30, 24** and scores **5, 4, 4**. The 70-hour ticket (40) is excluded because its score is missing. Each row represents one qualifying ticket, not a plan summary.

Example: `ggplot(tickets, aes(x = plan, y = resolution_hours)) + geom_boxplot()`. A faceted histogram (`x = resolution_hours`, facet by plan) or mapped density is also appropriate. A pie chart of plan counts shows categorical composition, not within-plan resolution-time distributions.

## Targeted review map

| Skill | Questions |
|---|---|
| Choose every supported statement; reject partly wrong statements | 1–3, 7, 10–11, 13, 17, 19, 21–22, 24–25, 28, 30 |
| Pick a plot from variable types and purpose; interpret plots | 2–7, 13–18, 32 |
| Grouped mutate versus summarize; output versus stored object | 11, 19, 21–22 |
| Proportion denominators and missing data | 6–7, 12, 18, 26, 28 |
| Exact conditions, sorting, column order | 9–10, 26, 32 |
| Join matching, repeated keys, unmatched records | 23–26 |
| Pivot and integer/double types | 19–21, 30 |
| CSV/Excel import and workflow | 27, 29, 31 |
