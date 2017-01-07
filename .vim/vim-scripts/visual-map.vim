
"1 to command line
vnoremap  ;    :
vnoremap  <cr> ;

"2 <leader>f, <leader>b to  page down up
vnoremap  <leader>f   5<c-e>
vnoremap  <leader>b   5<c-y>

"3: visual copy, 因为j按的最顺手,并且ctrl在一般键盘caplock位置时,ctrl-j简直无敌组合"fast"
vnoremap  <c-j>  "+y

"4: visual 模式下粘贴"+ 系统寄存器中内容, 和normal模式下统一起来
vnoremap  <leader><leader>p  "+p
vnoremap  <leader><leader>P  "+P

"5: blocl visual 模式下, 在列最前面添加空格
vnoremap  <leader>i<space>   I<space><esc>
"vnoremap  <leader>a<space>   I<space><esc>
