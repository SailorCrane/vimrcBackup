
" 1  insert -----> normal
" map jk to esc
" if you really want to input "jk", please input <c-v>jk
" map <esc> to <nop> is to force me use "jk"
inoremap  jk <esc>
"inoremap <esc> <nop>

" 2  arrrow : with ctrl
" <arrrow> set: left, right, up, down
inoremap <c-h> <Left>
inoremap <c-j> <Down>
inoremap <c-k> <Up>
inoremap <c-l> <Right>


" 3 ctrl- : quick  edit
" <c-d>和插件中某个映射重合,插件每次启动都要检测,然后echom
" message,好烦,所以取消inoremap <c-d> 映射
"inoremap  <silent> <C-d>  <esc>ddi
inoremap  <C-w>  <esc>:w<cr>a
" <C-s>在终端下, 依旧是停止回显, 只能在gvim中使用, 所以这里又
" 搞了一个<c-w>
inoremap  <C-s>  <esc>:w<cr>a
" i_ctrl-y 和 i_ctrl-e 一样,也是没有什么卵用的按键, 所以映射为复制一行
" 并且光标移动到复制后的行.这是因为使用中,发现一般复制后,更多会移动到
" 复制后的行, 去操作
inoremap  <C-y>  <esc>yypA
" <c-b> 代替了原有<c-w>的功能,删除一个单词
inoremap  <C-b>  <c-w>
" <c-o> 在插入模式下,还有别的妙用: 本职功能: 进入insert-normal子模式
"inoremap  <C-o>  <esc>o

" 4 <c-z> 屏幕居中
" 插入模式下， <cr>
" 调整当前行到屏幕中心,但是AutoPair已经使用<cr>分割配对符号,所以这里要重新选择映射按键
" 因为<c-z>比较难敲击,所以选择<c-s>作为映射键
"inoremap  <c-a>  <esc>zza
"inoremap  <c-j>  <esc>zza
"inoremap  <c-cr>  <esc>zza
" 插入模式下回到屏幕中央,可以使用<c-o>zz代替
"inoremap  <c-z>  <esc>zza

"5 跳到行首和行尾, 因为i_ctrl-a 和 i_ctrl-e, 其实没有什么卵用,
" 所以还不如在插入模式下功能, 和bash等编辑模式中统一起来
" I进入到第一个非空白字符前面, A到行尾(没有验证是否是非空白字符)
inoremap  <c-a>   <esc>I
inoremap  <c-e>   <esc>A
"inoremap  <c-^>   <esc><s-^>i
"inoremap  <c-^>   <esc>I, I是插入到第一个飞空白字符,将从<s-^>中解放出来了
"inoremap  je   <esc>$a

" Open new line in  'Insert Mode'
"inoremap <c-o> <esc>o
" new line below
inoremap jo <esc>o
" new line above
inoremap jO <esc>O

" Write/Save file at Insert Mode
inoremap <c-w> <esc>:w<cr>a
inoremap jw    <esc>:w<cr>a

" Back word,注意: 因为是inoremap非递归映射<c-w>是vim底层的操作.
inoremap <c-b> <c-w>
inoremap jb    <c-w>

inoremap  <leader><leader>p     <c-r>+


