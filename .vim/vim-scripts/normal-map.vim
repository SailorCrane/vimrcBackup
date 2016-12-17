

"1 Quick into command line
" Because I want to use ; more quickly
" So I disabled the ':' keyword

" 将';'映射到':',因为';'更容易敲击,但是':'功能用的更多
" 因为<cr>默认功能,可以使用j代替,所以将<cr>映射到';',即'f'后,查看下一个.
" 而在qf(QuickFix)文件类型中的<cr>,选择光标所在行的搜索结果,
" 所以在quickfix文件类型中(即quickfix窗口中)可以使用autocmd  FileType  qx中针对filetype项,设置自动命令,将<cr>重新映射回<cr>
" 详情见<leader>ef
nnoremap  ;  :
nnoremap  :  <nop>
nnoremap <cr> ;


"2 Toggle  something
"  Toggle  number line and relative number line
"  Toggle  highlight
"  Toggle  sensitive case
nnoremap  <leader>o   :set nu!  rnu!    nu? rnu? <cr>
nnoremap  <leader>/   :set hlsearch!    hlsearch?<cr>
nnoremap  <leader>i   :set ignorecase!  ignorecase?<cr>


"3  quick edit
" quick edit script v:vimrc, n:normal, i:insert, p:plugin-bundle, a:abbrev
" edit  ~/.bashrc
nnoremap  <leader>eb  :e ~/.bashrc<cr>
nnoremap  <leader>em  :e ./makefile<cr>
nnoremap  <leader>eg  :e ~/.gvimrc<cr>
nnoremap  <leader>eG  :e ~/.gitconfig<cr>
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


"4 source .vimrc  and  source  .gvimrc
" <leader>sv source .vimrc or .gvimrc
if has("gui_running")
    nnoremap  <leader>sv  :source $MYVIMRC<cr>:source ~/.gvimrc<cr>
else
    nnoremap  <leader>sv  :source $MYVIMRC<cr>
endif


"5 quick  operation 
" Quit the current window : the buffers underlying the window will be quited
nnoremap  <leader>q  :q<cr>
" Quit all windows
nnoremap  <leader>r  :qa<cr>
" Refresh file, or restore file from file name
nnoremap  <leader>e  :e!<cr>
nnoremap  <leader>w  :w<cr>


"6  word  operation
" 快速删除一个词：word 或者Word
" 因为<leader>d被用来作为down翻页，所以这里将其disable,毕竟diw也就多了一个字母而已
" 但是删除一个Word：长词，是一个非常好的特性
"nnoremap  <leader>d  diw
nnoremap  <leader>D  diW

nnoremap  <leader>c  ciw
nnoremap  <leader>C  ciW


"7 buffer next,previous,delete
" Buf next
nnoremap  <leader>n  :bn<cr>
" Buf previous
nnoremap  <leader>p  :bp<cr>
" Buf delete: delete current buffer
nnoremap <leader>d   :bd<cr>:syntax on<cr>


"8 Window manager
nnoremap  <leader>h  <C-w>h
nnoremap  <leader>l  <C-w>l
nnoremap  <leader>j  <C-w>j
nnoremap  <leader>k  <C-w>k


"9 quick line switch:快速交换两行
" _ and - to swith line position
" 将当前行'-'下移 或者'_'上移
nnoremap  -  ddp
nnoremap  _  kddp


"10 quick  up case
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


"11 快速在文件内部跳转:第一行,最后一行,当前行最左,最右
" H to line begin: but H to screen top can not use
" L to lien end  : but L to screen bottom can not use
nnoremap  <c-k>  gg
nnoremap  <c-j>  G
nnoremap  <c-h>  ^
nnoremap  <c-l>  $
nnoremap  H  ^
nnoremap  L  $


"12-1 屏幕顶部,中央,下端
" "'" is used for mark, there to top, bottom, middle 
noremap   't H
noremap   'b L
noremap   'm M


"12-2
" <leader>f,b to  page down up
" u:up , d:down
" 这里的up指翻页时，可以看到上方更多的字，同理down可以看到下方更多的字
"nnoremap  <leader>b   5<c-y>
" 因为还是<leader>f比较好键入
nnoremap  <leader>u   5<c-y>
nnoremap  <leader>f   5<c-e>
"nnoremap  <leader>d   5<c-e>


"13 show list, just funny, and test
nnoremap  <f3>  :set list!<cr>


"14 To segment a line ----> two line
" seg line, then go to end of origin line
" g_ go to end of no space character
" i:insert a:append
nnoremap <leader>si i<cr><esc><up>g_
nnoremap <leader>sa a<cr><esc><up>g_


"15 visual:select all lines
" map <c-a> to visual all content if file
nnoremap  <c-a>  <esc>gg<s-v>G


