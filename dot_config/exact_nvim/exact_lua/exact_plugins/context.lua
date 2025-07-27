return {
  "nvim-treesitter/nvim-treesitter-context",
  event = "BufEnter",
  cmd = { "TSContext" },
  opts = {

    mode = "topline",
    max_lines = 3,
  },
}
