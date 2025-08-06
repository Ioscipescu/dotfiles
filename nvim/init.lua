-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("snippets")

vim.opt.spell = true
vim.cmd("set spell syntax=off")

vim.cmd("set clipboard=unnamedplus")

local lspconfig = require("lspconfig")
lspconfig.coq_lsp.setup({
  cmd = { "coq-lsp" },
  filetypes = { "coq" },
  root_dir = lspconfig.util.root_pattern("_CoqProject", "dune-project", ".git"),
})
