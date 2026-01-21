---
description: bookmarkからPRを作成 (conventional commit形式対応)
agent: build
model: zai-coding-plan/glm-4.7 
---

指定されたbookmarkからGitHub PRを作成してください。n8nのconventional commit形式とPR bodyテンプレートを採用しています。

## 引数
- bookmark名: $1
- 言語: $2 (`en` または `ja`、省略時は `ja`)

## バリデーション
- **bookmark名が指定されていない場合は、エラーメッセージを表示して終了してください。**
- **言語が `en` または `ja` 以外の場合は、エラーメッセージを表示して終了してください。**

使用方法: `/create-pr <bookmark名> [言語]`

## 前提
- jujutsuを使用しています。fishシェルで実行してください。
- PRのベースブランチはmainです。

## 手順
1. `fish -c 'ju bookmark list'` でbookmarkの存在を確認
2. `fish -c 'ju log -r "main::$1"'` でmainからの変更を確認
3. 変更内容を分析してPRのタイトルと説明を作成
4. `fish -c 'ju git push --bookmark $1'` でリモートにpush
5. `gh pr create --head $1 --base main` でPRを作成

## PRタイトル形式 (Conventional Commits)

```
<type>(<scope>): <summary>
```

### タイプ (必須)

| タイプ   | 説明                    |
|----------|-------------------------|
| `feat`   | 新機能                  |
| `fix`    | バグ修正                |
| `perf`   | パフォーマンス改善      |
| `test`   | テストの追加/修正        |
| `docs`   | ドキュメントのみ        |
| `refactor` | リファクタリング      |
| `build`  | ビルドシステム/依存関係 |
| `ci`     | CI設定                  |
| `chore`   | その他のタスク          |

### スコープ (推奨、オプション)

- `API` - パブリックAPI変更
- `core` - コア/バックエンド
- `ui` - UI変更
- 特定のモジュール名 (例: `auth`, `db`)

### サマリーのルール

- 命令形現在形: "Add" ではなく "追加" (ja), "Add" (en)
- 最初の文字は大文字
- 最後にピリオドをつけない
- チケットIDを含めない

### 例

```
feat(auth): JWT認証を追加
fix(core): メモリリークを修正
refactor(db): クエリ最適化 (no-changelog)
perf(ui): レンダリング速度を改善
```

## PRボディテンプレート

```bash
gh pr create --head $1 --base main --title "PRタイトル" --body "$(cat <<'EOF'
## Summary

<変更内容の説明。テスト方法も含める。UI変更の場合はスクリーンショットを推奨。>

## Related Issues

<!-- 関連するissue: closes #123, fixes #123, resolves #123 -->

## Review / Merge checklist

- [ ] PRタイトルはconventional commit形式に従っている
- [ ] ドキュメントが更新されている、または追従チケットがある
- [ ] テストが含まれている
- [ ] コードレビューを受けた

## Changes

- 変更点1
- 変更点2
EOF
)"
```

## 言語設定
- `ja` (デフォルト): PRタイトルと説明を日本語で記述
- `en`: PRタイトルと説明を英語で記述

PRのタイトルと説明は変更の「なぜ」を重視し、簡潔に記述してください。
作成したPRのURLを表示してください。
