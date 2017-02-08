
fun! MakeInput()
    " 这里的输入回车之后, 会自动输入一个tab, 因为makefile新行, 会自动添加tab, 所以不必再手动输入
    normal!  ifile : file.cppg++ $< -o $@ -g  -std=c++11
endfun

fun! EditMakefile()
    let $Umake = './Makefile'
    let $umake = './makefile'

    " 如果存在Makefile, 编辑Makefile
    if( filereadable($Umake) )
        edit  $Umake
        return
    endif

    " 如果存在makefile, 编辑makefile
    if( filereadable($umake) )
        edit  $umake
        return
    endif

    " 如果都不存在, 默认编辑Makefile
    edit $Umake

    " 生成Makefile之后, 会自动添加一行新内容
    call MakeInput()

endfun
