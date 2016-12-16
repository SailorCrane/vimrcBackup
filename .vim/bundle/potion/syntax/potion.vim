
autocmd  BufNewFile,BufRead  *.potion  set filetype=potion

if exists( "b:current_syntax" )
    finish
endif

" potion key words
syntax keyword potionKeyword loop times to while
syntax keyword potionKeyword if elsif else
syntax keyword potionKeyword class return

highlight link potionKeyword Keyword

" potion function 
syntax keyword potionFunction print join string
highlight link potionFunction Function

let b:current_syntax = "potion"
