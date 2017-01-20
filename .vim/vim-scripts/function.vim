
fun! EditMakefile()
    let $Umake = './Makefile'
    let $umake = './makefile'

    "如果存在Makefile, 编辑Makefile
    if( filereadable($Umake) )
        edit  $Umake
        return
    endif

    "如果存在makefile, 编辑makefile
    if( filereadable($umake) )
        edit  $umake
        return
    endif

    " 如果都不存在, 默认编辑Makefile
    edit $Umake

endfun
