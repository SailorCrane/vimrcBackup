
set expandtab
set tabstop=4
set shiftwidth=4

set smartindent
set cindent

set cursorline
set nocompatible
set rnu
set nu

" if need, set vbs=1 to show more information, vbs stand for verbose
set vbs=0

let mapleader=","

set fileencodings=utf-8,gbk,latin1


nnoremap  <leader>ev  :e $MYVIMRC<cr>
nnoremap  <leader>ep  :e ~/.vim/myBundle.vim<cr>
nnoremap  <leader>sv  :source $MYVIMRC<cr>

"leader short operation
nnoremap  <leader>q  :q<cr>
nnoremap  <leader>r  :qa<cr>    "quit all file
nnoremap  <leader>e  :e!<cr>	"refresh file, or restore file from file name
nnoremap  <leader>w  :w<cr>	"write 
nnoremap  <leader>d  diw	"delete a word

nnoremap  <leader>n  :bn<cr>	"buf next
nnoremap  <leader>p  :bp<cr>	"buf previous

"Window manager
nnoremap  <leader>h  <C-w>h
nnoremap  <leader>l  <C-w>l
nnoremap  <leader>j  <C-w>j
nnoremap  <leader>k  <C-w>k

"left, right, up, down
inoremap <c-h> <Left>
inoremap <c-j> <Down>
inoremap <c-k> <Up>
inoremap <c-l> <Right>



" in the end of vimrc, source myBundle.vim
" because now, <leader> is ready, everything is OK, then to active plugin
" manged by Bundle
source ~/.vim/myBundle.vim
