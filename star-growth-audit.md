# ⭐ Star Growth Audit: github-star-growth

## Snapshot
| | |
|---|---|
| Stars | 0 |
| Forks / Watchers | 0 / 0 |
| First impression (10-sec test) | Partial pass — strong one-line value prop, but zero proof of actual output |
| Community health | 2/6 files (LICENSE, README present; CONTRIBUTING, CODE_OF_CONDUCT, issue template, PR template missing) — 42% per GitHub's community profile |
| License | MIT |
| Topics | 7 set: agent-skills, ai-agents, claude, claude-code, github-stars, open-source, repository-audit |
| Releases | None (no tags/versions) |
| Created / last push | 2026-07-07 / 2026-07-08 — brand new, effectively pre-launch |
| Contributors | 1 (kpab), 5 commits |

This repo is a Claude Code **skill** (Markdown instructions + reference docs, not a runnable CLI/library), so some standard checklist items don't apply literally — "demo" here means "show the skill actually producing a report," not a UI screenshot.

## Quick Wins (High impact × Low effort)

**1. Record a terminal demo of the skill actually running** — Impact: High / Effort: Low
The README currently shows only the *shape* of a report (a bullet skeleton), never a real one. For a text-generating tool, seeing genuine output is what a screenshot/GIF is for a CLI — it's the single highest-converting thing you're missing. Use `vhs` or `asciinema` to record: paste a repo URL into Claude Code → the skill triggers → a real report scrolls out. Embed the recording (or a static excerpt of a real generated report) directly under the tagline in README.md.

**2. Launch it — right now it has had zero exposure** — Impact: High / Effort: Low
0 stars / 0 forks / created yesterday means this hasn't been shown to anyone yet. Post to r/ClaudeAI and r/ClaudeCode (framed as "I built a skill that audits repos for star-worthiness, here's a report it wrote about my own project"), and consider a Show HN once #1 and #6 are done. Don't launch onto the current README — do #1 first, since a launch spike lands on whatever the README looks like that day.

**3. Submit to `awesome-claude-code` and similar skill directories** — Impact: High / Effort: Low
Claude Code skills discovery is still mostly curated lists, not GitHub topic search. A PR into `awesome-claude-code` (and any Anthropic-maintained skills directory, if one accepts community submissions) is compounding, low-effort traffic that a code-focused audience actively browses.

**4. Cut a `v1.0.0` GitHub Release** — Impact: Med / Effort: Low
There are 5 commits of real iteration (checklist → README → benchmark evidence) but no release. A tagged release with a short "what's in v1.0.0" changelog signals the skill is stable enough to depend on, not a work-in-progress dump — and gives you something to announce alongside #2.

## High-Impact Projects (High impact × Med–High effort)

**5. Publish one full worked example report** — Impact: High / Effort: Med
`evals/evals.json` already contains three realistic scenarios (pyperclip, taskly-cli, boltons) but none of their actual output is shown anywhere. Pick one, run the skill for real, and commit the full generated Markdown as `examples/pyperclip-audit.md`, linked from the README. This does double duty: it's the "demo" from #1 in long form, and it's concrete evidence for the 100% vs 76.8% benchmark claim already in the README.

**6. Add a short "why not just ask Claude directly?" section** — Impact: Med / Effort: Med
A skeptical reader's obvious question: "isn't this just a prompt I could paste myself?" Answer it head-on — e.g., the skill enforces the Impact×Effort template, forces cross-checking every number against gathered data instead of writing from memory (a real failure mode you already guard against in SKILL.md step 3), and encodes a promotion playbook most one-off prompts wouldn't include. This turns your actual design decisions into a differentiator instead of leaving them buried in SKILL.md where only you read them.

**7. Add CONTRIBUTING.md + a minimal issue template** — Impact: Med / Effort: Med
Community health is 2/6. For a skill made of editable Markdown checklists, "what would make a good PR" (e.g., extending `audit-checklist.md`, adding an eval scenario) is genuinely non-obvious to an outside contributor — a few paragraphs lowers the barrier meaningfully and raises the community-profile score.

## Worth Doing Later

**8. Add a CI workflow that runs `evals/evals.json` automatically** — Impact: Low-Med / Effort: High
You already claim a 100% vs 76.8% benchmark — a GitHub Action that re-runs the evals on every change (even manually-triggered, since it needs a live model) and reports the result turns that claim from "trust me" into something checkable, and gives you a real green badge to show.

**9. Set the repo's social preview image and homepage field** — Impact: Low / Effort: Low
`homepage` is currently empty and the social preview can't be checked via API — worth a look in Settings, since it controls how the repo appears when the launch posts from #2 get shared on X/Reddit/Slack.

## Promotion Plan

Stage: **0 → ~100 stars (pre-launch)** — this repo hasn't been shown to anyone yet, so launch tactics apply, not content/community tactics.

- **Do the launch after #1 and #4** (demo + tagged release), not before — a launch spike lands on today's README otherwise.
- **r/ClaudeAI, r/ClaudeCode**: tell the origin story ("my own repos weren't getting stars, so I built a Claude skill to tell me why") — this audience already speaks Claude Code fluently and can install with one `git clone`.
- **Show HN**: "Show HN: A Claude Code skill that audits your GitHub repo for why it isn't getting stars." Post weekday morning US time; first comment explaining motivation and linking the example report from #5.
- **`awesome-claude-code` PR** (see #3): steady compounding traffic, near-zero ongoing cost.
- **X/personal network**: a short thread with the terminal recording from #1 attached — visual demos travel disproportionately well for dev tools.

## What NOT to bother with

- **Topics** — 7 well-chosen, relevant topics already set (agent-skills, claude-code, github-stars, etc.); don't add more, you're in the right range.
- **Value proposition line** — "An agent skill that audits your GitHub repository and tells you exactly what to fix to earn more stars" already answers "what is this / why care" in one line. Don't rewrite it.
- **License** — MIT is present and correctly detected by GitHub's community profile; nothing to do here.
- **Repo description field** — already keyword-rich and matches the README tagline; leave it.
- **Star/download badges** — at 0 stars, adding a stars badge would work against you (checklist explicitly warns social proof cuts both ways). Revisit once #2 produces real numbers.
