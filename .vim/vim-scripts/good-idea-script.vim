
" 0: 这里面是一些好的vim脚本, 很有用, 很强大. 但是目前用不到的

" 1: 对{ 和 }之间的内容进行排序
:g/{/  .+1, /}/-1  sort

    html {
            border: 0;
            font-size: 100%;
            font: inherit;
            margin: 0;
            padding: 0;
            vertical-align: baseline;
    }
    body {
            background: white;
            color: black;
            line-height: 1.5;
    }


" 2: 对"{" 和 "}" 之间的内容, 缩进一次
" 注意:sil 写在最前面
" > 是一条:Ex 命令, 用来进行缩进, :h :>
    :silent g/{/  .+1, /}/-1  >
    :sil    g/{/  .+1, /}/-1  >


" 3:
