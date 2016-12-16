
autocmd  BufNewFile,BufRead  *.potion  set filetype=potion

if exists( "b:current_syntax" )
    finish
endif

" potion key words
syntax    keyword potionKeyword loop    times to while
syntax    keyword potionKeyword if      elsif else
syntax    keyword potionKeyword class   return
highlight link    potionKeyword Keyword

" potion function 
syntax    keyword potionFunction print join string
highlight link    potionFunction Function

" potion comment
syntax    match potionComment "\v#.*$"
highlight link  potionComment Comment

" potion string
syntax    region potionString  start=/\v"/ skip=/\v\\./   end=/\v"/
highlight link   potionString  String

let b:current_syntax = "potion"
