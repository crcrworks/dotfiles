---
description: Create a PR from bookmark (supports conventional commit format)
agent: quick
model: kimi-for-coding/k2p5 
---

Create a GitHub PR from the specified bookmark. Uses n8n's conventional commit format and PR body template.

## Arguments
- Bookmark name: $1
- Language: $2 (`en` or `ja`, defaults to `ja`)

## Validation
- **If bookmark name is not specified, display an error message and exit.**
- **If language is not `en` or `ja`, display an error message and exit.**

Usage: `/create-pr <bookmark_name> [language]`

## Prerequisites
- Using jujutsu. Execute in fish shell.
- PR base branch is main.

## Procedure
1. Check bookmark existence with `fish -c 'ju bookmark list'`
2. Check changes from main with `fish -c 'ju log -r "main::$1"'`
3. Analyze changes and create PR title and description
4. Push to remote with `fish -c 'ju git push --bookmark $1'`
5. Create PR with `gh pr create --head $1 --base main`

## PR Title Format (Conventional Commits)

```
<type>(<scope>): <summary>
```

### Types (Required)

| Type | Description |
|------|-------------|
| `feat` | New feature |
| `fix` | Bug fix |
| `perf` | Performance improvement |
| `test` | Test addition/modification |
| `docs` | Documentation only |
| `refactor` | Refactoring |
| `build` | Build system/dependencies |
| `ci` | CI configuration |
| `chore` | Other tasks |

### Scope (Recommended, Optional)

- `API` - Public API changes
- `core` - Core/backend
- `ui` - UI changes
- Specific module name (e.g., `auth`, `db`)

### Summary Rules

- Imperative present tense: "Add" not "Added" (en), "追加" (ja)
- First letter capitalized
- No period at the end
- Do not include ticket ID

### Examples

```
feat(auth): Add JWT authentication
fix(core): Fix memory leak
refactor(db): Optimize queries (no-changelog)
perf(ui): Improve rendering speed
```

## PR Body Template

```bash
gh pr create --head $1 --base main --title "PR Title" --body "$(cat <<'EOF'
## Summary

<Description of changes. Include testing method. Screenshots recommended for UI changes.>

## Related Issues

<!-- Related issues: closes #123, fixes #123, resolves #123 -->

## Review / Merge checklist

- [ ] PR title follows conventional commit format
- [ ] Documentation is updated or follow-up ticket exists
- [ ] Tests are included
- [ ] Code review received

## Changes

- Change 1
- Change 2
EOF
)"
```

## Language Settings
- `ja` (default): Write PR title and description in Japanese
- `en`: Write PR title and description in English

Focus on the "why" of changes and keep the PR title and description concise.
Display the URL of the created PR.
