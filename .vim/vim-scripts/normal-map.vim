" vim: set foldmethod=marker  foldlevel=2: vim modeline( set )
"  foldlevel=2, 这样vim打开文件时, 不会自动折叠, 不至于使不会折叠的人止步不前
"  zM 折叠所有， zR 展开所有 (通过 foldlevel设置)

"0 说明
" 一般映射, 如果有对于选项的toggle!, 就会有? show
" 例如 set  list!  list?
" 每个项目内如果隔开, 使用一行. 项目和项目之前分隔使用两行


"1 Quick into command line
" 将';'映射到':',因为';'更容易敲击,但是':'功能用的更多
" 因为<CR>默认功能,可以使用j代替,所以将<CR>映射到';',即'f'后,查看下一个.
" 而在qf(QuickFix)文件类型中的<CR>,选择光标所在行的搜索结果,
" 所以在quickfix文件类型中(即quickfix窗口中)可以使用autocmd  FileType  qx中针对filetype项,设置自动命令,将<CR>重新映射回<CR>
" 详情见<Leader>ef
" {{{
nnoremap  ;  :
"nnoremap  :  <nop>
nnoremap <CR> ;
" 在一些特殊情况下:比如 vim的命令窗口中, q:中, 需要回车执行命令时使用
nnoremap <Leader><CR>  <CR>
" }}}


"1-2
nnoremap  q;  q:


"2 Toggle  something
"  Toggle  number line/relative number line/Toggle  highlight / sensitive case
nnoremap  <Leader>o   :set nu!  rnu!    nu? rnu? <CR>

" 使用n 和 N搜索前, 先激活hlsearch选项
" {{{
nnoremap  n           :set hlsearch<CR>n
nnoremap  N           :set hlsearch<CR>N
nnoremap  <Leader>/   :set hlsearch!    hlsearch?<CR>
"nnoremap  <Leader>/   :nohlsearch<CR>
" :nohlsearch 暂时性取消高亮,点击n就会再次高亮

nnoremap  <Leader>i   :set ignorecase!  ignorecase?<CR>
" }}}


"3  quick edit
" quick edit script v:vimrc, n:normal, i:insert, p:plugin-bundle, a:abbrev
" edit  ~/.bashrc

" ~/file  edit
" {{{
nnoremap  <Leader>eb  :e ~/.bashrc<CR>
nnoremap  <Leader>eF  :e ~/.subdir/myFunction.sh<CR>
nnoremap  <Leader>eG  :e ~/.gitconfig<CR>
nnoremap  <Leader>eA  :e ~/.subdir/myAlias.sh<CR>

" ./file  edit
"nnoremap  <Leader>em  :e ./makefile<CR>
" <leader>em 编辑当前目录下的Makefile/makefile, 如果不存在, 编辑Makefile
nnoremap  <Leader>em  :call EditMakefile()<CR>
nnoremap  <Leader>eq  :e ./question-thunder.txt<CR>

" local  ./.vimrc  and  ./.gvimrc edit
nnoremap  <Leader>elv :e $MYVIMRC<CR>
nnoremap  <Leader>elg :e $MYGVIMRC<CR>

" mobile rc  ./.vimrc and ./.gvimrc  edit
nnoremap  <Leader>ev  :e  $CRANE_VIM_HOME/.vimrc<CR>
nnoremap  <Leader>eg  :e  $CRANE_VIM_HOME/.gvimrc<CR>

" vim script edit
nnoremap  <Leader>eV  :e  $CRANE_DOT_VIM/vim-scripts/visual-map.vim<CR>
nnoremap  <Leader>ef  :e  $CRANE_DOT_VIM/vim-scripts/function.vim<CR>
nnoremap  <Leader>en  :e  $CRANE_DOT_VIM/vim-scripts/normal-map.vim<CR>
nnoremap  <Leader>ei  :e  $CRANE_DOT_VIM/vim-scripts/insert-map.vim<CR>
nnoremap  <Leader>ec  :e  $CRANE_DOT_VIM/vim-scripts/command-map.vim<CR>

nnoremap  <Leader>ea  :e  $CRANE_DOT_VIM/vim-scripts/abbrev-map.vim<CR>
nnoremap  <Leader>et  :e  $CRANE_DOT_VIM/test/HarryPotter-Stone.txt<CR>
nnoremap  <Leader>eT  :e  $CRANE_DOT_VIM/vim-scripts/tmp-test.vim<CR>

nnoremap  <Leader>ep  :e  $CRANE_DOT_VIM/vim-scripts/myBundle.vim<CR>
"nnoremap  <Leader>ef  :e  $CRANE_DOT_VIM/vim-scripts/autocmd.vim<CR>
nnoremap  <Leader>eC  :e  $CRANE_DOT_VIM/vim-scripts/autocmd.vim<CR>

