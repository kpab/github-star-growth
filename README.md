# ⭐ github-star-growth

**An agent skill that audits your GitHub repository and tells you exactly what to fix to earn more stars — prioritized by Impact × Effort.**

Point it at a GitHub URL or a local repo. It analyzes the repository the way a first-time visitor experiences it (the 10-second test), then delivers a Markdown report where every recommendation is tagged **Impact: High/Med/Low × Effort: High/Med/Low**, quick wins first — grounded in evidence from *your* repo, not generic listicle advice.

![Demo: the skill auditing a real repository](assets/demo.gif)

*A real run of the skill against [pyperclip](https://github.com/asweigart/pyperclip) — full report at [`examples/pyperclip-audit.md`](examples/pyperclip-audit.md).*

## What it audits

- **First impression** — value proposition, demo GIF, the first screenful of your README
- **Discoverability** — GitHub topics, repo description, search keywords
- **Trust signals** — LICENSE, releases, CI badges, maintenance activity
- **Community health** — CONTRIBUTING, issue templates, code of conduct
- **Onboarding friction** — install path, quickstart, copy-pasteable examples
- **Promotion** — stage-appropriate tactics (launch playbook for a 12-star repo, content/community tactics for a 5k-star one — never the reverse)

It also cross-checks the README against the code: features you advertise but never implemented get flagged.

## Install

**Claude Code:**

```bash
git clone https://github.com/kpab/github-star-growth ~/.claude/skills/github-star-growth
```

Then just ask:

> How can I get more stars for https://github.com/you/your-repo?

Works with local repositories too — give it a path instead of a URL.

## What you get

```markdown
# ⭐ Star Growth Audit: your-repo

## Snapshot                  ← stars, 10-second test verdict, community health
## Quick Wins                ← High impact × Low effort, do these today
## High-Impact Projects      ← worth a weekend
## Worth Doing Later
## Promotion Plan            ← specific venues for your repo's stage
## What NOT to bother with   ← things you already do well
```

Every recommendation is numbered and cites specific evidence ("the first code block appears at line 120"), so you can reply "do #3" and have the agent implement it.

Reports are written in English by default. Ask explicitly for another language if you prefer (e.g. 「レポートは日本語で」).

## Tested

Benchmarked against a no-skill baseline on the scenarios in `evals/evals.json`: 100% pass rate with the skill vs. 76.8% without — mostly from consistently applying Impact×Effort labels and cross-checking every number against the data actually gathered, instead of writing from memory.

## License

[MIT](LICENSE)
