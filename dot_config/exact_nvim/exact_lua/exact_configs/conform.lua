-- Formatters:  https://github.com/stevearc/conform.nvim/tree/master/lua/conform/formatters

local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    scss = { "stylelint" },
    javascript = { "biome-check" },
    typescript = { "biome-check" },
    typescriptreact = { "biome-check" },
    javascriptreact = { "biome-check" },
    fish = { "fish_indent" },
  },

  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options
