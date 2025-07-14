return {
  {

    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      "rcarriga/nvim-notify",
    },
    opts = {
      lsp = {
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
          ["cmp.entry.get_documentation"] = true,
        },
      },

      routes = {
        {
          filter = {
            event = "msg_show",
            any = {
              { find = "%d+L, %d+B" },
              { find = "; after #%d+" },
              { find = "; before #%d+" },
            },
          },
          view = "mini",
        },
      },

      messages = {
        view = "mini",   -- default view for messages
        view_error = "mini", -- view for errors
        view_warn = "mini", -- view for warnings
        view_search = "mini",
      },
      presets = {
        bottom_search = true,
        long_message_to_split = true,
      },
    },
  },
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        n = {
          ["<Leader>fN"] = { desc = "noice" },
          ["<Leader>fNl"] = {
            function()
              require("noice").cmd("last")
            end,
            desc = "Noice Last Message",
          },
          ["<Leader>fNh"] = {
            function()
              require("noice").cmd("history")
            end,
            desc = "Noice History",
          },
          ["<Leader>fNa"] = {
            function()
              require("noice").cmd("all")
            end,
            desc = "Noice All",
          },
          ["<Leader>fNd"] = {
            function()
              require("noice").cmd("dismiss")
            end,
            desc = "Dismiss All",
          },
          ["<Leader>fn"] = {
            function()
              require("noice").cmd("pick")
            end,
            desc = "Noice Picker (Telescope/FzfLua)",
          },
        },
      },
    },
  },
}
