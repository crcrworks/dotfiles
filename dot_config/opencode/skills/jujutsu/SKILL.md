---
name: jujutsu
description: Jujutsu (jj) version control workflow. Use this skill when working with jj commands, commits, bookmarks, rebasing, or GitHub integration. Jujutsu is a modern VCS that uses Git as storage backend with a simpler mental model.
---

# Jujutsu (jj) Workflow

## Language Settings

- Write commit messages, PR titles, and descriptions in the user's language
- If requested in Japanese, write in Japanese
- **Keep type prefixes in English** (feat, fix, docs, etc.) for tooling compatibility
- Examples:
  - `feat(auth): ユーザー認証機能を追加`
  - `fix: ログイン時のnullポインタを修正`

## Key Concepts (Git との違い)

| Git | Jujutsu | 説明 |
|-----|---------|------|
| staged changes | なし | jj は自動的に全変更を追跡 |
| branch | bookmark | ブランチではなくブックマーク |
| HEAD | `@` | 現在の working-copy commit |
| `HEAD~1` | `@-` | 親コミット |
| commit hash | change ID | 短い ID で参照可能 |

## Core Commands

### 状態確認

```bash
jj status          # 現在の状態を確認
jj log             # コミット履歴を表示
jj diff            # 変更内容を表示
jj diff --git      # Git形式で差分表示
```

### コミット操作

```bash
# 新しいコミットを開始（現在の変更を確定して新しい空コミットを作成）
jj commit -m "feat: 新機能を追加"

# 現在のコミットに説明を追加/変更
jj describe -m "fix: バグを修正"

# 新しい空コミットを作成して移動
jj new              # 親は現在のコミット
jj new main         # main から新しいコミットを開始
jj new -m "feat: 作業開始" main

# 変更を親コミットに統合（squash）
jj squash           # 現在の変更を親に統合
jj squash --into <revision>  # 指定したコミットに統合
```

### Bookmark（ブランチ相当）

```bash
# bookmark 一覧
jj bookmark list

# bookmark 作成（現在のコミットの親に作成するのが一般的）
jj bookmark create feature-name -r @-

# bookmark 移動
jj bookmark move feature-name --to @

# bookmark 削除
jj bookmark delete feature-name
```

### GitHub 連携

```bash
# リモートから取得
jj git fetch

# push（bookmark を指定）
jj git push --bookmark feature-name

# 新しい bookmark を自動生成して push
jj git push -c @-    # 親コミットを push

# 新しい bookmark の push を許可
jj git push --allow-new
```

## Typical Workflows

### 1. 新機能開発

```bash
# main から新しいコミットを開始
jj new main

# コードを変更（自動的に追跡される）
# ...編集...

# 変更を確認
jj diff

# コミットメッセージを設定して次のコミットへ
jj commit -m "feat(auth): ユーザー認証を追加"

# さらに変更
# ...編集...
jj commit -m "feat(auth): ログアウト機能を追加"

# bookmark を作成して push
jj bookmark create auth-feature -r @-
jj git push --allow-new
```

### 2. PR の修正（レビュー対応）

```bash
# 修正したいコミットの上に新しいコミットを作成
jj new your-feature-    # 末尾の - は親を指す

# 修正を加える
# ...編集...

# 変更を親コミットに squash
jj squash

# push（自動的に force push される）
jj git push --bookmark your-feature
```

### 3. 作業中の変更を別コミットに移動

```bash
# 現在の変更を確認
jj diff

# 現在のコミットに説明を追加
jj describe -m "fix: アドレスPRコメント"

# bookmark を更新
jj bookmark move your-feature --to @

# push
jj git push
```

### 4. コミット履歴の整理

```bash
# 直近のコミットを squash
jj squash

# 特定のコミットに squash
jj squash --into <revision>

# コミットを並べ替え（rebase）
jj rebase -r <revision> -d <destination>
```

## Undo / Redo

```bash
# 直前の操作を取り消し
jj undo

# undo を取り消し
jj redo

# 操作履歴を確認
jj op log

# 特定の操作状態に戻す
jj op restore <operation-id>
```

## Revset（リビジョン指定）

```bash
@              # 現在の working-copy commit
@-             # 親コミット
@--            # 祖父母コミット
main           # bookmark 名
abc123         # change ID（短縮形可）
main..@        # main から @ までの範囲
```

## Conflict Resolution

```bash
# コンフリクトの確認
jj status

# コンフリクトを解決（エディタで直接、または）
jj resolve

# コンフリクトマーカー:
# <<<<<<< Side #1 (Conflict 1 of 1)
# 変更1
# %%%%%%%
# 変更2
# >>>>>>>
```

## Quick Reference

| 操作 | コマンド |
|------|---------|
| 状態確認 | `jj status` |
| 差分確認 | `jj diff` |
| 履歴確認 | `jj log` |
| コミット | `jj commit -m "message"` |
| 説明変更 | `jj describe -m "message"` |
| 新コミット | `jj new` |
| squash | `jj squash` |
| bookmark作成 | `jj bookmark create name -r @-` |
| push | `jj git push --bookmark name` |
| fetch | `jj git fetch` |
| undo | `jj undo` |

## Notes

- jj はステージング不要。ファイルを保存すると自動追跡
- `@` は常に working-copy commit を指す
- bookmark は Git の branch に相当するが、軽量で移動が容易
- コミットは immutable。変更すると新しい change ID が生成される
- `jj git push` は必要に応じて自動的に force push する
