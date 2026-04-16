return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      ["*"] = {
        keys = {
          { "<leader>cl", false },
          { "<leader>cL", ":LspInfo" },
        },
      },
    },
  },
}
