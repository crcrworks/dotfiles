return {
  "gruvw/strudel.nvim",
  build = "npm install",
  cmd = { "StrudelLaunch" },
  opts = {
    ui = {
      hide_menu_panel = false,
      hide_top_bar = true,
    },
    update_on_save = true,
    sync_cursor = true,
    headless = false,
  },
}
