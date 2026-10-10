# v0.3.1 showcase checks

This revision adds a public landing page and an original eight-question mock exam. The demo uses an authored fictional course packet, style blueprint, and learning record. It illustrates the study flow; it is not a new model evaluation or evidence of improved grades.

## Checked in Chrome

- The actual mock exam rendered with question navigation, native answer controls, readable code, two accessible SVG figures, and a separate key link.
- Exporting a blank paper retained all eight empty answers as `not graded`, with zero answered. It did not award correctness.
- Multi-select Q1 retained A/B/C, an intentionally wrong Q2 retained A, and code completion retained the supplied R expression. The answer counter showed three answered questions, without grading them.
- Q4's revisit flag, Q1's original reasoning, and its High confidence selection appeared in the exported JSON with item/topic/source IDs.
- The key link recorded key access. Starting another attempt cleared displayed answers, while exported history retained earlier answers and key access. External help is explicitly untracked.
- Browser downloads were found in the download directory. The nonblank downloaded JSON matched the text fallback captured from the page; both were parsed as JSON.
- The landing page's screenshot preview loaded. A measured 390px landing-page viewport had a 375px document width, without horizontal overflow. The attempted mock-exam viewport override remained at desktop dimensions; its narrow-screen layout is source-inspected, not browser-verified.
- Both desktop layouts were visually inspected. Native labels and focus styling are present; this is not a complete accessibility audit.

## Source and package checks

- Q1-Q8 each have supplied fictional rule provenance; all questions and figures are original. Q4 uses 28/40 = 0.70. The style blueprint is fictional and makes no claim of matching a real instructor.
- The student page contains no solution-key data or correctness grader. The answer key is a separate file; this is separation for study, not access control.
- JavaScript syntax was parsed with Node. Skill and package structure were validated. Both downloadable ZIPs were checked for corruption and the expected directory roots; the plugin includes its hidden compatibility manifest.
- Code keys are reasoned solutions checked against the packet and were not executed in R. Hosted deployment is checked separately after publication.

The earlier model runs and fingerprints remain archived unchanged in [REPORT.md](REPORT.md). Actual installation/discovery, cross-browser behavior, full mock-exam mobile interaction, printing, and real-student learning gains remain to test.
