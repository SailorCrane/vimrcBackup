

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
cnoremap  ; !


"8 cabbv mk to make
cabbrev  mk   make
cabbrev  mkb  make -B
cabbrev  mka  make all
cabbrev  mkab make all -B


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


"10
" <c-k>, <c-j>
" 因为cmdlinecomplete 将cmd mode下的<c-n> <c-p>占用了
" 所以使用<c-k>, <c-j>作为重复上一条命令,下一条命令
"cnoremap  <c-k>  <c-p>
" 虽然<c-p> 和 <up>一样,都可以进行命令回溯,但是<c-p>不能进行命令过滤
" 本应将<c-p>映射到<up>, 但是因为<c-p>已经用来作为cmdcomplete了
" 类似于insert模式中的<c-p>所以就算了,这里使用<c-k>来代替
cnoremap  <c-k>  <up>
"cnoremap  <c-j>  <c-n>
cnoremap  <c-j>  <down>


"11
cnoremap  <c-h>  <left>
cnoremap  <c-l>  <right>


"12 :快速键入当前光标下单词, 第二次可以不用键入ctrl
" <c-r>a 和 <c-r>W 是同一个功能:都是在Ex模式中插入当前光标的WORD
cnoremap  <c-r>w  <c-r><c-w>
cnoremap  <c-r>a  <c-r><c-a>
cnoremap  <c-r>W  <c-r><c-a>
cnoremap  <c-r>f  <c-r><c-f>
cnoremap  <c-r>p  <c-r><c-p>


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

