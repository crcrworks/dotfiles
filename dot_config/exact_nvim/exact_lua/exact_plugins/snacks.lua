return {
  "folke/snacks.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    -- enabled
    bigfile = { enabled = true },
    dashboard = { enabled = true },
    gh = { enabled = true },
    picker = { enabled = true },
    quickfile = { enabled = true },
    statuscolumn = { enabled = true },
    scope = { enabled = true },

    -- disabled
    explorer = { enabled = false },
    indent = { enabled = false },
    input = { enabled = false },
    notifier = { enabled = false },
    scroll = { enabled = false },
    words = { enabled = false },
  },
}
