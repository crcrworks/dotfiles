-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
	"AstroNvim/astrocommunity",
	{ import = "astrocommunity.pack.lua" },
	{ import = "astrocommunity.pack.json" },
	{ import = "astrocommunity.pack.rust" },
	{ import = "astrocommunity.pack.cs" },
	{ import = "astrocommunity.pack.go" },
	{ import = "astrocommunity.pack.cpp" },
	-- { import = "astrocommunity.pack.python" },
	{ import = "astrocommunity.pack.fish" },
	{ import = "astrocommunity.pack.sql" },
	{ import = "astrocommunity.pack.typst" },
	{ import = "astrocommunity.pack.chezmoi" },

	{ import = "astrocommunity.recipes.picker-nvchad-theme" },
	{ import = "astrocommunity.recipes.vscode-icons" },

	{ import = "astrocommunity.motion.tabout-nvim" },
	{ import = "astrocommunity.motion.nvim-surround" },

	{ import = "astrocommunity.editing-support.vim-visual-multi" },
	{ import = "astrocommunity.editing-support.dial-nvim" },
	{ import = "astrocommunity.editing-support.nvim-treesitter-context" },
	{ import = "astrocommunity.editing-support.comment-box-nvim" },
	{ import = "astrocommunity.editing-support.undotree" },
	{ import = "astrocommunity.editing-support.treesj" },
	{ import = "astrocommunity.editing-support.vim-move" },
	{ import = "astrocommunity.editing-support.wildfire-nvim" },
	{ import = "astrocommunity.editing-support.neogen" },

	{ import = "astrocommunity.completion.avante-nvim" },

	{ import = "astrocommunity.keybinding.nvcheatsheet-nvim" },

	{ import = "astrocommunity.terminal-integration.flatten-nvim" },

	{ import = "astrocommunity.media.cord-nvim" },
	{ import = "astrocommunity.media.img-clip-nvim" },
}
