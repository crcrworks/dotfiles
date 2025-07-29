local map = vim.keymap.set

map("n", "<leader>fn", function()
  require("noice").cmd "telescope"
end, { desc = "Find notifications" })

map("n", "<leader>fN", function()
  require("noice").cmd "all"
end, { desc = "Find all notifications" })
