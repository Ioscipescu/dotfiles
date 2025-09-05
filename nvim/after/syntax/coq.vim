setlocal conceallevel=2
setlocal concealcursor=nc

syntax keyword coqKwd forall conceal cchar=∀
syntax keyword coqKwd exists conceal cchar=∃
syntax keyword coqKwd fun    conceal cchar=λ
syntax match CoqArrow /->/ conceal cchar=→ containedin=ALL
syntax match CoqDoubleArrow /=>/ conceal cchar=⇒ containedin=ALL
syntax match CoqAnd /\/\\/ conceal cchar=∧ containedin=ALL
syntax match CoqOr /\\\// conceal cchar=∨ containedin=ALL
syntax match CoqNot /~/ conceal cchar=¬ containedin=ALL
syntax match CoqIn /\<In\>/ conceal cchar=∈

highlight default link CoqArrow Keyword
highlight default link CoqDoubleArrow Keyword
highlight default link CoqAnd Keyword
highlight default link CoqOr Keyword
highlight default link CoqNot Keyword
highlight default link CoqIn Keyword

syntax clear coqComment

syntax region coqComment matchgroup=coqCommentDelim start="(\*\*\?" end="\*)" contains=coqCommentBold,coqCommentItalic,coqCommentCode,coqCommentHeader concealends
highlight coqCommentDelim guifg=NONE ctermfg=NONE

syntax region coqCommentBold matchgroup=coqCommentBoldDelim start="\*\*" end="\*\*" contained concealends
highlight coqCommentBold guifg=#cba6f7 ctermfg=183 gui=bold cterm=bold
highlight coqCommentBoldDelim guifg=#cba6f7 ctermfg=183 gui=bold cterm=bold

syntax region coqCommentItalic matchgroup=coqCommentItalicDelim start="\*\ze[^*]" end="[^*]\zs\*" contained concealends
syntax region coqCommentItalic matchgroup=coqCommentItalicDelim start="_" end="_" contained concealends
highlight coqCommentItalic guifg=#cba6f7 ctermfg=183 gui=italic cterm=italic
highlight coqCommentItalicDelim guifg=#cba6f7 ctermfg=183 gui=italic cterm=italic

syntax region coqCommentCode matchgroup=coqCommentCodeDelim start="`" end="`" contained concealends
syntax region coqCommentCode matchgroup=coqCommentCodeDelim start="\[" end="\]" contained concealends
highlight coqCommentCode guifg=#d7875f ctermfg=173 guibg=#3a3a3a ctermbg=237
highlight coqCommentCodeDelim guifg=#d7875f ctermfg=173
syntax match coqCommentCodeIn /\<In\>/ conceal cchar=∈ contained containedin=coqCommentCode

syntax match coqCommentHeader1 "^#\s.*$" contained containedin=coqComment
highlight coqCommentHeader1 guifg=#87d7ff ctermfg=117 gui=bold,underline cterm=bold,underline

syntax match coqCommentHeader2 "^##\s.*$" contained containedin=coqComment  
highlight coqCommentHeader2 guifg=#87d7ff ctermfg=117 gui=bold cterm=bold

syntax match coqCommentHeader3 "^###\s.*$" contained containedin=coqComment
highlight coqCommentHeader3 guifg=#87d7ff ctermfg=117 gui=italic cterm=italic

syntax match coqCommentHashRun "#\{4,}" containedin=coqComment
syntax match coqCommentHashRule "#" containedin=coqCommentHashRun conceal cchar=━
syntax match coqCommentEqualRun "=\{4,}" containedin=coqComment
syntax match coqCommentEqualRule "=" containedin=coqCommentEqualRun conceal cchar=─

syntax match coqCommentIn /\<In\>/ contained containedin=coqComment
highlight coqCommentIn guifg=#cba6f7 ctermfg=183

highlight coqComment guifg=#cba6f7 ctermfg=183

highlight Conceal guifg=#74c7ec ctermfg=117
