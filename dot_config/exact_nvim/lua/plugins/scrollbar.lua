return {
  "petertriho/nvim-scrollbar",
  event = "BufRead",
  config = function()
    -- gruvbox-material color pallet
    -- https://user-images.githubusercontent.com/58662350/213884009-87533cf3-e3c5-4d46-85f7-f6993b6dd887.png
    local colors = {
      grey = "#374145",
      red = "#e67e80",
      yellow = "#dbbc7f",
      green = "#83c092",
      blue = "#7fbbb3",
      orange = "#e69875",
      purple = "#d699b6",
    }

    require("scrollbar").setup {
      handle = {
        blend = 30,
        color = colors.grey,
      },
      marks = {
        Search = { color = colors.orange },
        Error = { color = colors.red },
        Warn = { color = colors.yellow },
        Info = { color = colors.purple },
        Hint = { color = colors.green },
        Misc = { color = colors.blue },
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
