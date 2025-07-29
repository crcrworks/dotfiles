return {
  "typos_lsp",
  opts = {
    root_markers = { ".git" },
    init_options = {
      config = vim.fn.stdpath "config" .. "/spell/typos.toml",
    },
  },
}
