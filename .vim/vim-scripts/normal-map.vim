

"1 Quick into command line
" 将';'映射到':',因为';'更容易敲击,但是':'功能用的更多
" 因为<cr>默认功能,可以使用j代替,所以将<cr>映射到';',即'f'后,查看下一个.
" 而在qf(QuickFix)文件类型中的<cr>,选择光标所在行的搜索结果,
" 所以在quickfix文件类型中(即quickfix窗口中)可以使用autocmd  FileType  qx中针对filetype项,设置自动命令,将<cr>重新映射回<cr>
" 详情见<leader>ef
nnoremap  ;  :
"nnoremap  :  <nop>
nnoremap <cr> ;
" 在一些特殊情况下:比如 vim的命令窗口中, q:中, 需要回车执行命令时使用
nnoremap <leader><cr>  <cr>

" 1-2
nnoremap  q;  q:


"2 Toggle  something
"  Toggle  number line/relative number line/Toggle  highlight / sensitive case
nnoremap  <leader>o   :set nu!  rnu!    nu? rnu? <cr>
nnoremap  <leader>/   :set hlsearch!    hlsearch?<cr>
" :nohlsearch 暂时性取消高亮,点击n就会再次高亮
"nnoremap  <leader>/   :nohlsearch<cr>
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
nnoremap  <leader>et  :e ~/.vim/test/HarryPotter-Stone.txt<cr>
nnoremap  <leader>eT  :e ~/.vim/vim-scripts/tmp-test.vim<cr>

nnoremap  <leader>ep  :e ~/.vim/vim-scripts/myBundle.vim<cr>
nnoremap  <leader>ef  :e ~/.vim/vim-scripts/autocmd.vim<cr>

nnoremap  <leader>ee  :e ~/.vim/vim-scripts/example/vimrc_example.vim<cr>
nnoremap  <leader>eE  :e ~/.vim/vim-scripts/example/<cr>

nnoremap  <leader>ed  :e ~/.vim/doc/<cr>

nnoremap  <leader>eq  :e ./question-thunder.txt<cr>

"4 source .vimrc  and  source  .gvimrc
" <leader>sv source .vimrc or .gvimrc
if has("gui_running")
    nnoremap  <leader>sv  :source $MYVIMRC<cr>:source $MYGVIMRC<cr>
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
nnoremap  <leader>w  :update<cr>


"6  word  operation
" 快速删除一个词：word 或者Word
" 因为<leader>d被用来作为down翻页，所以这里将其disable,毕竟diw也就多了一个字母而已
" 但是删除一个Word：长词，是一个非常好的特性
"nnoremap  <leader>d  diw
nnoremap  <leader>D  diW

nnoremap  <leader>c  ciw
nnoremap  <leader>C  ciW


"7 buffer:next/previous/delete
" buf and tab
nnoremap <leader>n :bn<cr>
nnoremap <leader>p :bp<cr>
nnoremap <leader>d :TagbarClose<cr>:bd<cr>:syntax on<cr>

nnoremap <tab>     gt
nnoremap <s-tab>   gT
nnoremap tn        :tabnew<cr>
nnoremap td        :tabclose<cr>


"8 Window manager
nnoremap  <leader>h  <C-w>h
" 因为有了很多以<leader>l开头的映射,
"用来对行前行后,行尾等操作.
"<leader>l的速度就慢了下来,所以添加<leader>ll
nnoremap  <leader>l  <C-w>l
nnoremap  <leader>ll <C-w>l
nnoremap  <leader>j  <C-w>j
nnoremap  <leader>k  <C-w>k


"9 quick line switch:快速交换两行
" 将当前行'-'下移 或者'_'上移, 支持连续移动
nnoremap  -  ddp
nnoremap  _  kddpk


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

" gt: g toggle: 因为'~'会向右移动一位,所以这里使用visual模式,使其作用于光标下的文字而不在移动
nnoremap  gt  v~
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


"16  map Q to gq
nnoremap  Q  gq

"17 delete all  trailing White Space, w stand for white
"nnoremap <leader>xw :%s/\s\+$//ge<cr>:let @/=''<CR>
" 还是给出错误提示吧,这样就可以知道自己到底是否替换了空行
nnoremap <leader>xw :%s/\s\+$//g<cr>:let @/=''<CR>

"18  !ctags -R .
nnoremap <leader>ct  :!ctags -R --fields=+lS .<cr>

"19  ctrlp map, sp stand fot "search ctrlP""
" CtrlP 插件 似乎是只要设置别的映射,映射到了CtrlP命令,那么<c-p>的映射就会自动取消.CtrlP的这个功能还是很棒的
" 这样<c-p> 就可以用在Yankring中了
" s stand for "search"
nnoremap  <leader>sp  :<c-u>CtrlP<cr>
nnoremap  <leader>sf  :<c-u>FufFile<cr>
nnoremap  <leader>sb  :<c-u>FufBuffer<cr>

