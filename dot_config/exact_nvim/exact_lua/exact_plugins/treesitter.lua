return {
  "nvim-treesitter/nvim-treesitter",
  keys = { "<space>fw", "<space>ff" },
  opts = {
    ensure_installed = {
      "lua",
      "html",
      "css",
      "typescript",
      "javascript",
      "tsx",
      "json",
      "rust",
      "scss",
      "css",
    },
  },
}
