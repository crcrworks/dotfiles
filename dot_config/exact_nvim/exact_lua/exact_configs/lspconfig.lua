require("nvchad.configs.lspconfig").defaults()

local lsp_dir = vim.fn.stdpath "config" .. "/lua/lsp"
local language_configs = {}

for name in vim.fs.dir(lsp_dir) do
  if name:match "%.lua$" then
    local module_name = name:gsub("%.lua$", "")
    table.insert(language_configs, require("lsp." .. module_name))
  end
end

local servers = {}
for _, config in ipairs(language_configs) do
  for name, opts in pairs(config) do
    servers[name] = opts
  end
end

for name, opts in pairs(servers) do
  vim.lsp.enable(name)
  vim.lsp.config(name, opts)
end
