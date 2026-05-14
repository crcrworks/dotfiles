return {
  {
    "AstroNvim/astrolsp",
    optional = true,
    ---@type AstroLSPOpts
    opts = {
      servers = {
        "oxfmt",
      },
      config = {
        oxfmt = {
          cmd = { "oxfmt" },
          -- https://oxc.rs/compatibility.html
          filetypes = {
            "astro",
            "css",
            "graphql",
            "html",
            "javascript",
            "javascriptreact",
            "json",
            "jsonc",
            "markdown",
            "svelte",
            "typescript",
            "typescriptreact",
            "vue",
          },
        },
      },
    },
  },
}
