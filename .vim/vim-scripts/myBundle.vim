
"==================================================
"0: begin vundle
filetype off     " required

" 注意 '+=' 两边不能有空格
" 所有vim内置的set命令, 等号两边都不能有空格
" $CRANE_DOT_VIM 在 本项目自带的vimrc中配置
" 路径变量不要以 "/" 结尾
let  $CRANE_VIM_BUNDLE = $CRANE_DOT_VIM . '/bundle'
set  rtp+=$CRANE_VIM_BUNDLE/vundle/

call vundle#rc() " let Vundle manage Vundle,  required!

"==================================================


"1: vundle in github
Bundle 'gmarik/vundle'


"2: NERDTree in scrooloose
Bundle 'scrooloose/nerdtree'
let NERDChristmasTree=0
let NERDTreeWinSize=35
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
let NERDTreeShowBookmarks=1
let NERDTreeWinPos="left"
" Automatically open a NERDTree if no files where specified
" autocmd vimenter * if !argc() | NERDTree | endif
" " Close vim if the only window left open is a NERDTree
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&
" b:NERDTreeType == "primary") | q | endif
" " Open a NERDTree
nnoremap <leader>xn :NERDTreeToggle<cr>


"3: nerdcommenter in scrooloose
Bundle 'scrooloose/nerdcommenter'

" <C-_> stand for <C-/>, 可以插入模式下使用: <C-v><C-/> 查看
" 这里只能使用nmap, 不能使用nnoremap
" 命令行模式下nmap  <cmd>,  带"*" 号的是nnoremap, 非"*" 是 nmap
"nmap <C-_>  <Plug>NERDCommenterInvert


"4: syntastic in scrooloose
Bundle 'scrooloose/syntastic'
" 为了使syntastic 和 YCM一起工作, 将他们的 error 和 warning
" symbol设置为不同标志
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_enable_highlighting = 1
let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'

"let g:syntastic_error_symbol='>>'
"let g:syntastic_warning_symbol='>'
let g:syntastic_check_on_open=1
" check_header 可以检测头文件语法错误
let g:syntastic_c_check_header=1
let g:syntastic_cpp_check_header = 1

"set the options of g++ to suport c++11. :

"let g:syntastic_cpp_compiler = 'clang++'
"let g:syntastic_cpp_compiler = 'gcc'
"let g:syntastic_cpp_compiler_options='-std=c++11 -stdlib=libc++' "这里加了之后, 语法检测就用不了了, 悲哀.

" 使语法检测, 支持c++11语法, 比如 auto iter = nodes.begin()
"let g:syntastic_cpp_compiler = 'g++'  "change the compiler to g++ to support c++11.

"5: taglist in vim-scripts in github
Bundle 'taglist.vim'


"6: YouCompleteMe
"Bundle 'Valloric/YouCompleteMe'
" 自动补全配置
set completeopt=longest,menu	"让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
autocmd InsertLeave * if pumvisible() == 0|pclose|endif	 "离开插入模式后自动关闭预览窗口
"回车即选中当前项
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"
"上下左右键的行为 会显示其他信息
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"


"不使用 ycm 的语法提示.
let  g:ycm_register_as_syntastic_checker = 0


"youcompleteme  默认tab  s-tab 和自动补全冲突
"let g:ycm_key_list_select_completion=['<c-n>']
let g:ycm_key_list_select_completion = ['<Down>']
"let g:ycm_key_list_previous_completion=['<c-p>']
let g:ycm_key_list_previous_completion = ['<Up>']

let g:ycm_confirm_extra_conf=1  " 打开加载.ycm_extra_conf.py提示


"let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py"
let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm"

let g:ycm_collect_identifiers_from_tags_files=1	" 开启 YCM 基于标签引擎
"let g:ycm_min_num_of_chars_for_completion=2	    " 从第2个键入字符就开始罗列匹配项
let g:ycm_min_num_of_chars_for_completion=1	    " 从第1个键入字符就开始罗列匹配项
let g:ycm_cache_omnifunc=0	" 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_seed_identifiers_with_syntax=1	" 语法关键字补全
nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>	"force recomile with syntastic

"nnoremap <leader>lo :lopen<CR>	"open locationlist
"nnoremap <leader>lc :lclose<CR>	"close locationlist
inoremap <leader><leader> <C-x><C-o>

