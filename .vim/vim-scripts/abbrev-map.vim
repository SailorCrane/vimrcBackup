
"1  My abbreviation at insert mode
iabbrev q@  @qq.com
iabbrev @@  215379@qq.com


"2  my self  abbr
iabbrev jft just for test


"3 关于C/Cpp 头文件包含的映射
" 因为c-support的 \pg, \pl 就可以实现
" p:preprocess, g:global,  l:local
" Use map, not abbrev, because I want chd map more quick, not need <space> to
" active it!
" and, I also can use <c-v> to disable this
" But, I can't disable abbreviation by <c-v>
inoremap chd< #include <><esc>i
inoremap chd> #include ""<esc>i

