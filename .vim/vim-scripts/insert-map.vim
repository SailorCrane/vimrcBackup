
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
inoremap  <C-y>  <esc>yypkA
inoremap  <C-b>  <c-w>
inoremap  <C-o>  <esc>o

" 插入模式下， <cr>
" 调整当前行到屏幕中心,但是AutoPair已经使用<cr>分割配对符号,所以这里要重新选择映射按键
" 因为<c-z>比较难敲击,所以选择<c-s>作为映射键
"inoremap  <c-a>  <esc>zza
"inoremap  <c-j>  <esc>zza
"inoremap  <c-cr>  <esc>zza
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

