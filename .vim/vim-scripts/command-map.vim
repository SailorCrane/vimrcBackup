
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
cabb  man Man

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
cnoreabbrev cdt    cd test
cnoreabbrev cdb    cd build
cnoreabbrev cds    cd source
cnoreabbrev cdr    cd /
cnoreabbrev cdh    cd ~
cnoreabbrev cd-    cd -
cnoreabbrev cdd    cd ~/Downloads
cnoreabbrev cdS    cd ~/Share

cnoreabbrev cdp    cd ..
cnoreabbrev cd2p   cd ../../
cnoreabbrev cd3p   cd ../../../
cnoreabbrev cd4p   cd ../../../../


"cnoremap jk   <esc>