"在注释输入中也能补全
let g:ycm_complete_in_comments = 1
"在字符串输入中也能补全
let g:ycm_complete_in_strings = 1
"注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0

nnoremap <leader>yd :YcmCompleter GoToDefinitionElseDeclaration<CR> " 跳转到定义处


"7: WinManager
Bundle  'winmanager'
"let g:winManagerWindowLayout = "TagList|FileExplorer"
let g:winManagerWindowLayout = "TagList"

let g:winManagerWidth = 30 "设置winmanager的宽度，默认为25
nnoremap  <leader>mw  :WMToggle<cr>  "定义打开关闭winmanager快捷键为F8
"imap  <leader>z <esc>:WMToggle<cr> "定义打开关闭winmanager快捷键为F8

let g:AutoOpenWinManager = 1 "在进入vim时自动打开winmanager



"8: echofunc
Bundle 'mbbill/echofunc'


"9: Conque-Shell
Bundle  'oplatek/Conque-Shell'
"nnoremap   <C-n>  :ConqueTermVSplit bash<CR>
"nnoremap   <C-b>  :ConqueTermVSplit bash<CR>
noremap  <leader>ba  :ConqueTermVSplit bash<CR>


"10: wakatime/vim-wakatime
Bundle 'wakatime/vim-wakatime'


"11:  powerline
"Powerline 字体github可下载: https://github.com/runsisi/consolas-font-for-powerline
"Bundle "Lokaltog/vim-powerline"
"set guifont=PowerlineSymbols\ for\ Powerline
"set guifont=Powerline\ Consolas\ Bold
"set laststatus=2
"set t_Co=256
""let g:Powerline_symbols = 'fancy'
"set fillchars+=stl:\ ,stlnc:\

"" unicode symbols
"let g:airline_left_sep = '»'
"let g:airline_left_sep = '▶'
"let g:airline_right_sep = '«'
""let g:airline_right_sep = '◀'
""let g:airline_symbols.linenr = '␊'
""let g:airline_symbols.linenr = '␤'
""let g:airline_symbols.linenr = '¶'
""let g:airline_symbols.branch = '⎇'
""let g:airline_symbols.paste = 'ρ'
""let g:airline_symbols.paste = 'Þ'
""let g:airline_symbols.paste = '∥'
""let g:airline_symbols.whitespace = 'Ξ'

"11-2 air-line : 使用tabline, 必须设置laststatus=2
Bundle "vim-airline/vim-airline"
Bundle "vim-airline/vim-airline-themes"

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" 为airline 设置主题
"let g:airline_theme="molokai"
let g:airline_theme="luna"

"这个是安装字体后 必须设置此项"
let g:airline_powerline_fonts = 1

" 开启tabline
" let g:airline#extensions#tabline#enabled = 1
" 显示buff编号
let g:airline#extensions#tabline#buffer_nr_show = 1

" tabline: 激活buf两端显示字符串
let g:airline#extensions#tabline#left_sep = '▶'

" 在unicode-table找到下面这么多, google 搜索"right arrow unicode",
" 然后进入unicode-table查找符合心意的即可: 找到unicode之后,
" 在vim插入模式中使用ctrl-v u [code]键入
" tabline: 未激活两端箭头: 不是一个字符,可以设置为一个字符串
"let g:airline#extensions#tabline#left_alt_sep = '>>'
"let g:airline#extensions#tabline#left_alt_sep = '➤'
"let g:airline#extensions#tabline#left_alt_sep = '⍄'
"let g:airline#extensions#tabline#left_alt_sep = '➵'
"let g:airline#extensions#tabline#left_alt_sep = '➲'
"let g:airline#extensions#tabline#left_alt_sep = '➲'
let g:airline#extensions#tabline#left_alt_sep = ' |➨| '

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'


"12:  c-support用来支持c或者cpp的快捷键
Bundle "WolfgangMehner/c-support"

"12-1: 不知道怎么用, 先下载下来, 慢慢挖掘
Bundle "c.vim"

"12-2: a.vim :switch between header and source file
Bundle "a.vim"
"cnoreabbrev  a  A
" i stand for  include
nnoremap <C-t>  :A<CR>:call ShowBufName()<CR>

