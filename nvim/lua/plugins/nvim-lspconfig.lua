return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      rust_analyzer = {
        mason = false,
      },
    },
  },
  config = function()
    local lspconfig = require "lspconfig"

    lspconfig.coq_lsp.setup {
      cmd = { "coq-lsp" },
      filetypes = { "coq" },
      root_dir = lspconfig.util.root_pattern("_CoqProject", "dune-project", ".git"),
    }
  end,
}