nnoremap  <Leader>ee  :e  $CRANE_DOT_VIM/vim-scripts/example/vimrc_example.vim<CR>
nnoremap  <Leader>eE  :e  $CRANE_DOT_VIM/vim-scripts/example/<CR>

nnoremap  <Leader>ed  :e  $CRANE_DOT_VIM/doc/<CR>

" 编辑good-idea-script.vim, 记录最新学习情况
" I表示Idea
nnoremap  <Leader>eI  :e  $CRANE_DOT_VIM/vim-scripts/good-idea-script.vim<CR>

" Prompt to open file with same name, different extension
" from  https://github.com/nelstrom/dotfiles/blob/master/vimrc
" <CR>用来完成 <C-r>=
noremap  <Leader>er   :e <C-R>=expand("%:r")."."<CR>
" }}}


"4 source .vimrc  and  source  .gvimrc
" <Leader>sv source .vimrc or .gvimrc
" {{{
if has("gui_running")
    nnoremap  <Leader>sv  :source $MYVIMRC<CR>:source $MYGVIMRC<CR>
else
    nnoremap  <Leader>sv  :source $MYVIMRC<CR>
endif
" }}}


"5 quick  operation
" Quit the current window : the buffers underlying the window will be quited
" {{{
nnoremap  <Leader>q  :q<CR>

" 本来一直想映射为<Leader>qa, 但是这样和<Leader>q有相同前缀,
" 会影响<Leader>q速度. 现在映射未<Leader>aq, 太棒了.
" 因为有很多<Leader>a 前缀的映射, 所以不会影响
nnoremap  <Leader>aq :qa<CR>
" Quit all windows
nnoremap  <Leader>r  :qa<CR>
" Refresh file, or restore file from file name

" 用的不多, 还老是误按, 所以注释掉, 使用<Leader>ee就够了
"nnoremap  <Leader>e  :e!<CR>

" 因为<Leader>e 前缀的edit很多, 所以这里添加 <Leader>ee,
" 这是我的命名风格, 如果有相同前缀, 那么就重复字母
nnoremap  <Leader>ee :e!<CR>
nnoremap  <Leader>w  :update<CR>
" 这里<Leader>ww 和上述<Leader>情况相似
nnoremap  <Leader>ww :update<CR>

" save as : gvim可用, console下<C-s>会导致终端不可回显
nnoremap  <C-s>      :browse confirm  saveas<CR>
" }}}


"6  word  operation: 感觉很鸡肋
" 不如yiw, diw, diW更有思考连贯性, 虽然似乎少了一个按键还是注释掉吧

" 快速删除一个词：word 或者Word
" 因为<Leader>d被用来作为down翻页,所以这里将其disable,毕竟diw也就多了一个字母而已
" 但是删除一个Word：长词,是一个非常好的特性
"nnoremap  <Leader>d  diw
"nnoremap  <Leader>D  diW

"nnoremap  <Leader>c  ciw
"nnoremap  <Leader>C  ciW


"7 buffer:next/previous/delete
" buf and tab
" {{{
nnoremap <Leader>n :bn<CR>
nnoremap <Leader>p :bp<CR>

" 切换"＃"buf时,显示文件名
nnoremap <C-^>     <C-^>:call ShowBufName()<CR>

" 因为如果不先关掉 TabBar窗口就 delete buffer,
" 当tagbar检测到自身是唯一打开窗口时, 会退出gvim, 悲哀啊!
" 因为现在有了<Leader>dl, 用来清空当前行, 所以删除<Leader>d, 添加<Leader>dd
" 这样也更安全一些: 不会因为误按<Leader>d导致清除当前缓存
"nnoremap <Leader>d  :TagbarClose<CR>:bd<CR>:syntax on<CR>
nnoremap <Leader>dd :TagbarClose<CR>:bd<CR>:syntax on<CR>

" 文件很多时, 不太有用. 并且只有在知道buff num情况下, 才有用
" 所以结合air-line使用会更好
nnoremap <Leader>1      :b 1<CR>
nnoremap <Leader>2      :b 2<CR>
nnoremap <Leader>3      :b 3<CR>
nnoremap <Leader>4      :b 4<CR>
nnoremap <Leader>5      :b 5<CR>
nnoremap <Leader>6      :b 6<CR>
nnoremap <Leader>7      :b 7<CR>
nnoremap <Leader>8      :b 8<CR>
nnoremap <Leader>9      :b 9<CR>
" }}}


"7-2: tab 下面是vim 相关tab映射
" {{{
nnoremap <tab>   gt
nnoremap <s-tab> gT
nnoremap tn      :tabnew<CR>
nnoremap tc      :tabclose<CR>
nnoremap c<tab>  :tabnew<CR>
nnoremap d<tab>  :tabclose<CR>
" }}}


"8 Window  motion and manager: 快速窗口移动和管理
" ==========================================================
" 显示当前文件名
fun! ShowBufName()
    echo expand("%:p")
endfun

