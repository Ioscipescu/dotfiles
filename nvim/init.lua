-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("snippets")
require("cmds.cmds")

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

require("lspconfig")["pyright"].setup({
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    python = {
      analysis = {
        diagnosticSeverityOverrides = {
          reportUnusedExpression = "none",
        },
      },
    },
  },
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

local original_handler = vim.lsp.handlers["$/progress"]
vim.lsp.handlers["$/progress"] = function(_, result, ctx)
  local client = vim.lsp.get_client_by_id(ctx.client_id)
  if client and client.name == "ltex" then
    return
  end
  if original_handler then
    original_handler(_, result, ctx)
  end
end
