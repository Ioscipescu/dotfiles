return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000, -- load before other plugins
    lazy = false, -- load during startup
    tag = "v1.10.0", -- https://github.com/LazyVim/LazyVim/issues/6355
    config = function()
      require("catppuccin").setup({
        flavour = "mocha", -- latte, frappe, macchiato, mocha
        transparent_background = true,
        integrations = {
          cmp = true,
          gitsigns = true,
          nvimtree = true,
          treesitter = true,
          telescope = {
            enabled = true,
          },
          notify = true,
          mini = true,
        },
      })
      vim.cmd.colorscheme("catppuccin")
    end,
  },
}
