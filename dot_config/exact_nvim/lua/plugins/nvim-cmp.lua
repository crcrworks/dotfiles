return {
  "hrsh7th/nvim-cmp",
  opts = function(_, opts)
    local cmp = require "cmp"
    opts.mapping = cmp.mapping.preset.insert {
      ["<Tab>"] = cmp.mapping.confirm { select = true },
    }
  end,
}
