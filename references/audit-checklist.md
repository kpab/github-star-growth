# Audit Checklist

Evaluate each category. For each item, record: status (✅/⚠️/❌), evidence, and if failing, the concrete fix.

## 1. First impression — the 10-second test
The top of the README is the landing page. Most visitors decide to star, try, or leave within one screenful.

- **One-line value proposition**: Do the first 1–2 lines answer "What is this?" and "Why should I care?" A name alone fails. Best pattern: `{name} — {what it does} {differentiator}`.
- **Visual demo**: Screenshot, GIF, or terminal recording above the fold. This is the single highest-correlation README element for stars on anything with visible output (CLI, UI, viz). For pure libraries, a compelling 5-line code example serves the same role.
- **Repo description + website fields set** (GitHub sidebar): short, keyword-rich description; homepage link if docs exist.
- **Social preview image** (can't check via API — recommend checking Settings → Social preview): controls how the repo looks when shared on X/Slack/Discord.

## 2. Time-to-first-success
- **Install in one copy-pasteable block**, near the top, for the most common package manager(s).
- **Minimal working example** that does something real (not `import foo`). A visitor should get value in under a minute.
- **Requirements/compatibility stated** (versions, platforms).

## 3. Discoverability
- **Topics/tags**: 5–15 relevant topics set. Missing topics = invisible in GitHub topic browsing and weaker search ranking.
- **Keyword-rich description**: does it contain the words people would search for?
- **README length**: ~500–1500 words is the sweet spot. Longer → move detail to docs/wiki and link.
- **Comparison / "why not X" section**: helps visitors coming from a competitor's repo, and captures search traffic for "X alternative".

## 4. Trust signals
- **License present** (no license = many companies/devs won't touch or star it).
- **CI badge showing passing** builds/tests. Badges relevant and few (3–6); a wall of 15 badges is noise.
- **Recent activity**: last commit/release within ~3 months. A stale-looking repo bleeds potential stars; if maintenance is intentional-but-slow, say so in the README.
- **Versioned releases** with changelogs / GitHub Releases (people star projects they can depend on).
- **Star/download count badges** only once they're impressive; social proof cuts both ways.

## 5. Community health (GitHub community profile)
- CONTRIBUTING.md, CODE_OF_CONDUCT, issue templates, PR template, SECURITY.md.
- **"good first issue" / "help wanted" labels** on real issues — contributors become stargazers and evangelists.
- **Issue responsiveness**: are recent issues answered? A graveyard of unanswered issues is a red flag to visitors.

## 6. Content & docs depth
- Link to full docs site for anything beyond README scope.
- FAQ / troubleshooting for the top 3–5 predictable problems.
- Examples directory for non-trivial use cases.

## Common failure patterns to watch for
- README starts with badges + table of contents, value prop buried below the fold.
- Install instructions that assume context (undeclared dependencies, missing steps).
- Description field empty while README is great — kills search and share previews.
- Great tool, zero visuals, because "it's just a CLI" (terminal GIFs fix this).
- Docs written for existing users, nothing for evaluators deciding whether to adopt.