"13:  minibufexplorer
" 因为在 打开quickfix窗口时, 老是崩溃, 所以禁止掉,以后使用bufexplorer
"Bundle "fholgado/minibufexpl.vim"
"let g:miniBufExplMapCTabSwitchBufs = 1
"let g:miniBufExplForceSyntaxEnable = 1
"let g:miniBufExplModSelTarget      = 1      "不在不可编辑窗口中打开选中的文件buffer
"let g:miniBufExplorerMoreThanOne   = 0      "最多只有一个miniBuf窗口
"nnoremap  <leader>mb   :MBEToggle!<cr>

"13-2 bufexplorer
Bundle  "https://github.com/jlanzarotta/bufexplorer"
let g:bufExplorerSplitVertSize=30
nnoremap <f3>       :ToggleBufExplorer<CR>:ToggleBufExplorer<CR>
nnoremap <f4>       :ToggleBufExplorer<CR>
nnoremap <leader>bb :BufExplorerVerticalSplit<CR>


"14:  quick fix
"Bundle "romainl/vim-qf"


"15:  rainbow  parentheses
Bundle 'kien/rainbow_parentheses.vim'
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" 不加入这行, 防止黑色括号出现, 很难识别
" " \ ['black',       'SeaGreen3'],
"
 let g:rbpt_max = 16
 let g:rbpt_loadcmd_toggle = 0
 autocmd VimEnter * RainbowParenthesesToggle
 autocmd Syntax * RainbowParenthesesLoadRound
 autocmd Syntax * RainbowParenthesesLoadSquare
 autocmd Syntax * RainbowParenthesesLoadBraces


"16: jiangmiao/auto-pairs.git
Bundle  'jiangmiao/auto-pairs.git'
let g:AutoPairShortcutToggle = '<C-p>'

"17-1: colors/molokai.vim
Bundle  'tomasr/molokai'
let g:molokai_original = 1

"17-2: altercation/vim-colors-solarized
Bundle  'altercation/vim-colors-solarized'

"17-3: color sampler
Bundle  "Colour-Sampler-Pack"


set t_Co=256
set background=dark
colorscheme molokai


"17: mbbill/undotree
Bundle 'mbbill/undotree'
nnoremap <F2>  :UndotreeToggle<cr>


"18: https://github.com/kien/ctrlp.vim
Bundle 'https://github.com/kien/ctrlp.vim'


"19: easy-motion
Bundle 'https://github.com/easymotion/vim-easymotion'
let g:EasyMotion_smartcase = 1
"let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion
map <Leader><leader>h <Plug>(easymotion-linebackward)
"map <Leader><Leader>j <Plug>(easymotion-j)
"map <Leader><Leader>k <Plug>(easymotion-k)
map <Leader><leader>l <Plug>(easymotion-lineforward)
" 重复上一次操作, 类似repeat插件, 很强大
map <Leader><leader>. <Plug>(easymotion-repeat)

" 这里必须使用map/nmap, 而不可以使用nnoremap, 因为使用了连续映射如下所示
" <Leader><Leader>             <Plug>(easymotion-prefix)
" <Plug>(easymotion-prefix)N   <Plug>(easymotion-N)
" <Plug>(easymotion-prefix)n   <Plug>(easymotion-n)
" <Plug>(easymotion-prefix)k   <Plug>(easymotion-k)
" <Plug>(easymotion-prefix)j   <Plug>(easymotion-j)
" <Plug>(easymotion-prefix)gE  <Plug>(easymotion-gE)
" <Plug>(easymotion-prefix)ge  <Plug>(easymotion-ge)
" <Plug>(easymotion-prefix)E   <Plug>(easymotion-E)
" <Plug>(easymotion-prefix)e   <Plug>(easymotion-e)
" <Plug>(easymotion-prefix)B   <Plug>(easymotion-B)
" <Plug>(easymotion-prefix)b   <Plug>(easymotion-b)
" <Plug>(easymotion-prefix)W   <Plug>(easymotion-W)
" <Plug>(easymotion-prefix)w   <Plug>(easymotion-w)
" <Plug>(easymotion-prefix)T   <Plug>(easymotion-T)
" <Plug>(easymotion-prefix)t   <Plug>(easymotion-t)
" <Plug>(easymotion-prefix)s   <Plug>(easymotion-s)
" <Plug>(easymotion-prefix)F   <Plug>(easymotion-F)
" <Plug>(easymotion-prefix)f   <Plug>(easymotion-f)
" <Plug>(easymotion-f)         :<C-U>call EasyMotion#S(1,0,0)<CR>


