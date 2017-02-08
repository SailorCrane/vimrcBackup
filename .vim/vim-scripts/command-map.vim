

"1 Toggle verbose
fun! Set_verbose()
    if( 0 == &verbose )
        set verbose=1
    else
        set verbose=0
    endif
    echo 'vbs is ' + &verbose
endfun

cabbrev  vbs  :call Set_verbose()


"2 Bundle abb
cabbrev  BI   BundleInstall
cabbrev  bi   BundleInstall
cabbrev  BL   BundleList
" bl 和 blast冲突了
"cabbrev  bl   BundleList
cabbrev  BC   BundleClear
cabbrev  bc   BundleClear


"3 quit anyway
cabbrev  qq   q!


"4 ls unlistd file
cabbrev  ll   ls!


"5 man in vim
" 除非必要情况, 否则command mode下,尽量使用abbrev
" 而不是使用cmap
" abbrev, 可以有单词检测的功能
" :Man 命令, 是通过"runtime ftplugin/man.vim"命令激活的
" 同样在normal.vim中, 也设置了对于K映射的判断
if exists(":Man")
    cnoreabb  man Man
else
    cnoreabb  man !man
endif

"6 show absolute path of current file
cabb  lp  :echo  expand("%:p")


"7 quick extern cmd因为在normal中";" -----> :,这样当在normal模式中按两下;;,就是:!
cnoremap  ;  !
"cnoremap  ;. !./


"8 cabbv mk to make
cabbrev  mk   make
cabbrev  mkb  make -B

cabbrev  mka  make all
cabbrev  mkb  make -B
cabbrev  mkab make all -B

cabbrev  mkn  make -n
cabbrev  mkna make all -n
cabbrev  mkan make all -n
" -n  -B : 即使目标文件时间戳已经是最新了, 依旧-n 模拟
" -n  -B 不冲突
cabbrev  mknb make -n  -B

cabbrev  mkc  make clean

"9 cdt to cd test: 不信这么多父级目录,还不够你返回的.
" r stand for root
cnoreabbrev cdv    cd ~/.vim
cnoreabbrev cdt    cd test
cnoreabbrev cdb    cd build
cnoreabbrev cds    cd source
" cd root
cnoreabbrev cdr    cd /
" cd home
cnoreabbrev cdh    cd ~
cnoreabbrev cd-    cd -
cnoreabbrev cdd    cd ~/Downloads
cnoreabbrev cdS    cd ~/Share

cnoreabbrev cdp    cd ../
cnoreabbrev cd2p   cd ../../
cnoreabbrev cd3p   cd ../../../
cnoreabbrev cd4p   cd ../../../../

" 直接去掉p,更快
cnoreabbrev cd1   cd ../
cnoreabbrev cd2   cd ../../
cnoreabbrev cd3   cd ../../../
cnoreabbrev cd4   cd ../../../../

command!  Cdmyt    cd ~/test!


"10
" <C-k>, <C-j>
" 因为cmdlinecomplete 将cmd mode下的<C-n> <C-p>占用了
" 所以使用<C-k>, <C-j>作为重复上一条命令,下一条命令
"cnoremap  <C-k>  <C-p>
" 虽然<C-p> 和 <up>一样,都可以进行命令回溯,但是<C-p>不能进行命令过滤
" 本应将<C-p>映射到<up>, 但是因为<C-p>已经用来作为cmdcomplete了
" 类似于insert模式中的<C-p>所以就算了,这里使用<C-k>来代替
" <Up> 和 <Down> 会对命令进行过滤,
" 反而成为一种困扰.有时仅仅是想继续上翻一条命令,
" 但是因为当前Ex行已经上翻导致存在内容, 所以过滤后, 无法找出上一条命令:只能找到上一条过滤后的命令
" 所以这里依然使用<C-p> 和 <C-n>
" 有需求时, 再使用<Up> 和 <Down>
cnoremap  <C-k>  <C-p>
"cnoremap  <C-k>  <up>
cnoremap  <C-j>  <C-n>
"cnoremap  <C-j>  <down>


"11
cnoremap  <C-h>  <left>
cnoremap  <C-l>  <right>


"12 :快速键入当前光标下单词, 第二次可以不用键入ctrl
" <C-r>a 和 <C-r>W 是同一个功能:都是在Ex模式中插入当前光标的WORD
cnoremap  <C-r>w  <C-r><C-w>
cnoremap  <C-r>a  <C-r><C-a>
cnoremap  <C-r>W  <C-r><C-a>
cnoremap  <C-r>f  <C-r><C-f>
cnoremap  <C-r>p  <C-r><C-p>


"13 清屏: 清除bash屏幕, 这样make时不会混淆视听
"有时候自己要运行当前目录下的./clear 清空一下文件,
"clear缩写影响自己,所以disable, 就用clr好了
"cnoreabbrev  clear !clear
cnoreabbrev  clr   !clear
cnoreabbrev  cle   !clear


"14 映射 :co 为 :cclose, 因为:co 也可以用:t 表示(用to记忆)
cnoreabbrev  co   cclose


"15 quick :%s
cnoreabbrev  ss  :%s///g<left><left><left>


"16 colorscheme  molokai
cnoreabbrev  csm  colorscheme  molokai


