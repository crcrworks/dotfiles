return {
  "tsgo",
  filetypes = {
    "javascript",
    "javascriptreact",
    "javascript.jsx",
    "typescript",
    "typescriptreact",
    "typescript.tsx",
  },
  root_markers = { ".git" },
  cmd = { os.getenv "TSGOPATH", "--lsp", "--stdio" },
}
