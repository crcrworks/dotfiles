return {
  {
    "AstroNvim/astrocore",
    optional = true,
    ---@type AstroCoreOpts
    opts = {
      -- tree-sitter parser is `systemverilog` (legacy `verilog` was removed)
      treesitter = { ensure_installed = { "systemverilog" } },
    },
  },
  {
    "AstroNvim/astrolsp",
    optional = true,
    ---@type AstroLSPOpts
    opts = {
      servers = { "verible" },
      ---@diagnostic disable: missing-fields
      config = {
        verible = {
          cmd = { "verible-verilog-ls" },
          filetypes = { "verilog", "systemverilog" },
        },
      },
    },
  },
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        verilog = { "verible_verilog_format" },
        systemverilog = { "verible_verilog_format" },
      },
    },
  },
  {
    "mfussenegger/nvim-lint",
    optional = true,
    opts = {
      linters_by_ft = {
        verilog = { "verilator" },
        systemverilog = { "verilator" },
      },
    },
  },
}
