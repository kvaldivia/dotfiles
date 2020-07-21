set hidden
set path+=**
set wildmenu
command! MakeTags !ctags -R .
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
Plug 'scrooloose/nerdtree'

" UI related
Plug 'chriskempson/base16-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Better Visual Guide
Plug 'Yggdroot/indentLine'
" syntax check
Plug 'w0rp/ale'
" Autocomplete
"if has('nvim')
"    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"else
"    Plug 'Shougo/deoplete.nvim'
"    Plug 'roxma/nvim-yarp'
"    Plug 'roxma/vim-hug-neovim-rpc'
"endif
let g:deoplete#enable_at_startup = 1
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
"Plug 'ncm2/ncm2'
"Plug 'roxma/nvim-yarp'
"Plug 'ncm2/ncm2-bufword'
"Plug 'ncm2/ncm2-path'
"Plug 'ncm2/ncm2-jedi'
" Formater
Plug 'Chiel92/vim-autoformat'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'mxw/vim-jsx'
Plug 'airblade/vim-gitgutter'
Plug 'SirVer/ultisnips'
Plug 'epilande/vim-es2015-snippets'
Plug 'epilande/vim-react-snippets'
Plug 'tpope/vim-fugitive'
Plug 'posva/vim-vue'
Plug 'arrufat/vala.vim'
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'majutsushi/tagbar'
Plug 'altercation/vim-colors-solarized'
Plug 'tomasr/molokai'
Plug 'zivyangll/git-blame.vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'https://git.drupalcode.org/project/vimrc.git', { 'branch': '8.x-1.x', 'rtp': 'bundle/vim-plugin-for-drupal' }
Plug 'vim-vdebug/vdebug'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'irrationalistic/vim-tasks'
"Plug 'Quramy/tsuquyomi'
Plug 'morhetz/gruvbox'
Plug 'lifepillar/vim-solarized8'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tweekmonster/django-plus.vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
"Plug 'lvht/phpcd.vim', { 'for': 'php', 'do': 'composer install' }

call plug#end()

set inccommand=split
set guifont=Fira\ Flott\ 12
set termguicolors
lua require'colorizer'.setup()

"<Vim snippets>
let g:UltiSnipsExpandTrigger="<C-b>"
"</Vim snippets>

"<COC configuration>
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <silent> gd :call CocAction('jumpDefinition', 'tab drop')<CR>
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
"</COC configuration>
nnoremap <C-p> :GFiles<CR>
nnoremap <A-p> :Files<CR>

filetype plugin indent on
syntax on
syntax enable
set background=dark
colorscheme solarized8_high

map <silent> <C-s> :NERDTreeToggle<CR>
map <silent> <C-d> :NERDTreeFocus<CR>
map <silent> <C-x> :NERDTreeFind<CR>
" Next result in vimgrep
map <silent> <C-n> :cnext<CR>
map <silent> <C-m> :cprev<CR>
map <silent> <C-j> :TagbarToggle<CR>

map <silent> , :ALENext<CR>
map <silent> ; :ALEPrevious<CR>

set number
set relativenumber
set hidden
set mouse=a
set noshowmode
set noshowmatch
" Turn off backup
set nobackup
set noswapfile
set nowritebackup
" Search configuration
set ignorecase                    " ignore case when searching
set smartcase                     " turn on smartcase
" Tab and Indent configuration
set expandtab
set tabstop=4
set shiftwidth=4
set clipboard+=unnamedplus
autocmd FileType javascript set shiftwidth=2 softtabstop=2 expandtab
autocmd FileType xml set shiftwidth=2 softtabstop=2 expandtab
autocmd FileType php set shiftwidth=2 softtabstop=2 expandtab
autocmd FileType html set shiftwidth=2 softtabstop=2 expandtab
autocmd FileType typescript set shiftwidth=2 softtabstop=2 expandtab
autocmd FileType typescript.tsx set shiftwidth=2 softtabstop=2 expandtab
autocmd FileType scss set shiftwidth=2 softtabstop=2 expandtab


" vim-autoformat
noremap <C-f> :Autoformat<CR>

" NCM2
"augroup NCM2
"    autocmd!
"    " enable ncm2 for all buffers
"    autocmd BufEnter * call ncm2#enable_for_buffer()
"    " :help Ncm2PopupOpen for more information
"    set completeopt=noinsert,menuone,noselect
"    " When the <Enter> key is pressed while the popup menu is visible, it only
"    " hides the menu. Use this mapping to close the menu and also start a new line.
"    inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")
"    " uncomment this block if you use vimtex for LaTex
"    " autocmd Filetype tex call ncm2#register_source({
"    "           \ 'name': 'vimtex',
"    "           \ 'priority': 8,
"    "           \ 'scope': ['tex'],
"    "           \ 'mark': 'tex',
"    "           \ 'word_pattern': '\w+',
"    "           \ 'complete_pattern': g:vimtex#re#ncm2,
"    "           \ 'on_complete': ['ncm2#on_complete#omni', 'vimtex#complete#omnifunc'],
"    "           \ })
"augroup END
" Ale
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 1
let g:ale_lint_on_enter = 1
let g:ale_fix_on_save = 0
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_linters = {'python': ['pylint']}
let g:ale_fixers = {'python': ['autopep8'], 'javascript': ['eslint', 'prettier'], 'php': ['php_cs_fixer'], 'typescript': ['prettier']}
" let g:ale_fixers = {'python': ['autopep8'], 'javascript': ['eslint', 'prettier'], 'xml': ['xmllint']}
" Airline
let g:airline_left_sep  = ''
let g:airline_right_sep = ''
let g:airline#extensions#ale#enabled = 1
let airline#extensions#ale#error_symbol = 'E:'
let airline#extensions#ale#warning_symbol = 'W:'
let g:airline_theme='molokai'



let g:jsx_ext_required = 0 " Allow JSX in normal JS files

autocmd BufWritePost * GitGutter

set wildignore+=**/node_modules/**
set wildignore+=**/build/**
let g:solarized_termcolors=256


" [[[xdebug]]]
" php
"let g:vdebug_options = {
"\    'port' : 900,
"\}
