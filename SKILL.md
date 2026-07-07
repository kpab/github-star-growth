---
name: github-star-growth
description: >-
  Audit a GitHub repository and produce a prioritized improvement report to grow its stars.
  Use this skill whenever the user wants more GitHub stars, asks how to make their repo more
  popular or discoverable, wants a README/repo review for growth, asks how to promote or launch
  an open-source project, or mentions "スター" / "伸ばす" / repo growth in any form — even if they
  only paste a GitHub URL and ask "how can I improve this?". Works with both GitHub URLs and
  local repository directories.
---

# GitHub Star Growth Audit

Analyze a repository the way a first-time visitor experiences it, then deliver a prioritized, actionable improvement report. Stars come from two things: (1) visitors who land on the repo and are convinced within ~10 seconds, and (2) getting more of the right visitors to land there at all. The audit covers both.

## Step 1: Gather repository data

**If given a GitHub URL** (no local clone):
- Fetch the repo page and the GitHub API: `https://api.github.com/repos/{owner}/{repo}` (stars, forks, topics, description, license, open issues, last push date).
- Fetch the raw README: `https://raw.githubusercontent.com/{owner}/{repo}/HEAD/README.md`.
- Fetch `https://api.github.com/repos/{owner}/{repo}/releases` and `/contributors` if useful.
- Check community files via `https://api.github.com/repos/{owner}/{repo}/community/profile` (returns health_percentage plus which files exist: code_of_conduct, contributing, license, readme, issue templates).

**If given a local repository path:**
- List files at the root; read README, LICENSE, CONTRIBUTING, docs/, .github/ (issue templates, workflows).
- Use `git log --oneline -20` and `git remote -v` if it's a git repo (remote lets you also pull GitHub API data).

If some data is unavailable (rate limit, no network, no remote), note the gap in the report and analyze what you have — a README-only audit is still valuable.

## Step 2: Audit against the checklist

Read `references/audit-checklist.md` and evaluate every category. Judge like a skeptical developer seeing the repo for the first time: within the first screenful, do they know what this is, why they should care, and how to try it in under a minute? Vague verdicts help nobody — for each finding, cite the specific evidence (e.g., "README's first heading is the project name with no tagline; the first code block appears at line 120").

## Step 3: Prioritize and write the report

Score each improvement on **Impact** (how much it moves stars: High/Med/Low) and **Effort** (High/Med/Low), then sort: Quick Wins (High impact, Low effort) first. Be honest about impact — adding badges is Low impact; a demo GIF at the top of a README that lacks one is High.

Include promotion/launch recommendations from `references/promotion-playbook.md` only where relevant to the repo's stage (a 20-star repo needs launch tactics; a 5k-star repo needs community and content tactics).

Before writing any number into the report (star counts, line numbers, download figures, dates, file references), re-check it against the data actually gathered in Step 1 — don't write from memory. A single mistyped or fabricated number gives the reader a reason to distrust every other finding in the audit.

Write the report in English by default, even if the conversation is in another language — audit reports tend to get reused (pasted into issues, shared with co-maintainers, turned into README edits), and the OSS audience for those artifacts is English-speaking. Switch languages only when the user explicitly asks (e.g., 「レポートは日本語で」). Save the report as a Markdown file.

## Report structure

ALWAYS use this exact template:

```markdown
# ⭐ Star Growth Audit: {repo-name}

## Snapshot
| | |
|---|---|
| Stars | ... |
| First impression (10-sec test) | pass/fail + one line why |
| Community health | X/6 files present |
(current stars, last activity, license, topics — whatever was gathered)

## Quick Wins (High impact × Low effort)
For each: **What** → **Why it matters** → **How** (concrete, copy-pasteable where possible)

## High-Impact Projects (High impact × Med–High effort)

## Worth Doing Later (Low–Med impact)

## Promotion Plan
Stage-appropriate launch/content/community tactics with specific venues.

## What NOT to bother with
Things the repo already does well, or common advice that doesn't apply here.
```

Number every recommendation across sections so the user can refer to them ("do #3"). Aim for 8–15 recommendations total; a 40-item dump gets ignored.

## Example finding (format to imitate)

> **1. Add a demo GIF at the top of the README** — Impact: High / Effort: Low
> The first screenful is currently just badges and install instructions — nothing shows what the tool actually does. Most stars come from "saw the demo, looks useful." Record a ~30-second GIF with `vhs` or `asciinema` and place it directly under the title.

## After delivering the report

Offer follow-ups: draft the improved README, write the launch post (HN/Reddit/Product Hunt), or create the missing community files. If the conversation is in a language other than English, also offer a translated version of the report. Don't do any of these unless asked.

One caveat to keep in mind (and mention if the user seems to over-index on stars): stars measure visibility, not adoption — downloads and retained contributors matter more for a project's health.
