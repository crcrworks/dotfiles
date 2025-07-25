local api = require "nvim-tree.api"

local function edit_or_open()
  local node = api.tree.get_node_under_cursor()

  if node.nodes ~= nil then
    api.node.open.edit()
  else
    api.node.open.edit()
    api.tree.close()
  end
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
  vim.keymap.set("n", "l", edit_or_open, opts "Right")
  vim.keymap.set("n", "h", lefty, opts "Left")
end

-- Close if lasat window
vim.cmd [[autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif]]

return {
  "nvim-tree/nvim-tree.lua",
  opts = {
    on_attach = my_on_attach,
    actions = {
      open_file = {
        quit_on_open = false,
      },
    },
    view = {
      width = 40,
    },
    renderer = {
      group_empty = true,
      highlight_git = false,

      icons = {
        show = {
          git = false,
        },
      },
    },
  },
}
