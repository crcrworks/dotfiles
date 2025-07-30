local map = vim.keymap.set
local tabufline = require "ui.tabufline"

map("n", "<space>pb", function()
  require("base46").compile()
end, { desc = "Build theme to cache" })

map("n", ";", ":", { desc = "CMD enter command mode" })

map("n", "<leader><enter>", "<cmd>noh<cr>")
map("n", "<Leader>w", "<cmd>w<cr>")
map("n", "<C-s>", "<cmd>w<cr>")

map("i", "<C-b>", "<ESC>^i", { desc = "move beginning of line" })
map("i", "<C-e>", "<End>", { desc = "move end of line" })
map("i", "<C-h>", "<Left>", { desc = "move left" })
map("i", "<C-l>", "<Right>", { desc = "move right" })
map("i", "<C-j>", "<Down>", { desc = "move down" })
map("i", "<C-k>", "<Up>", { desc = "move up" })

map("n", "<C-h>", "<C-w>h", { desc = "switch window left" })
map("n", "<C-l>", "<C-w>l", { desc = "switch window right" })
map("n", "<C-j>", "<C-w>j", { desc = "switch window down" })
map("n", "<C-k>", "<C-w>k", { desc = "switch window up" })

map("n", "<tab>", function()
  tabufline.next()
end, { desc = "buffer goto next" })

map("n", "<S-tab>", function()
  tabufline.prev()
end, { desc = "buffer goto prev" })

map("v", "<tab>", ">gv", { desc = "buffer goto next" })
map("v", "<S-tab>", "<gv", { desc = "buffer goto prev" })

map("n", "<leader>c", function()
  tabufline.close_buffer()
end, { desc = "buffer close" })

map("n", "<leader>/", "gcc", { desc = "toggle comment", remap = true })
map("v", "<leader>/", "gc", { desc = "toggle comment", remap = true })

map("n", "<leader>ps", "<cmd>Lazy<cr>")
map("n", "<leader>pm", "<cmd>Mason<cr>")

map("n", "<leader>tr", function()
  require("base46").load_all_highlights()
  print "Theme reloaded: everforest"
end, { desc = "Reload theme" })

vim.cmd [[
  xnoremap p "_dP
]]