" 定义一个自定义命令
command!  ShowBufName  call ShowBufName()

" 最大化当前窗口, 并显示文件名
fun! MaxCurrentWindow()
    "resize 和 vertical resize命令如果不加尺寸参数, 参数就是widest 和
    "h :Ctrl-w__
    "h :Ctrl-w_|

    ":res[ize] [N]
    "CTRL-W CTRL-_					*CTRL-W_CTRL-_* *CTRL-W__*
    "CTRL-W _	Set current window height to N (default: highest possible).

    ":vertical res[ize] [N]			*:vertical-resize* *CTRL-W_bar*
    "CTRL-W |	Set current window width to N (default: widest possible).

    resize          " equal <C-w>_, set windows to hightest
    vertical resize " equal to <C-w>|
    call ShowBufName()
endfun
" ==========================================================

" 上下左右切换窗口: 并显示文件名
" 用<C-> 切换窗口, 比<Leader>快多了
" {{{
nnoremap  <C-h>  <C-w>h:ShowBufName<CR>
nnoremap  <C-l>  <C-w>l:ShowBufName<CR>
" <C-j> 在c/cpp文件中, 被c-support映射为进入插入模式到空格附近
" 把c-support中的<C-j> 映射为了c<C-j>, 寻找时搜索c<C-j>即可
nnoremap  <C-j>  <C-w>j:ShowBufName<CR>
nnoremap  <C-k>  <C-w>k:ShowBufName<CR>

" 用<Leader>切换窗口: 几乎是鸡肋了. 虽然现在还在用.但也仅仅是因为习惯的问题
nnoremap  <Leader>h  <C-w>h
" 因为有了很多以<Leader>l开头的映射,
"用来对行前行后,行尾等操作.
"<Leader>l的速度就慢了下来,所以添加<Leader>ll
nnoremap  <Leader>l  <C-w>l
" 因为<Leader>l前缀太多:对于行结尾的操作, 所以这里添加<Leader>ll
" 其实还不如vim自带的<C-w>l 方便, 但为了和其它映射一致, 还是添加上吧
nnoremap  <Leader>ll <C-w>l
nnoremap  <Leader>j  <C-w>j
nnoremap  <Leader>k  <C-w>k

" 上下左右切换窗口, 并将切换到的窗口最大化: 最大化函数会显示文件名
nnoremap  <C-w>h     <C-w>h:call MaxCurrentWindow()<Cr>
nnoremap  <C-w>l     <C-w>l:call MaxCurrentWindow()<Cr>
nnoremap  <C-w>j     <C-w>j:call MaxCurrentWindow()<Cr>
nnoremap  <C-w>k     <C-w>k:call MaxCurrentWindow()<Cr>
" }}}

" 8-2 最大化窗口等相关设置
" {{{
" 这里为什么需要对"|"转义, 我也不知道, 但是不进行转义,执行映射后
" 使用:nmap <C-w>a 命令查看映射, 只能看到<C-w>_<C-w>
" 并且在命令行执行映射: nnoremap <C-w>a  <C-w>|<C-w>_命令: 会出现 E488
" 但是交换<C-w>_ 和 <C-w>| 不会报错: 虽然"|"没有映射成功
" 估计"|" 在vim脚本中是个特殊字符, 后面需要跟东西才可以

" 补充:关于"|", 是用来在vim Ex模式分割命令的, 参见:h :bar, :h :\bar

" a 表示 all screen: 即最大化屏幕
"nnoremap  <C-w>a  <C-w>_<C-w>\|
" 最大化窗口时, 还会显示当前buffer文件名, 可以当做<Leader>lp使用了, 哈哈
" 那么配置的<Leader>lp 在多窗口, 并且不想组大化窗口时显示当前窗口文件名,  还是很有用的
nnoremap  <C-w>a  :call MaxCurrentWindow()<CR>

" e stand for equal
nnoremap <C-w>e  <C-w>=

" 因为水平最大化用的多, 所以和_切换
nnoremap  <C-w>-  <C-w>_
nnoremap  <C-w>_  <C-w>-

" 因为垂直最大化用的多, 所以和\直接实现, 不切换, 因为<C-w>\原义并无意义
" 因为| 在"Ex"模式中用来分割命令, :h :bar, 而nnoremap 刚好是Ex命令其中之一
nnoremap  <C-w>\  <C-w>\|

" x 表示减, 和normal模式下<C-x> 对于数字减1对应起来
nnoremap <C-w>x  <C-w>-

" 移动到四个角, 并最大化窗口: 目前习惯是开启四个窗口:
" 下面的映射在四个窗口基础上工作:刚好 q,t,z,b 键盘布局位于四个角上: 太棒了
" 因为最大化当前窗口用的很多, 所以后期可能做成函数, 或者命令,
" 如果vim有现成的命令, 直接使用: 但是很遗憾, 并没有
" 并且跳转过去时, 可以输出缓冲区文件名
" q  t
" z  b
"

