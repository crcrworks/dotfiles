local ensure_installed = require "configs.treesitter"

return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPost", "BufNewFile" },
  cmd = { "TSInstall", "TSBufEnable", "TSBufDisable", "TSModuleInfo" },
  build = ":TSUpdate",
  config = function(_, opts)
    require("nvim-treesitter.configs").setup(opts)
  end,
  opts = {
    highlight = {
      enable = true,
      use_languagetree = true,
    },

    indent = { enable = true },
    ensure_installed = ensure_installed,
  },
}
