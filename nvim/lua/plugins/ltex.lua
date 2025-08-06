return {
  "barreiroleo/ltex_extra.nvim",
  ft = { "markdown", "tex" },
  dependencies = { "neovim/nvim-lspconfig" },
  config = function()
    -- Add a small delay or use autocmd to ensure LSP is attached
    vim.api.nvim_create_autocmd("LspAttach", {
      callback = function(args)
        local client = vim.lsp.get_client_by_id(args.data.client_id)
        if client and client.name == "ltex" then
          require("ltex_extra").setup({
            load_langs = { "en-US", "es" }, -- Languages to load
            init_check = true, -- Initialize spell checking
            path = "/home/ben/.config/nvim/spell", -- Path to store dictionaries
            log_level = "none", -- Logging level
          })
        end
      end,
    })
  end,
}