" 注意: 当存在TagBar窗口, 或者其它类似窗口时, 可能角落窗口就不是自己以为的窗口
" 映射自然也不能正常工作

" 左上角: 所有窗口先<C-w>=, 然后再设置跳转, 这样可以保证光标到指定窗口
"nnoremap <C-w>q  <C-w>t<C-w>\|<C-w>_
nnoremap <C-w>q  <C-w>=<C-w>t:call MaxCurrentWindow()<CR>:let g:tagbar_left = 1<CR>

" 左下角
"nnoremap <C-w>z  <C-w>t<C-w>j:call MaxCurrentWindow()<CR>
nnoremap <C-w>z   <C-w>=<C-w>b<C-w>h:call MaxCurrentWindow()<CR>:let g:tagbar_left = 1<CR>

" 右上角
"nnoremap <C-w>t  <C-w>b<C-w>k:call MaxCurrentWindow()<CR>
" 不知为何, 窗口上面这种切换方式, 在左上角最大化时, 无法切换到右上角
" 和切分方式和顺序有关吗? 如果后续还不行, 可能要先<C-w>=使窗口都显示出来,然后再切换了
nnoremap <C-w>t   <C-w>=<C-w>t<C-w>l:call MaxCurrentWindow()<CR>:let g:tagbar_left = 0<CR>

" 右下角
nnoremap <C-w>b   <C-w>=<C-w>b:call MaxCurrentWindow()<CR>:let g:tagbar_left = 0<CR>
" }}}

" 8-3 显示窗口大小和坐标: 关于窗口设置的说明
" {{{
"     winsize 设置窗口 width 和 height. 可以用来在gvimrc中设置1000, 1000.
" 因为如果winsize很大, 窗口也会相应变大. 这样gvim 启动时, 可以自动最大化
" winpos 左上角打印X 和 Y坐标
" winwidth(0) 和 winheight(0) 函数显示窗口宽度和高度
" }}}


"9 quick line switch:快速交换两行
" 将当前行'-'下移 或者'_'上移, 支持连续移动
" {{{
nnoremap  -  ddp
nnoremap  _  kddpk
" }}}


"10 quick  up case : 感觉这里的映射, 也很鸡肋
" 仅仅是按键少了, 但是思考方式和vim完全不同了. 后期估计会注释掉
" g motion and operation on word
" w:word, b:back, c:current character, e:end of word
" 因为将当前字母更改为大写用的更多,所以将gc功能作为修改当前字母为大写
" 并且讲gC设置为修改当前字母为大写.
" This is the test Sentence
" {{{
nnoremap  gw  wgul
nnoremap  gW  wgUl

nnoremap  gb  bgul
nnoremap  gB  BgUl

nnoremap  ge  egul
nnoremap  gE  egUl
" }}}


"10-2 因为gt经常使用, 所以单独列出来: 这样如果回头注释上面, 这里可以防止被注释
" gt: g toggle: 因为'~'会向右移动一位,所以这里使用visual模式,使其作用于光标下的文字而不在移动
" gt 用的比较多
" {{{
nnoremap  gt  v~
nnoremap  gc  gUl
nnoremap  gC  gul
" }}}


"11 快速在文件内部跳转:第一行,最后一行,当前行最左,最右
" {{{
" H to line begin: but H to screen top can not use
" L to lien end  : but L to screen bottom can not use
" 这组映射用的很多, 因为ctrl 和 caplock交换后, 很方便按

" 这几个映射C-k, C-j没什么用
"nnoremap  <C-k>  gg
"nnoremap  <C-j>  G

" 因为<C-h>, <C-l> 转给窗口切换了, 所以使用gh, gl代替原来
"nnoremap  <C-h>  ^
"nnoremap  <C-l>  $

" 这样上下左右, 都和g有关了, 非常棒
" gh本来是进入select模式, 比较鸡肋, 不需要
nnoremap gh  ^
nnoremap gl  $

" 几乎用不到了, 但是留在这里, 为以后再添加映射,保留灵感
" 还是让他们恢复自己本来的功能吧
"nnoremap  H  ^
"nnoremap  L  $
" }}}


"12-1 屏幕顶部,中央,下端
" "'" is used for mark, there to top, bottom, middle
" {{{
"noremap   't H
"noremap   'b L
" }}}
"noremap   'm M


"12-2 很常用
" <Leader>f,b to  page down up
" u:up , d:down
" 这里的up指翻页时,可以看到上方更多的字,同理down可以看到下方更多的字
"nnoremap  <Leader>b   5<C-y>
" 因为还是<Leader>f比较好键入
" {{{
nnoremap  <Leader>u   5<C-y>
nnoremap  <Leader>f   5<C-e>
" }}}
"nnoremap  <Leader>d   5<C-e>


"13 show list, just funny, and test, 已经被<Leader>ls代替
"nnoremap  <f3>  :set list!<CR>


