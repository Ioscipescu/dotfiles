-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("snippets")

vim.opt.spell = true
vim.cmd("set spell syntax=off")

vim.cmd("set clipboard=unnamedplus")
