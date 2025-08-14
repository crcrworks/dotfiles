return {
  "gabrielpoca/replacer.nvim",
  keys = {
    {
      "<leader>S",
      function()
        require("replacer").run()
      end,
      desc = "run replacer.nvim",
    },
  },
  opts = {
    save_on_write = true,
    rename_files = true,
  },
}
