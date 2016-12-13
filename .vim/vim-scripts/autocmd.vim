
" 打开QuickFix时, <cr> 恢复 <cr>功能.因为我将<cr>映射为了查找下一个
autocmd   FileType  qf  nnoremap <buffer>  <cr>  <cr>
"autocmd   FileType  qf   echo "MyFix"


" 为什么我的tagbar,autocmd设置打开行号不管用呢.虽然最后使用tagbar自带的g:tagbar_show_linenumbers=1,可以显示行号,但还是想明白自己的autocmd为什么针对tagbar
" 不起作用呢
"autocmd   FileType  tagbar  :setlocal  nu
"autocmd   BufRead,BufNewFile,kjFileType  tagbar  :setlocal  nu
"autocmd   BufRead,BufNewFile,FileType  tagbar  :setlocal  rnu
