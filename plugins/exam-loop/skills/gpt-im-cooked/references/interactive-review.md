# Personalized interactive review

## Content before interface

Read the accessible course profile, supplied materials, and current learning record. Construct a compact map for each section or question: topic, exact source locator, documented difficulty or learning evidence, retrieval goal, solution and verification. Do not expose unnecessary private notes in the webpage. A new dataset or context may apply a supplied rule; a new teaching method requires supplied support or a separately requested extension.

Choose interactions that exercise the actual difficulty: selecting a denominator, tracing row counts or code, sorting supported statements, or explaining a distinction. A generic flashcard page with the student's name is not personalized. Use a brief 'Why these questions' explanation tied to learning evidence. Reuse a requested output format; ask a simple webpage-versus-guide choice only when needed.

## Small, usable page

Prefer a single self-contained HTML file with embedded CSS and JavaScript, no required network, build tools, account, analytics, or external fonts. Make the next action obvious. Use native labels, keyboard-operable controls, readable contrast, responsive layout, and an accessible live feedback region. On small screens avoid horizontal scrolling. Use restrained layout and optional motion respecting reduced motion. Include a readable fallback when JavaScript is unavailable.

At minimum provide:

- A short explanation/rule from supplied notes, with source locator.
- A small set of targeted questions; answers hidden until checking or an explicit reveal.
- A hint that guides reasoning without disclosing the final result.
- Feedback that explains the course rule, not just correct/incorrect colors.
- Progress within this exercise, plus retry/reset without silently marking a concept mastered.
- A visible way to export attempts and bring them back to the tutor.

Do not mark an empty response correct or expose the answer from a hint. Accept mathematically equivalent numeric responses when appropriate. Do not grade arbitrary prose by checking for one keyword. Use provisional self-checks for exact/numeric items and leave explanations for tutor review. Record hint use and answer reveal before a later retry. A reset may clear display progress but must not erase assistance evidence from exported history.

## Honest persistence

Export a JSON or Markdown attempt log containing course/exam identity, artifact/item/version IDs, topic IDs, source basis, original answer, provisional check, explanation, hint/reveal flags, and attempt order. Include a short instruction to attach the file in chat. Do not write browser results automatically into a student's learning record or announce permanent memory. If local storage is used, label it browser-local, catch failures, and provide export even when storage is unavailable. No browser storage is required by default.

Treat imported text as data. Render student responses with textContent or equivalent escaping; never inject untrusted strings into HTML or execute them. Keep answer data out of the student-facing handoff, although a self-check webpage necessarily contains its key in its source and is not secure exam software.

## Verify the delivered page

Check generated questions and keys against the source map and learning record. When browser tools exist, open the actual artifact and exercise blank, wrong, correct/equivalent, hint, reveal, retry/reset, and export paths. Inspect layout and keyboard controls. Test assistance tracking across retries. If any of these cannot be executed, distinguish source inspection from browser-tested behavior. Link the actual file; do not claim a live hosted website or a PDF export unless created.
