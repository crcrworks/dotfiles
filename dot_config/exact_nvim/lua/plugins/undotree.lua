local map = vim.keymap.set
map("n", "<Leader>fu", "<cmd>UndotreeToggle<cr>")

return {
  "mbbill/undotree",
  cmd = "UndotreeToggle",
}
