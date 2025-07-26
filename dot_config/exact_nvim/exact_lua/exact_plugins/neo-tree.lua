local inputs = require("neo-tree.ui.inputs")

-- Trash the target
local function trash(state)
	local node = state.tree:get_node()
	if node.type == "message" then
		return
	end
	local _, name = require("neo-tree.utils").split_path(node.path)
	local msg = string.format("Are you sure you want to trash '%s'?", name)
	inputs.confirm(msg, function(confirmed)
		if not confirmed then
			return
		end
		vim.api.nvim_command("silent !trash " .. node.path)
		require("neo-tree.sources.manager").refresh(state)
	end)
end

-- Trash the selections (visual mode)
local function trash_visual(state, selected_nodes)
	local paths_to_trash = {}
	for _, node in ipairs(selected_nodes) do
		if node.type ~= "message" then
			table.insert(paths_to_trash, node.path)
		end
	end
	local msg = "Are you sure you want to trash " .. #paths_to_trash .. " items?"
	inputs.confirm(msg, function(confirmed)
		if not confirmed then
			return
		end
		for _, path in ipairs(paths_to_trash) do
			vim.api.nvim_command("silent !trash " .. path)
		end
		require("neo-tree.sources.manager").refresh(state)
	end)
end

return {
	"nvim-neo-tree/neo-tree.nvim",
	opts = {
		window = {
			width = 40,
			mappings = {
				["<Tab>"] = "next_source",
				["<S-Tab>"] = "prev_source",
				["d"] = "trash",
			},
		},
		commands = {
			trash = trash,
			trash_visual = trash_visual,
		},
		filesystem = {
			filtered_items = {
				visible = false,
				hide_dotfiles = true,
				hide_hidden = true,
				hide_by_pattern = {
					"*.meta",
					"*.unity",
					"*.fls",
					"*.aux",
					"*.dvi",
					"*.pdf",
					"*.gz",
					"*.fdb_latexmk",
				},
			},
		},
	},
}
