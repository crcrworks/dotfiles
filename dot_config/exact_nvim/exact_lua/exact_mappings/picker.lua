local map = vim.keymap.set
local snacks = require "snacks"

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
