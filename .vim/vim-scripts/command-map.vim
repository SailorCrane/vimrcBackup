
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

"cnoremap jk   <esc>
