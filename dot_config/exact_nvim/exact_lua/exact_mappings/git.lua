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

map("n", "<leader>gi", function()
  snacks.picker.gh_issue()
end, { desc = "GitHub Issues (open)" })

map("n", "<leader>gI", function()
  snacks.picker.gh_issue { state = "all" }
end, { desc = "GitHub Issues (all)" })

map("n", "<leader>gp", function()
  snacks.picker.gh_pr()
end, { desc = "GitHub Pull Requests (open)" })

map("n", "<leader>gP", function()
  snacks.picker.gh_pr { state = "all" }
end, { desc = "GitHub Pull Requests (all)" })
