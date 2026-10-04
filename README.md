# ExamLoop

**Bring your course materials. Practice independently. Turn mistakes into your next study step.**

Version 0.2.0 — English preview for college students, with first-use onboarding.

ExamLoop helps you establish your exam scope, practice the reasoning your course requires, check your answers, track concepts to revisit, and build useful review guides. It was inspired by a study workflow spanning programming, statistics, and astronomy. Each student supplies their own course materials.

## Start here

After installation, choose **Get me started with ExamLoop** if your client offers a starter prompt, or simply send:

```text
Use $exam-review-coach to get me started with ExamLoop.
Show me the quick start and help me prepare for my exam.
```

ExamLoop will explain what materials to bring, how to attempt questions before revealing answers, how to use hints and feedback, and how to save progress and build review guides. Start with one useful file; you do not need to collect everything first.

For a more complete first request, copy and edit this prompt:

```text
Use ExamLoop to help me prepare for my [course] [midterm/final].
Here are my course outline, notes, and any practice papers I have.
Include [confirmed topics]; exclude [topics not covered].
The exam uses [question formats, if known].
Reference-sheet rules: [allowance, if known].
Check the scope and gaps, then give me a short diagnostic.
Keep solutions separate until I ask. After I submit an attempt,
explain my errors, save my learning record, and give me new
practice on weak concepts. Build an English review guide as we go.
```

The bracketed details are optional. Natural language works too. The plugin declares an onboarding entry point and three starter prompts; the main skill also contains a first-use fallback for clients that do not surface plugin onboarding. The welcome is not repeated when resuming an established course, unless you ask to see it again. An automatic installation pop-up is not guaranteed across clients.

## Try without installing

Open a new Codex chat in a writable study folder. Attach or point Codex to `plugins/exam-loop/skills/exam-review-coach/SKILL.md` and say:

> Read this skill and its relevant supporting files, then get me started with ExamLoop. Show the quick start and begin with the course material I provide.

Keep the entire skill folder accessible so Codex can read its references and templates. This is a manual preview; it does not install the plugin or test automatic skill discovery.

You can review the short [synthetic demonstration](examples/DEMO.md) before supplying any materials.

## Install the standalone skill in Codex

The skill is the folder `plugins/exam-loop/skills/exam-review-coach`, including all of its contents.

Copy that folder into your Codex user skill directory, usually `~/.codex/skills/` (or `$CODEX_HOME/skills/` if configured). On Windows, `~` means your user folder. Use a new chat after refreshing the skill list or restarting the client if needed. Keep an existing skill with the same name unless you intentionally want to replace it.

You can ask Codex to do the copying:

> Install the local exam-review-coach skill from this extracted package in my Codex skill directory. Preserve any existing skill with that name and report a conflict instead of overwriting it.

Invoke it with:

> Use $exam-review-coach to get me started with ExamLoop. Here are my course outline and lecture notes.

The standalone skill includes the same first-use guide. Host-specific installation and discovery may differ outside Codex.

## Install the plugin preview

The repository includes the review skill, a getting-started skill, plugin manifests, and a local marketplace catalog. The marketplace root is the repository folder, not `.agents/plugins/`.

Clone or download this repository before registering it. With Git, clone it using:

```text
git clone https://github.com/JerNB/ExamLoop.git
cd ExamLoop
```

If your Codex CLI supports local plugin marketplaces, open a terminal in this folder and run:

```text
codex plugin marketplace add .
```

Refresh or restart the supported desktop client, open its Plugins Directory, and look for **ExamLoop Preview**. Install **exam-loop** and test it in a new chat. Local marketplace support varies by client. If unavailable, use the standalone skill or manual preview above.

Install either the standalone review skill or the plugin for normal use; both expose the same study workflow. The plugin adds the onboarding entry point and listing prompts. Installing both can create duplicate entries. The catalog's authentication policy is packaging metadata; this skills-only preview has no connected service or sign-in flow.

The catalog and manifests follow the [official plugin packaging documentation](https://developers.openai.com/plugins/build/plugins), with onboarding metadata based on the [official manifest field reference](https://developers.openai.com/plugins/deploy/submission). The package has not yet been installed through a desktop plugin directory or submitted for public listing.

## What to say

| You want to… | Say… |
|---|---|
| Start | "Help me prepare for my midterm. Here is the outline." |
| Check coverage | "Compare my notes with the exam outline. Skip formulas for now." |
| Get a hint | "Give me a small hint for question 4, without the answer." |
| Check work | "Check my saved answers. Keep my answers and add feedback underneath." |
| Target a weakness | "Give me new questions on my recent mistakes." |
| Build a mock exam | "Use these past papers to make a practice exam. Keep the key separate." |
| Make a guide | "Make an English review guide with examples from my weak concepts." |
| Make a reference sheet | "The exam permits one typed, double-sided sheet. Make a study draft." |
| Resume | "Continue my statistics review from this learning record." |

Upload what you already have: an outline, notes, assignments, or practice papers. Past exams and official answer keys are useful but optional. ExamLoop will identify what it can establish and what remains unknown.

## Where your progress lives

In a writable workspace, ExamLoop uses a course profile and learning record, usually under `study/<course>/<exam>/`. It saves attempts, corrective rules, assistance received, and follow-up results. These records stay outside the installed package.

A new chat can continue only if it can access those files. Bring the record to a different computer or chat when necessary. If file writing is unavailable, ask for a handoff summary to save yourself. This preview has no cloud sync or automatic access to other conversations.

## What this preview requires

- An AI host that can read the skill and supplied materials.
- File access for saved learning records; otherwise use a conversational handoff.
- Optional browsing for linked course materials. Upload the relevant files if a link is inaccessible.
- Optional code runtimes and renderers for executed answer checks and PDF exports. Markdown review guides work without them.

The package contains instructions and templates, with no bundled server, runtime, credentials, or background task. It does not guarantee grades or predict an instructor's next exam. Code execution and artifact verification depend on the host, and the assistant must state what was actually checked.

## Review and improve it

Read the [review skill](plugins/exam-loop/skills/exam-review-coach/SKILL.md) and [onboarding skill](plugins/exam-loop/skills/examloop-start/SKILL.md) to inspect the rules. Use the [pilot cases](tests/PILOT-CASES.md) in fresh chats to check the behavior. See [validation status](VALIDATION.md) for the checks performed on this release.

For package checks, install PyYAML in your development environment and run:

```text
python tests/validate_package.py
```

This validates package structure and onboarding wiring. It does not test model behavior or install the plugin.

For a first pilot, watch whether a student can start without coaching, get useful feedback, and resume later. Record the original request, relevant material, actual output, and where intervention was needed. Improve the rule that caused the failure rather than adding unrelated features.

Share the generic package. Keep personal learning records and course materials separate. Public plugin-directory publication and license selection remain separate release decisions.
