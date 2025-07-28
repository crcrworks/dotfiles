local mason = require "configs.mason"

return {
  "WhoIsSethDaniel/mason-tool-installer.nvim",
  cmd = { "MasonToolsClean", "MasonToolsInstall", "MasonToolsInstallSync", "MasonToolsUpdate", "MasonToolsUpdateSync" },
  opts = {
    run_on_start = true,
    ensure_installed = mason.ensure_installed,
  },
}