"20 SearchComplete
" 一个很烂的插件,将我command
" 模式下的<tab>映射为对buffer的补全,当我想补全命令时,总是刷新我的输入. Shit
" 难道是因为我没有好好读读文档,所以不会使用?
"Bundle 'https://github.com/SailorCrane/SearchComplete'
"20-1 CmdlineComplete
Bundle "CmdlineComplete"


"21 ShowMarks 显示使用m所下的标记
"Bundle "ShowMarks"


"22 vim-surround
Bundle "tpope/vim-surround"
" cs"'
" ds"
" ysiw"


"23 repeat ,和surround同一个作者,主要用于 重复执行surround的操作
"  ysiW": 给W添加"
"  yss" : 给一行添加"
Bundle "tpope/vim-repeat"


"24 Tagbar in vim-scripts's repo
Bundle "TagBar"

" <leader>tt 被vim-scripts/Align使用了
" 所以这里使用ti: tag invert, tt :tag toggle
nnoremap  <leader>ti  :TagbarToggle<cr>

" 打开tagbar时,自动显示行号
let g:tagbar_show_linenumbers=1
let g:tagbar_left = 1


"25 vim-fugitive
Bundle "vim-fugitive"
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>gc :Gcommit<cr>
nnoremap <leader>gb :Gblame<cr>
nnoremap <leader>gl :Glog<cr>
nnoremap <leader>gp :Git push<cr>
nnoremap <leader>gw :Gwrite<cr>

"26 matchit 注释这个插件, 因为vim已经自带了
"只用在vimrc中添加 runtime macros/matchit.vim即可
"Bundle "matchit.zip"


"27 EasyGrep
Bundle "EasyGrep"


"28 SnipMate
"Bundle "garbas/vim-snipmate"
" the tow plugins below is necessary for snipmate
"Bundle "tomtom/tlib_vim"
"Bundle "MarcWeber/vim-addon-mw-utils"
" snippets is  optional for snipmate
"Bundle  "honza/vim-snippets"


"29 vimim
"Bundle 'vimim/vimim'

"30 Chiel92/vim-autoformat
Bundle "Chiel92/vim-autoformat"


"31 Yankring,因为很多快捷键冲突,所以先将这个插件注释
Bundle "YankRing.vim"
nnoremap  <leader>ys  :YRShow<cr>
nnoremap  <leader>yc  :YRClear<cr>


"32 color view
Bundle "http://git.oschina.net/CraneAgain/xterm-color-table.vim"


"33 potion, my handwriting
Bundle  "potion"


"34 L9: vim library, vim script util.
"暂时先不启用这个库,需要时再打开注释:<leader>ci toggle注释
Bundle "L9"


" no vundle#end
"call vundle#end()           " required with vundle#begin()


"35 multiple-cursor
Bundle "https://github.com/terryma/vim-multiple-cursors"
let g:multi_cursor_start_word_key='g<C-n>'     "选择单词"
let g:multi_cursor_start_key='gi<C-n>'           "在单词中的,也被选择"


"36 junegunn/vim-easy-align
Bundle "junegunn/vim-easy-align"
" 注意这里使用nore非递归映射是不起作用的,可能因为这里使用了<Plug>的原因,<Plug>不是vim底层的操作,所以映射之后也没有意义
vmap <Leader>a <Plug>(EasyAlign)
nmap <Leader>a <Plug>(EasyAlign)

if !exists('g:easy_align_delimiters')
      let g:easy_align_delimiters = {}
endif
let g:easy_align_delimiters['#'] = { 'pattern': '#', 'ignore_groups': ['String']  }


"37 expand-region
Bundle "https://github.com/terryma/vim-expand-region"
vmap v <Plug>(expand_region_expand)
vmap V <Plug>(expand_region_shrink)


"38 gundo stand for gnu undo
Bundle "gundo"


"39 FuzzyFinder : need L9 library
Bundle "FuzzyFinder"


"40 ShowTrailingWhiteSpace
Bundle 'ShowTrailingWhitespace'


