return {
  "typos_lsp",
  root_markers = { ".git" },
  init_options = {
    config = vim.fn.stdpath "config" .. "/spell/typos.toml",
  },
}
