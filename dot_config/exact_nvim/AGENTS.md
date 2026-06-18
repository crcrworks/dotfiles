# Neovim 設定概要

この Neovim 設定は、chezmoi で管理された AstroNvim v6 ベースの構成です。

## 前提

- AstroNvim v6（AstroLSP v4, `vim.lsp.config` API）
- **Mason は無効**（ツール管理は `mise` を使用）
- Treesitter: `auto_install = true`

---

## 設定ファイル構成

```
~/.config/nvim/
├── init.lua              # Lazy.nvim ブートストラップ
├── neovim.yml            # Selene 設定
├── selene.toml
├── .luarc.json           # Lua LSP 設定
├── .neoconf.json
├── .stylua.toml
├── AGENTS.md             # このファイル
└── lua/
    ├── community.lua     # AstroCommunity インポート
    ├── lazy_setup.lua    # Lazy.nvim セットアップ + AstroNvim 本体
    ├── polish.lua        # 最終フック（現在無効）
    └── plugins/
        ├── astro/        # AstroNvim コンポーネントの上書き
        │   ├── core.lua  #   機能、diagnostics、filetypes、autocmds、mappings
        │   ├── lsp.lua   #   LSP formatting、handlers、on_attach
        │   └── ui.lua    #   カラースキーム、ハイライト、アイコン
        ├── lang/         # 言語別設定
        │   ├── init.lua  #   各言語を import するエントリポイント
        │   ├── go.lua    #   gopls + goimports
        │   ├── rust.lua  #   rustaceanvim（rust-analyzer）
        │   ├── python.lua#   ruff（LSP + formatter）
        │   ├── typescript.lua  # vtsls/tsgo + oxlint + oxfmt
        │   ├── lua.lua   #   lua_ls + stylua + selene
        │   ├── svelte.lua#   svelte
        │   ├── html-css.lua   # html + cssls + emmet-ls
        │   ├── json.lua  #   jsonls
        │   ├── toml.lua  #   tombi
        │   ├── oxc.lua   #   oxlint + oxfmt（handlers 使用）
        │   └── ...各言語...
        ├── disabled.lua  # Mason 系プラグイン等を無効化
        ├── mason.lua     # Mason は無効（`:LspInstall` 非対応）
        ├── none-ls.lua   # null-ls 代替（現在未使用）
        ├── nvim_lint.lua # nvim-lint 設定
        ├── treesitter.lua# Treesitter パーサー設定
        └── ...その他プラグイン...
```

---

## ツール管理（mise）

Mason が無効のため、すべての LSP サーバー・フォーマッタ・リンターは **mise**（または Homebrew）でインストールします。

```bash
# mise でのインストール例
mise use -g <tool-name>

# Homebrew でのインストール例
brew install <tool-name>
```

現在 mise で管理しているツール一覧は以下で確認できます：

```bash
mise ls
```

---

## 言語設定のパターン

新しい言語を追加する場合は `plugins/lang/<language>.lua` を作成し、`plugins/lang/init.lua` でインポートします。

### 基本パターン

```lua
return {
  {
    "AstroNvim/astrocore",
    optional = true,
    ---@type AstroCoreOpts
    opts = {
      treesitter = { ensure_installed = { "<parser>" } },
    },
  },
  {
    "AstroNvim/astrolsp",
    optional = true,
    ---@type AstroLSPOpts
    opts = {
      servers = { "<lsp-server>" },
      ---@diagnostic disable: missing-fields
      config = {
        ["<lsp-server>"] = {
          cmd = { "<command>" },
          filetypes = { "<filetype>" },
          settings = { ... },
        },
      },
    },
  },
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        ["<filetype>"] = { "<formatter>" },
      },
    },
  },
}
```

### 各設定項目の説明

