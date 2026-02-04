---
description: Create a commit using jujutsu
agent: quick
model: kimi-for-coding/k2p5 
---

Commit the currently staged changes.

## Arguments
- Language: $1 (`en` or `ja`, defaults to `ja`)

## Validation
- **If the language is not `en` or `ja`, display an error message and exit.**

Usage: `/commit [language]`

## Execution
Please read the execution method from the jujutsu agent skills.

## Language Settings
- `ja` (default): Write commit messages in Japanese
- `en`: Write commit messages in English

## Commit Message Format
Use Conventional Commits format `<type>: <description>`.

### Prefix List
- feat: Add new feature
- fix: Bug fix
- docs: Documentation changes only
- style: Changes that don't affect code meaning (formatting, etc.)
- refactor: Code changes that are neither bug fixes nor feature additions
- perf: Performance improvement
- test: Add or modify tests
- build: Changes to build system or external dependencies
- ci: Changes to CI configuration
- chore: Other changes (configuration files, etc.)
- revert: Revert previous commit

Examples:
- feat: add user authentication
- fix: resolve null pointer in login
- docs: update API documentation
- chore: update dependencies
