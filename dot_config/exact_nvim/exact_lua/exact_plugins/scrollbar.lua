local theme = {
  grey = "#4e565c",
  orange = "#e69875",
  red = "#e67e80",
  yellow = "#dbbc7f",
  purple = "#ecafcc",
  green = "#83c092",
  nord_blue = "#78b4ac",
}

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