| 項目                                    | 役割                                          |
| --------------------------------------- | --------------------------------------------- |
| `astrocore.treesitter.ensure_installed` | Treesitter パーサー名を追加                   |
| `astrolsp.servers`                      | LSP サーバー名を追加（`vim.lsp.enable` 対象） |
| `astrolsp.config.<server>`              | `cmd`、`filetypes`、`settings` 等の LSP 設定  |
| `conform.nvim.formatters_by_ft[ft]`     | フォーマッタをファイルタイプに割り当て        |
| `nvim-lint.linters_by_ft[ft]`           | リンターをファイルタイプに割り当て            |

### 注意点

- Mason 無効のため、LSP サーバーは事前に mise / brew でインストールしておく必要があります
- `astrolsp.servers` に追加するだけで `vim.lsp.enable` が呼ばれ、LSP が有効になります
- フォーマットが有効な場合、`astro/lsp.lua` の `formatting.disabled` にその LSP が **含まれていないこと** を確認してください
- `astrolsp.handlers` を使って特定の LSP のセットアップをカスタマイズできます（例: `oxc.lua` の `oxlint` / `oxfmt` 設定）

---

## LSP フォーマット設定

`plugins/astro/lsp.lua` でフォーマットを制御しています：

```lua
formatting = {
  format_on_save = { enabled = true },
  enabled = {},      -- 明示的に有効化する LSP（通常は全サーバーが対象）
  disabled = {       -- フォーマットを無効化する LSP 一覧
    "svelte", "lua_ls", "tsgo", "vtsls",
    "jsonls", "tombi", "cssls", "html",
  },
}
```

新しい言語で LSP フォーマットを使う場合、その LSP 名が `disabled` に含まれていないか確認してください。

---

## Treesitter

`auto_install = true` が設定されているため、対応するパーサーはファイルを開いたときに自動インストールされます。
ただし、`ensure_installed` に明示的に追加することで、起動時に確実にインストールできます。

### パーサー名の確認

```vim
:TSInstallInfo
```

---

## 各言語の設定一覧

| 言語          | 設定ファイル          | LSP                          | Formatter              | Linter                      |
| ------------- | --------------------- | ---------------------------- | ---------------------- | --------------------------- |
| Go            | `lang/go.lua`         | gopls                        | goimports              | -                           |
| Rust          | `lang/rust.lua`       | rustaceanvim (rust-analyzer) | -                      | clippy (rust-analyzer 経由) |
| Python        | `lang/python.lua`     | ruff                         | ruff_fix + ruff_format | -                           |
| TypeScript/JS | `lang/typescript.lua` | vtsls / tsgo                 | oxfmt                  | oxlint                      |
| Lua           | `lang/lua.lua`        | lua_ls                       | stylua                 | selene                      |
| Svelte        | `lang/svelte.lua`     | svelte                       | -                      | -                           |
| HTML/CSS      | `lang/html-css.lua`   | html + cssls + emmet-ls      | -                      | -                           |
| JSON          | `lang/json.lua`       | jsonls                       | -                      | -                           |
| TOML          | `lang/toml.lua`       | tombi                        | -                      | -                           |
| Oxlint/Oxfmt  | `lang/oxc.lua`        | oxlint + oxfmt               | oxfmt                  | oxlint                      |
| Verilog/SV    | `lang/verilog.lua`    | verible                      | verible-verilog-format | verilator                   |

---

## 動作確認

Neovim 起動後、以下のコマンドで状態を確認できます：

```vim
:Lazy             " プラグイン一覧（新規追加の確認）
:LspInfo          " 現在のバッファにアタッチされている LSP
:TSInstallInfo    " Treesitter パーサーのインストール状況
:checkhealth      " 全般のヘルスチェック
```

---

## 参考リンク

- [AstroNvim ドキュメント](https://docs.astronvim.com/)
- [AstroCommunity / pack](https://github.com/AstroNvim/astrocommunity/tree/main/lua/astrocommunity/pack)
- [nvim-lspconfig サーバー一覧](https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md)
- [conform.nvim フォーマッタ一覧](https://github.com/stevearc/conform.nvim/blob/master/doc/recipes.md)
- [nvim-lint リンター一覧](https://github.com/mfussenegger/nvim-lint)
