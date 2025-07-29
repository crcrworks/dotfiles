local lsp_dir = vim.fn.stdpath "config" .. "/lua/mappings"

for name in vim.fs.dir(lsp_dir) do
  if name:match "%.lua$" then
    local module_name = name:gsub("%.lua$", "")
    require("mappings." .. module_name)
  end
end
