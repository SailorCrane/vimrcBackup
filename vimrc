
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
set tabstop=4 shiftwidth=4  softtabstop=4


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
let mapleader   = ","       "
let g:mapleader = ","       " global <leader>


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


"16 mouse  support: 这样就支持鼠标点击了
" 支持鼠标改变窗口大小, 点击minibuf中的文件
" 支持鼠标点击TagBar中Tag
set mouse=a


"17 some normal settion
set history=300
" allow backspacing over everything in insert mode
set backspace=indent,eol,start
"set endofline      "vim 默认在最后添加空行


"18 autowrite :切换buffer时, 文件会自动写入
set autowrite
set autowriteall


"19 wildmenu :命令行<tab>补全时,可以在statusline预览接下来会调到的选项
set wildmenu
"虽然在longest模式下,不起作用, 但是还是设置.
"这样在手动set wildmode=full时,wildmenu选项就可以立即投入使用,不用再去设置一次了

set wildmode=full       "最终发现, 还是习惯zsh这种full 风格 + wildmenu
"zsh style complete, need wildmenu to view more choise, 注意wildmode默认就是full mode, 这里列出来,主要是和下面形成对比.

"set wildmode=longest,list
"bash style complete, 这种情况下,就不再需要wildmenu了: 先试一段时间bash风格补全,不习惯再换回full (zsh) 风格

"20 enable :Man, 这样就可以使用命令:Man 在vim中查看Man文档
" 也可以使用<leader>K 去查看光标下的关键字: 通过Man
" 但是我已经在normal-map.vim做了映射,如果exists(":Man"), K 就映射到<leader>K
runtime   ftplugin/man.vim
runtime   macros/matchit.vim    "激活vim自带的matchit.vim, 这样就不用这个matchit.vim插件了


"21
set fileformats=unix,dos,mac


"22  cscope setting
if has("cscope")
    set cscopetag   "优先使用cscopetag文件, 针对 ctrl-] 动作
endif


"23 about list: show whitespace
" tab:triangle ▸ is ctrl-v u25b8
" eol:ሴ is ctrl-v u1234
" eol:¬ is ctrl-v u00ac 这个换行符更好些,看起来更形象
" ¬ 是从vimcasts 复制过来, 然后个ga查看其编码的
" 当然: listchars 也可以显示trailing,
" 但是因为自己已经使用了showWhiteSpace插件, 所以就用不到这个了
set nolist
set listchars=tab:▸\ ,eol:¬
"set listchars=tab:▸\ ,eol:ሴ
" Invisible character colors
highlight NonText    guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

" 23-2 :special  symbol
" Symbol	Unicode	Name
" ¬	    U+00AC	not   sign
" ▸	    U+25B8	black right-pointing small triangle
" ☠	    U+2620	skull and crossbones
" ❤	    U+2764	heavy black heart
" ‽	    U+203d	interobang


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
"colorscheme  slate
colorscheme  marklar   "from Colour-Sampler-Pack

"101 这是一个对于系统export环境变量的测试, 在$tmpPath中放入了var.vim
" var.vim echom一句话,借以测试vim是否支持系统环境变量
" 如果支持,那么所有的脚本,不再使用~/路径, 而是使用路径变量名,
" 这样移植到其它系统会更容易
"source $tmpPath/var.vim
