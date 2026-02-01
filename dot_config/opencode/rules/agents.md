# Subagent Reference

Quick reference for available subagents. For delegation patterns and workflow rules, see `using-superpowers` skill.

## Subagent List

| Subagent | Purpose | When to Call |
|----------|---------|--------------|
| `planner` | Plan detailing, design decisions | When complex design is needed |
| `explore` | Codebase search, pattern discovery | When search or exploration is needed |
| `general` | General implementation tasks | For standard implementation |
| `spec-reviewer` | Specification compliance review | After implementation completion |
| `code-reviewer` | Code quality review | After spec-reviewer approval |
| `security-reviewer` | Security review | When handling sensitive operations |
| `tdd-guide` | TDD workflow guidance | When implementing TDD |
| `build-resolver` | Build error resolution | When build fails |
| `refactor-cleaner` | Refactoring | When organizing code |

## Quick Reference

### Plan Agent Delegation
- Search needed → `explore` subagent
- Complex design → `planner` subagent
- Code exploration → `general` subagent

### Build Agent Delegation
- Implementation tasks → `general` subagent
- Specification check → `spec-reviewer` subagent
- Quality check → `code-reviewer` subagent
- Security check → `security-reviewer` subagent
