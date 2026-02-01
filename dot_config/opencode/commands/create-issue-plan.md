---
description: Plan an issue to create
agent: plan
model: google/gemini-3-flash-preview
---

Propose issues that should be registered on GitHub based on the current codebase or context.

Procedure:
1. Analyze current situation (git status, recent changes, TODO comments, etc.)
2. List candidate issues to register
3. For each issue, propose:
   - Title
   - Body (problem description, reproduction steps, expected behavior, etc.)
   - Labels (bug, enhancement, documentation, etc.)

Use `/create-issue-build` to actually create the issue.

$ARGUMENTS
