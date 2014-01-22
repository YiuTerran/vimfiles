"=============================================
"Author:hominlinx
"Version:1.1
"Email:hominlinx@gmail.com
"=============================================

"按键映射：cnoremap 在命令行中非递归键盘映射
"          inoremap 在插入模式下生效
"          vnoremap 在visual下生效
"          nnoremap 在normal下生效
"better command line editing
"在命令行模式下使用了类似emace的快捷键
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
"后退一个字符
cnoremap <C-B>        <Left>
" 删除光标所在的字符
cnoremap <C-D>        <Del>
 " 前进一个字符
cnoremap <C-F>        <Right>
" 取回较新的命令行
cnoremap <C-N>        <Down>
" 取回以前 (较旧的) 命令行
cnoremap <C-P>        <Up>


"smart way to move between windows 多窗口移动
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l

" go to beign and end using capitalized derections
noremap H 0
noremap L $
map 0 ^

" speed up scrolling of the viewport slightly
nnoremap <C-e> 2<C-e>
nnoremap <C-y> 2<C-y>

"用F3 开启或关闭list功能，是否显示不可见字符
set listchars=tab:>-,eol:$
nnoremap <F3> :set list! list?<CR>

"用F4 开启或关闭换行功能
nnoremap <F4> :set wrap! wrap?<CR>

"set paste
"用F2激活/取消 paste模式，进入插入模式粘贴，代码就不会被自动缩进
set pastetoggle=<F2>
" disbale paste mode when leaving insert mode
au InsertLeave * set nopaste

"定义Compile函数，用来调用进行编译和运行
func Compile()
exec "w"
"C程序
if &filetype == 'c'
exec "!gcc -Wall %  -g -o %"
"c++程序
elseif &filetype == 'cpp'
exec "!g++ -std=c++0x -Wall %  -g -o %<"
"Java程序
elseif &filetype == 'java'
exec "!javac %"
elseif &filetype == 'py'
exec "!python %"
endif
endfunc
"结束定义Compile
"定义Run函数
func Run()
if &filetype == 'c' || &filetype == 'cpp'
exec "!%"
elseif &filetype == 'java'
exec "!java %<"
elseif &filetype == 'py'
exec "!python %"
endif

endfunc
"定义Debug函数，用来调试程序
func Debug()
exec "w"
"C程序
if &filetype == 'c'
exec "!gcc % -g -o %<.exe"
exec "!gdb %<.exe"
elseif &filetype == 'cpp'
exec "!g++ % -g -o %<.exe"
exec "!gdb %<.exe"
"Java程序
elseif &filetype == 'java'
exec "!javac %"
exec "!jdb %<"
endif
endfunc
"结束定义Debug
"设置程序的运行和调试的快捷键F5和Ctrl-F5
map <F7> :call Compile()<CR>
map <F6> :call Run()<CR>
map <F5> :call Debug()<CR>

"nmap <leader>t :CtrlPBufTag<CR>
"nmap <leader>r :CtrlPMRUFiles<CR>
"nmap <leader>f :CtrlP .<CR>
"nmap <leader>T :CtrlPTag<CR>
"nmap <leader>e :CtrlPBuffer<CR>

