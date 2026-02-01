# Verification Rules

## Verification Level: Standard

- Test passing
- Self-review
- Basic functionality verification

## Verification Flow

### Post-Implementation Verification (Build Agent)

1. **Test Execution**
   ```bash
   # Execute relevant test commands
   ```

2. **Static Analysis**
   ```bash
   # Type checking, linting, etc.
   ```

3. **Review by spec-reviewer**
   - Verify implementation matches the plan
   - Check for missing or excess functionality

4. **Review by code-reviewer**
   - Code quality verification
   - Best practices compliance check

### Verification Pass Criteria

| Check | Criteria |
|-------|----------|
| Tests | All PASS |
| Type Check | 0 errors |
| spec-reviewer | Approved |
| code-reviewer | Approved |

## Handling Failures

1. Request fixes from implementation subagent
2. Re-verify
3. Repeat until passed

## Verification Tools

- `lsp` tool: Get diagnostic information
- `bash` tool: Execute tests/commands
- `read` tool: Code verification
