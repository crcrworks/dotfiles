return {
  "vyfor/cord.nvim",
  version = "^2",
  build = ":Cord update",
  event = "VeryLazy",
  opts = {
    editor = {
      client = "nvchad",
      tooltip = "",
    },
    buttons = {
      {
        label = "View Repository",
        url = function(opts)
          return opts.repo_url
        end,
      },
    },
  },
}
