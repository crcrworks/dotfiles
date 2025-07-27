return {
  "hrsh7th/nvim-cmp",
  event = "InsertEnter",
  opts = {
    completion = { completeopt = "menu,menuone,noselect" },
    sources = {
      { name = "nvim_lsp" },
      { name = "buffer" },
      { name = "luasnip" },
    },
    performance = {
      max_view_entries = 7,
    },
  },
}
