
" More quick command mode: ';' to comman, and <cr> to repeat search in line
nnoremap  ;  :
nnoremap <cr> ;
" Toggle  number line and  relative number line
" 打开或者关闭相对行
nnoremap  <leader>o   :set nu! rnu!<cr>

nnoremap  <leader>ev  :e $MYVIMRC<cr>
nnoremap  <leader>ep  :e ~/.vim/myBundle.vim<cr>
nnoremap  <leader>sv  :source $MYVIMRC<cr>

" Quit the window 
nnoremap  <leader>q  :q<cr>
" Quit all windows
nnoremap  <leader>r  :qa<cr>
" Refresh file, or restore file from file name
nnoremap  <leader>e  :e!<cr>
nnoremap  <leader>w  :w<cr>
nnoremap  <leader>d  diw

" Buf next
nnoremap  <leader>n  :bn<cr>
" Buf previous
nnoremap  <leader>p  :bp<cr>

" Window manager
nnoremap  <leader>h  <C-w>h
nnoremap  <leader>l  <C-w>l
nnoremap  <leader>j  <C-w>j
nnoremap  <leader>k  <C-w>k

" _ and - to swith line position
" 将当前行'-'下移 或者'_'上移
nnoremap  -  ddp
nnoremap  _  kddp

" g motion and operation on word
" w:word, b:back, c:current character, e:end of word
" 因为将当前字母更改为大写用的更多，所以将gc功能作为修改当前字母为大写
" This is test Sentence
nnoremap  gw  wgul
nnoremap  gW  wgUl

nnoremap  gb  bgul
nnoremap  gB  BgUl

nnoremap  ge  egul
nnoremap  gE  egUl

nnoremap  gc  gUl
nnoremap  gC  gUl

" H to line begin: but H to screen top can not use
" L to lien end  : but L to screen bottom can not use
nnoremap  L  $
nnoremap  H  ^

" "'" is used for mark, there to top, bottom, middle 
noremap   't H
noremap   'b L
noremap   'm M

" <Fx> key map
nnoremap  <f2>  :set nu! rnu!<cr>
nnoremap  <f3>  :set list!<cr>
