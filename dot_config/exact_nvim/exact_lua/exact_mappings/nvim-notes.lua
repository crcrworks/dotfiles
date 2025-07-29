local map = vim.keymap.set

vim.keymap.set("n", "<leader>Nn", "<cmd>NotesNew<cr>", { desc = "New note" })
vim.keymap.set("n", "<leader>No", "<cmd>NotesOpen<cr>", { desc = "Open note" })
vim.keymap.set("n", "<leader>Nf", "<cmd>NotesSearch<cr>", { desc = "Find in notes" })
vim.keymap.set("n", "<leader>Nd", "<cmd>NotesDaily<cr>", { desc = "Daily note" })
vim.keymap.set("n", "<leader>Nq", "<cmd>NotesQuick<cr>", { desc = "Quick note" })
vim.keymap.set("n", "<leader>Nb", "<cmd>NotesBrowse<cr>", { desc = "Browse notes" })
vim.keymap.set("n", "<leader>Nl", "<cmd>NotesList<cr>", { desc = "List notes" })
