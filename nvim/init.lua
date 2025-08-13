-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("snippets")

vim.cmd("set clipboard=unnamedplus")

local lspconfig = require("lspconfig")
lspconfig.coq_lsp.setup({
  cmd = { "coq-lsp" },
  filetypes = { "coq" },
  root_dir = lspconfig.util.root_pattern("_CoqProject", "dune-project", ".git"),
})

vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = true,
  update_in_insert = false,
})

vim.opt.wrap = true

require("neo-tree").setup({
  filesystem = {
    filtered_items = {
      visible = true, -- This is what you want: If you set this to `true`, all "hide" just mean "dimmed out"
      hide_dotfiles = false,
      hide_gitignored = true,
    },
  },
})
