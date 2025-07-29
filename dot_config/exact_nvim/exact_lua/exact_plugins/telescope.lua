dofile(vim.g.base46_cache .. "telescope")

return {
  "nvim-telescope/telescope.nvim",
  cmds = "<leader>fn",
  opts = {
    defaults = {
      prompt_prefix = "   ",
      selection_caret = " ",
      entry_prefix = " ",
      sorting_strategy = "ascending",
      layout_config = {
        horizontal = {
          prompt_position = "top",
          preview_width = 0.55,
        },
        width = 0.87,
        height = 0.80,
      },
    },

    extensions_list = { "themes", "terms" },
    extensions = {},
  },
}
