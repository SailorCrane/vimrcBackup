
"1: quickfix
" 打开QuickFix时, <cr> 恢复 <cr>功能.因为我将<cr>映射为了查找下一个
autocmd   FileType  qf  nnoremap <buffer>  <cr>  <cr>
autocmd   FileType  qf  set nu rnu
"autocmd   FileType  qf   echo "MyFix"


"2: help
" 打开帮助文档时，自动显示行号
autocmd   FileType  help  setlocal nu rnu


"3: make file
" 设置所有的"make-"打头的文件名的文件类型都为make,注意vim使用"make"表示makefile文件类型,而不是"makefile"
autocmd   BufNewFile,BufRead   make-*  setlocal filetype=make


"4-1: tagbar
" 为什么我的tagbar,autocmd设置打开行号不管用呢.虽然最后使用tagbar自带的g:tagbar_show_linenumbers=1,可以显示行号,但还是想明白"自己的autocmd为什么针对tagbar
" 不起作用呢
autocmd   FileType  tagbar  setlocal  nu
autocmd   FileType  tagbar  setlocal  rnu
autocmd   FileType  tagbar  nnoremap  <buffer> <leader>n  <nop>
autocmd   FileType  tagbar  nnoremap  <buffer> <leader>p  <nop>
autocmd   FileType  tagbar  nnoremap  <buffer> ?  :call <SNR>155_ToggleHelp()<cr>
"autocmd   BufRead,BufNewFile,FileType  tagbar  :setlocal  rnu


"4-2: taglist
autocmd   FileType  taglist  setlocal  nu
autocmd   FileType  taglist  setlocal  rnu
autocmd   FileType  taglist  nnoremap  <buffer> <leader>n  <nop>
autocmd   FileType  taglist  nnoremap  <buffer> <leader>p  <nop>
autocmd   FileType  taglist  nnoremap  <buffer> ?          :call <SNR>57_Tlist_Window_Toggle_Help_Text()<CR>


"5: undotree
" 打开undotree 插件时<f2>， 设置行号: undotree的文件类型为undotree
autocmd   FileType  undotree setlocal nu
autocmd   FileType  undotree setlocal rnu
autocmd   FileType  undotree  nnoremap  <buffer> <leader>n  <nop>
autocmd   FileType  undotree  nnoremap  <buffer> <leader>p  <nop>


"6: vundle FileType
autocmd   FileType  vundle setlocal nu
autocmd   FileType  vundle setlocal rnu
autocmd   FileType  vundle  nnoremap  <buffer> <leader>n  <nop>
autocmd   FileType  vundle  nnoremap  <buffer> <leader>p  <nop>


"7: diff
" undotree 插件下面的diff窗口类型为diff
autocmd   FileType  diff  setlocal nu
autocmd   FileType  diff  setlocal rnu
autocmd   FileType  diff  nnoremap  <buffer> <leader>n  <nop>
autocmd   FileType  diff  nnoremap  <buffer> <leader>p  <nop>


"8: minibufexpl  注意:映射一定要加上<buffer>,不然会影响全局映射
autocmd   FileType  minibufexpl  nnoremap  <buffer> <leader>n  <nop>
autocmd   FileType  minibufexpl  nnoremap  <buffer> <leader>p  <nop>
autocmd   FileType  minibufexpl  nnoremap  <buffer> <c-^>      <nop>
autocmd   FileType  minibufexpl  nmap      <buffer> <tab>      l


"9: conque_term  注意:映射一定要加上<buffer>,不然会影响全局映射
autocmd   FileType  conque_term  nnoremap  <buffer>  <leader>n  <nop>
autocmd   FileType  conque_term  nnoremap  <buffer>  <leader>p  <nop>
autocmd   FileType  conque_term  nnoremap  <buffer>  q          :bd<cr>
autocmd   FileType  conque_term  nnoremap  <buffer>  <leader>q  :bd<cr>
autocmd   FileType  conque_term  setlocal   nocursorline


"10: conque_term  注意:映射一定要加上<buffer>,不然会影响全局映射
autocmd   FileType  nerdtree  nnoremap  <buffer>  <leader>n  <nop>
autocmd   FileType  nerdtree  nnoremap  <buffer>  <leader>p  <nop>
autocmd   FileType  nerdtree  nnoremap  <buffer>  q          :bd<cr>
autocmd   FileType  nerdtree  nnoremap  <buffer>  <leader>q  :bd<cr>
autocmd   FileType  nerdtree  setlocal  nu  rnu
"autocmd   FileType  nerdtree  setlocal   nocursorline


"10:   c, cpp type
"autocmd   FileType  c,cpp