"20 释放<c-n>在multiple cursor中功能,由<c-m>去完成
" <c-m> 在vim中代表回车,就像<c-i>代表 <tab>一样,都不可以映射
"nnoremap  <c-m>  :call multiple_cursors#new("n", 1)<CR>
"xnoremap  <c-m>  :call multiple_cursors#new("v", 0)<CR>


"21  在类中给类的 {} 之后添加分号{}; 非常棒
" 这是一个比较多的映射,因为在行尾和行上下行添加的东西可能会比较多,每种都需要一个映射
nnoremap  <leader>i;    ][a;<esc>:write<cr><c-o>
"位于分号}上时,在后面添加";"
"nnoremap  <leader>a;    a;<esc>:write<cr>
"在行末尾添加分号, 覆盖了上面 <leader>a;功能
"nnoremap  <leader>l;    $a;<esc>:write<cr>
nnoremap  <leader>l;    A;<esc>:write<cr>
nnoremap  <leader>l,    A,<esc>:write<cr>
" 删除当前行最后一个字符,因为使用了A一下子进入插入模式,然后才删除的字符,所以这是一个可repeat的修改,very nice
nnoremap  <leader>lx    A<BS><esc>:write<cr>


" 在末尾添加反斜杠, 用于c/c++, 或者makefile,还有bash命令中,将多行连成一行
nnoremap  <leader>l\    A<space>\<esc>

" 在当前行下方, 加入空行 lo, lO 光标停留在当前行, go, gO光标定位到新的空行
nnoremap  <leader>lo    o<esc>k
nnoremap  <leader>lO    O<esc>j
nnoremap  <leader>go    o<esc>
nnoremap  <leader>gO    O<esc>

" d 和 u 代表up 和 down, 分别对应o 和O
nnoremap  <leader>ld    o<esc>k
nnoremap  <leader>lu    O<esc>j

"nnoremap  <leader>l{    $a{  }<left><left><esc>:write<cr>
nnoremap  <leader>i{    o{<cr><cr>}<up>
nnoremap  <leader>l{    $a {  }<left><left>
"nnoremap  <leader>d{    <down>f{d%

" 在当前字符前， 后添加空格
nnoremap  <leader>i<space>    i<space><esc>l
nnoremap  <leader>a<space>    a<space><esc>l


"22 如果启用了ftplugin/man.vim插件(runtime  ftplugin/man.vim)
" 注意这里的":" 是必不可少的,exists 也可以判断自定义命令.
" :Man 命令, 是通过"runtime ftplugin/man.vim"命令激活的
if  exists(":Man")
    nmap  K  <leader>K
    "注意,因为<leader>K,也是一个man.vim的映射,而不是vim内部的基本功能,所以不能使用noremap映射,而要使用nmap
    "只有当最终映射目标为vim直接输入后的功能时:比如vim自带功能,或者命令行输入...才能使用nnoremap
    "nmap <leader>K 可以查看到 映射的最终函数
endif

"23
nnoremap cn :cn<cr>
nnoremap cp :cp<cr>

"24
nnoremap  <leader>lp  :echo  expand("%:p")<cr>

"25
nnoremap  <up>   gk
nnoremap  <down> gj

"26 本想用ctrl + P(大写P) 映射, 无奈映射在<c->这种同时按下的模式中,不区分大小写
" 但在连续按下的情况下,还是区分大小写的,这点要注意
nnoremap  <leader><leader>p  "+p
nnoremap  <leader><leader>P  "+P

"27 yp 复制并粘贴
" 光标位于粘贴新行
nnoremap  yp  yyp
" 光标位于旧行
nnoremap  yP  yyP


"99 关于normal 模式中惯用的n 和 p的总结:
" 其中CtrlP插件的<c-p> 被 <leader>sp代替
" QuickFix 使用:cn, cp 直接下一个,或者前一个
" Multiple Cursor 的 c-n 被 g<c-n>所取代
" <c-p> 和 <c-n>被映射到了 YankRing中:让n永远和p快乐的在一起窝
" <leader>n <leader>p 还是buffer next 和 buffer previous, 自己已经用习惯了
" 至于tab的前一个,和下一个,使用<tab> 和 <s-tab>完成.
" 但是如此以来<c-i>,也就是<c-o>的反向功能,就不能再使用<tab>了,因为<tab> 和 <c-i>是同一个按键(同一个编码)

"100
" map <c-a> to visual all content, then select to "+, then go to previous position
" 因为有了 text-obj entire 和 vnoremap  <c-j> "+y,
" 还是继续让<c-a>去对行内数字做加法吧
"nnoremap  <c-a>  <esc>ggVG"+y<c-o>


