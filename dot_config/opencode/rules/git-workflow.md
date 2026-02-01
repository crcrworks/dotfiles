# Jujutsu Commit Rules

## Commit Strategy

**1 TODO = 1 Commit**

Create a commit using jujutsu whenever each TODO is completed.

## Required Skill

Always read the `jujutsu` skill using the `skill` tool before performing jujutsu operations.

## Commit Procedure

1. Read the `jujutsu` skill using the `skill` tool
2. Follow the skill's instructions to create a commit
3. Follow conventions for commit messages

## Commit Message Format

```
type(scope): description

[optional body]
```

### Type List

| Type | Purpose |
|------|---------|
| `feat` | New feature |
| `fix` | Bug fix |
| `docs` | Documentation only |
| `style` | Formatting (no behavior change) |
| `refactor` | Refactoring |
| `test` | Test addition/modification |
| `chore` | Build/auxiliary tools |

## Timing

- **Immediately after TODO completion** → Commit right away
- **After review fixes** → Commit per fix
- **Multiple file changes** → One commit for related changes

## Prohibitions

- Using `git commit`
- Combining multiple TODOs into one commit
- Committing without a commit message
- Performing jujutsu operations without reading the `jujutsu` skill
