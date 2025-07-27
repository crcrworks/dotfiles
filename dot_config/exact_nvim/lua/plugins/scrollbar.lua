local theme = require "base46.themes.everforest"

return {
  "petertriho/nvim-scrollbar",
  event = "BufRead",
  config = function()
    require("scrollbar").setup {
      handle = {
        blend = 30,
        color = theme.base_30.grey,
      },
      marks = {
        Search = { color = theme.base_30.orange },
        Error = { color = theme.base_30.red },
        Warn = { color = theme.base_30.yellow },
        Info = { color = theme.base_30.purple },
        Hint = { color = theme.base_30.green },
        Misc = { color = theme.base_30.nord_blue },
      },
      excluded_filetypes = {
        "",
        "cmp_docs",
        "cmp_menu",
        "noice",
        "prompt",
        "neo-tree",
      },
    }
  end,
}
