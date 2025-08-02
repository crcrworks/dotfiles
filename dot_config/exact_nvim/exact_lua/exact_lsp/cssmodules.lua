vim.api.nvim_create_autocmd("FileType", {
  pattern = { "typescript", "typescriptreact", "javascript", "javascriptreact" },
  callback = function()
    vim.lsp.start {
      name = "cssmodules_ls",
      cmd = { "cssmodules-language-server" },
      root_dir = vim.uv.cwd(),
    }
  end,
})

return {
  "cssmodules_ls",
  init_options = {
    camelCase = false,
  },
}
