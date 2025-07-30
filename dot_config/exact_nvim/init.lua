vim.g.base46_cache = vim.fn.stdpath "data" .. "/base46/"
vim.g.mapleader = " "

local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
end

vim.opt.rtp:prepend(lazypath)

local lazy_config = require "configs.lazy"

local function should_load_highlights()
  local base46_dir = vim.fn.stdpath "data" .. "/base46/"
  if not vim.uv.fs_stat(base46_dir) then
    return true
  end

  local integrations = require("configs.ui").base46.integrations
  for _, name in ipairs(integrations) do
    if not vim.uv.fs_stat(base46_dir .. name) then
      return true
    end
  end

  return false
end

if should_load_highlights() then
  require("base46").load_all_highlights()
end

require("lazy").setup({
  { import = "plugins" },
}, lazy_config)

local integrations = require("configs.ui").base46.integrations
for _, name in ipairs(integrations) do
  dofile(vim.g.base46_cache .. name)
end

require "options"
require "autocmds"

vim.schedule(function()
  require "configs.mappings"
  require "ui"
end)
