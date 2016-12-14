
" 打开QuickFix时, <cr> 恢复 <cr>功能.因为我将<cr>映射为了查找下一个
autocmd   FileType  qf  nnoremap <buffer>  <cr>  <cr>
"autocmd   FileType  qf   echo "MyFix"

" 打开帮助文档时，自动显示行号
autocmd   FileType  help  set nu rnu

" 设置所有的"make-"打头的文件名的文件类型都为make,注意vim使用"make"表示makefile文件类型,而不是"makefile"
autocmd   BufNewFile,BufRead   make-*  set ft=make


" 为什么我的tagbar,autocmd设置打开行号不管用呢.虽然最后使用tagbar自带的g:tagbar_show_linenumbers=1,可以显示行号,但还是想明白自己的autocmd为什么针对tagbar
" 不起作用呢
"autocmd   FileType  tagbar  :setlocal  nu
"autocmd   BufRead,BufNewFile,kjFileType  tagbar  :setlocal  nu
"autocmd   BufRead,BufNewFile,FileType  tagbar  :setlocal  rnu
