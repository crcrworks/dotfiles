local map = vim.keymap.set

map("n", "<leader>fn", function()
  require("snacks").notifier.show_history {}
end, { desc = "Find notifications" })

map("n", "<leader>fN", function()
  require("noice").cmd "all"
end, { desc = "Find all notifications" })
