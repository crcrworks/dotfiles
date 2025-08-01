-- Formatters:  https://github.com/stevearc/conform.nvim/tree/master/lua/conform/formatters

local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    scss = { "dprint" },
    javascript = { "dprint" },
    typescript = { "dprint" },
    typescriptreact = { "dprint" },
    javascriptreact = { "dprint" },
    fish = { "fish_indent" },
  },

  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options
