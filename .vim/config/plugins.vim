call plug#begin('~/.vim/plugged')

set nocompatible "be iMproved
filetype off

Plug 'cespare/vim-toml', {'for': 'toml'}

Plug 'NLKNguyen/papercolor-theme'

"字符编码自动识别
Plug 'mbbill/fencview'

"emmet
Plug 'mattn/emmet-vim', {'for': ['xml', 'html', 'jsx']}

"NERD-Tree 建议记住该插件的快捷键
Plug 'scrooloose/nerdtree'
map <leader>n :NERDTreeToggle<CR>
let NERDTreeHighlightCursorline=1
let NERDTreeIgnore=[ '\.pyc$', '\.pyo$', '\.py\$class$', '\.obj$', '\.o$', '\.so$', '\.egg$', '^\.git$' ]
let g:netrw_home='~/bak'
"close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
"自动打开nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" 这个插件可以显示文件的Git增删状态
Plug 'Xuyuanp/nerdtree-git-plugin'

" vue语法
Plug 'posva/vim-vue'

"for tagbar
Plug 'majutsushi/tagbar'
nmap <Leader>tb :TagbarToggle<CR>
let g:tagbar_ctags_bin='/usr/local/bin/ctags'
let g:tagbar_width=30
autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx call tagbar#autoopen()


"for bufexplorer
Plug 'vim-scripts/bufexplorer.zip'
noremap <silent> <CR> :BufExplorer<CR>

"自动补全单引号，双引号等
Plug 'jiangmiao/auto-pairs'

"文件搜索 建议学习一下
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
let g:Lf_ShortcutF = '<c-p>'
let g:Lf_WorkingDirectoryMode = 'AF'
let g:Lf_RootMarkers = ['.git', '.svn', '.hg', '.project', '.root']
let g:Lf_DefaultExternalTool='rg'

"% 匹配成对的，跳转
Plug 'vim-scripts/matchit.zip'

"区块伸缩
Plug 'terryma/vim-expand-region'

"git
Plug 'tpope/vim-fugitive'

"python fold
Plug 'tmhedberg/SimpylFold', {'for': 'py'}

"替换airline
Plug 'itchyny/lightline.vim'
let g:lightline = { 'colorscheme': 'PaperColor' }

Plug 'autowitch/hive.vim'
au BufNewFile,BufRead *.hql set filetype=hive expandtab
au BufNewFile,BufRead *.q set filetype=hive expandtab

"for show no user whitespaces
Plug 'bronson/vim-trailing-whitespace'
map <leader><space> :FixWhitespace<cr>

"for auto format code
Plug 'Chiel92/vim-autoformat'
noremap <C-F8> :Autoformat<CR><CR>
let g:formatprg_c = "astyle"
let g:formatprg_args_c = "-A3"

"##########语法检查##########"
Plug 'w0rp/ale'
let g:ale_sign_column_always = 1

"自动补全
Plug 'ackyshake/VimCompletesMe'

"快速注释
Plug 'scrooloose/nerdcommenter'

"括号显示增强
Plug 'kien/rainbow_parentheses.vim'
let g:rbpt_colorpairs = [
    \ ['brown', 'RoyalBlue3'],
    \ ['Darkblue', 'SeaGreen3'],
    \ ['darkgray', 'DarkOrchid3'],
    \ ['darkgreen', 'firebrick3'],
    \ ['darkcyan', 'RoyalBlue3'],
    \ ['darkred', 'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown', 'firebrick3'],
    \ ['gray', 'RoyalBlue3'],
    \ ['black', 'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue', 'firebrick3'],
    \ ['darkgreen', 'RoyalBlue3'],
    \ ['darkcyan', 'SeaGreen3'],
    \ ['darkred', 'DarkOrchid3'],
    \ ['red', 'firebrick3'],
    \ ]
let g:rbpt_max = 40
let g:rbpt_loadcmd_toggle = 0

call plug#end()
