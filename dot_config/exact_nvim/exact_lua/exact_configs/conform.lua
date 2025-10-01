-- Formatters:  https://github.com/stevearc/conform.nvim/tree/master/lua/conform/formatters

local options = {
  formatters = {
    dprint = {
      require_cwd = true,
    },
    ["biome-check"] = {
      require_cwd = true,
    },
  },

  formatters_by_ft = {
    lua = { "stylua" },
    scss = { "dprint" },
    javascript = { "dprint", "biome-check" },
    typescript = { "dprint", "biome-check" },
    typescriptreact = { "dprint", "biome-check" },
    javascriptreact = { "dprint", "biome-check" },
    fish = { "fish_indent" },
    typst = { "typstyle" },
  },

  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options
