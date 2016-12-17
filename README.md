# |:vimrcBackup:|
     <!--
        -this is a vim backup dir.
        -.vim/ 目录下有 ./vim/vim-scripts/目录, vim-scripts中有一些自己写的脚本模块.
        -比如normal， insert， abbrev映射， 还有bundle插件管理脚本.
        -vimrc通过souce这些脚本产生作用.
        -->

注意这里的软链接使用绝对路径，而不要使用相对路径.
1: ln  -s  `pwd`/vimrc   ~/.vimrc
2: ln  -s  `pwd`/gvimrc  ~/.gvimrv
3: ln  -s  `pwd`/.vim    ~/.vim
4: 在vim中执行 :BundleInstall,下载MyBundle中的插件,因为插件本身由git管理,还不会将使用submodule将其作为子项目。
5: 修改插件中的配置,或者快捷键冲突
    a: c-support 中的Template文件中的AUTHOR,Email, Company做配置
    b: 注释c-support中对于inoremap <C-j> 的映射
       注意:因为c-support中的代码自动折叠,所以使用zR递归展开所有vimL代码后,再搜索下面代码,并且注释即可.
       inoremap  <buffer>  <silent>  <C-j>  <C-G>u<C-R>=C_JumpCtrlJ()<CR>
    c: AutoPair中 :nmap  <c-h> 和<del>键功能相同，注释它
    d: ShowMarks 中键映射用的是map,但其实只能在normal模式下使用,修改为:nnoremap
       如果不修改，因为自己的';'被映射为<nop>,会导致很糟糕的对于文件的修改.
           这些映射有<leader>mt, <leader>mh......。都是以<leader>m开头的. 所以可以用nmap <leader>m查找定义位置,并且有必要开启vbs=1功能


