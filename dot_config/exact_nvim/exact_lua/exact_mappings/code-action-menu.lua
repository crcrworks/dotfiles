local map = vim.keymap.set

map("n", "<leader>la", function()
  require("tiny-code-action").code_action()
end, { noremap = true, silent = true })
