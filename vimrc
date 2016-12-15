
" Gui setting 
" set guifont=* 可以打开gvim对于字体的设置窗口，就可以看到有哪些字体了。
" 我觉得Monospace很好看，还有注意字体号前面的空格，要使用转义字符
set guifont=Monospace\ 16



set fileencodings=ucs-bom,utf-8,iso-8859,gbk,cp936,gb2312,big5,gb18030,latin1

set expandtab
set tabstop=4
set shiftwidth=4

set smartindent
set cindent

set cursorline
set nocompatible
set rnu
set nu

" If need, set vbs=1 to show more information, vbs stand for verbose
set vbs=0

" search high light
" set  hlsearch

let mapleader=","


" My map of 'normal', 'insert', 'visual', 'command', 'iabbrev'
source ~/.vim/vim-scripts/normal-map.vim
source ~/.vim/vim-scripts/insert-map.vim

source ~/.vim/vim-scripts/command-map.vim
source ~/.vim/vim-scripts/visual-map.vim

source ~/.vim/vim-scripts/abbrev-map.vim
source ~/.vim/vim-scripts/tmp-test.vim
source ~/.vim/vim-scripts/autocmd.vim

" in the end of vimrc, source myBundle.vim
" because now, <leader> is ready, everything is OK, then to active plugin
" manged by Bundle
source ~/.vim/vim-scripts/myBundle.vim

colorscheme slate