"14 To segment a line ----> two line
" seg line, then go to end of origin line
" g_ go to end of no space character
" i:insert a:append
" {{{
nnoremap <Leader>si   i<CR><ESC><up>g_
nnoremap <Leader>sa   a<CR><ESC><up>g_
" }}}


"16  map Q to gq: format line
" Q本意是切换到Ex模式, 注意不是vim的Ex命令行, 而是vi的遗留产物,
" 没用还会混淆视听
" 所以这里说Q 映射到gq, 不如说是为了 禁止 Q切换到Ex模式
" 也许 nnoremap Q <nop> 会更好些
nnoremap  Q  gq
"nnoremap  Q  <nop>


"17 delete all  trailing White Space, w stand for white
"nnoremap <Leader>xw :%s/\s\+$//ge<CR>:let @/=''<CR>
" 还是给出错误提示吧,这样就可以知道自己到底是否替换了空行
" 这里要结合ShowTrailingWhiteSpace 插件使用, 因为只有插件可以显示末尾空格时, 才会有用
" 当然也可以不使用ShowTrailingWhiteSpace插件, 通过设置listchar, 然后 set list!显示末尾空白
nnoremap  <Leader>xw  :%s/\s\+$//g<CR>:let @/=''<CR>


"18  !ctags -R . , 后期加上对于cscope支持
"!ctags -R .
"!cscope  -Rbq
"nnoremap  <Leader>ct  :!ctags -R --fields=+lS .<CR>:!cscope  -Rbq<CR><CR>
nnoremap  <Leader>ct  :!ctags -R --fields=+lS .<CR>:!cscope  -Rbq<CR>


"19  ctrlp and  fuzzyfinder  mapping,
" sp stand for "search ctrlP"
" sf stand for "search FuzzyFinder"
" CtrlP 插件 似乎是只要设置别的映射,映射到了CtrlP命令,那么<C-p>的映射就会自动取消.CtrlP的这个功能还是很棒的
" 这样<C-p> 就可以用在Yankring中了
" s stand for "search"
" {{{
nnoremap  <Leader>sp  :<C-u>CtrlP<CR>
nnoremap  <Leader>sf  :<C-u>FufFile<CR>
nnoremap  <Leader>sb  :<C-u>FufBuffer<CR>
" }}}


"20 释放<C-n>在multiple cursor中功能,由<C-m>去完成
" <C-m> 在vim中代表回车,就像<C-i>代表 <tab>一样,都不可以映射
" nnoremap  <C-m>  :call multiple_cursors#new("n", 1)<CR>
" xnoremap  <C-m>  :call multiple_cursors#new("v", 0)<CR>


"21 关于行的操作
" 这是一个比较多的映射组,因为在行尾和行上下行添加的东西可能会比较多,每种都需要一个映射

