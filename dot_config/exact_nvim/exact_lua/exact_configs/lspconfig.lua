require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "biome", "rust-analyzer" }

vim.lsp.config("cssls", {
  init_options = {
    provideFormatter = false,
  },
})

vim.lsp.config("rust-analyzer", {
  settings = {
    ["rust-analyzer"] = {
      files = {
        excludeDirs = {
          ".direnv",
          ".git",
          "target",
        },
      },
      check = {
        command = "clippy",
        extraArgs = {
          "--no-deps",
        },
      },
    },
  },
})

vim.lsp.enable(servers)
