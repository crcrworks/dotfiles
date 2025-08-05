-- Formatters:  https://github.com/stevearc/conform.nvim/tree/master/lua/conform/formatters

return {
  formatters_by_ft = {
    lua = { "stylua" },
    fish = { "fish_indent" },
  },

  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },
}
