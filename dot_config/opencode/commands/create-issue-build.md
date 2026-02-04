---
description: Create an issue on GitHub
agent: quick
model: kimi-for-coding/k2p5 
---

Create an issue on GitHub.

Actually registers an issue using the gh command.

If arguments are provided, create an issue with that content:
$ARGUMENTS

If no arguments are provided, analyze the current situation and create an issue.

Command examples:
```
gh issue create --title "Title" --body "Body"
```

To add labels:
```
gh issue create --title "Title" --body "Body" --label "bug"
```
