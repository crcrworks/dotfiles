return {
  {
    "AstroNvim/astrocore",
    optional = true,
    ---@type AstroCoreOpts
    opts = {
      treesitter = { ensure_installed = { "typst" } },
    },
  },
  {
    "AstroNvim/astrolsp",
    optional = true,
    ---@type AstroLSPOpts
    opts = {
      servers = { "tinymist" },
      ---@diagnostic disable: missing-fields
      config = {
        tinymist = {
          filetypes = { "typst" },
          settings = {
            tinymist = {
              exportPdf = "onType",
              formatterMode = "typstyle",
            },
          },
        },
      },
    },
  },
}
