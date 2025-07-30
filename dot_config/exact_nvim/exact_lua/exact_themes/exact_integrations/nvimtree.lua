local get_theme_tb = require("base46").get_theme_tb
local colors = get_theme_tb "base_30"

return {
  NvimTreeEmptyFolderName = { fg = colors.nord_blue },
  NvimTreeEndOfBuffer = { fg = colors.darker_black },
  NvimTreeFolderIcon = { fg = colors.nord_blue },
  NvimTreeFolderName = { fg = colors.nord_blue },
  NvimTreeFolderArrowOpen = { fg = colors.nord_blue },
  NvimTreeFolderArrowClosed = { fg = colors.grey_fg },
  NvimTreeGitDirty = { fg = colors.red },
  NvimTreeIndentMarker = { fg = colors.grey },
  NvimTreeNormal = { bg = colors.darker_black },
  NvimTreeNormalNC = { bg = colors.darker_black },
  NvimTreeOpenedFolderName = { fg = colors.nord_blue },
  NvimTreeGitIgnored = { fg = colors.light_grey },
  NvimTreeDiagnosticErrorFileHL = { link = "DiagnosticError" },
  NvimTreeDiagnosticErrorFolderHL = { link = "DiagnosticError" },
  NvimTreeDiagnosticInfoFileHL = { link = "DiagnosticNormal" },
  NvimTreeDiagnosticInfoFolderHL = { link = "DiagnosticNormal" },
  NvimTreeDiagnosticWarnFileHL = { link = "DiagnosticWarn" },
  NvimTreeDiagnosticWarnFolderHL = { link = "DiagnosticWarn" },
  NvimTreeDiagnosticHintFileHL = { link = "DiagnosticHint" },
  NvimTreeDiagnosticHintFolderHL = { link = "DiagnosticHint" },
  NvimTreeHiddenDisplay = { fg = colors.light_grey },
  NvimTreeHiddenIcon = { fg = colors.light_grey },
  NvimTreeHiddenFolderHL = { fg = colors.light_grey },
  NvimTreeHiddenFileHL = { fg = colors.light_grey },
  NvimTreeCutHL = { undercurl = true, sp = colors.purple },
  NvimTreeCopiedHL = { undercurl = true, sp = colors.nord_blue },
  NvimTreeBookmarkHL = { undercurl = true, sp = colors.green },

  NvimTreeWinSeparator = {
    fg = colors.darker_black,
    bg = colors.darker_black,
  },

  NvimTreeWindowPicker = {
    fg = colors.red,
    bg = colors.black2,
  },

  NvimTreeCursorLine = {
    bg = colors.black,
  },

  NvimTreeGitNew = {
    fg = colors.yellow,
  },

  NvimTreeGitDeleted = {
    fg = colors.red,
  },

  NvimTreeSpecialFile = {
    fg = colors.yellow,
    bold = true,
  },

  NvimTreeRootFolder = {
    fg = colors.red,
    bold = true,
  },
}
