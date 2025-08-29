return {
  "whonore/coqtail",
  ft = "coq",
  config = function()
    vim.cmd([[
      hi CoqVernacular ctermfg=blue guifg=#569cd6
      hi CoqTactic ctermfg=green guifg=#4ec9b0
      hi CoqKeyword ctermfg=magenta guifg=#c586c0
    ]])
  end,
}