" 在类的结尾"}"后面添加分号.
" {{{
nnoremap  <Leader>i;    ][a;<ESC>:write<CR><C-o>

"nnoremap  <Leader>a;    a;<ESC>:write<CR>
"在行末尾添加分号, 覆盖了上面 <Leader>a;功能
"nnoremap  <Leader>l;    $a;<ESC>:write<CR>
nnoremap  <Leader>l;    A;<ESC>:write<CR>
nnoremap  <Leader>l,    A,<ESC>:write<CR>
nnoremap  <Leader>l.    A.<ESC>:write<CR>
nnoremap  <Leader>l!    A!<ESC>:write<CR>

" 在末尾添加 "空格 + 反斜杠", 用于c/c++, 或者makefile,还有bash命令中,将多行连成一行
nnoremap  <Leader>l\    A<Space>\<ESC>

" 删除当前行最后一个字符,因为使用了A一下子进入插入模式,然后才删除的字符,所以这是一个可repeat的修改,very nice
nnoremap  <Leader>lx    A<BS><ESC>:write<CR>

" 清空当前行: 并返回normal模式
nnoremap  <Leader>dl    S<ESC>
" }}}

" 删除空行: 包括仅有空格的行
"'<,'>g/^\s*$/ d

" 在当前行下方, 加入空行 lo, lO 光标停留在当前行, go, gO光标定位到新的空行
" 如果当前行是空行, 直接"yp", 就可以复制一行空行, 更快.
" 当前行不是空行时, 再使用这个映射:<Leader>lo, 或者<Leader>lO
" 按<空格><回车> 就可以生成一行空白行
" {{{
nnoremap  <Space><CR>   o<ESC>k
nnoremap  <Leader>lo    o<ESC>k
nnoremap  <Leader>lO    O<ESC>j
nnoremap  <Leader>go    o<ESC>
nnoremap  <Leader>gO    O<ESC>

" d 和 u 代表up 和 down, 分别对应o 和O: 但是几乎没有用过
" 有些鸡肋
"nnoremap  <Leader>ld    o<ESC>k
"nnoremap  <Leader>lu    O<ESC>j

"nnoremap  <Leader>l{    $a{  }<left><left><ESC>:write<CR>
nnoremap  <Leader>i{    o{<CR><CR>}<up>
nnoremap  <Leader>l{    $a {  }<left><left>
"nnoremap  <Leader>d{    <down>f{d%

"21-2 在当前字符前, 后添加 <Space>, "&", ":"
nnoremap  <Leader>i<Space>   i<Space><ESC>l
nnoremap  <Leader>a<Space>   a<Space><ESC>h

" 在前一个单词(或者当前单词: 如果处于单词中间)开头, 插入一个空格
nnoremap  <Leader>b<Space>  bi<Space><ESC>h
nnoremap  <Leader>B<Space>  Bi<Space><ESC>h

" 在下一个单词的开头处: 插入一个空格
nnoremap  <Leader>w<Space>  wi<Space><ESC>h
nnoremap  <Leader>W<Space>  Wi<Space><ESC>h

" 主要用于C/Cpp 添加去地址符号, 获得指针
nnoremap  <Leader>i&        i&<ESC>l
nnoremap  <Leader>a&        a&<ESC>h

" 写注释文档时: 可能在当前字符后添加:
nnoremap  <Leader>i:        i:<ESC>l
nnoremap  <Leader>a:        a:<ESC>h

" c 代表 colon ":", 因为":"不太好按,还要使用shift键,
" 并且<Leader>i;也被使用了. 所以不能使用; 代替 :
nnoremap  <Leader>ic        i:<ESC>l
nnoremap  <Leader>ac        a:<ESC>h
" }}}


" 21-3 在当前行前后加/*, 在多行添加 /* 就不用了, nerdCommenter已经实现了
" lc 表示 line comment, 因为'c' 比 '*' 更好按
" 没有用过, 但是很好用: 自己真聪明
" {{{
nnoremap  <Leader>l*     I/*<Space><ESC>A<Space>*/<ESC>
nnoremap  <Leader>lC     I/*<Space><ESC>A<Space>*/<ESC>
" 复制并使用/* */注释
nnoremap  <Leader>lY     yyI/*<Space><ESC>A<Space>*/<ESC>

" 插入 // 注释 C/Cpp, 因为 如果语句中含有 /* */
" 那么NerdCommenter  ,ci 注释,会替换掉/* */, 这样下次,cu 或者,ci 去掉注释后,
" 代码不能正常工作, 所以这时候使用自己的 <Leader>lc
nnoremap  <Leader>lc     I//<ESC>
" 复制并使用//注释
nnoremap  <Leader>ly     yyI//<ESC>
" }}}


"22 如果启用了ftplugin/man.vim插件(runtime  ftplugin/man.vim)
" 注意这里的":" 是必不可少的,exists 也可以判断自定义命令.
" :Man 命令, 是通过"runtime ftplugin/man.vim"命令激活的
" {{{
if  exists(":Man")
    nmap  K  <Leader>K
    "注意,因为<Leader>K,也是一个man.vim的映射,而不是vim内部的基本功能,所以不能使用noremap映射,而要使用nmap
    "只有当最终映射目标为vim直接输入后的功能时:比如vim自带功能,或者命令行输入...才能使用nnoremap
    "nmap <Leader>K 可以查看到 映射的最终函数
endif
" }}}


"23 quick fix 快速切换
" {{{
nnoremap cn  :cnext<CR>
nnoremap cp  :cprevious<CR>
nnoremap co  :cclose<CR>
nnoremap coo :cclose<CR>
" }}}


"24 输出当前缓冲区文件的绝对路径
nnoremap  <Leader>lp  :echo  expand("%:p")<CR>


"25  将<up> 和 <down> 映射为屏幕行上下, 这个是在vim reference中学到的建议
" {{{
nnoremap  <up>   gk
nnoremap  <down> gj
" }}}


"26 本想用ctrl + P(大写P) 映射, 无奈映射在<C->这种同时按下的模式中,不区分大小写
" 但在连续按下的情况下,还是区分大小写的,这点要注意
" inoremap 中也有类似的映射, 见 insert-map.vim
" {{{
nnoremap  <Leader><Leader>p  "+p
nnoremap  <Leader><Leader>P  "+P
" }}}


"27 yp 复制并粘贴
" 光标位于粘贴新行
" {{{
nnoremap  yp  yyp
" 光标位于旧行
nnoremap  yP  yyP
" }}}


" 28 cscope setting
" 这个是设定是否使用 quickfix 窗口来显示 cscope 结果, 用法在后面会说到。
" 如果每次查找都要输入一长串命令的话还真是件讨人厌的事情, Cscope的帮助手册中推荐了一些快捷键的用法,
" 下面是其中一组,也是我用的, 将下面的内容添加到~/.vimrc中, 并重启vim:
"nmap <C-_>s :cs find s<C-R>=expand("<cword>")<CR><CR>
"nmap <C-_>g :cs find g<C-R>=expand("<cword>")<CR><CR>
"nmap <C-_>c :cs find c<C-R>=expand("<cword>")<CR><CR>
"nmap <C-_>t :cs find t<C-R>=expand("<cword>")<CR><CR>
"nmap <C-_>e :cs find e<C-R>=expand("<cword>")<CR><CR>
"nmap <C-_>f :cs find f<C-R>=expand("<cfile>")<CR><CR>
"nmap <C-_>i :cs find i^<C-R>=expand("<cfile>")<CR>$<CR>
"nmap <C-_>d :cs find d<C-R>=expand("<cword>")<CR><CR>
set cscopequickfix=s-,c-,d-,i-,t-,e-

" 下面映射的两个<CR>, 一个为执行expand("<cword>"), 另一个执行cs命令
nmap <Leader>sg :cs find g <C-R>=expand("<cword>")<CR><CR>


"29 切换是否显示空白标志:
" 结合 set listchars=tab:▸\ ,eol:¬ 使用
" 在makefile中, 查看是否前置空白是不是tab, 很有用
nnoremap  <Leader>ls   :set  list!  list?<CR>


" 30 因为<C-i> 就是tab,被用来在vim顶上的tab间跳转,
" 所以这里使用g_ctrl-o代替原来ctrl-i功能
nnoremap  g<C-o>  <C-i>


" 31 black hole delete
" h stand for hole, 之所以不使用db, 是因为b是一个motion, 移动到上一个单词
" 相比之下,dh功能就弱的多,仅仅是删除左边字符,并且可以使用X代替
" 事实表明, 这里不使用map,,而是使用nnoremap, 也可以工作的很好
" 那么dh的功能, 可以使用X来完成:h dh, :h X, 删除光标左边的字符
" 使用示例: dhd == "_dd,  dhiw == "_diw,
" 使用基本和d相同,只不过不影响匿名寄存器
nnoremap  dh  "_d


" 31-2
" 默认Y功能是yy, 感觉比较鸡肋, :help  Y 文档中也建议改为y $, 更有用些
" 自此以后Y=y$, D=d$, C=c$, 只有S=cc, 所以S也有些鸡肋
nnoremap  Y  y$


" 32 关于cursor line 和 cursor column 显示与隐藏
" {{{
nnoremap  <Leader>ch  :set  cursorline!    cursorline?<CR>
nnoremap  <Leader>cv  :set  cursorcolumn!  cursorcolumn?<CR>
" }}}


" 34 统计模式/出现次数: word count/number
" 因为wc不是很好按, 所以用<Leader>wn
" {{{
nnoremap  <Leader>wn  :%s///gn<CR>
nnoremap  <Leader>wc  :%s///gn<CR>
" }}}


" 35 跳转到/*, 或者跳转到 *, 跳转到"#" 注释
" {{{
nnoremap  </  [/
nnoremap  >/  ]/

nnoremap  <*  [/
nnoremap  >*  ]/

nnoremap  <#  [#
nnoremap  >#  ]#
" }}}


" 36 quick :substitute
" {{{
nnoremap  <Leader>ss  :%s<Space>///g<left><left><left>

"这个主要是针对 c-support 的 \pind, 因为默认生成的是 FILE_INC 宏
nnoremap  <Leader>sh  :%s/INC/H_/g<CR>
" }}}


" 37 quick insert date at current line: ld 插在行尾, id insert到行首
" ld 表示 line date
" :. read !date -u<CR>, 在当前行的之下(下一行)插入当前时间日期, 并且插入后, 光标自动跳到下一行
" k移动到上一行, J join 两行, 完成插入
" trick: 这里的两个read单词, 是根据Tabularize对齐的,
" :Tabularize可以根据单词对齐, 而不仅仅是字符. 非常强大
" 这里不适用date -u, 而使用date, 因为-u 是格林威治绝对时间, 不是本地时间
"nnoremap  <Leader>ld  :.   read !date -u<CR>kJ
" {{{
nnoremap  <Leader>ld  :.   read !date <CR>kJ

"nnoremap  <Leader>id  :.-1 read !date -u<CR>J
nnoremap  <Leader>id  :.-1 read !date -u<CR>J
" }}}  2017年 02月 13日 星期一 21:04:17 CST


" 38 快速缩进{  } 中的代码块, 尤其是使用ySS 添加{}, 后, 需要向左缩进时
" 使用条件: 光标处理{} 中间
" 很好: 并且这个动作可重复: 因为使用了文本对象

" 缩进{} 内部
" {{{
nnoremap  <i[   <i{
nnoremap  >i[   >i{

" 和上述功能相同
nnoremap  <i]   <i{
nnoremap  >i]   >i{

" 连带{}一起缩进
nnoremap  <a[   <a{
nnoremap  >a[   >a{

" 和上述功能相同
nnoremap  <a]   <a{
nnoremap  >a]   >a{
" }}}


" 39 menu and toolbar Toggle
"regexp matches      =~      =~#     =~?
" h  =~#
" 使用正则检测guioptions中是否有'T' toolbar标志, 如果没有, 就显示. 有就隐藏
" 注意: 第一个正则检测是'T' 是字符串, 有单引号标志,
" 后面的 set guioptions-=T, 则没有单引号: 这个是在命令行手动敲入,
" 才检测出来的.刚开始写错了, 一直不能工作
" {{{
nnoremap  <silent>  <C-F5>  :if  &guioptions =~#  'T' <Bar>
                                 \set guioptions-=T<Bar>
                                 \set guioptions-=m<Bar>
                            \else <Bar>
                                 \set guioptions+=T <Bar>
                                 \set guioptions+=m <Bar>
                            \endif<CR>
" }}}


" 40 加载最常用的"四格"布局
" session 的加载需要启动时 vim -S, 或者启动后source session.vim
" sl 是sesson load的意思, 当然s也可以理解为source
" 这样<Leader>sl 和 <Leader>sv 都对应起来了
" 注意1: 因为load session之后, pwd就变为了session中保存的目录, 所以要用cd -
"        切换为原来的目录
"        但是这样就修改了所有的pwd, 原来lcd自己维护的目录也被覆盖了
" 注意2: four-square.vim是用mksession保存的, 所以之前的映射都保存在里面
"        如果更新了映射, 加载four-square.vim还是会用老版本的映射
" 注意3: 原先4个窗格, mksession保存后, 在空文件中加载session, 只剩下3个窗格.
"        但是如果vim中有文件, 加载session后, 依旧是4个窗格
" 注意4: 在注意3基础上, 如果保存5个窗格, 左3, 右4
"        那么空白buff加载后, 依旧是4个窗格
" 注意5: 根据注意2, 添加了mksession!, 重新mksession! 保存
"        但是注意加!, 覆盖保存

" 保存sessionoption的值
" {{{
fun!  Ssop_backup()
    let g:ssop_back = &sessionoptions
endfun

" 恢复sessionoption的值
fun!  SSop_restore()
    let &sessionoptions = g:ssop_back
endfun

" 创建仅包含空窗口布局的session
fun!  Mk_four_square()
    " 保存ssop选项
    call Ssop_backup()

    " ssop 只保存blank窗口
    " 这样可以不保存其它映射, 文件内容等信息
    " 这里文件名是four-square.vim, 后期可能会搞成函数参数
    set        sessionoptions=blank
    mksession! $SESSION/four-square.vim

    " 恢复原先ssop选项的值
    call SSop_restore()
endfun

" 因为有可能给启动后, 就先加载布局, 这时候还没有 - OLD dir,这时候可能会出错
" 所以先<C-w>=将所有窗口同等大小, 再cd -
" 否则如果cd - 出错, <C-w>=就执行不了了
nnoremap  <Leader>sl  :source     $SESSION/four-square.vim<CR><C-w>=:cd -<CR>
"nnoremap  <Leader>ms  :mksession! $SESSION/four-square.vim<CR>
nnoremap  <Leader>ms  :call Mk_four_square()<CR>

" 注意6: 既然用session保存这么麻烦, 还不如直接调用命令手动创建4个窗格呢
"nnoremap  <Leader>sl  :vsplit<CR>
" }}}


"41 这样'可以定位到具体column
" {{{
nnoremap  '  `
nnoremap  `  '
nnoremap <C-6> <C-6>`"
nnoremap <C-g> 2<C-g>
" }}}


"42  insert "{{{" and  "}}}" for fold marker
" 但是这样就占用了两个mark 的标记
" 回头要好好想想这里
" {{{
nnoremap  ms  a{{{<ESC>
nnoremap  me  a}}}<ESC>
" }}}


"99 关于normal 模式中惯用的n 和 p的总结:
" 其中CtrlP插件的<C-p> 被 <Leader>sp代替
" QuickFix 使用:cn, cp 直接下一个,或者前一个
" Multiple Cursor 的 C-n 被 g<C-n>所取代
" <C-p> 和 <C-n>被映射到了 YankRing中:让n永远和p快乐的在一起窝
" <Leader>n <Leader>p 还是buffer next 和 buffer previous, 自己已经用习惯了
" 至于tab的前一个,和下一个,使用<tab> 和 <s-tab>完成.
" 但是如此以来<C-i>,也就是<C-o>的反向功能,就不能再使用<tab>了,因为<tab> 和 <C-i>是同一个按键(同一个编码)


"100
" map <C-a> to visual all content, then select to "+, then go to previous position
" 因为有了 text-obj entire 和 vnoremap  <C-j> "+y,
" 还是继续让<C-a>去对行内数字做加法吧
"nnoremap  <C-a>  <ESC>ggVG"+y<C-o>
