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

lspconfig.zls.setup({
  cmd = { "zls" },
  filetypes = { "zig" },
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

vim.opt.spell = true
vim.opt.spelllang = "en_us"

vim.api.nvim_create_autocmd("FileType", {
  pattern = {
    "bibtex",
    "gitcommit",
    "markdown",
    "org",
    "tex",
    "restructuredtext",
    "rsweave",
    "latex",
    "quarto",
    "rmd",
    "context",
    "html",
    "xhtml",
    "mail",
    "plaintext",
    "norg",
    "rst",
  },
  callback = function()
    vim.opt_local.spell = false
  end,
})
