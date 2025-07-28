local api = require "nvim-tree.api"

local function righty()
  api.node.open.edit()
end

local function lefty()
  local node_at_cursor = api.tree.get_node_under_cursor()
  if node_at_cursor.nodes and node_at_cursor.open then
    api.node.open.edit()
  else
    api.node.navigate.parent()
  end
end

local function my_on_attach(bufnr)
  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  api.config.mappings.default_on_attach(bufnr)
  vim.keymap.set("n", "l", righty, opts "Right")
  vim.keymap.set("n", "h", lefty, opts "Left")
end

-- auto open on startup
-- vim.schedule(function()
--   api.tree.toggle { focus = false }
-- end)

return {
  "nvim-tree/nvim-tree.lua",
  lazy = false,
  opts = {
    on_attach = my_on_attach,
    hijack_cursor = true,
    sync_root_with_cwd = true,
    actions = {
      open_file = {
        quit_on_open = false,
      },
    },
    view = {
      width = 40,
    },
    git = { ignore = false },
    renderer = {
      root_folder_label = function(path)
        return vim.fn.fnamemodify(path, ":t")
      end,

      hidden_display = "all",
      group_empty = true,
      highlight_git = false,

      icons = {
        git_placement = "after",
        bookmarks_placement = "after",
        show = {
          git = true,
        },
      },
    },
  },
}
