-- Credits to original https://github.com/sainnhe/everforest
-- This is modified version of it

local M = {}

M.base_30 = {
  white = "#D3C6AA",
  darker_black = "#272f35",
  black = "#2b3339", --  nvim bg
  black2 = "#323a40",
  one_bg = "#363e44",
  one_bg2 = "#363e44",
  one_bg3 = "#3a4248",
  grey = "#4e565c",
  grey_fg = "#545c62",
  grey_fg2 = "#626a70",
  light_grey = "#656d73",
  red = "#e67e80",
  baby_pink = "#ce8196",
  pink = "#ff75a0",
  line = "#3a4248", -- for lines like vertsplit
  green = "#83c092",
  vibrant_green = "#a7c080",
  nord_blue = "#78b4ac",
  blue = "#7393b3",
  yellow = "#dbbc7f",
  sun = "#d1b171",
  purple = "#ecafcc",
  dark_purple = "#d699b6",
  teal = "#69a59d",
  orange = "#e69875",
  cyan = "#95d1c9",
  statusline_bg = "#2e363c",
  lightbg = "#3d454b",
  pmenu_bg = "#83c092",
  folder_bg = "#7393b3",
}

M.base_16 = {
  base00 = "#2b3339",
  base01 = "#323c41",
  base02 = "#3a4248",
  base03 = "#424a50",
  base04 = "#4a5258",
  base05 = "#d3c6aa",
  base06 = "#ddd0b4",
  base07 = "#e7dabe",
  base08 = "#7fbbb3",
  base09 = "#d699b6",
  base0A = "#83c092",
  base0B = "#dbbc7f",
  base0C = "#e69875",
  base0D = "#a7c080",
  base0E = "#e67e80",
  base0F = "#d699b6",
}

M.type = "dark"

