-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(
--
-- local theme = require("base46.themes.everforest").base_30

---@type ChadrcConfig
local M = {}
--
-- vim.api.nvim_set_hl(0, "SnacksPickerBorder", { fg = theme.black })
-- vim.api.nvim_set_hl(0, "SnacksPickerCol", { fg = theme.vibrant_green })
-- vim.api.nvim_set_hl(0, "SnacksPickerDesc", { fg = theme.vibrant_green })
-- vim.api.nvim_set_hl(0, "SnacksPickerTree", { fg = theme.vibrant_green })
-- vim.api.nvim_set_hl(0, "SnacksPickerDir", { fg = theme.vibrant_green })
-- vim.api.nvim_set_hl(0, "SnacksDashboardDir", { fg = theme.vibrant_green })

M.base46 = {
  theme = "everforest",
}

M.ui = {
  cmp = {
    style = "atom_colored",
  },

  statusline = {
    theme = "vscode_colored",
  },

  tabufline = {
    enabled = true,
    lazyload = true,
    order = { "treeOffset", "buffers", "tabs" },
    bufwidth = 21,
    modules = {
      function(modules)
        table.insert(modules, modules[1])
      end,
    },
  },
}

return M
