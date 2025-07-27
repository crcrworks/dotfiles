local map = vim.keymap.set
map("n", "<leader>a<cr>", function()
  require("neogen").generate { type = "any" }
end)

return {
  "danymat/neogen",
  cmd = "Neogen",
  opts = {
    snippet_engine = "luasnip",
    languages = {
      javascript = { template = { annotation_convention = "jsdoc" } },
      javascriptreact = { template = { annotation_convention = "jsdoc" } },
      lua = { template = { annotation_convention = "ldoc" } },
      ruby = { template = { annotation_convention = "yard" } },
      typescript = { template = { annotation_convention = "tsdoc" } },
      typescriptreact = { template = { annotation_convention = "tsdoc" } },
    },
  },
}
