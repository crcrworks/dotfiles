local theme = require("base46").get_theme_tb "base_16"
local base30 = require("base46").get_theme_tb "base_30"

return {
  String = { fg = base30.vibrant_green, link = "" },
  Include = { fg = base30.red },

  ["@variable.member.key"] = { fg = theme.base08 },

  ["@string.regex"] = { fg = theme.base0C },

  ["@annotation"] = { fg = theme.base0F },
  ["@error"] = { fg = theme.base08 },

  ["@keyword.operator"] = { fg = theme.base0E },
  ["@keyword.storage"] = { fg = theme.base0A },

  ["@reference"] = { fg = theme.base05 },
  ["@symbol"] = { fg = theme.base0B },
  ["@tag.attribute"] = { fg = theme.base08 },
  ["@text"] = { fg = theme.base05 },
  ["@text.emphasis"] = { fg = theme.base09 },
  ["@text.strike"] = { fg = theme.base0F, strikethrough = true },
  ["@definition"] = { sp = theme.base04, underline = true },
  ["@scope"] = { bold = true },

  ["@markup.strong"] = { bold = true },
  ["@markup.underline"] = { underline = true },
  ["@markup.italic"] = { italic = true },
  ["@markup.strikethrough"] = { strikethrough = true },

  ["@comment.danger"] = { fg = base30.black2, bg = base30.red },

  ["@variable"] = { fg = base30.white },
  ["@variable.builtin"] = { fg = base30.dark_purple },
  ["@variable.parameter"] = { fg = base30.white },
  ["@variable.parameter.builtin"] = { fg = base30.white },
  ["@variable.member"] = { fg = base30.nord_blue },

  ["@constant"] = { fg = base30.white },
  ["@constant.builtin"] = { fg = base30.dark_purple },
  ["@constant.macro"] = { fg = base30.dark_purple },

  ["@module"] = { fg = base30.yellow },
  ["@module.builtin"] = { fg = base30.yellow },
  ["@label"] = { fg = base30.orange },

  ["@string"] = { fg = base30.green },
  ["@string.documentation"] = { fg = base30.green },
  ["@string.regexp"] = { fg = base30.vibrant_green },
  ["@string.escape"] = { fg = base30.vibrant_green },
  ["@string.special"] = { fg = base30.yellow },
  ["@string.special.symbol"] = { fg = base30.white },
  ["@string.special.path"] = { fg = base30.yellow },
  ["@string.special.url"] = { fg = base30.white, underline = true },

  ["@character"] = { fg = base30.green },
  ["@character.special"] = { fg = base30.yellow },

  ["@boolean"] = { fg = base30.dark_purple },
  ["@number"] = { fg = base30.dark_purple },
  ["@number.float"] = { fg = base30.dark_purple },

  ["@type"] = { fg = base30.yellow },
  ["@type.builtin"] = { fg = base30.yellow },
  ["@type.definition"] = { fg = base30.yellow },

  ["@attribute"] = { fg = base30.dark_purple },
  ["@attribute.builtin"] = { fg = base30.yellow },
  ["@property"] = { fg = base30.nord_blue },

  ["@function"] = { fg = base30.vibrant_green },
  ["@function.builtin"] = { fg = base30.vibrant_green },
  ["@function.call"] = { fg = base30.vibrant_green },
  ["@function.macro"] = { fg = base30.vibrant_green },
  ["@function.method"] = { fg = base30.vibrant_green },
  ["@function.method.call"] = { fg = base30.vibrant_green },

  ["@constructor"] = { fg = base30.vibrant_green },
  ["@operator"] = { fg = base30.orange },

  ["@keyword"] = { fg = base30.red },
  ["@keyword.coroutine"] = { fg = base30.red },
  ["@keyword.function"] = { fg = base30.red },
  ["@keyword.import"] = { fg = base30.red },

  ["@keyword.type"] = { fg = base30.red },
  ["@keyword.modifier"] = { fg = base30.red },
  ["@keyword.repeat"] = { fg = base30.red },
  ["@keyword.return"] = { fg = base30.red },
  ["@keyword.debug"] = { fg = base30.orange },
  ["@keyword.exception"] = { fg = base30.red },
  ["@keyword.conditional"] = { fg = base30.red },
  ["@keyword.conditional.ternary"] = { fg = base30.red },
  ["@keyword.directive"] = { fg = base30.dark_purple },
  ["@keyword.directive.define"] = { fg = base30.dark_purple },

  ["@punctuation.delimiter"] = { fg = base30.light_grey },
  ["@punctuation.bracket"] = { fg = base30.white },
  ["@punctuation.special"] = { fg = base30.nord_blue },

  ["@comment"] = { fg = base30.light_grey },
  ["@comment.documentation"] = { fg = base30.light_grey },
  ["@comment.error"] = { fg = base30.black, bg = base30.red },
  ["@comment.warning"] = { fg = base30.black, bg = base30.yellow },
  ["@comment.todo"] = { fg = base30.black, bg = base30.cyan },
  ["@comment.note"] = { fg = base30.black, bg = base30.vibrant_green },

  ["@markup.heading"] = { fg = base30.orange },
  ["@markup.quote"] = { fg = base30.light_grey },
  ["@markup.math"] = { fg = base30.blue },
  ["@markup.link"] = { fg = base30.green },
  ["@markup.link.label"] = { fg = base30.yellow },
  ["@markup.link.url"] = { fg = base30.nord_blue },
  ["@markup.raw"] = { fg = base30.vibrant_green },
  ["@markup.raw.block"] = { fg = base30.vibrant_green },
  ["@markup.list"] = { fg = base30.nord_blue },
  ["@markup.list.unchecked"] = { fg = base30.light_grey },

  ["@diff.plus"] = { fg = base30.vibrant_green },
  ["@diff.minus"] = { fg = base30.red },
  ["@diff.delta"] = { fg = base30.nord_blue },

  ["@tag"] = { fg = base30.orange },
  ["@tag.builtin"] = { fg = base30.yellow },
  ["@tag.delimiter"] = { fg = base30.blue },
}
