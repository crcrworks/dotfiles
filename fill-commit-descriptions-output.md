# ジュジューツコミット説明埋め込み結果

## 概要

コミット説明が空だった 4 つのコミットを特定し、それぞれに conventional commit 形式の説明を付与しました。

## 処理したコミット一覧

### 1. `c04a982a` (変更ID: `myzmlskyrmlr`)
**種別:** `chore`
**説明:** `chore: update skill lock and add goimports to gopls servers`

**変更内容:**
- `dot_agents/.skill-lock.json` 追加 — vercel-labs/skills と cnwzhu/gpui-skills の最新スキルハッシュ
- `dot_agents/fill-commit-descriptions.md` 追加 — ジュジューツコミット説明自動化エージェントスキル
- `dot_config/exact_nvim/exact_lua/exact_plugins/exact_lang/go.lua` 修正 — gopls サーバーに goimports を追加

---

### 2. `cfcccc1f` (変更ID: `nnoqqvztzqyw`)
**種別:** `feat`
**説明:** `feat(nvim): add Kitty-aware split navigation with Ctrl+hjkl`

**変更内容:**
- `dot_config/exact_nvim/exact_lua/kitty_split_nav.lua` 追加 — Vim ウィンドウ移動 + Kitty ペインフォールバック
- `dot_config/kitty/navigate_kitty.py` 追加 — Kitty タブペイン移動キティーン
- `dot_config/kitty/pass_keys.py` 追加 — vim/nvim/fzf でのキーパススルー対応キティーン
- `dot_config/exact_nvim/exact_lua/exact_astro/core.lua` 修正 — Ctrl+hjkl で分割/Kitty 移動をバインド

---

### 3. `4069aef7` (変更ID: `skwttnnolprz`)
**種別:** `chore`
**説明:** `chore(pi): enable skills directory in agent settings`

**変更内容:**
- `dot_pi/agent/settings.json` 修正 — `skills` エントリとして `~/.agents/skills` を追加

---

### 4. `05526463` (変更ID: `kmqtrzslsywo`)
**種別:** `feat`
**説明:** `feat(nvim-astro): add Go/Svelte/TypeScript language packs and cursor config`

**変更内容:**
- `dot_config/exact_nvim_astro/lua/community.lua` 修正 — Go, Svelte, TypeScript の言語パックを追加
- `dot_config/exact_nvim_astro/lua/plugins/astrocore.lua` 修正 — `guicursor` (c-i:hor20) を追加

---

## まとめ

| コミットID | 種別 | 説明 |
|-----------|------|------|
| `c04a982a` | chore | skill lock 更新 & gopls に goimports 追加 |
| `cfcccc1f` | feat | Kitty 対応スプリットナビ追加 (Ctrl+hjkl) |
| `4069aef7` | chore | Pi エージェントに skills ディレクトリ有効化 |
| `05526463` | feat | Go/Svelte/TypeScript 言語パック & カーソル設定 |
