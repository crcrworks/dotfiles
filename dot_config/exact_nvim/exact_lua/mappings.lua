local map = vim.keymap.set

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
  require("nvchad.tabufline").next()
end, { desc = "buffer goto next" })

map("n", "<S-tab>", function()
  require("nvchad.tabufline").prev()
end, { desc = "buffer goto prev" })

map("n", "<leader>c", function()
  require("nvchad.tabufline").close_buffer()
end, { desc = "buffer close" })

map("n", "<leader>/", "gcc", { desc = "toggle comment", remap = true })
map("v", "<leader>/", "gc", { desc = "toggle comment", remap = true })

-- picker

map("n", "<leader>gb", function()
  require("snacks").picker.git_branches()
end, { desc = "Git branches" })

map("n", "<leader>gc", function()
  require("snacks").picker.git_log()
end, { desc = "Git commits (repository)" })

map("n", "<leader>gC", function()
  require("snacks").picker.git_log { current_file = true, follow = true }
end, { desc = "Git commits (current file)" })

map("n", "<leader>gt", function()
  require("snacks").picker.git_status()
end, { desc = "Git status" })

map("n", "<leader>gT", function()
  require("snacks").picker.git_stash()
end, { desc = "Git stash" })

map("n", "<leader>ff", function()
  require("snacks").picker.files {
    hidden = vim.tbl_get((vim.uv or vim.loop).fs_stat ".git" or {}, "type") == "directory",
  }
end, { desc = "Find files" })

map("n", "<leader>fF", function()
  require("snacks").picker.files { hidden = true, ignored = true }
end, { desc = "Find all files" })

map("n", "<leader>fw", function()
  require("snacks").picker.grep()
end, { desc = "Find words" })

map("n", "<leader>fW", function()
  require("snacks").picker.grep { hidden = true, ignored = true }
end, { desc = "Find words in  all files" })

map("n", "<leader>f'", function()
  require("snacks").picker.marks()
end, { desc = "Find marks" })

map("n", "<leader>fl", function()
  require("snacks").picker.lines()
end, { desc = "Find lines" })

map("n", "<leader>fb", function()
  require("snacks").picker.buffers()
end, { desc = "Find buffers" })

map("n", "<leader>fc", function()
  require("snacks").picker.grep_word()
end, { desc = "Find word under cursor" })

map("n", "<leader>fC", function()
  require("snacks").picker.commands()
end, { desc = "Find commands" })

map("n", "<leader>fg", function()
  require("snacks").picker.git_files()
end, { desc = "Find git files" })

map("n", "<leader>fh", function()
  require("snacks").picker.help()
end, { desc = "Find git files" })

map("n", "<leader>fk", function()
  require("snacks").picker.keymaps()
end, { desc = "Find keymaps" })

map("n", "<leader>fm", function()
  require("snacks").picker.man()
end, { desc = "Find man" })

map("n", "<leader>fn", function()
  require("snacks").picker.notifications()
end, { desc = "Find notifications" })

map("n", "<leader>fo", function()
  require("snacks").picker.recent()
end, { desc = "Find old Files" })

map("n", "<leader>fO", function()
  require("snacks").picker.recent { filder = { cwd = true } }
end, { desc = "Find old Files(cwd)" })

map("n", "<leader>fp", function()
  require("snacks").picker.projects()
end, { desc = "Find projects" })

map("n", "<leader>fr", function()
  require("snacks").picker.registers()
end, { desc = "Find registers" })

map("n", "<leader>fs", function()
  require("snacks").picker.smart()
end, { desc = "Find buffers/recent/registers" })

map("n", "<leader>ft", function()
  require("snacks").picker.colorschemes()
end, { desc = "Find themes" })

map("n", "<leader>fi", function()
  require("snacks").picker.highlights()
end, { desc = "Find highlights" })

map("n", "<leader>fu", function()
  require("snacks").picker.undo()
end, { desc = "Find undo history" })

map("n", "<leader>ls", function()
  local aerial_avail, aerial = pcall(require, "aerial")
  if aerial_avail and aerial.snacks_picker then
    aerial.snacks_picker()
  else
    require("snacks").picker.lsp_symbols()
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
  require("snacks").picker.diagnostics()
end, { desc = "Search diagnostics" })
