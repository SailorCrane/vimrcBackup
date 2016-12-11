
set fileencodings=utf-8,gbk,latin1

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


" My map of 'normal', 'insert', 'iabbrev'
source ~/.vim/vim-scripts/normal-map.vim
source ~/.vim/vim-scripts/insert-map.vim
source ~/.vim/vim-scripts/abbrev-map.vim
source ~/.vim/vim-scripts/tmp-test.vim

" in the end of vimrc, source myBundle.vim
" because now, <leader> is ready, everything is OK, then to active plugin
" manged by Bundle
source ~/.vim/vim-scripts/myBundle.vim
