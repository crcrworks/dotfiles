local map = vim.keymap.set
local snacks = require "snacks"

map("n", "gl", function()
  vim.diagnostic.open_float()
end, { desc = "LSP diagnostic loclist" })

map("n", "gD", function()
  vim.lsp.buf.declaration()
end, { desc = "Declaration of current symbol" })

map("n", "gd", function()
  vim.lsp.buf.definition()
end, { desc = "Show the definition of current symbol" })

map("n", "<leader>ll", function()
  vim.lsp.codelens.refresh()
end, { desc = "LSP CodeLens refresh" })

map("n", "<leader>lL", function()
  vim.lsp.codelens.run()
end, { desc = "LSP CodeLens run" })

map("n", "<leader>uL", function()
  vim.lsp.codelens.toggle()
end, { desc = "LSP CodeLens run" })

map("n", "<leader>lD", function()
  snacks.picker.diagnostics()
end, { desc = "Search diagnostics" })

map({ "n", "x" }, "<leader>lf", function()
  require("conform").format { lsp_fallback = true }
end, { desc = "general format file" })
