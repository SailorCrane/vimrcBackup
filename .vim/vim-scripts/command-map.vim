
" Toggle verbose
fun! Set_verbose()
    if( 0 == &verbose )
        set verbose=1
    else
        set verbose=0
    endif
    echo 'vbs is ' + &verbose
endfun

cnoremap  vbs<cr>  :call Set_verbose()<cr>
cnoremap  BI   BundleInstall
cnoremap  BL   BundleList
cnoremap  BC   BundleClear
cnoremap  qq   q!
cnoremap  ll   ls!
