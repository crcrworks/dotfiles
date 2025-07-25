return {
  "karb94/neoscroll.nvim",
  lazy = false,
  config = function()
    local neoscroll = require "neoscroll"

    neoscroll.setup {
      ignored_events = {
        "WinScrolled",
        "CursorMoved",
      },
    }

    local keymap = {
      ["<C-u>"] = function()
        neoscroll.ctrl_u { duration = 100 }
      end,
      ["<C-d>"] = function()
        neoscroll.ctrl_d { duration = 100 }
      end,
      ["<C-b>"] = function()
        neoscroll.ctrl_b { duration = 200 }
      end,
      ["<C-f>"] = function()
        neoscroll.ctrl_f { duration = 200 }
      end,
      ["<C-y>"] = function()
        neoscroll.scroll(-0.1, { move_cursor = false, duration = 50 })
      end,
      ["<C-e>"] = function()
        neoscroll.scroll(0.1, { move_cursor = false, duration = 50 })
      end,
      ["zt"] = function()
        neoscroll.zt { half_win_duration = 100 }
      end,
      ["zz"] = function()
        neoscroll.zz { half_win_duration = 100 }
      end,
      ["zb"] = function()
        neoscroll.zb { half_win_duration = 100 }
      end,
    }

    local modes = { "n", "v", "x" }

    for key, func in pairs(keymap) do
      vim.keymap.set(modes, key, func)
    end
  end,
}
