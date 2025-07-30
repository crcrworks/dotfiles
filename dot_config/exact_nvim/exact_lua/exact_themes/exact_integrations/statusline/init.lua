local stl = require("ui.config").ui.statusline

if not stl.enabled then
  return {}
end

local theme_module = "themes.integrations.statusline." .. stl.theme
return require(theme_module)
