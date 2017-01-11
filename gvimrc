
" GUI setting

"1
colorscheme molokai


"2
" set guifont=* 可以打开gvim对于字体的设置窗口，就可以看到有哪些字体了。
" 我觉得Monospace很好看，还有注意字体号前面的空格，要使用转义字符
set guifont=Monospace\ 16


"3
set guioptions+=b   "启动下方滚动条


"4 启动gvim时, 最大化窗口. 但是当source时, 也会执行这里最大化
winsize  1000 1000
