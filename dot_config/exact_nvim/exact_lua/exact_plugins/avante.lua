local prefix = "<Leader>A"

return {
  "yetone/avante.nvim",
  build = vim.fn.has "win32" == 1 and "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false"
    or "make",
  keys = { "<leader>A", desc = "Boot avante" },
  specs = {
    {
      "zbirenbaum/copilot.lua",
      optional = true,
      specs = {
        {
          "yetone/avante.nvim",
          opts = {
            provider = "copilot",
            auto_suggestions_provider = "copilot",
          },
        },
      },
    },
    {
      "folke/snacks.nvim",
      optional = true,
      specs = {
        {
          "yetone/avante.nvim",
          opts = {
            selector = {
              provider = "snacks",
            },
          },
        },
      },
    },
  },
  opts = {
    -- provider = "openai",
    -- provider = "claude",
    provider = "copilot",
    auto_suggestions_provider = "copilot",
    -- behaviour = {
    -- 	auto_suggestions = false,
    -- 	auto_set_highlight_group = true,
    -- 	auto_set_keymaps = true,
    -- 	auto_apply_diff_after_generation = true,
    -- 	support_paste_from_clipboard = true,
    -- },
    hints = { enabled = false },
    windows = {
      position = "right",
      width = 30,
      sidebar_header = {
        enabled = true, -- true, false to enable/disable the header
      },
    },
    -- mappings = {
    -- 	suggestion = {
    -- 		accept = "<C-g>",
    -- 	},
    -- },
    suggestion = {
      debounce = 100,
      throttle = 100,
    },
    -- claude = {
    -- 	model = "gpt-4o",
    -- 	-- model = "claude-3-opus-20240229",  -- $15/$75
    -- 	-- model = "claude-3-haiku-20240307", -- $0.25/1.25
    -- 	max_tokens = 8000,
    -- },
    -- copilot = {
    -- 	model = "claude-3.7-sonnet",
    -- 	-- model = "gpt-4o-mini",
    -- 	max_tokens = 4096,
    -- },
    -- openai = {
    -- 	model = "gpt-4o", -- $2.5/$10
    -- 	-- model = "gpt-4o-mini", -- $0.15/$0.60
    -- 	max_tokens = 4096,
    -- },
    mappings = {
      ask = prefix .. "<CR>",
      edit = prefix .. "e",
      refresh = prefix .. "r",
      new_ask = prefix .. "n",
      focus = prefix .. "f",
      select_model = prefix .. "?",
      stop = prefix .. "S",
      select_history = prefix .. "h",
      toggle = {
        default = prefix .. "t",
        debug = prefix .. "d",
        hint = prefix .. "H",
        suggestion = prefix .. "s",
        repomap = prefix .. "R",
      },
      diff = {
        next = "]c",
        prev = "[c",
      },
      files = {
        add_current = prefix .. ".",
        add_all_buffers = prefix .. "B",
      },
    },
  },
}
