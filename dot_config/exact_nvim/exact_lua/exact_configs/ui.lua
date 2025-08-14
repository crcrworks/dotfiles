local options = {
  base46 = {
    theme = "everforest",
    integrations = {
      "blink",
      "cmp",
      "snacks",
      "noice",
      "defaults",
      "devicons",
      "git",
      "diffview",
      "lsp",
      "mason",
      "flash",
      "avante",
      "nvimtree",
      "statusline",
      "syntax",
      "treesitter",
      "telescope",
      "tbline",
      "whichkey",
      "mini-icons",
      "tiny-inline-diagnostic",
      "codeactionmenu",
    },
    transparency = false,
    theme_toggle = { "onedark", "one_light" },
  },

  lsp = {
    signature = false,
  },

  mason = { pkgs = {}, skip = {} },

  colorify = {
    enabled = true,
    mode = "virtual", -- fg, bg, virtual
    virt_text = "󱓻 ",
    highlight = { hex = true, lspvars = true },
  },

  term = {
    base46_colors = true,
    winopts = { number = false, relativenumber = false },
    sizes = { sp = 0.3, vsp = 0.2, ["bo sp"] = 0.3, ["bo vsp"] = 0.2 },
    float = {
      relative = "editor",
      row = 0.3,
      col = 0.25,
      width = 0.5,
      height = 0.4,
      border = "single",
    },
  },

  ui = {
    cmp = {
      style = "atom_colored",
    },

    statusline = {
      enabled = true,
      theme = "vscode_colored",
      lazyload = true,
      separator_style = "default",
      order = nil,
      modules = nil,
    },

    tabufline = {
      enabled = true,
      lazyload = false,
      order = { "treeOffset", "buffers", "tabs" },
      bufwidth = 21,
      modules = {
        function(modules)
          table.insert(modules, modules[1])
        end,
      },
    },
  },
}

local status, chadrc = pcall(require, "configs.ui")
return vim.tbl_deep_extend("force", options, status and chadrc or {})
