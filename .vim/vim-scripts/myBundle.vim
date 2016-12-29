
" required
filetype off

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
nnoremap <leader>xn :NERDTreeToggle<cr>

"3: nerdcommenter in scrooloose
Bundle 'scrooloose/nerdcommenter'


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


"5: taglist in vim-scripts in github
Bundle 'taglist.vim'

"6: YouCompleteMe
"Bundle 'Valloric/YouCompleteMe'
" 自动补全配置
set completeopt=longest,menu	"让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
autocmd InsertLeave * if pumvisible() == 0|pclose|endif	"离开插入模式后自动关闭预览窗口
"回车即选中当前项
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"
"上下左右键的行为 会显示其他信息
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"

"youcompleteme  默认tab  s-tab 和自动补全冲突
"let g:ycm_key_list_select_completion=['<c-n>']
let g:ycm_key_list_select_completion = ['<Down>']
"let g:ycm_key_list_previous_completion=['<c-p>']
let g:ycm_key_list_previous_completion = ['<Up>']

let g:ycm_confirm_extra_conf=1  " 打开加载.ycm_extra_conf.py提示

let g:ycm_collect_identifiers_from_tags_files=1	" 开启 YCM 基于标签引擎
let g:ycm_min_num_of_chars_for_completion=2	" 从第2个键入字符就开始罗列匹配项
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

"12-2: a.vim :switch between header and source file
Bundle "a.vim"

"13:  minibufexplorer
Bundle "fholgado/minibufexpl.vim"
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplForceSyntaxEnable = 1
let g:miniBufExplModSelTarget      = 1      "不在不可编辑窗口中打开选中的文件buffer
let g:miniBufExplorerMoreThanOne   = 0      "最多只有一个miniBuf窗口
nnoremap  <leader>mb   :MBEToggle!<cr>

"13-2 bufexplorer
Bundle  "https://github.com/jlanzarotta/bufexplorer"

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
" 一个很烂的插件,将我command
" 模式下的<tab>映射为对buffer的补全,当我想补全命令时,总是刷新我的输入. Shit
" 难道是因为我没有好好读读文档,所以不会使用?
"Bundle 'https://github.com/SailorCrane/SearchComplete'

"21 ShowMarks
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
Bundle "Tagbar"
nnoremap  <leader>tt  :TagbarToggle<cr>
" 打开tagbar时,自动显示行号
let g:tagbar_show_linenumbers=1

"25 vim-fugitive
Bundle "vim-fugitive"
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>gc :Gcommit<cr>
nnoremap <leader>gb :Gblame<cr>
nnoremap <leader>gl :Glog<cr>
nnoremap <leader>gp :Git push<cr>
nnoremap <leader>gw :Gwrite<cr>

"26 matchit
Bundle "matchit.zip"

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
Bundle "https://github.com/nelstrom/vim-visual-star-search"

"46 qargs
Bundle "https://github.com/nelstrom/vim-qargs"

"47 text-object-entire: file object
Bundle "https://github.com/kana/vim-textobj-user"
Bundle "https://github.com/kana/vim-textobj-entire"

"48 commentary from toppe: operator
Bundle  "https://github.com/tpope/vim-commentary"

"100
" required
filetype plugin indent on
filetype on

