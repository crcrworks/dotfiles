return {
  "Samar-exe/nvim-notes",
  cmd = { "NotesNew", "NotesOpen", "NotesBrowse", "NotesList", "NotesDaily", "NotesQuick", "NotesSearch" },
  opts = {
    notes_dir = vim.fn.expand "~/Documents/notes/",
    directories = {
      "inbox", -- Quick capture
    },
    templates = {
      default = {
        "# {title}",
        "",
        "Created: {datetime}",
        "",
      },
    },
  },
}
