return {
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = function(_, opts)
      if not opts.formatters_by_ft then opts.formatters_by_ft = {} end
      -- https://biomejs.dev/internals/language-support/
      local supported_ft = {
        "astro",
        "css",
        "graphql",
        -- "html",
        "javascript",
        "javascriptreact",
        "json",
        "jsonc",
        -- "markdown",
        "svelte",
        "typescript",
        "typescriptreact",
        "vue",
        -- "yaml",
      }
      for _, ft in ipairs(supported_ft) do
        opts.formatters_by_ft[ft] = { "biome" }
      end
    end,
  },
}
