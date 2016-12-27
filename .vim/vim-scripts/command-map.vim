
" Toggle verbose
fun! Set_verbose()
    if( 0 == &verbose )
        set verbose=1
    else
        set verbose=0
    endif
    echo 'vbs is ' + &verbose
endfun

cabbrev  vbs  :call Set_verbose()
cabbrev  BI   BundleInstall
cabbrev  BL   BundleList
cabbrev  BC   BundleClear
cabbrev  qq   q!
cabbrev  ll   ls!

cabb  man Man
cabb  lp  :echo  expand("%:p")

"因为在normal中";" -----> :,这样当在normal模式中按两下;;,就是:!
cnoremap  ; !


"cnoremap jk   <esc>
