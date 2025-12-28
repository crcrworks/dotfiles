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
    sort = function(a, b)
      -- Prioritize actions from rust_analyzer
      if a.client.name == "rust_analyzer" and b.client.name ~= "rust_analyzer" then
        return true
      elseif a.client.name ~= "rust_analyzer" and b.client.name == "rust_analyzer" then
        return false
      end

      -- Sort by action kind alphabetically
      local a_kind = a.action.kind or ""
      local b_kind = b.action.kind or ""
      return a_kind < b_kind
    end,
  },
}
