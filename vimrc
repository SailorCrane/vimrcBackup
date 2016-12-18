
"1 the script encoding setting
scriptencoding utf-8


"2  file encoding detect
set fileencodings=ucs-bom,utf-8,iso-8859,gbk,cp936,gb2312,big5,gb18030,latin1


"3 no compatible with vi
set nocompatible


"4  command line height ":"
set cmdheight=2
" if set cmdheight=2, then :set nu? rnu?<cr>  will now show the hit-enter


"5 tab to space: 1 tab -----> 4 space
set expandtab
set tabstop=4
set shiftwidth=4


"6 indent
set smartindent
set cindent


"7 cursor line and line number  show
set cursorline
set rnu
set nu


"8 verbose is 0
" If need, set vbs=1 to show more information, vbs stand for verbose
set vbs=0

"9 show cmd which not end
" 执行命令时,在右下角显示未完成的命令
set showcmd


"10  about  search:  "/", "?"
" 在normal-map.vim 有快速toggle ignorecase 和 hlsearch的映射
set noignorecase  "大小写敏感
set nohlsearch    " 搜索结果高亮显示
set incsearch     " 一遍输入,一遍已经开始搜索
"set hlsearch incsearch


"11  <leader> , note: global setting
let mapleader=","       "
let g:mapleader=","     " global <leader>


"12 module scripts
" My map of 'normal', 'insert', 'visual', 'command', 'iabbrev'
source ~/.vim/vim-scripts/normal-map.vim
source ~/.vim/vim-scripts/insert-map.vim

source ~/.vim/vim-scripts/command-map.vim
source ~/.vim/vim-scripts/visual-map.vim

source ~/.vim/vim-scripts/abbrev-map.vim
source ~/.vim/vim-scripts/tmp-test.vim
source ~/.vim/vim-scripts/autocmd.vim

" in the end of vimrc, source myBundle.vim
" because now, <leader> is ready, everything is OK, then to active plugin
" manged by Bundle
source ~/.vim/vim-scripts/myBundle.vim


"13 autoread,文件被外部程序改变,gvim 和 vim自动重新加载,不发出提示
set autoread


"14 scrolloff
set  scrolloff=7
set  ruler      "显示当先位置


"15 background
set background=light
"set background=dark

"end  vim colorscheme, gvim colorscheme in ~/.gvimrc
colorscheme  slate
