local theme = require "base46.themes.everforest"

return {
  {
    "lukas-reineke/indent-blankline.nvim",
    enabled = false,
  },
  {
    "shellRaining/hlchunk.nvim",
    event = { "BufRead" },
    config = function()
      require("hlchunk").setup {
        ---@diagnostic disable-next-line: assign-type-mismatch
        chunk = {
          enable = true,
          notify = true,
          use_treesitter = false,
          -- details about support_filetypes and exclude_filetypes in https://github.com/shellRaining/hlchunk.nvim/blob/main/lua/hlchunk/utils/filetype.lua
          chars = {
            horizontal_line = "─",
            vertical_line = "│",
            left_top = "╭",
            left_bottom = "╰",
            right_arrow = ">",
          },
          style = {
            { fg = theme.base_30.light_grey },
            { fg = theme.base_30.red }, -- this fg is used to highlight wrong chunk
          },
          textobject = "",
          max_file_size = 1024 * 1024,
          error_sign = true,
          duration = 0,
          delay = 0,
        },

        indent = {
          enable = true,
          use_treesitter = false,
          chars = {
            "│",
          },
          style = {
            { fg = vim.fn.synIDattr(vim.fn.synIDtrans(vim.fn.hlID "Whitespace"), "fg", "gui") },
          },
        },

        line_num = {
          enable = true,
          use_treesitter = false,
          style = theme.base_30.light_grey,
        },
      }
    end,
  },
}
