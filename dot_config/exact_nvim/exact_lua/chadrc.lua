---@type ChadrcConfig
local M = {}

local highlights = require "configs.highlights"

-- M.base46 = {
--   theme = "everforest",
--   hl_add = highlights.add,
--   hl_override = highlights.override,
-- }
--
-- M.lsp = {
--   signature = false,
-- }

-- M.ui = {
--   cmp = {
--     style = "atom_colored",
--   },
--
--   statusline = {
--     theme = "vscode_colored",
--     lazyload = true,
--     order = { "mode", "f", "git", "%=", "lsp_msg", "%=", "lsp", "cwd", "xyz", "abc" },
--     modules = nil,
--   },
--
--   tabufline = {
--     enabled = true,
--     lazyload = false,
--     order = { "treeOffset", "buffers", "tabs" },
--     bufwidth = 21,
--     modules = {
--       function(modules)
--         table.insert(modules, modules[1])
--       end,
--     },
--   },
-- }

return M
