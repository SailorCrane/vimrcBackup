
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
set cindent             "cindent  disabled smartindent


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
set smartcase     " 智能敏感:全部是小写时,大小写不敏感,包含大写时,大小写敏感
set nohlsearch    " 搜索结果高亮显示
set incsearch     " /搜索时, 一遍输入,一遍已经开始实时搜索
"set hlsearch incsearch


"11  <leader> , note: global setting
let mapleader=","       "
let g:mapleader=","     " global <leader>


""12 module scripts
"" My map of 'normal', 'insert', 'visual', 'command', 'iabbrev'
"source ~/.vim/vim-scripts/myBundle.vim
"source ~/.vim/vim-scripts/normal-map.vim
"source ~/.vim/vim-scripts/insert-map.vim

"source ~/.vim/vim-scripts/command-map.vim
"source ~/.vim/vim-scripts/visual-map.vim

"source ~/.vim/vim-scripts/abbrev-map.vim
"source ~/.vim/vim-scripts/tmp-test.vim
"source ~/.vim/vim-scripts/autocmd.vim

" in the end of vimrc, source myBundle.vim
" because now, <leader> is ready, everything is OK, then to active plugin
" manged by Bundle
"source ~/.vim/vim-scripts/myBundle.vim


"13 autoread,文件被外部程序改变,gvim 和 vim自动重新加载,不发出提示
set autoread


"14 scrolloff
set  scrolloff=7
set  sidescroll=5

set  ruler      "显示当先位置

"15 background
set background=light
"set background=dark


"16 mouse  support: 这样就支持鼠标点击链接了
set mouse=a


"17 some normal settion
set history=300
" allow backspacing over everything in insert mode
set backspace=indent,eol,start
"set endofline      "vim 默认在最后添加空行


"18 autowrite
set autowrite
set autowriteall


"19 wildmenu :命令行<tab>补全时,可以在statusline预览接下来会调到的选项
set wildmenu

"20 enable :Man
runtime   ftplugin/man.vim

"12 module scripts: 将source移动到最后,这样当所有先前条件准备好之后,再去source
"比如上面的 runtime  ftplugin/man.vim
"而normal-map 中有一个根据这个,对于<s-k>,即K的映射
" My map of 'normal', 'insert', 'visual', 'command', 'iabbrev'
source ~/.vim/vim-scripts/myBundle.vim
source ~/.vim/vim-scripts/normal-map.vim
source ~/.vim/vim-scripts/insert-map.vim

source ~/.vim/vim-scripts/command-map.vim
source ~/.vim/vim-scripts/visual-map.vim

source ~/.vim/vim-scripts/abbrev-map.vim
source ~/.vim/vim-scripts/tmp-test.vim
source ~/.vim/vim-scripts/autocmd.vim

"100  vim colorscheme, gvim colorscheme in ~/.gvimrc
colorscheme  slate
