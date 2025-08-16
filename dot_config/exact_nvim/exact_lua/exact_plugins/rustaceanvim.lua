return {
  "mrcjkb/rustaceanvim",
  version = vim.fn.has "nvim-0.11" == 1 and "^6" or "^5",
  ft = "rust",
  opts = function()
    local adapter
    local codelldb_installed = pcall(function()
      return require("mason-registry").get_package "codelldb"
    end)
    local cfg = require "rustaceanvim.config"
    if codelldb_installed then
      local codelldb_path = vim.fn.exepath "codelldb"
      local this_os = vim.uv.os_uname().sysname

      local liblldb_path = vim.fn.expand "$MASON/share/lldb"
      if this_os:find "Windows" then
        liblldb_path = liblldb_path .. "\\bin\\lldb.dll"
      else
        liblldb_path = liblldb_path .. "/lib/liblldb" .. (this_os == "Linux" and ".so" or ".dylib")
      end
      adapter = cfg.get_codelldb_adapter(codelldb_path, liblldb_path)
    else
      adapter = cfg.get_codelldb_adapter()
    end

    local server = {
      on_attach = function(client, bufnr)
        -- vim.keymap.set("n", "<leader>la", function()
        --   vim.cmd.RustLsp "codeAction"
        -- end, { desc = "Code Action", buffer = bufnr })
        vim.keymap.set("n", "<leader>d", function()
          vim.cmd.RustLsp "debuggables"
        end, { desc = "Rust Debuggables", buffer = bufnr })

        if client.server_capabilities.codeLensProvider then
          local group_name = "codelens_" .. bufnr
          vim.api.nvim_create_augroup(group_name, { clear = true })
          vim.api.nvim_create_autocmd({ "BufEnter", "CursorHold", "InsertLeave" }, {
            group = group_name,
            callback = function()
              vim.lsp.codelens.refresh()
            end,
            buffer = bufnr,
          })
        end
      end,
      settings = {
        ["rust-analyzer"] = {
          cargo = {
            allFeatures = true,
            loadOutDirsFromCheck = true,
            buildScripts = {
              enable = true,
            },
          },
          check = {
            command = "clippy",
            extraArgs = {
              "--no-deps",
            },
          },
          checkOnSave = true,
          diagnostics = {
            enable = true,
          },
          procMacro = {
            enable = true,
            ignored = {
              ["async-trait"] = { "async_trait" },
              ["napi-derive"] = { "napi" },
              ["async-recursion"] = { "async_recursion" },
            },
          },
          inlayHints = {
            genericParameterHints = {
              type = {
                enable = true,
              },
            },
          },
          lens = {
            enable = false,
            implementations = {
              enable = true,
            },
            references = {
              adt = {
                enable = true,
              },
              enumVariant = {
                enable = true,
              },
              method = {
                enable = true,
              },
              trait = {
                enable = true,
              },
            },
            run = {
              enable = true,
            },
          },
          files = {
            excludeDirs = {
              ".direnv",
              ".git",
              ".github",
              ".gitlab",
              "bin",
              "node_modules",
              "target",
              "venv",
              ".venv",
            },
          },
        },
      },
    }

    return {
      server = server,
      dap = { adapter = adapter, load_rust_types = true },
      tools = { enable_clippy = false },
    }
  end,
  config = function(_, opts)
    vim.g.rustaceanvim = opts
  end,
}
