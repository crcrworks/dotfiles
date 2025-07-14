return {
	"anuvyklack/windows.nvim",
	config = function()
		vim.o.winwidth = 10
		vim.o.winminwidth = 10
		vim.o.equalalways = false
		require("windows").setup({
			animation = {
				enable = false,
			},
			ignore = {
				filetype = { "Avante", "AvanteInput", "AvanteSelectedFiles", "aerial", "toggleterm" },
				buftype = { "Avante" },
			},
		})
	end,

	dependencies = {
		"anuvyklack/middleclass",
		"anuvyklack/animation.nvim",
	},
}
