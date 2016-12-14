
" Because I want to use ; more quickly
" So I disabled the ':' keyword

" 将';'映射到':',因为';'更容易敲击,但是':'功能用的更多
" 因为<cr>默认功能,可以使用j代替,所以将<cr>映射到';',即'f'后,查看下一个.
" 而在qf(QuickFix)文件类型中的<cr>,选择光标所在行的搜索结果,可以使用autocmd.vim中针对filetype项,设置自动命令,将<cr>重新映射回<cr>
nnoremap  ;  :
nnoremap  :  <nop>
nnoremap <cr> ;

" Toggle  number line and  relative number line
" 打开或者关闭相对行
nnoremap  <leader>o   :set nu! rnu!<cr>

" quick edit script v:vimrc, n:normal, i:insert, p:plugin-bundle, a:abbrev
" edit  ~/.bashrc
nnoremap  <leader>eb  :e ~/.bashrc<cr>
nnoremap  <leader>em  :e ./makefile<cr>
nnoremap  <leader>eg  :e ~/.gitconfig<cr>
nnoremap  <leader>eA  :e ~/myAlias.sh<cr>

nnoremap  <leader>ev  :e $MYVIMRC<cr>
nnoremap  <leader>eV  :e ~/.vim/vim-scripts/visual-map.vim<cr>
nnoremap  <leader>en  :e ~/.vim/vim-scripts/normal-map.vim<cr>
nnoremap  <leader>ei  :e ~/.vim/vim-scripts/insert-map.vim<cr>
nnoremap  <leader>ec  :e ~/.vim/vim-scripts/command-map.vim<cr>

nnoremap  <leader>ea  :e ~/.vim/vim-scripts/abbrev-map.vim<cr>
nnoremap  <leader>et  :e ~/.vim/vim-scripts/tmp-test.vim<cr>

nnoremap  <leader>ep  :e ~/.vim/vim-scripts/myBundle.vim<cr>
nnoremap  <leader>ef  :e ~/.vim/vim-scripts/autocmd.vim<cr>
nnoremap  <leader>sv  :source $MYVIMRC<cr>



" Quit the window : the buffers underlying the window will be quited
nnoremap  <leader>q  :q<cr>
" Quit all windows
nnoremap  <leader>r  :qa<cr>
" Refresh file, or restore file from file name
nnoremap  <leader>e  :e!<cr>
nnoremap  <leader>w  :w<cr>
nnoremap  <leader>d  diw
nnoremap  <leader>c  ciw

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
" 并且讲gC设置为修改当前字母为大写.
" This is the test Sentence
nnoremap  gw  wgul
nnoremap  gW  wgUl

nnoremap  gb  bgul
nnoremap  gB  BgUl

nnoremap  ge  egul
nnoremap  gE  egUl

nnoremap  gc  gUl
nnoremap  gC  gul

" H to line begin: but H to screen top can not use
" L to lien end  : but L to screen bottom can not use
nnoremap  L  $
nnoremap  H  ^

" "'" is used for mark, there to top, bottom, middle 
noremap   't H
noremap   'b L
noremap   'm M

" <Fx> key map
"nnoremap  <f2>  :set nu! rnu!<cr>
nnoremap  <f3>  :set list!<cr>

" <leader>f,b to  page down up
nnoremap  <leader>f   5<c-e>
nnoremap  <leader>b   5<c-y>

" Toggle  hlsearch, search string in  "Register @/"
" Because '/' stand for 'search', so <leader>/ to toggle hlsearch
nnoremap  <leader>/   :set hlsearch!<cr>

" Toggle  search match case
" 是否搜索大小写敏感
nnoremap  <leader>i   :set ignorecase!<cr>

" seg line, then go to end of origin line
" g_ go to end of no space character
" i:insert a:append
nnoremap <leader>si i<cr><esc><up>g_
nnoremap <leader>sa a<cr><esc><up>g_

" map <c-a> to visual all content if file
nnoremap  <c-a>  <esc>gg<s-v>G

