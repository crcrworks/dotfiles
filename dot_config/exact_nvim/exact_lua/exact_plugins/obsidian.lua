return {
	"obsidian-nvim/obsidian.nvim",
	-- the obsidian vault in this default config  ~/obsidian-vault
	-- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand':
	-- event = { "bufreadpre " .. vim.fn.expand "~" .. "/my-vault/**.md" },
	event = { "BufReadPre  */obsidian-*/**/*.md" },
	version = "*",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"folke/snacks.nvim",
		{
			"AstroNvim/astrocore",
			opts = {
				mappings = {
					n = {
						["gf"] = {
							function()
								if require("obsidian").util.cursor_on_markdown_link() then
									return "<Cmd>ObsidianFollowLink<CR>"
								else
									return "gf"
								end
							end,
							desc = "Obsidian Follow Link",
						},
						["<Leader>O"] = { desc = "Obsidian" },
						["<Leader>On"] = {
							"<cmd>ObsidianNewFromTemplate<CR>",
							desc = "Create Obsidian Note with Template",
						},
						["<Leader>Of"] = { "<cmd>ObsidianSearch<CR>", desc = "Find Obsidian Note" },
						["<Leader>Ot"] = { "<cmd>ObsidianTag<CR>", desc = "Find Obsidian Tag" },
						["<Leader>OT"] = { "<cmd>ObsidianTemplate<CR>", desc = "Insert Obsidian Template" },
						["<Leader>Od"] = { "<cmd>ObsidianToday<CR>", desc = "Open Daily Note" },
						["<Leader>Os"] = { "<cmd>ObsidianQuickSwitch<CR>", desc = "Open Daily Note" },
					},
				},
			},
		},
	},
	opts = {
		workspaces = {
			{
				name = "crcr-main",
				path = "~/obsidian-vault/obsidian-crcr-main/",
			},
		},
		completion = {
			nvim_cmp = false,
			blink = true,
		},
		templates = {
			folder = "config/templates",
			date_format = "%Y-%m-%d",
			time_format = "%H:%M",
		},
		picker = {
			name = "snacks.pick",
		},
	},
}
