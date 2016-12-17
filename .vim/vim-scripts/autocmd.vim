
"1: quick fix
" 打开QuickFix时, <cr> 恢复 <cr>功能.因为我将<cr>映射为了查找下一个
autocmd   FileType  qf  nnoremap <buffer>  <cr>  <cr>
"autocmd   FileType  qf   echo "MyFix"


"2: help 
" 打开帮助文档时，自动显示行号
autocmd   FileType  help  set nu rnu


"3: make file
" 设置所有的"make-"打头的文件名的文件类型都为make,注意vim使用"make"表示makefile文件类型,而不是"makefile"
autocmd   BufNewFile,BufRead   make-*  set ft=make


"4: tagbar
" 为什么我的tagbar,autocmd设置打开行号不管用呢.虽然最后使用tagbar自带的g:tagbar_show_linenumbers=1,可以显示行号,但还是想明白"自己的autocmd为什么针对tagbar
" 不起作用呢
autocmd   FileType  tagbar  setlocal  nu
autocmd   FileType  tagbar  setlocal  rnu
autocmd   FileType  tagbar  nnoremap  <buffer> <leader>n  <nop>
autocmd   FileType  tagbar  nnoremap  <buffer> <leader>p  <nop>
"autocmd   BufRead,BufNewFile,FileType  tagbar  :setlocal  rnu


"5: undotree
" 打开undotree 插件时<f2>， 设置行号: undotree的文件类型为undotree
autocmd   FileType  undotree setlocal nu
autocmd   FileType  undotree setlocal rnu
autocmd   FileType  undotree  nnoremap  <buffer> <leader>n  <nop>
autocmd   FileType  undotree  nnoremap  <buffer> <leader>p  <nop>


"7: diff
" undotree 插件下面的diff窗口类型为diff
autocmd   FileType  diff setlocal nu
autocmd   FileType  diff setlocal rnu
autocmd   FileType  diff  nnoremap  <buffer> <leader>n  <nop>
autocmd   FileType  diff  nnoremap  <buffer> <leader>p  <nop>
