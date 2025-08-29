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
syntax match CoqIn /\<In\>/ conceal cchar=∈ containedin=ALL

highlight default link CoqArrow Keyword
highlight default link CoqDoubleArrow Keyword
highlight default link CoqAnd Keyword
highlight default link CoqOr Keyword
highlight default link CoqNot Keyword
highlight default link CoqIn Keyword

" " Bold: **text**
" syntax match CoqDocBoldStart /\*\*/ contained conceal containedin=coqComment,coqDocComment
" syntax match CoqDocBoldEnd   /\*\*/ contained conceal containedin=coqComment,coqDocComment
" syntax region CoqDocBold start=/\*\*/ end=/\*\*/ contains=CoqDocBoldStart,CoqDocBoldEnd keepend oneline contained containedin=coqComment,coqDocComment
" highlight default link CoqDocBold Bold
"
" " Italic: _text_
" syntax match CoqDocItalicStart /_/ contained conceal containedin=coqComment,coqDocComment
" syntax match CoqDocItalicEnd   /_/ contained conceal containedin=coqComment,coqDocComment
" syntax region CoqDocItalic start=/_/ end=/_/ contains=CoqDocItalicStart,CoqDocItalicEnd keepend oneline contained containedin=coqComment,coqDocComment
" highlight default link CoqDocItalic Italic
"
" " Inline code: [code]
" syntax match CoqDocCodeStart /\[/ contained conceal containedin=coqComment,coqDocComment
" syntax match CoqDocCodeEnd   /\]/ contained conceal containedin=coqComment,coqDocComment
" syntax region CoqDocCode start=/\[/ end=/\]/ contains=CoqDocCodeStart,CoqDocCodeEnd keepend oneline contained containedin=coqComment,coqDocComment
" highlight default link CoqDocCode String
"
" syntax match CoqOpen "(\*" contained conceal containedin=coqComment,coqDocComment
" syntax match CoqDocOpen  "(\*\*" contained conceal containedin=coqComment,coqDocComment
" syntax match CoqDocClose "\*)"   contained conceal containedin=coqComment,coqDocComment

syntax clear coqComment

syntax region coqComment matchgroup=coqCommentDelim start="(\*\*\?" end="\*)" contains=coqCommentBold,coqCommentItalic,coqCommentCode,coqCommentHeader concealends
highlight coqCommentDelim guifg=NONE ctermfg=NONE

syntax region coqCommentBold matchgroup=coqCommentBoldDelim start="\*\*" end="\*\*" contained concealends
highlight coqCommentBold gui=bold cterm=bold
highlight coqCommentBoldDelim gui=bold cterm=bold

syntax region coqCommentItalic matchgroup=coqCommentItalicDelim start="\*\ze[^*]" end="[^*]\zs\*" contained concealends
highlight coqCommentItalic gui=italic cterm=italic
highlight coqCommentItalicDelim gui=italic cterm=italic

syntax region coqCommentCode matchgroup=coqCommentCodeDelim start="`" end="`" contained concealends
highlight coqCommentCode guifg=#d7875f ctermfg=173 guibg=#3a3a3a ctermbg=237
highlight coqCommentCodeDelim guifg=#d7875f ctermfg=173

syntax match coqCommentHeader "^#\{1,3\}\s.*$" contained
highlight coqCommentHeader gui=bold cterm=bold guifg=#87d7ff ctermfg=117
highlight coqComment guifg=#8a8a8a ctermfg=245
