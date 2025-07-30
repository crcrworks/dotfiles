local config = require "configs.ui"

if config.ui.statusline.enabled then
  vim.o.statusline = "%!v:lua.require('ui.statusline.init')()"
  require("ui.statusline.utils").autocmds()
end

if config.ui.tabufline.enabled then
  require "ui.tabufline.lazyload"
end

vim.schedule(function()
  require "ui.au"
end)
