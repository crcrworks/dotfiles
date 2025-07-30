local map = vim.keymap.set
local snacks = require "snacks"

map("n", "<leader>gb", function()
  snacks.picker.git_branches()
end, { desc = "Git branches" })

map("n", "<leader>gc", function()
  snacks.picker.git_log()
end, { desc = "Git commits (repository)" })

map("n", "<leader>gC", function()
  snacks.picker.git_log { current_file = true, follow = true }
end, { desc = "Git commits (current file)" })

map("n", "<leader>gt", function()
  snacks.picker.git_status()
end, { desc = "Git status" })

map("n", "<leader>gT", function()
  snacks.picker.git_stash()
end, { desc = "Git stash" })

map("n", "<leader>gd", "<cmd>DiffviewOpen<cr>", { desc = "Git diff" })
