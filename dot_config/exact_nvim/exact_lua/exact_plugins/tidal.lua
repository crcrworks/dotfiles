return {
  "tidalcycles/vim-tidal",
  dependencies = {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      options = {
        g = {
          tidal_target = "terminal",
        },
      },
    },
  },
}
