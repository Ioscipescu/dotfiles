return {
  "whonore/coqtail",
  ft = "coq",
  config = function()
    -- Disable Coqtail's LSP features since you're using coq-lsp
    -- You can customize syntax highlighting colors if needed
    -- These are just examples - adjust to your colorscheme
    vim.cmd [[
      hi CoqVernacular ctermfg=blue guifg=#569cd6
      hi CoqTactic ctermfg=green guifg=#4ec9b0
      hi CoqKeyword ctermfg=magenta guifg=#c586c0
    ]]
  end,
}
