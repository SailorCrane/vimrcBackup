set rtp+=~/.vim/bundle/vundle/

call vundle#rc()
     
" let Vundle manage Vundle
" required!

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
nnoremap <leader>x :NERDTreeToggle<cr>

"3: nerdcommenter in scrooloose
Bundle 'scrooloose/nerdcommenter'

"4: syntastic in scrooloose
Bundle 'scrooloose/syntastic'
let g:syntastic_error_symbol='>>'
let g:syntastic_warning_symbol='>'
let g:syntastic_check_on_open=1

"5: taglist in vim-scripts in github
Bundle 'taglist.vim'

"6: YouCompleteMe
"Bundle 'Valloric/YouCompleteMe'
"" 自动补全配置
"set completeopt=longest,menu	"让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
"autocmd InsertLeave * if pumvisible() == 0|pclose|endif	"离开插入模式后自动关闭预览窗口
"inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"	"回车即选中当前项
""上下左右键的行为 会显示其他信息
"inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
"inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
"inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
"inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"

""youcompleteme  默认tab  s-tab 和自动补全冲突
""let g:ycm_key_list_select_completion=['<c-n>']
"let g:ycm_key_list_select_completion = ['<Down>']
""let g:ycm_key_list_previous_completion=['<c-p>']
"let g:ycm_key_list_previous_completion = ['<Up>']
"let g:ycm_confirm_extra_conf=0 "关闭加载.ycm_extra_conf.py提示

"let g:ycm_collect_identifiers_from_tags_files=1	" 开启 YCM 基于标签引擎
"let g:ycm_min_num_of_chars_for_completion=2	" 从第2个键入字符就开始罗列匹配项
"let g:ycm_cache_omnifunc=0	" 禁止缓存匹配项,每次都重新生成匹配项
"let g:ycm_seed_identifiers_with_syntax=1	" 语法关键字补全
"nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>	"force recomile with syntastic
""nnoremap <leader>lo :lopen<CR>	"open locationlist
""nnoremap <leader>lc :lclose<CR>	"close locationlist
"inoremap <leader><leader> <C-x><C-o>
""在注释输入中也能补全
"let g:ycm_complete_in_comments = 1
""在字符串输入中也能补全
"let g:ycm_complete_in_strings = 1
""注释和字符串中的文字也会被收入补全
"let g:ycm_collect_identifiers_from_comments_and_strings = 0

"nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR> " 跳转到定义处

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
noremap  <leader>b  :ConqueTermVSplit bash<CR>

"10: wakatime/vim-wakatime
Bundle 'wakatime/vim-wakatime'

"11:  powerline
"Powerline 字体github可下载: https://github.com/runsisi/consolas-font-for-powerline
Bundle "Lokaltog/vim-powerline"
"set guifont=PowerlineSymbols\ for\ Powerline
"set guifont=Powerline\ Consolas\ Bold
set laststatus=2
set t_Co=256
" let g:Powerline_symbols = 'fancy'
set fillchars+=stl:\ ,stlnc:\

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
"let g:airline_right_sep = '◀'
"let g:airline_symbols.linenr = '␊'
"let g:airline_symbols.linenr = '␤'
"let g:airline_symbols.linenr = '¶'
"let g:airline_symbols.branch = '⎇'
"let g:airline_symbols.paste = 'ρ'
"let g:airline_symbols.paste = 'Þ'
"let g:airline_symbols.paste = '∥'
"let g:airline_symbols.whitespace = 'Ξ'


"12:  c-support用来支持c或者cpp的快捷键
Bundle "WolfgangMehner/c-support"

"13:  mini buf explorer
Bundle "fholgado/minibufexpl.vim"
let g:miniBufExplMapCTabSwitchBufs = 1

"14:  quick fix
Bundle "romainl/vim-qf"

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

"17: colors/molokai.vim
Bundle  'tomasr/molokai'
let g:molokai_original = 1


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
map <Leader><Leader>j <Plug>(easymotion-j)
map <Leader><Leader>k <Plug>(easymotion-k)
map <Leader><leader>l <Plug>(easymotion-lineforward)
" 重复上一次操作, 类似repeat插件, 很强大
map <Leader><leader>. <Plug>(easymotion-repeat)


"20 SearchComplete
Bundle 'https://github.com/SailorCrane/SearchComplete'

"21 ShowMarks
Bundle "ShowMarks"

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
Bundle "Tagbar"
nnoremap  <leader>tt  :TagbarToggle<cr>
" 打开tagbar时,自动显示行号
let g:tagbar_show_linenumbers=1

"25 vim-fugitive
"Bundle "vim-fugitive"

"26 matchit
Bundle "matchit.zip"

"27 EasyGrep
Bundle "EasyGrep"


"28 SnipMate
Bundle "garbas/vim-snipmate"
" the tow plugins below is necessary for snipmate
Bundle "tomtom/tlib_vim"
Bundle "MarcWeber/vim-addon-mw-utils"
" snippets is  optional for snipmate
Bundle  "honza/vim-snippets"

"29 vimim
"Bundle 'vimim/vimim'

"30 Chiel92/vim-autoformat
Bundle "Chiel92/vim-autoformat"

"31 Yankring,因为很多快捷键冲突,所以先将这个插件注释
"Bundle "YankRing.vim"

"31 potion, my handwriting
Bundle  "potion"

filetype plugin indent on
