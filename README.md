0: 说明
this is a vim backup dir.
.vim/ 目录下有 ./vim/vim-scripts/目录, vim-scripts中有一些自己写的脚本模块.
比如normal， insert， abbrev映射， 还有bundle插件管理脚本.
vimrc通过souce这些脚本产生作用.


1: 配置方式1: 执行下列操作即可.(配置方式1: 影响vim命令)
 ln  -s  `pwd`/vimrc   ~/.vimrc
 ln  -s  `pwd`/gvimrc  ~/.gvimrc
 ln  -s  `pwd`/.vim    ~/.vim


2: 配置方式2: 不影响别人的vim使用, 即使是同一个用户.(非常经典, 借助vim -u命令): 一般用于在服务器执行.
    2-1: 将项目clone到特定目录.
         但是如果可以copy的化, 就copy, 这样插件就不用再连接github下载了(需要很长时间).

         mkdir ~/CraneVim/ && cd  ~/CraneVim/ &&  git clone https://git.oschina.net/CraneAgain/vimrcBackup
    2-2: 在~/.bashrc 中定义 alias
         alias  vimc="vim  -u  ~/CraneVim/vimrc"
    2-3: 修改 ~/CraneVim/vimrc 中第一个路径变量的值:为vimrc的地址, 后面不要跟"/"
         let  $CRANE_VIM_HOME = '~/CraneVim/'
         source ~/.bashrc

         这时候自己定义的一些指令, 基本已经可以用了.
         可以使用vimc启动了.
    2-4: 这时候myBundle.vim 不能使用.: <Leader>ep 修改 ~/myBundle.vim
         set  rtp+=$CRANE_DOT_VIM/bundle/vundle/
         set  rtp+=$CRANE_DOT_VIM/bundle/ack.vim/
         ...
         ...
    2-5: 使用vimc测试, 然后将~/myBundle.vim中rtp中不能使用的插件注释即可.
         然后vimc 就完全可以使用了.




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

6: minibufexpl 插件有一个bug,当关闭buf时(使用命令:bd),然后未关闭的文件就不会高亮显示了.
    这时候如果使用命令syntax on,虽然当前文件可以高亮,但是minibufexpl窗口确不会高亮了.
    在github的issue中找到一个解决方案:

    在minibufexpl下建立syntax目录,在其中添加如下:

    syn match MBENormal                   '\[[^\]]*\]'
    syn match MBEChanged                  '\[[^\]]*\]+'
    syn match MBEVisibleNormal            '\[[^\]]*\]\*'
    syn match MBEVisibleChanged           '\[[^\]]*\]\*+'
    syn match MBEVisibleActiveNormal      '\[[^\]]*\]\*!'
    syn match MBEVisibleActiveChanged     '\[[^\]]*\]\*+!'

    每次bd后,syntax on一下,就不会出现minibufexpl不会高亮的情况了.

    对了还有minibufexpl的全局变量: let g:miniBufExplForceSyntaxEnable = 1 也要设置,我就在我的myBundle.vim 中minibuf插件下面设置了这一句

    最后:  nnoremap  <leader>d      :bd<cr>:syntax on<cr>

