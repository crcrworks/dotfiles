# Using Superpowers Rule

## Required Skill

**MUST read `using-superpowers` skill at the start of EVERY conversation.**

This skill establishes the foundation for:
- Skill invocation workflow (1% rule - if a skill might apply, you MUST use it)
- Subagent delegation patterns
- Pre-flight checklists
- Process discipline

## How to Use

1. At conversation start, invoke: `skill` tool with name "using-superpowers"
2. Follow the skill's procedures exactly
3. Check for applicable skills before any action

## Why This Matters

The `using-superpowers` skill contains CRITICAL rules:
- Invoke skills BEFORE any response or action
- Even 1% chance a skill applies means you MUST invoke it
- Process skills first (brainstorming, debugging), then implementation skills
- Rigid skills (TDD, debugging) must be followed exactly

## Related Skills

After reading `using-superpowers`, also read:
- `writing-plans` before planning work
- `executing-plans` before implementation work
- `jujutsu` before version control operations