"41 godlygeek/tabular
Bundle "godlygeek/tabular"


"42 FencView: fencview
Bundle  'mbbill/fencview'
"Bundle  'fencview'


"43 ack.vim
Bundle "ack.vim"


"44 mkdir, very simple
Bundle  "https://github.com/pbrisbin/vim-mkdir"


"45 visual-star search
" 这是vim-practical 作者的一款插件, 实现很简单
" 在«vim-practical»技巧86中, 有这个技巧的实现, 并且书中还有一个关于/ 和?的bug
Bundle "https://github.com/nelstrom/vim-visual-star-search"


"46 qargs
Bundle "https://github.com/nelstrom/vim-qargs"


"47 text-object-entire: file object
Bundle "https://github.com/kana/vim-textobj-user"
Bundle "https://github.com/kana/vim-textobj-entire"


"48 commentary from toppe: operator
Bundle  "https://github.com/tpope/vim-commentary"


"49 Mark
" 因为'r 和 'n寄存器重复, 所以先注释掉这个插件
"Bundle "Mark"


"50 VOoM
Bundle "VOoM"


"51 calendar
Bundle "https://github.com/itchyny/calendar.vim"


"52 visincr 提供增长数列功能
Bundle "VisIncr"


"53 Align  vim-script 294
Bundle "Align"


"54 python 相关
Bundle  "pyflakes"
Bundle  "pydoc.vim"
Bundle  "indentpython.vim"
Bundle  "python.vim"


" python 的一款补全插件
Bundle  "davidhalter/jedi-vim"


"55 ReplaceWithRegister
Bundle "ReplaceWithRegister"


"56  vim-exchange :learned from vimcasts
Bundle "tommcdo/vim-exchange"


"57  vim-unimpaired : toggle twince, paste once
" h paste
" h pasteoggle
Bundle  "tpope/vim-unimpaired"


"58  vim-workspace
Bundle "https://github.com/thaerkh/vim-workspace"


"59  lastpat
" vi/ 选择模式选中下一次匹配
" 鸡肋, 因为vim的gn, gN 已经可以在选择模式中, 选中下一次匹配了
"Bundle  "kana/vim-textobj-lastpat"


"60 vim-abolish
"使用:S 命令, 交换词
":S/{good, bad}/
Bundle "tpope/vim-abolish"


"61 emmet-vim
"快速写html/css


"62 indent-guide
Bundle "nathanaelkane/vim-indent-guides"


" 63
Bundle "thinca/vim-quickrun"

" 64 tmux-vim:
" 添加tmux filetype, 这样编辑~/.tmux.conf时, 可以有彩色.
" 识别出文件类型后也可以快速添加注释了.
Bundle "tmux-plugins/vim-tmux"


" 64 auto-fold: zf add marker, zd delete marker
"Bundle "AutoFold.vim"      " 比较烂, 自动添加marker 不太好. 而且有了这个插件, 每次写入文件, 就跳行...

" 65 drawit: 使用vim draw文本图.
Bundle 'hrj/vim-DrawIt'

" 66 file-template
Bundle 'aperezdc/vim-template.git'
let g:templates_directory = $CRANE_DOT_VIM . "/templates"

" 67 Mark.vim 可以同时高亮多个词: 比如同时高亮好几个变量.
"Bundle  'Tuxdude/mark.vim'


" 68 速写 html/css/js(javascript) : 官方插件. ZenCoding renamed to Emmet.vim
"Bundle  'ZenCoding.vim'
Bundle  'Emmet.vim'


" 69 ultisnips +  vim-snippets
"    ultisnips 是一个snippet引擎(类似于snipMate), vim-snippets是代码片段定义.
Bundle "SirVer/ultisnips"
Bundle "honza/vim-snippets"

" 70 markdown preview plugin( need nodejs + npm )
"sudo npm -g install instant-markdown-d
"sudo apt-get install xdg-utils
"sudo apt-get install curl
"sudo apt-get install nodejs-legacy        # (for Debian-based systems)
Bundle "suan/vim-instant-markdown"
let g:instant_markdown_autostart = 0        " 只有在markdown文档中, 并且设置了这里的非自动preview
                                            " 才会有InstantMarkdownPreview
                                            " 命令可以使用


"100
" required
filetype plugin indent on
filetype on



