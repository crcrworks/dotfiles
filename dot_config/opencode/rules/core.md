# Core Rules

## スキル読み取り必須

以下のスキルを使用する前に、必ず`skill`ツールで読み取ること：

| エージェント | 使用前に読むスキル |
|-------------|------------------|
| Plan | `writing-plans` |
| Build | `executing-plans` |

**読み取り確認チェックリスト：**
- [ ] スキルを`skill`ツールで読み取った
- [ ] スキルの内容を理解した
- [ ] スキルの手順に従っている

## Git操作禁止

**gitコマンドは使用禁止。** 代わりにjujutsu（jj）を使用すること。

jujutsu操作が必要な場合は、`skill`ツールで`jujutsu`スキルを読み取ってから実行すること。

| 操作 | git（禁止） | jj（推奨） |
|------|-----------|-----------|
| ステータス確認 | `git status` | `jj status` |
| コミット作成 | `git commit` | `jj commit` / `jj describe` + `jj bookmark` |
| 変更追加 | `git add` | `jj squash` / 自動追跡 |
| ブランチ作成 | `git branch` | `jj bookmark create` |
| ログ確認 | `git log` | `jj log` |
| 差分確認 | `git diff` | `jj diff` |

**違反時：** ユーザーに指摘され、作業をやり直す。
