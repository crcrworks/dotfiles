local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    scss = { "prettierd" },
    javascript = { "biome-check" },
    typescript = { "biome-check" },
    typescriptreact = { "biome-check" },
    javascriptreact = { "biome-check" },
    fish = { "fish_indent" },

    -- html = { "prettier" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options
