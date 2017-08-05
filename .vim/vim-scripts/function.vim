
" 因为已经使用了模板文件, 所以这个MakeInput函数已经没用了.
"fun! MakeInput()
    " 这里的输入回车之后, 会自动输入一个tab, 因为makefile新行, 会自动添加tab, 所以不必再手动输入
    " 这里后期可能修改为单个函数: 追加一行文本等等, 添加回车等等
    "normal!  iCC = g++CFLAGS = -gmain : main.cpp$(CC) $(CFLAGS) \-o $@  \ $< \ -std=c++11 \-Wallrun:./main
"endfun

fun! EditMakefile()

    " 为什么使用$类型变量的解释:
    " 只有$变量, 才可以和vim 命令一起使用,并作为vim命令的对象
    " 普通变量, 不可以和vim命令一起使用
    " let a = "./makefile"; edit a 就不行
    " 但是可以: let  $a = "./makefile", edit $a
    let $Umake = './Makefile'
    let $umake = './makefile'

    " 如果存在Makefile, 编辑Makefile
    if( filereadable($Umake) )
        edit  $Umake
        return
    endif

    " 如果存在makefile, 编辑makefile
    " edit 新文件, 会自动template插件, 会自动拉入Makefile模板
    if( filereadable($umake) )
        edit  $umake
        return
    endif

    " 如果都不存在, 默认编辑Makefile
    edit $Umake

    " 生成Makefile之后, 会自动添加一行新内容
    "call MakeInput()
endfun


" 编辑CMakeLists.txt
fun! EditCMakeLists()
    let $CMake = './CMakeLists.txt'
    edit $CMake
endfun


fun! ChmodExec()
    let $currentFile = expand("%:p")
    !chmod +x $currentFile
endfun


fun! OpenFile()
    let $fileType = &filetype    " set filetype?, &filtype是set 变量类型
    "echo  $fileType
    if  $fileType == 'markdown'
        InstantMarkdownPreview
    else
        !gnome-open %       " 函数可以执行:命令, 所以也可以加!执行外部命令
    endif
endfun