M.polish_hl = {
  treesitter = {
    ["@variable"] = { fg = M.base_30.white },
    ["@variable.builtin"] = { fg = M.base_30.dark_purple },
    ["@variable.parameter"] = { fg = M.base_30.white },
    ["@variable.parameter.builtin"] = { fg = M.base_30.yello },
    ["@variable.member"] = { fg = M.base_30.nord_blue },

    ["@constant"] = { fg = M.base_30.white },
    ["@constant.builtin"] = { fg = M.base_30.dark_purple },
    ["@constant.macro"] = { fg = M.base_30.dark_purple },

    ["@module"] = { fg = M.base_30.yellow },
    ["@module.builtin"] = { fg = M.base_30.yellow },
    ["@label"] = { fg = M.base_30.orange },

    ["@string"] = { fg = M.base_30.green },
    ["@string.documentation"] = { fg = M.base_30.green },
    ["@string.regexp"] = { fg = M.base_30.vibrant_green },
    ["@string.escape"] = { fg = M.base_30.vibrant_green },
    ["@string.special"] = { fg = M.base_30.yellow },
    ["@string.special.symbol"] = { fg = M.base_30.white },
    ["@string.special.path"] = { fg = M.base_30.yellow },
    ["@string.special.url"] = { fg = M.base_30.white },

    ["@character"] = { fg = M.base_30.green },
    ["@character.special"] = { fg = M.base_30.yellow },

    ["@boolean"] = { fg = M.base_30.dark_purple },
    ["@number"] = { fg = M.base_30.dark_purple },
    ["@number.float"] = { fg = M.base_30.dark_purple },

    ["@type"] = { fg = M.base_30.yellow },
    ["@type.builtin"] = { fg = M.base_30.yellow },
    ["@type.definition"] = { fg = M.base_30.yellow },

    ["@attribute"] = { fg = M.base_30.dark_purple },
    ["@attribute.builtin"] = { fg = M.base_30.yello },
    ["@property"] = { fg = M.base_30.nord_blue },

    ["@function"] = { fg = M.base_30.vibrant_green },
    ["@function.builtin"] = { fg = M.base_30.vibrant_green },
    ["@function.call"] = { fg = M.base_30.vibrant_green },
    ["@function.macro"] = { fg = M.base_30.vibrant_green },

    ["@function.method"] = { fg = M.base_30.vibrant_green },
    ["@function.method.call"] = { fg = M.base_30.vibrant_green },

    ["@constructor"] = { fg = M.base_30.vibrant_green },
    ["@operator"] = { fg = M.base_30.orange },

    ["@keyword"] = { fg = M.base_30.red },
    ["@keyword.coroutine"] = { fg = M.base_30.red },
    ["@keyword.function"] = { fg = M.base_30.red },
    ["@keyword.operator"] = { fg = M.base_30.orange },
    ["@keyword.import"] = { fg = M.base_30.red },
    ["@keyword.type"] = { fg = M.base_30.red },
    ["@keyword.modifier"] = { fg = M.base_30.red },
    ["@keyword.repeat"] = { fg = M.base_30.red },
    ["@keyword.return"] = { fg = M.base_30.red },
    ["@keyword.debug"] = { fg = M.base_30.orange },
    ["@keyword.exception"] = { fg = M.base_30.red },

    ["@keyword.conditional"] = { fg = M.base_30.red },
    ["@keyword.conditional.ternary"] = { fg = M.base_30.red },

    ["@keyword.directive"] = { fg = M.base_30.dark_purple },
    ["@keyword.directive.define"] = { fg = M.base_30.dark_purple },

    ["@punctuation.delimiter"] = { fg = M.base_30.light_grey },
    ["@punctuation.bracket"] = { fg = M.base_30.white },
    ["@punctuation.special"] = { fg = M.base_30.nord_blue },

    ["@comment"] = { fg = M.base_30.light_grey },
    ["@comment.documentation"] = { fg = M.base_30.light_grey },

    ["@comment.error"] = { fg = M.base_30.black, bg = M.base_30.red },
    ["@comment.warning"] = { fg = M.base_30.black, bg = M.base_30.yellow },
    ["@comment.todo"] = { fg = M.base_30.black, bg = M.base_30.cyan },
    ["@comment.note"] = { fg = M.base_30.black, bg = M.base_30.vibrant_green },

    ["@markup.strong"] = {},
    ["@markup.italic"] = {},
    ["@markup.strilethrough"] = {},
    ["@markup.underline"] = {},

    ["@markup.heading"] = { fg = M.base_30.orange },
    ["@markup.heading.1"] = { fg = M.base_30.orange },
    ["@markup.heading.2"] = { fg = M.base_30.orange },
    ["@markup.heading.3"] = { fg = M.base_30.orange },
    ["@markup.heading.4"] = { fg = M.base_30.orange },
    ["@markup.heading.5"] = { fg = M.base_30.orange },
    ["@markup.heading.6"] = { fg = M.base_30.orange },

    ["@markup.quote"] = { fg = M.base_30.light_grey },
    ["@markup.math"] = { fg = M.base_30.blue },

    ["@markup.link"] = { fg = M.base_30.green },
    ["@markup.link.label"] = { fg = M.base_30.yellow },
    ["@markup.link.url"] = { fg = M.base_30.nord_blue },

    ["@markup.raw"] = { fg = M.base_30.vibrant_green },
    ["@markup.raw.block"] = { fg = M.base_30.vibrant_green },

    ["@markup.list"] = { fg = M.base_30.nord_blue },
    ["@markup.ligt.checked"] = { fg = M.base_30.vibrant_green },
    ["@markup.list.unchecked"] = { fg = M.base_30.light_grey },

    ["@diff.plus"] = { fg = M.base_30.vibrant_green },
    ["@diff.minus"] = { fg = M.base_30.red },
    ["@diff.delta"] = { fg = M.base_30.nord_blue },

    ["@tag"] = { fg = M.base_30.orange },
    ["@tag.builtin"] = { fg = M.base_30.yello },
    ["@tag.attribute"] = { fg = M.base_30.vibrant_green },
    ["@tag.delimiter"] = { fg = M.base_30.vibrant_green },
  },
}

M = require("base46").override_theme(M, "everforest")

return M
