
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
cabbrev  BL   BundleList
cabbrev  BC   BundleClear

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

"8
cabbrev  mk  make


"cnoremap jk   <esc>
