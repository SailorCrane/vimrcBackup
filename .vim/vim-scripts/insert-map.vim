
" map jk to esc
" if you really want to input "jk", please input <c-v>jk
" map <esc> to <nop> is to force me use "jk"
inoremap  jk <esc>
inoremap <esc> <nop>

" <arrrow> set: left, right, up, down
inoremap <c-h> <Left>
inoremap <c-j> <Down>
inoremap <c-k> <Up>
inoremap <c-l> <Right>


inoremap  <C-d>  <esc>ddi
inoremap  <C-w>  <esc>:w<cr>a
inoremap  <C-y>  <esc>yyp
inoremap  <C-b>  <c-w>
inoremap  <C-o>  <esc>o
" 插入模式下， 回车会 调整当前行到屏幕中心
inoremap  <c-z>  <esc>zza

" To line begin and line end at 'insert mode'
inoremap  <c-^>   <esc><s-^>i
inoremap  je   <esc>$a

" Open new line in  'Insert Mode'
inoremap <c-o> <esc>o
inoremap jo <esc>o

" Write/Save file at Insert Mode
inoremap <c-w> <esc>:w<cr>a
inoremap jw <esc>:w<cr>a

" Back word,注意: 因为是inoremap非递归映射<c-w>是vim底层的操作.
inoremap <c-b>  <c-w>
inoremap jb  <c-w>

