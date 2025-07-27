local map = vim.keymap.set
map("n", "<leader>m", "<Cmd>TSJToggle<CR>", { desc = "Toggle Treesitter Join" })

return {
  "Wansmer/treesj",
  cmd = { "TSJToggle", "TSJSplit", "TSJJoin" },
  opts = { use_default_keymaps = false },
}
