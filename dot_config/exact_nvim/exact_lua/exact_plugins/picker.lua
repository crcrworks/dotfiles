local Snacks = require "snacks"

return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    mappings = {
      n = {
        ["<leader>fH"] = {
          function() Snacks.picker.highlights() end,
          desc = "Find Highlights",
        },
        ["<leader>fi"] = {
          function() Snacks.picker.icons() end,
          desc = "Find Highlights",
        },
      },
    },
  },
}
