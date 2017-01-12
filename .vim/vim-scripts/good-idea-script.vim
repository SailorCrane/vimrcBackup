
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


" 3: 最大化当前窗口函数
http://www.tuicool.com/articles/r2iEVnU

function! Zoom ()
    " check if is the zoomed state (tabnumber > 1 && window == 1)
    if tabpagenr('$') > 1 && tabpagewinnr(tabpagenr(), '$') == 1
        let l:cur_winview = winsaveview()
        let l:cur_bufname = bufname('')
        tabclose

        " restore the view
        if l:cur_bufname == bufname('')
            call winrestview(cur_winview)
        endif
    else
        tab split
    endif
endfunction

nmap <leader>z :call Zoom()<CR>


" 4: 自己写的最大化当前窗口, 并显示当前文件名
" 显示当前文件名
fun! ShowBufName()
    echo expand("%:p")
endfun

" 5: 最大化当前窗口, 并显示文件名
fun! MaxCurrentWindow()
    "resize 和 vertical resize命令如果不加尺寸参数, 参数就是widest 和
    "h :Ctrl-w__
    "h :Ctrl-w_|

    ":res[ize] [N]
    "CTRL-W CTRL-_                  *CTRL-W_CTRL-_* *CTRL-W__*
    "CTRL-W _   Set current window height to N (default: highest possible).

    ":vertical res[ize] [N]         *:vertical-resize* *CTRL-W_bar*
    "CTRL-W |   Set current window width to N (default: widest possible).

    resize          " equal <C-w>_, set windows to hightest
    vertical resize " equal to <C-w>|
    call ShowBufName()
endfun

" 6: copy global// to register
:g/TODO/yank A


" 7 使用函数获取当前窗口高度和宽度: 0 表示当前窗口
winpos 命令显示当前窗口坐标
winsize  1000  1000
echo  winheight(0)
echo  winwidth(0)

" 8 match tab not beigin with a line
match  ErrorMsg /\v[^\t]\t+/
