local map = vim.keymap.set
local dial = require "dial.map"

map("v", "<C-x>", function()
  return dial.manipulate("decrement", "visual")
end, { desc = "Increment" })

map("v", "<C-a>", function()
  return dial.manipulate("increment", "visual")
end, { desc = "decrement" })

map("n", "<C-x>", function()
  return dial.manipulate("decrement", "normal")
end, { desc = "Increment" })

map("n", "<C-a>", function()
  return dial.manipulate("increment", "normal")
end, { desc = "decrement" })
