# Installation

Choose the standalone skill for a simple start, or the plugin for the bundled getting-started entry point.

## Install the standalone skill in Codex

The skill is the folder `plugins/exam-loop/skills/gpt-im-cooked`, including all of its contents.

Copy that folder into your Codex user skill directory, usually `~/.codex/skills/` (or `$CODEX_HOME/skills/` if configured). On Windows, `~` means your user folder. Use a new chat after refreshing the skill list or restarting the client if needed. Keep an existing skill with the same name unless you intentionally want to replace it.

You can ask Codex to do the copying:

> Install the local gpt-im-cooked skill from this extracted package in my Codex skill directory. Preserve any existing skill with that name and report a conflict instead of overwriting it.

Invoke it with:

> Use $gpt-im-cooked to get me started with GPT, I'm Cooked. Here are my course outline and lecture notes.

The standalone skill includes the same first-use guide. Host-specific installation and discovery may differ outside Codex.

## Install the plugin preview

The repository includes the review skill, a getting-started skill, plugin manifests, and a local marketplace catalog. The marketplace root is the repository folder, not `.agents/plugins/`.

Clone or download this repository before registering it. With Git, clone it using:

```text
git clone https://github.com/JerNB/gpt-im-cooked.git
cd gpt-im-cooked
```

If your Codex CLI supports local plugin marketplaces, open a terminal in this folder and run:

```text
codex plugin marketplace add .
```

Refresh or restart the supported desktop client, open its Plugins Directory, and look for **GPT, I'm Cooked Preview**. Install **exam-loop** and test it in a new chat. Local marketplace support varies by client. If unavailable, use the standalone skill or manual preview above.

Install either the standalone review skill or the plugin for normal use; both expose the same study workflow. The plugin adds the onboarding entry point and listing prompts. Installing both can create duplicate entries. The catalog's authentication policy is packaging metadata; this skills-only preview has no connected service or sign-in flow.

The catalog and manifests follow the [official plugin packaging documentation](https://developers.openai.com/plugins/build/plugins), with onboarding metadata based on the [official manifest field reference](https://developers.openai.com/plugins/deploy/submission). The package has not yet been installed through a desktop plugin directory or submitted for public listing.



## Updating from the old name

The repository was renamed from ExamLoop to gpt-im-cooked. The plugin ID `exam-loop` and onboarding skill `examloop-start` stay stable. Existing study records remain usable. The v0.2 `exam-review-coach` skill is an older separate copy; replace or disable it only when you are ready.
