---
name: examloop-start
description: Introduce GPT, I'm Cooked (ExamLoop) after installation or when a student asks how to use the plugin, what materials to provide, or how to start an effective exam-review session.
---

# Get started with GPT, I'm Cooked

Provide a short English introduction, then move directly into the student's requested study task. Adapt the language when requested. This skill is the plugin's onboarding entry point; the study workflow is provided by the bundled gpt-im-cooked skill.

Begin the student-facing reply with the same exact line as the study skill: **Hi student, let's get you uncooked.** Describe it as a workflow marker, never a detector of remaining context.

1. Read [the first-use guide](../gpt-im-cooked/assets/first-use.md) and present its welcome, suggested study loop, and a few natural requests. Offer the starter prompt as a convenience, not an intake form.
2. Read [the review skill](../gpt-im-cooked/SKILL.md) to continue with its course-scope and study rules. Both files are bundled in this plugin; no outside skill is required.
3. If the student supplied materials or a specific task, shorten the orientation and begin that task. Do not make a prepared student repeat information or wait for a menu choice. Otherwise ask for the course and one available outline, note, or practice paper. Do not require all materials at once.
4. Explain supplied-content grounding, separate answers, hints, selective learning records, and the choice of a personalized interactive webpage or review guide. Do not claim that the plugin itself provides a runtime, PDF renderer, cloud sync, or permanent memory.
5. Record `Quick start shown: Yes` only when a learning record already exists or is created for an identified course. With no identified course, remember it in the current conversation until setup continues. Respect existing progress; onboarding does not restart a course.

The host may surface this entry point during onboarding; do not promise an automatic pop-up on every client. If it is not surfaced, the main skill provides the same first-use welcome, and the student can explicitly ask "Get me started with GPT, I'm Cooked."
