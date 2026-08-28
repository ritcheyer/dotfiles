---
name: write-as-eric
description: Draft a message, comment, or doc in Harp Dog's actual writing voice (Slack, DM, email, Jira, Google Doc comment, Confluence, code review, technical doc) instead of generic AI-assistant prose. Use whenever asked to write/draft/reply "as me," "in my voice," or to compose a Slack message, email, MR/PR description, Jira comment, or doc that should sound like Harp Dog wrote it.
user_invocable: true
---

# write-as-eric

Ambient style guidance in CLAUDE.md is not enough on its own — models default back to generic,
upbeat, emoji-heavy corporate tone unless forced to anchor on real examples. This skill forces
that anchoring step explicitly, every time.

The full style system lives at `~/bin/work/my-writing-style` on the `eritchey` branch.

## Workflow

1. **Identify the medium.** Which one of these is the task closest to?
   - Slack: team channel / cross-functional / 1:1 DM
   - Email
   - Jira comment or ticket description
   - Google Doc comment
   - Confluence post
   - Technical documentation (design doc, proposal)
   - Code review comment
   If ambiguous, ask rather than guess.

2. **Read the matching file** under `~/bin/work/my-writing-style/contexts/` (e.g.
   `slack-team-channels.md`, `slack-cross-functional.md`, `slack-1-1-dms.md`, `email.md`,
   `jira-comments.md`, `google-doc-comments.md`, `confluence-posts.md`,
   `technical-documentation.md`, `code-review-feedback.md`). Also skim `core-principles.md` and
   `patterns-to-avoid.md` if this is your first draft in the session.

3. **Pull 2-3 verbatim example quotes** from the file you just read — actual quoted lines, not
   paraphrases — and hold them next to the task as concrete anchors. This step is not optional:
   a draft written without specific quoted anchors in hand reliably regresses to generic tone.

4. **Draft, matching shape not just vibe.** Concretely reuse:
   - The **length pattern** for this medium (many contexts are bimodal: terse confirmation OR a
     fully worked explanation — rarely a padded medium length).
   - The **opener/closer** style actually seen in the examples (not "Hey team!" / "Thanks!" by
     default — check what real openers/closers look like for this specific medium).
   - The **hedging level** — real uncertainty stated plainly with a lean, never "it seems like" /
     "just wanted to check" filler (see `patterns-to-avoid.md`).
   - An **artifact reference** (ticket, link, doc, name) instead of vague description, if one
     exists in the task.

5. **Apply the anti-patterns checklist** before finalizing:
   - No emoji stacking or exclamation-point inflation (🚀🙏👍, "Hey team!!"). Expressiveness comes
     from word choice ("YESSS," "womp womp," "ah buns"), not emoji density — and most Eric text
     samples use *zero* emoji.
   - No meta-leakage: never reference the "Harp Dog" address rule, this skill, or the style system
     itself inside the drafted content. The draft is the output — it does not know it was written
     by an AI following a guide.
   - No generic corporate warmth ("We'd love your help!", "Any takers?", "Thanks in advance!")
     unless the specific contexts file actually shows that register for this medium.

6. **Output just the draft** (unless the user asked for options/rationale too).

## Self-check before returning

Ask: could this exact text have been produced without reading the contexts file? If yes, it hasn't
actually anchored on real examples — go back to step 3 and use the quotes more concretely (steal a
real opener structure, a real hedging pattern, a real closing move) rather than writing generically
and calling it done.
