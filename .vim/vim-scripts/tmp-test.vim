
" 事件之间用逗号分隔，不能含有空格
autocmd BufNewFile,BufRead *.html   :setlocal  nowrap

autocmd FileType python  :iabb <buffer> iff  if:<left>
autocmd FileType c  :iabb <buffer> iff  if()<left>
"autocmd BufWrite  *  :sleep 200m
"autogrup BufWrite  *  :sleep 200m
"
":augroup testgroup
":    autocmd!
":    autocmd BufWrite * :echom "Foo--------------------------------------"
":    autocmd BufWrite * :echom "Bar--------------------------------------"
":augroup END

":augroup testgroup
":    autocmd BufWrite * :echom "Baz--------------------------------------"
":augroup END
