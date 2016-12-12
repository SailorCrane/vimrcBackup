# vimrcBackup
# this is a vim backup dir
# .vim/  dir has  vim-scripts, vim-scripts中有一些自己的脚本模块
# 比如normal， insert， abbrev映射， 还有bundle插件管理脚本
# vimrc souce这些脚本工作

1: ln -s ./vimrc  ~/.vimrc
2: ln -s ./vim    ~/.vim
3: 在vim中执行 :BundleInstall,下载MyBundle中的插件,因为插件本身由git管理,还不会将使用submodule将其作为子项目。
4: 修改插件中的配置,或者快捷键冲突
    a: c-support 中的Template文件中的AUTHOR,Email, Company做配置
    b: 注释c-support中对于inoremap <C-j> 的映射
       inoremap  <buffer>  <silent>  <C-j>  <C-G>u<C-R>=C_JumpCtrlJ()<CR>
    c: AutoPair中 :nmap  <c-h> 和<del>键功能相同，注释它
    d: ShowMarks 中键映射用的是map,但其实只能在normal模式下使用,修改为:nnoremap
       如果不修改，因为自己的';'被映射为<nop>,会导致很糟糕的对于文件的修改
           这些映射是<leader>mt, <leader>mh, 都是以<leader>m开头的


