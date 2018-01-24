" 修改主题和颜色展示
" light theme
set t_Co=256
set background=light
colorscheme PaperColor

"设置标记一列的背景颜色和数字一行颜色一致
hi! link SignColumn LineNr
hi! link ShowMarksHLl DiffAdd
hi! link ShowMarksHLu DiffChange


" settings for kien/rainbow_parentheses.vim
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

set hidden "in order to switch between buffers with unsaved change
map <s-tab> :bp<cr>
map <tab> :bn<cr>
map ,bd :bd<cr>"


"重新打开回到上次所编辑文件的位置
" if this not work ,make sure .viminfo is writable for you
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

