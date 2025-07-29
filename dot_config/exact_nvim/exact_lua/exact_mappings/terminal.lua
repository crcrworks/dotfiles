local map = vim.keymap.set
local terminal = require "nvchad.term"

map("t", "<C-x>", "<C-\\><C-N>", { desc = "terminal escape terminal mode" })

map("n", "<leader>h", function()
  terminal.new { pos = "sp" }
end, { desc = "terminal new horizontal term" })

map("n", "<leader>v", function()
  terminal.new { pos = "vsp" }
end, { desc = "terminal new vertical term" })
