return {
  "tsgo",
  enabled = false,
  filetypes = {
    "javascript",
    "javascriptreact",
    "javascript.jsx",
    "typescript",
    "typescriptreact",
    "typescript.tsx",
  },
  root_markers = { ".git" },
  cmd = { "tsgo", "--lsp", "--stdio" },
}
