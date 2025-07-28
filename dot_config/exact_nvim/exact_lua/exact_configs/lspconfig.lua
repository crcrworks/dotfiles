require("nvchad.configs.lspconfig").defaults()

local lsp_dir = vim.fn.stdpath "config" .. "/lua/lsp"

for name in vim.fs.dir(lsp_dir) do
  if name:match "%.lua$" then
    local module_name = name:gsub("%.lua$", "")
    local servers = require("lsp." .. module_name)

    for server_name, opts in pairs(servers) do
      vim.lsp.enable(server_name)
      vim.lsp.config(server_name, opts)
    end
  end
end
