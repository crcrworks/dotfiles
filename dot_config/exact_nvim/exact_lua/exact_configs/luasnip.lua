vim.g.vscode_snippets_path = vim.fn.stdpath "config" .. "/snippets"

-- vscode format
require("luasnip.loaders.from_vscode").lazy_load { exclude = vim.g.vscode_snippets_exclude or {} }
require("luasnip.loaders.from_vscode").lazy_load { paths = vim.g.vscode_snippets_path or "" }

-- snipmate format
require("luasnip.loaders.from_snipmate").load()
require("luasnip.loaders.from_snipmate").lazy_load { paths = vim.g.snipmate_snippets_path or "" }

-- lua format
require("luasnip.loaders.from_lua").load()
require("luasnip.loaders.from_lua").lazy_load { paths = vim.g.lua_snippets_path or "" }

local ls = require "luasnip"

vim.keymap.set({ "i" }, "<C-K>", function()
  ls.expand()
end, { silent = true })
vim.keymap.set({ "i", "s" }, "<C-l>", function()
  ls.jump(1)
end, { silent = true })
vim.keymap.set({ "i", "s" }, "<C-h>", function()
  ls.jump(-1)
end, { silent = true })

vim.keymap.set({ "i", "s" }, "<C-e>", function()
  if ls.choice_active() then
    ls.change_choice(1)
  end
end, { silent = true })

return {}
