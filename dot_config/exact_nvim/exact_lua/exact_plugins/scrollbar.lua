local theme = require("base46.themes.everforest").base_30

return {
  "petertriho/nvim-scrollbar",
  event = "BufRead",
  config = function()
    require("scrollbar").setup {
      handle = {
        blend = 30,
        color = theme.grey,
      },
      marks = {
        Search = { color = theme.orange },
        Error = { color = theme.red },
        Warn = { color = theme.yellow },
        Info = { color = theme.purple },
        Hint = { color = theme.green },
        Misc = { color = theme.nord_blue },
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
