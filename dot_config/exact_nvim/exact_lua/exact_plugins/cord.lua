return {
  "vyfor/cord.nvim",
  version = "^2",
  build = ":Cord update",
  event = "BufRead",
  opts = {
    editor = {
      -- client = "Nvim",
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
