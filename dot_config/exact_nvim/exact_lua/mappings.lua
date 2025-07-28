local map = vim.keymap.set
local tabufline = require "nvchad.tabufline"
local snacks = require "snacks"

map("n", ";", ":", { desc = "CMD enter command mode" })

map("n", "<leader><enter>", "<cmd>noh<cr>")
map("n", "<Leader>w", "<cmd>w<cr>")
map("n", "<C-s>", "<cmd>w<cr>")

map("n", "<Leader>e", "<cmd>NvimTreeToggle<cr>")
map("n", "<Leader>o", "<cmd>NvimTreeFocus<cr>")

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

-- picker

map("n", "<leader>gb", function()
  snacks.picker.git_branches()
end, { desc = "Git branches" })

map("n", "<leader>gc", function()
  snacks.picker.git_log()
end, { desc = "Git commits (repository)" })

map("n", "<leader>gC", function()
  snacks.picker.git_log { current_file = true, follow = true }
end, { desc = "Git commits (current file)" })

map("n", "<leader>gt", function()
  snacks.picker.git_status()
end, { desc = "Git status" })

map("n", "<leader>gT", function()
  snacks.picker.git_stash()
end, { desc = "Git stash" })

map("n", "<leader>ff", function()
  snacks.picker.files {
    hidden = vim.tbl_get((vim.uv or vim.loop).fs_stat ".git" or {}, "type") == "directory",
  }
end, { desc = "Find files" })

map("n", "<leader>fF", function()
  snacks.picker.files { hidden = true, ignored = true }
end, { desc = "Find all files" })

map("n", "<leader>fw", function()
  snacks.picker.grep()
end, { desc = "Find words" })

map("n", "<leader>fW", function()
  snacks.picker.grep { hidden = true, ignored = true }
end, { desc = "Find words in  all files" })

map("n", "<leader>f'", function()
  snacks.picker.marks()
end, { desc = "Find marks" })

map("n", "<leader>fl", function()
  snacks.picker.lines()
end, { desc = "Find lines" })

map("n", "<leader>fb", function()
  snacks.picker.buffers()
end, { desc = "Find buffers" })

map("n", "<leader>fc", function()
  snacks.picker.grep_word()
end, { desc = "Find word under cursor" })

map("n", "<leader>fC", function()
  snacks.picker.commands()
end, { desc = "Find commands" })

map("n", "<leader>fg", function()
  snacks.picker.git_files()
end, { desc = "Find git files" })

map("n", "<leader>fh", function()
  snacks.picker.help()
end, { desc = "Find git files" })

map("n", "<leader>fk", function()
  snacks.picker.keymaps()
end, { desc = "Find keymaps" })

map("n", "<leader>fm", function()
  snacks.picker.man()
end, { desc = "Find man" })

map("n", "<leader>fo", function()
  snacks.picker.recent()
end, { desc = "Find old Files" })

map("n", "<leader>fO", function()
  snacks.picker.recent { filder = { cwd = true } }
end, { desc = "Find old Files(cwd)" })

map("n", "<leader>fp", function()
  snacks.picker.projects()
end, { desc = "Find projects" })

map("n", "<leader>fr", function()
  snacks.picker.registers()
end, { desc = "Find registers" })

map("n", "<leader>fs", function()
  snacks.picker.smart()
end, { desc = "Find buffers/recent/registers" })

map("n", "<leader>ft", function()
  require("nvchad.themes").open()
end, { desc = "Find themes" })

map("n", "<leader>fi", function()
  snacks.picker.highlights()
end, { desc = "Find highlights" })

map("n", "<leader>fu", function()
  snacks.picker.undo()
end, { desc = "Find undo history" })

map("n", "<leader>ls", function()
  local aerial_avail, aerial = pcall(require, "aerial")
  if aerial_avail and aerial.snacks_picker then
    aerial.snacks_picker()
  else
    snacks.picker.lsp_symbols()
  end
end, { desc = "Search symbols" })

-- terminal
map("t", "<C-x>", "<C-\\><C-N>", { desc = "terminal escape terminal mode" })

-- new terminals
map("n", "<leader>h", function()
  require("nvchad.term").new { pos = "sp" }
end, { desc = "terminal new horizontal term" })

map("n", "<leader>v", function()
  require("nvchad.term").new { pos = "vsp" }
end, { desc = "terminal new vertical term" })

map("n", "<leader>ps", "<cmd>Lazy<cr>")
map("n", "<leader>pm", "<cmd>Mason<cr>")

-- LSP
map("n", "gl", function()
  vim.diagnostic.open_float()
end, { desc = "LSP diagnostic loclist" })

map("n", "gD", function()
  vim.lsp.buf.declaration()
end, { desc = "Declaration of current symbol" })

map("n", "gd", function()
  vim.lsp.buf.definition()
end, { desc = "Show the definition of current symbol" })

map("n", "<leader>ll", function()
  vim.lsp.codelens.refresh()
end, { desc = "LSP CodeLens refresh" })

map("n", "<leader>lL", function()
  vim.lsp.codelens.run()
end, { desc = "LSP CodeLens run" })

map("n", "<leader>uL", function()
  vim.lsp.codelens.toggle()
end, { desc = "LSP CodeLens run" })

map("n", "<leader>lD", function()
  snacks.picker.diagnostics()
end, { desc = "Search diagnostics" })

map({ "n", "x" }, "<leader>lf", function()
  require("conform").format { lsp_fallback = true }
end, { desc = "general format file" })
