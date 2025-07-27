local map = vim.keymap.set

map("n", "<leader>la", function()
  require("tiny-code-action").code_action()
end, { noremap = true, silent = true })

return {
  "rachartier/tiny-code-action.nvim",
  dependencies = {
    { "nvim-lua/plenary.nvim" },
  },
  event = "LspAttach",
  opts = {
    picker = "snacks",
  },
}
