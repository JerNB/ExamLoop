# Validation status

Version 0.2.0 — checked October 5, 2026.

## Completed

- The bundled skill-creator `quick_validate.py` passed for both `exam-review-coach` and `examloop-start`. This checks skill frontmatter and basic scaffold validity.
- Both plugin manifests parse as JSON and agree on identity and version. The compatibility skill path resolves.
- The local marketplace source resolves within this bundle; its name, policy, and category fields were checked.
- Both UI YAML files parse; their prompts name the corresponding skills and short descriptions fit the supported length.
- Both manifest onboarding paths resolve to the bundled getting-started skill. The portable and compatibility listing metadata agree; their three unique starter prompts fit the documented 128-character limit. The declared SVG icon exists and parses.
- All packaged relative Markdown links resolve. Text files contain English content and no personal absolute workspace paths.
- Synthetic diagnostic, transfer, and ambiguity-fixture arithmetic was recalculated with exact Python fractions. This does not execute or validate R/dplyr behavior.
- The reusable package validator passed: `python tests/validate_package.py` (requires PyYAML). It checks packaged paths, onboarding metadata, links, skill metadata, prompt constraints, and synthetic arithmetic.

## Reviewed by the author

The synthetic walkthrough was reviewed against the written rules for scope, hint disclosure, error diagnosis, progress updates, and honest persistence claims. It illustrates intended behavior; it is not an independent behavioral evaluation.

## Still to test

- Actual installation, skill discovery, and plugin UI behavior in a fresh desktop client.
- The seventeen fresh-chat behavioral cases in `tests/PILOT-CASES.md`, including first use, immediate grading, resume, onboarding handoff, and standalone fallback.
- Student usability, retention, and improvement on independent transfer questions.
- Host-specific code execution, PDF export, and rendered artifact layout during real study tasks.

No public plugin-directory listing, cloud service, cross-device sync, or global installation was created. The manifests were checked for documented structure and internal consistency, not certified by a plugin host or public submission validator. Publishing the source repository is separate from installing or certifying the plugin.
