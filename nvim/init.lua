vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


--
require("lazy").setup("plugins", {
 defaults = { lazy = true },
 install = { colorscheme = { "catppuccin" } },
 checker = { enabled = true },
 change_detection = {
  notify = false,
 },
 performance = {
  rtp = {
   disabled_plugins = {
    "gzip",
    "netrwPlugin",
    "tarPlugin",
    "tohtml",
    "tutor",
    "zipPlugin",
   },
  },
 },
})
require("options")
require("plugin-config")
require("keybindings")
require("autocommands")
require("lsp-config")
