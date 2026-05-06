return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    window = {
      width = 40,
      mappings = {
        ["<Tab>"] = "next_source",
        ["<S-Tab>"] = "prev_source",
      },
    },

    filesystem = {
      filtered_items = {
        visible = false,
        hide_dotfiles = true,
        hide_hidden = true,
        hide_by_pattern = {
          "*.meta",
          "*.unity",
          "*.fls",
          "*.aux",
          "*.dvi",
          "*.pdf",
          "*.gz",
          "*.fdb_latexmk",
        },
      },
    },
  },
}
