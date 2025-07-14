-- AstroUI provides the basis for configuring the AstroNvim User Interface
-- Configuration documentation can be found with `:h astroui`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

local hard = {
	bg_dim = "#1E2326",
	bg0 = "#272E33",
	bg1 = "#2E383C",
	bg2 = "#374145",
	bg3 = "#414B50",
	bg4 = "#495156",
	bg5 = "#4F5B58",
	bg_red = "#4C3743",
	bg_visual = "#493B40",
	bg_yellow = "#45443C",
	bg_green = "#3C4841",
	bg_blue = "#384B55",
	red = "#E67E80",
	orange = "#E69875",
	yellow = "#DBBC7F",
	green = "#A7C080",
	blue = "#7FBBB3",
	aqua = "#83C092",
	purple = "#D699B6",
	fg = "#D3C6AA",
	statusline1 = "#A7C080",
	statusline2 = "#D3C6AA",
	statusline3 = "#E67E80",
	gray0 = "#7A8478",
	gray1 = "#859289",
	gray2 = "#9DA9A0",
}

-- local medium = {
--   bg_dim = "#232A2E",
--   bg0 = "#2D353B",
--   bg1 = "#343F44",
--   bg2 = "#3D484D",
--   bg3 = "#475258",
--   bg4 = "#4F585E",
--   bg5 = "#56635F",
--   bg_red = "#543A48",
--   bg_visual = "#514045",
--   bg_yellow = "#4D4C43",
--   bg_green = "#425047",
--   bg_blue = "#3A515D",
--   red = "#E67E80",
--   orange = "#E69875",
--   yellow = "#DBBC7F",
--   green = "#A7C080",
--   blue = "#7FBBB3",
--   aqua = "#83C092",
--   purple = "#D699B6",
--   fg = "#D3C6AA",
--   statusline1 = "#A7C080",
--   statusline2 = "#D3C6AA",
--   statusline3 = "#E67E80",
--   gray0 = "#7A8478",
--   gray1 = "#859289",
--   gray2 = "#9DA9A0",
-- }

-- local soft = {
--   bg_dim = "#293136",
--   bg0 = "#333C43",
--   bg1 = "#3A464C",
--   bg2 = "#434F55",
--   bg3 = "#4D5960",
--   bg4 = "#555F66",
--   bg5 = "#5D6B66",
--   bg_red = "#5C3F4F",
--   bg_visual = "#59464C",
--   bg_yellow = "#55544A",
--   bg_green = "#48584E",
--   bg_blue = "#3F5865",
--   red = "#E67E80",
--   orange = "#E69875",
--   yellow = "#DBBC7F",
--   green = "#A7C080",
--   blue = "#7FBBB3",
--   aqua = "#83C092",
--   purple = "#D699B6",
--   fg = "#D3C6AA",
--   statusline1 = "#A7C080",
--   statusline2 = "#D3C6AA",
--   statusline3 = "#E67E80",
--   gray0 = "#7A8478",
--   gray1 = "#859289",
--   gray2 = "#9DA9A0",
-- }

---@type LazySpec
return {
	"AstroNvim/astroui",
	---@type AstroUIOpts
	opts = {
		-- change colorscheme
		colorscheme = "everforest",
		-- AstroUI allows you to easily modify highlight groups easily for any and all colorschemes
		highlights = {
			-- この関数にパラメータは必要ない
			init = function()
				local theme = hard

				local get_hlgroup = require("astroui").get_hlgroup

				-- get highlights from highlight groups
				local normal = get_hlgroup("Normal")
				local fg, bg = normal.fg, "#2D353B"
				return {

					StatusLine = { bg = theme.bg0 },

					AvanteTitle = { fg = bg, bg = theme.green },
					AvanteSubtitle = { fg = bg, bg = theme.blue },
					AvanteToBeDeleted = { fg = theme.bg5 },
					AvanteConflictAncestor = { bg = theme.bg2 },
					AvanteConflictCurrent = { bg = theme.bg2 },
					AvanteConflictIncoming = { bg = theme.bg2 },
					AvanteConflictAncestorLabel = { fg = theme.gray1 },
					AvanteConflictCurrentLabel = { fg = theme.gray1 },
					AvanteConflictIncomingLabel = { fg = theme.gray1 },
					AvanteSidebarWinHorizontalSeparator = { fg = theme.bg3, bg = theme.bg0 },
					AvanteSidebarWinSeparator = { fg = theme.bg2, bg = theme.bg0 },
					AvanteSidebarNormal = { bg = theme.bg0 },

					SnacksPickerBorder = { fg = theme.bg0, bg = theme.bg0 },
					SnacksPickerNormal = { bg = bg },
					SnacksPickerCursorLine = { bg = theme.bg_blue },
					SnacksPickerListCursorLine = { fg = theme.bg0, bg = theme.green },

					SnacksPickerPreviewBorder = { fg = theme.bg3, bg = theme.bg0 },
					SnacksPickerPreviewNormal = { bg = theme.bg0 },
					SnacksPickerPreviewTitle = { fg = bg, bg = theme.green },
					SnacksPickerPromptBorder = { fg = theme.bg3, bg = theme.bg0 },
					SnacksPickerPromptNormal = { fg = fg, bg = theme.bg0 },
					SnacksPickerPromptPrefix = { fg = theme.purple, bg = theme.bg0 },
					SnacksPickerPromptTitle = { fg = bg, bg = theme.purple },
					SnacksPickerResultsBorder = { fg = theme.bg3, bg = theme.bg0 },
					SnacksPickerResultsNormal = { bg = theme.bg0 },
					SnacksPickerResultsTitle = { fg = theme.gray0, bg = theme.bg0 },
					SnacksPickerSelection = { bg = theme.bg2 },
					SnacksPickerContext = { fg = theme.gray1, bg = theme.bg1 },

					SnacksDashboardDir = { fg = theme.fg },

					WinBar = { fg = theme.gray1, bg = bg },

					NeoTreeNormal = { fg = theme.fg, bg = theme.bg0 },
					NeoTreeTabInactive = { fg = theme.gray1, bg = theme.bg_dim },
					NeoTreeEndOfBuffer = { fg = theme.fg, bg = theme.bg0 },
					NeoTreeTabSeparatorInactive = { fg = theme.bg_dim, bg = theme.bg_dim },

					FloatBorder = { fg = theme.bg3, bg = theme.bg1 },
					NeotreeFloatBorder = { fg = theme.gray1, bg = theme.bg0 },
					NormalFloat = { bg = theme.bg1 },
				}
			end,
		},
		-- Icons can be configured throughout the interface
		icons = {
			-- configure the loading of the lsp in the status line
			LSPLoading1 = "⠋",
			LSPLoading2 = "⠙",
			LSPLoading3 = "⠹",
			LSPLoading4 = "⠸",
			LSPLoading5 = "⠼",
			LSPLoading6 = "⠴",
			LSPLoading7 = "⠦",
			LSPLoading8 = "⠧",
			LSPLoading9 = "⠇",
			LSPLoading10 = "⠏",
		},
	},
}
