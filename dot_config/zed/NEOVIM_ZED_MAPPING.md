# Neovim（chezmoi）→ Zed 移行対応表

元の Neovim 設定: `~/.local/share/chezmoi/dot_config/exact_nvim`（展開先 `~/.config/nvim`）。

Zed 設定は `~/.config/zed/` に `chezmoi apply` で配置する。

## 公式コマンド名の対応（inventory）

| Neovim | Zed アクション | 備考 |
|--------|----------------|------|
| `<leader>` = スペース | `keymap.json` で `space …` 連打 | 標準 Vim では `space` は他用途のため、**ユーザー keymap で上書き**（長いシーケンスはプレフィックス待ちになる） |
| `;` → `:` | `command_palette::Toggle` | Nvim では `;` をコマンドラインに再割当。**Vim の `;`（find 繰り返し）は使えなくなる** |
| `<leader><CR>` noh | `editor::Cancel` | 完全同等ではない。問題あればコマンドパレットで `noh` / 検索バーを閉じる操作を使う |
| `<leader>w` | `workspace::Save` | |
| Insert `C-b` / `C-e` / `C-h` / `C-l` / `C-j` / `C-k` | `editor::MoveToBeginningOfLine` 等 | `options.lua` のノーマル系移動に合わせた |
| Normal `C-h/j/k/l` ウィンドウ | `workspace::ActivatePane*` | Nvim の `C-w h` 相当 |
| `<Tab>` / `<S-Tab>` バッファ | `pane::ActivateNextItem` / `pane::ActivatePreviousItem` | Zed の「タブ」と Nvim バッファは別モデル |
| `\` / `\|` スプリット | `pane::SplitDown` / `pane::SplitRight` | |
| `<leader>c` バッファ閉じる | `pane::CloseActiveItem` | Zed 標準の `space c`（コメント）を置き換え |
| `<leader>b` バッファ並べ替え | `tab_switcher::Toggle` | 「最近順ソート」そのものではないがピッカーに近い |
| `<leader>/` コメント | `editor::ToggleComments` | visual も別コンテキストで同一アクション |
| `<leader>ps` Lazy | `zed::Extensions` | **別物**（拡張ギャラリー） |
| `<leader>pm` Mason | `zed::OpenSettings` | **別物**（LSP バイナリ管理ではない） |
| `<leader>tr` テーマ | `theme_selector::Toggle` | |
| `<leader>e` / `<leader>o` NvimTree | `workspace::ToggleLeftDock` / `project_panel::ToggleFocus` | 左ドック＋サイドバーフォーカス |
| `<leader>h` / `<leader>v` 端末分割 | `pane::SplitDown` / `pane::SplitRight` | Nvim の「端末を分割で開く」とは異なり、**ペイン分割のみ**。端末は `ctrl-~` 等 |
| Snacks `<leader>ff` | `file_finder::Toggle` | |
| `<leader>fF` | `file_finder::Toggle` | 隠し/無視ファイルはファインダー内フィルタ（`cmd-shift-i` 等）で代替 |
| `<leader>fw` / `fW` | `pane::DeploySearch` | `replace_enabled` は Zed の project search 設定に従う |
| `<leader>f'` marks | （未バインド） | **ギャップ** |
| `<leader>fb` | `tab_switcher::Toggle` | |
| `<leader>fc` | `buffer_search::Deploy` + `selection_search_enabled` | |
| `<leader>fC` | `command_palette::Toggle` | コマンド一覧の代替 |
| `<leader>fg` | `file_finder::Toggle` | tracked files のみ、はファインダー・検索で代替 |
| `<leader>fl` | `buffer_search::Deploy` | バッファ内検索（fuzzy lines ではない） |
| `<leader>fh` help | `zed::OpenSettings` | `:help` 相当なし。ドキュメント閲覧はオンライン等 |
| `<leader>fk` | `zed::OpenKeymap` | |
| `<leader>fm` man | — | **ギャップ** |
| `<leader>fo` / `fO` | `file_finder::Toggle` | 「cwd のみ recent」は別 UI |
| `<leader>fp` | `projects::OpenRecent` | プロジェクト最近一覧 |
| `<leader>fr` registers | — | **ギャップ** |
| `<leader>fs` smart | `tab_switcher::Toggle` | |
| `<leader>fi` highlights | — | **ギャップ** |
| `<leader>fu` undo | — | **ギャップ** |
| `<leader>ls` symbols | `project_symbols::Toggle` | ファイル内アウトラインは `outline::Toggle`（`cmd-b` 周辺のデフォルトも参照） |
| `gd` / `gD` / `gl` | （vim デフォルトの `g d` 等） | ほぼ Zed vim バンドル既定で賄える。`gl` は `editor::Hover` で近似 |
| `<leader>lf` format | `editor::Format` | |
| `<leader>lD` diagnostics | `diagnostics::Deploy` | |
| `<leader>la` code action | `editor::ToggleCodeActions` | |
| `<leader>ll` / `lL` / `uL` CodeLens | — | **ギャップ** |
| `<leader>gb` | `branches::OpenRecent` | |
| `<leader>gc` | `git::ReviewDiff` | 厳密な「ログ UI」ではない |
| `<leader>gC` | `git::Blame` | 現ファイル履歴の近似 |
| `<leader>gt` | `git_panel::ToggleFocus` | |
| `<leader>gT` stash | — | **ギャップ**（stash ピッカー単体起動は要パレット探索） |
| `<leader>gd` Diffview | `git::Diff` | |
| `<leader>gi` / `gI` / `gp` / `gP` gh | — | **ギャップ**（CLI / ブラウザ） |
| Noice / Treesj / Neogen / nvim-notes / Strudel | （keymap では未バインド） | **ギャップ**（別ツール or コマンドパレット） |

## ギャップ分類ラベル

- **Zed 標準で代替**: 保存・検索・Git パネル・LSP・コメント・分割など。
- **拡張・外部ツール**: Mason/Lazy、Snacks の高度なピッカー、GitHub Issues/PR、nvim-notes、Strudel。
- **諦め / 将来**: CodeLens 操作、registers/undo ツリー、ハイライトグループピッカー、Treesj 相当の構造トグル一本化。

## 1 日 dogfood 検証チェックリスト（完了条件）

`chezmoi apply` 後に Zed を起動し、以下を手で確認する。

1. **vim_mode** が有効で、通常の `hjkl` やビジュアルが破綻していないか。
2. **`space` リーダー**: `space w` で保存、`space f f` でファイル検索、`space /` でコメントが期待どおりか（`space` 単打と干渉しないか）。
3. **`;`**: コマンドパレットが開くか。find 繰り返しを使うなら別キーを検討。
4. **`ctrl-h/j/k/l`**: 分割ペイン間フォーカスが動くか。
5. **`<Tab>`**: タブ移動が使い物になるか。衝突があれば `context` を調整。
6. **Git**: `space g t` でパネル、`space g b` でブランチが開くか。
7. **terminal**: `space h/v` はエディタ分割のみ。端末利用フローが足りなければ `workspace::NewTerminal` を別キーに足す。

問題が出たら `keymap.json` の該当ブロックをコメント（JSON 不可）ではなく、配列の後ろに差分ブロックを追加して優先度で上書きする。

参考: [Zed Key bindings](https://zed.dev/docs/key-bindings)、[Vim Mode](https://zed.dev/docs/vim)、[default-macos.json](https://github.com/zed-industries/zed/blob/main/assets/keymaps/default-macos.json)。
