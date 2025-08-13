return {
  "lervag/vimtex",
  lazy = false,
  config = function()
    vim.g.vimtex_compiler_latexmk_engines = {
      ["_"] = "-lualatex",
      pdflatex = "-pdf",
      lualatex = "-lualatex",
      xelatex = "-xelatex",
    }

    vim.g.vimtex_view_method = "zathura"

    vim.g.vimtex_compiler_latexmk = {
      continuous = 0,
      options = {
        "-verbose",
        "-file-line-error",
        "-synctex=1",
        "-interaction=nonstopmode",
        "-shell-escape",
      },
    }

    -- Define keymaps for common vimtex commands:
    local opts = { noremap = true }

    vim.g.vimtex_syntax_enabled = 0

    -- You can change <leader> if you want, but by default it's "\"
    vim.api.nvim_set_keymap("n", "<leader>ll", ":w | :VimtexCompile<CR>", opts)
    vim.api.nvim_set_keymap("n", "<leader>lv", ":VimtexView<CR>", opts)
    vim.api.nvim_set_keymap("n", "<leader>le", ":VimtexErrors<CR>", opts)
    vim.api.nvim_set_keymap("n", "<leader>lk", ":VimtexStop<CR>", opts)
    vim.api.nvim_set_keymap("n", "<leader>lt", ":VimtexTocToggle<CR>", opts)
    vim.api.nvim_set_keymap("n", "<leader>wc", ":VimtexCountWords<CR>", opts)
  end,
}
