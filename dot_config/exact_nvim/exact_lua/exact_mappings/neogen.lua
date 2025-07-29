local map = vim.keymap.set

map("n", "<leader>a<cr>", function()
  require("neogen").generate { type = "any" }
end)
