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
let g:tagbar_type_rust = {
   \ 'ctagstype' : 'rust',
   \ 'kinds' : [
       \'T:types,type definitions',
       \'f:functions,function definitions',
       \'g:enum,enumeration names',
       \'s:structure names',
       \'m:modules,module names',
       \'c:consts,static constants',
       \'t:traits,traits',
       \'i:impls,trait implementations',
   \]
   \}


"for bufexplorer
Plug 'vim-scripts/bufexplorer.zip'
noremap <silent> <CR> :BufExplorer<CR>

"自动补全单引号，双引号等
Plug 'jiangmiao/auto-pairs'

"文件搜索 建议学习一下
Plug 'kien/ctrlp.vim'
let g:ctrlp_map = '<leader>p'
let g:ctrlp_cmd = 'CtrlP'
"set wildignore+=*/tmp/*,*.so,*.swp,*.zip " MacOSX/Linux"
let g:ctrlp_custom_ignore = {
    \ 'dir': '\v[\/]\.(git|hg|svn|rvm)$',
    \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz)$',
    \ }
let g:ctrlp_working_path_mode=0
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=15
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1


"% 匹配成对的标签，跳转
Plug 'vim-scripts/matchit.zip'

"快速跳转标签
"m(ark), dm, `(jump)
Plug 'kshenoy/vim-signature'

"根据字符快速跳转
Plug 'Lokaltog/vim-easymotion'

"区块伸缩
Plug 'terryma/vim-expand-region'

"git
Plug 'tpope/vim-fugitive'

"快速 加减注释
"shift+v+方向键选中(默认当前行),<leader>cc 加上注释<leader>cu 解开注释
Plug 'scrooloose/nerdcommenter'

"python fold
Plug 'tmhedberg/SimpylFold', {'for': 'py'}

"替换airline
Plug 'itchyny/lightline.vim'
let g:lightline = { 'colorscheme': 'PaperColor' }

Plug 'Valloric/YouCompleteMe'
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_show_diagnostics_ui = 0
let g:ycm_server_log_level = 'info'
let g:ycm_min_num_identifier_candidate_chars = 2
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_complete_in_strings=1
let g:ycm_key_invoke_completion = '<c-z>'
set completeopt=menu,menuone

noremap <c-z> <NOP>

let g:ycm_semantic_triggers =  {
			\ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
			\ 'cs,lua,javascript': ['re!\w{2}'],
			\ }
let g:ycm_filetype_whitelist = {
			\ "c":1,
			\ "cpp":1,
			\ "objc":1,
            \ "js":1,
            \ "go":1,
            \ "java":1,
            \ "py":1,
			\ "sh":1,
			\ "zsh":1,
			\ }

"for show no user whitespaces
Plug 'bronson/vim-trailing-whitespace'
map <leader><space> :FixWhitespace<cr>

"for auto format code
Plug 'Chiel92/vim-autoformat'
noremap <C-F8> :Autoformat<CR><CR>
let g:formatprg_c = "astyle"
let g:formatprg_args_c = "-A3"

"##########语法检查##########"
Plug 'scrooloose/syntastic'
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_check_on_open=0 "在打开文件的时候检查
let g:syntastic_enable_highlighting = 0
let g:syntastic_enable_balloons = 1
let g:syntastic_mode_map      = {'mode': 'active',
            \'active_filetypes':  ['py','pyx','h','c','cpp','cc'],
            \'passive_filetypes': ['html', 'css', 'xhtml', 'eruby']
            \}

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
