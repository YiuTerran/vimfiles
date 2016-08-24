"=============================================
"Author:hominlinx
"Version:1.1
"Email:hominlinx@gmail.com
"=============================================

"Plugin settings

" Plugin settings
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
  echo "Installing Vundle..."
  echo ""
  silent !mkdir -p ~/.vim/bundle
  silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
  let iCanHazVundle=0
endif

set nocompatible "be iMproved
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Plugin 'gmarik/vundle'

Plugin 'cespare/vim-toml'


"主题：molokai
Plugin 'tomasr/molokai'
let g:molokai_original = 1
let g:rehash256 = 1

"主题 solarized
Plugin 'altercation/vim-colors-solarized'
"let g:solarized_termcolors=256
let g:solarized_termtrans=1
let g:solarized_contrast="normal"
let g:solarized_visibility="normal"

Plugin 'mbbill/fencview'

"rust
Plugin 'rust-lang/rust.vim'

"emmet
Plugin 'mattn/emmet-vim'

"go
Plugin 'fatih/vim-go'

"NERD-Tree 建议记住该插件的快捷键
Plugin 'vim-scripts/The-NERD-tree'
map <leader>n :NERDTreeToggle<CR>
let NERDTreeHighlightCursorline=1
let NERDTreeIgnore=[ '\.pyc$', '\.pyo$', '\.py\$class$', '\.obj$', '\.o$', '\.so$', '\.egg$', '^\.git$' ]
let g:netrw_home='~/bak'
"close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" 这个插件可以显示文件的Git增删状态
Plugin 'Xuyuanp/nerdtree-git-plugin'

"for tagbar
Plugin 'majutsushi/tagbar'
nmap <Leader>tb :TagbarToggle<CR>
let g:tagbar_ctags_bin='/usr/bin/ctags'
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
Plugin 'vim-scripts/bufexplorer.zip'
noremap <silent> <CR> :BufExplorer<CR>

"自动补全单引号，双引号等
Plugin 'jiangmiao/auto-pairs'

"文件搜索 建议学习一下
Plugin 'kien/ctrlp.vim'
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
Plugin 'vim-scripts/matchit.zip'

"快速跳转标签
"m(ark), dm, `(jump)
Plugin 'kshenoy/vim-signature'

"根据字符快速跳转
Plugin 'Lokaltog/vim-easymotion'

"区块伸缩
Plugin 'terryma/vim-expand-region'

"git
Plugin 'tpope/vim-fugitive'

Plugin 'Valloric/YouCompleteMe'
"youcompleteme 默认tab s-tab 和自动补全冲突
let g:ycm_key_list_select_completion=['<c-n>']
let g:ycm_key_list_select_completion = ['<Down>']
let g:ycm_key_list_previous_completion=['<c-p>']
let g:ycm_key_list_previous_completion = ['<Up>']
let g:ycm_confirm_extra_conf = 0
let g:syntastic_always_populate_loc_list = 1
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_global_ycm_extra_conf="~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py"
let g:ycm_min_num_of_chars_for_completion=2
let g:ycm_autoclose_preview_window_after_insertion=1
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>

"快速插入代码片段
Plugin 'SirVer/ultisnips'
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
"定义存放代码片段的文件夹
".vim/snippets下，使用自定义和默认的，将会的到全局，有冲突的会提示
let g:UltiSnipsSnippetDirectories=["snippets", "bundle/UltiSnips/UltiSnips"]
let g:UltiSnipsExpandTrigger="<c-k>"
let g:UltiSnipsJumpForwardTrigger="<c-k>"
let g:UltiSnipsJumpBackwardTrigger="<c-j>"

"快速 加减注释
"shift+v+方向键选中(默认当前行),<leader>cc 加上注释<leader>cu 解开注释
Plugin 'scrooloose/nerdcommenter'

"python fold
Plugin 'tmhedberg/SimpylFold'

"状态栏增强展示
Plugin 'bling/vim-airline'
" --- vim-airline
set ttimeoutlen=50
let g:airline_left_sep = ''
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_right_sep = ''
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#syntastic#enabled = 0
let g:airline#extensions#tagbar#enabled = 1
let g:airline#extensions#csv#enabled = 0
let g:airline#extensions#hunks#enabled = 0
let g:airline#extensions#virtualenv#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_theme_patch_func = 'AirlineThemePatch'

function! AirlineInit()
    let g:airline_section_y = airline#section#create_right(['%v', '%l'])
    let g:airline_section_z = airline#section#create_right(['%P', '%L'])
endfunction
autocmd VimEnter * call AirlineInit()

function! AirlineThemePatch(palette)
    if g:airline_theme == "wombat"
        for colors in values(a:palette.inactive)
            let colors[3] = 235
        endfor
    endif
endfunction


"for show no user whitespaces
Plugin 'bronson/vim-trailing-whitespace'
map <leader><space> :FixWhitespace<cr>

"for auto format code
Plugin 'Chiel92/vim-autoformat'
noremap <C-F8> :Autoformat<CR><CR>
let g:formatprg_c = "astyle"
let g:formatprg_args_c = "-A3"

"##########语法检查##########"
Plugin 'scrooloose/syntastic'
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_check_on_open=0 "在打开文件的时候检查
let g:syntastic_enable_highlighting = 0
let g:syntastic_enable_balloons = 1
let g:syntastic_mode_map      = {'mode': 'active',
            \'active_filetypes':  ['py','pyx','h','c','cpp','cc'],
            \'passive_filetypes': ['html', 'css', 'xhtml', 'eruby']
            \}

" Airline output for tmux
Plugin 'edkolev/tmuxline.vim'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts=0
let g:tmuxline_powerline_separators = 0
let g:tmuxline_preset = 'full'

"括号显示增强
Plugin 'kien/rainbow_parentheses.vim'
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

" Brief help
" :PluginList - list configured bundles
" :PluginInstall(!) - install(update) bundles
" :PluginSearch(!) foo - search(or refresh cache first) for foo
" :PluginClean(!) - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Plugin command are not allowed..

if iCanHazVundle == 0
  echo "Installing Plugins, please ignore key map error messages"
  echo ""
  :PluginInstall
endif
