---
name: git-commit-message
description: Formulate a git commit message. Use this skill whenever asked to create a commit message.
---

Create a commit message summarizing the changes just made. Only take staged changes into account.

## Language Settings

- Write commit messages in the user's language (follow the language of user's request)
- If requested in Japanese, write subject and body in Japanese
- **Keep type prefixes in English** (feat, fix, docs, etc.) for tooling compatibility
- Example (Japanese): `feat(auth): ユーザー認証機能を追加`

<important>
Follow The seven rules of a great Git commit message (https://cbea.ms/git-commit/#seven-rules) to the letter.
</important>

## Scan for what is staged

Use the context to construct a good message but make sure to only address the scope that is currently staged in git.

List files that are staged (in the index):
<command>
git diff --cached --name-only
</command>

Show the full diff of staged changes:
<command>
git diff --cached
</command>

## Rules

1. Separate subject from body with a blank line
2. Limit the subject line to 50 characters
3. Capitalize the subject line
4. Do not end the subject line with a period
5. Use the imperative mood in the subject line
6. Wrap the body at 72 characters
7. Use the body to explain what and why vs. how
