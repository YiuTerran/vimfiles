"按键映射：cnoremap 在命令行中非递归键盘映射
"          inoremap 在插入模式下生效
"          vnoremap 在visual下生效
"          nnoremap 在normal下生效
"better command line editing
"在命令行模式下使用了类似emace的快捷键
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
