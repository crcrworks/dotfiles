require("nvchad.configs.lspconfig").defaults()

local lsp_dir = vim.fn.stdpath "config" .. "/lua/lsp"

for name in vim.fs.dir(lsp_dir) do
  if name:match "%.lua$" then
    local module_name = name:gsub("%.lua$", "")
    local config = require("lsp." .. module_name)

    if type(config) == "string" then
      vim.lsp.enable(config)
      vim.lsp.config(config, {})
    elseif config[1] and type(config[1]) == "string" then
      local server_name = config[1]
      local opts = config[2] or {}
      vim.lsp.enable(server_name)
      vim.lsp.config(server_name, opts)
    else
      for _, server_config in ipairs(config) do
        local server_name = server_config[1] or server_config
        local opts = server_config[2] or {}
        vim.lsp.enable(server_name)
        vim.lsp.config(server_name, opts)
      end
    end
  end
end
