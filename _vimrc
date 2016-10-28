set nocompatible

set guifont=FuraCode_NF:h11:cANSI:qDRAFT
"set guifont=Monaco:h10:b
"set guifont=ProFontWindows_NF:h14:cANSI:qDRAFT
"set guifont=Anonymous_Pro:h12:cANSI
"set guifont=PragmataPro:h12
set go=-t
if has("win32") || has("win64") || has("win16")
  "I do other stuff in here...

  "Then only inside this if block for windows, I test the shell value
  "On windows, if called from cygwin or msys, the shell needs to be changed to cmd.exe
  if &shell=~#'bash$'
    set shell=$COMSPEC " sets shell to correct path for cmd.exe
  endif
endif

set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif

cnoremap %% <C-R>=expand('%:h').'/'<cr>
let mapleader=","
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

set hidden
set cursorline

set nowrap
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
retab
set backspace=indent,eol,start
set autoindent
set smartindent
set copyindent
set number
set numberwidth=1
set shiftround
set showmatch
set showcmd
set ignorecase
set smartcase
set incsearch
set smarttab
set hlsearch
set nobackup
set noswapfile
set encoding=utf-8
set fileencoding=utf-8
set autochdir " new files are saved automatically in dir of current file

filetype plugin indent on
filetype plugin on

syntax on
syntax enable
set list
"set listchars=tab:!.,trail:.,extends:#,nbsp:.
set listchars=eol:⏎,tab:».,trail:.,extends:✄,nbsp:.
set mouse=a
set conceallevel=2

set linespace=0
set guicursor=a:blinkon0  " Disable cusor blink

vmap Q gq
nmap Q gqap

nnoremap j gj
nnoremap k gk

" nmap <leader><leader> <C-^>

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

nmap <silent> <leader><SPACE> :nohlsearch<CR>

if exists('+shellslash')
  set shellslash
endif

call plug#begin('~/vimfiles/plugged')

Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-surround'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'altercation/vim-colors-solarized'
"Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-dispatch'
Plug 'scrooloose/syntastic'
Plug 'godlygeek/tabular'
"Plug 'vim-scripts/Conque-Shell'
Plug 'jewes/Conque-Shell'
"Plug 'LucHermitte/lh-cpp'
"Plug 'OmniSharp/omnisharp-vim'
Plug 'tpope/vim-dispatch'
Plug 'wesQ3/vim-windowswap'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-shell'
Plug 'xolox/vim-notes'
Plug 'OrangeT/vim-csharp'
Plug 'nanotech/jellybeans.vim'
Plug 'flazz/vim-colorschemes'
Plug 'Konfekt/FastFold'
Plug 'Shougo/neocomplete.vim'
Plug 'tpope/vim-ragtag'
Plug 'mattn/emmet-vim'
Plug 'ervandew/supertab'
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'junegunn/rainbow_parentheses.vim'
" Plug 'kien/rainbow_parentheses.vim'
"Plug 'luochen1990/rainbow'
Plug 'Valloric/YouCompleteMe'
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}
Plug 'tpope/vim-fugitive'
Plug 'cohama/agit.vim'
Plug 'airblade/vim-gitgutter'
Plug 'gregsexton/gitv'
Plug 'justinmk/vim-gtfo'
Plug 'mhinz/vim-startify'
"Plug 'tpope/vim-commentary'
Plug 'plasticboy/vim-markdown'
"Plug 'tpope/vim-markdown'
"Plug 'jtratner/vim-flavored-markdown'
"Plug 'gabrielelana/vim-markdown'

" ---- general dev ----
Plug 'tacahiroy/ctrlp-funky'

" --- C++ -----
Plug 'octol/vim-cpp-enhanced-highlight'

" --- web dev plugins ---
Plug 'othree/html5.vim'
Plug 'gregsexton/matchtag'
Plug 'hail2u/vim-css3-syntax'
Plug 'ap/vim-css-color'
Plug 'pangloss/vim-javascript'
Plug 'jelera/vim-javascript-syntax'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'burnettk/vim-angular'
"Plug 'ternjs/tern_for_vim'
Plug 'othree/yajs.vim', { 'for': 'javascript' }

Plug 'easymotion/vim-easymotion'
Plug 'haya14busa/vim-signjk-motion'
"Plug 'kana/vim-operator-user'
"Plug 'haya14busa/vim-operator-flashy'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'vim-airline/vim-airline-themes'
Plug 'terryma/vim-multiple-cursors'
Plug 'tomasr/molokai'
Plug 'terryma/vim-expand-region'
Plug 'ryanoasis/vim-devicons'

" Go Programming language
Plug 'fatih/vim-go'
Plug 'garyburd/go-explorer'

" Rust
Plug 'rust-lang/rust.vim'

" web api
Plug 'mattn/webapi-vim'
" Realtime search/replace highlighting
Plug 'osyo-manga/vim-over'
" distraction free vim
"Plug 'junegunn/goyo.vim'

" theme
Plug 'kabbamine/yowish.vim'

" fixing errors
"Plug 'stefandtw/quickfix-reflector.vim' " didn't know how it works

"
"Plug 'ap/vim-buftabline' " -- airline does it

call plug#end()

nmap <F12> :NERDTreeToggle<CR>

set laststatus=2
augroup project
    autocmd!
    autocmd BufRead,BufNewFile *.h,*.c set filetype=c.doxygen
augroup END
"set completeopt=longest,menuone
set completeopt=preview,menuone
" inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
let g:ycm_global_ycm_extra_conf = '~/vimfiles/plugged/YouCompleteMe/.ycm_extra_conf.py'
hi Search gui=underline,bold guifg=yellow guibg=NONE
hi IncSearch gui=underline,bold guifg=yellow guibg=NONE
let g:vim_markdown_folding_disabled = 1
vnoremap <leader><F9> :!python<CR>
autocmd FileType python nnoremap <buffer> <F9> :exec '!python' shellescape(@%,1)<CR>
autocmd FileType ruby nnoremap <buffer> <F9> :exec '!ruby' shellescape(@%,1)<CR>
autocmd FileType go nnoremap <buffer> <F9> :exec '!go run' shellescape(@%,1)<CR>
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType php nnoremap <buffer> <F9> :exec '!php7' shellescape(@%,1)<CR>
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
" ctrlp configuration :
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" Notes configuration
let g:notes_directories = ['C:/devprojects/Freelancing/Notes']

" neocomplete configuration :

"Note: This option must be set in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'


" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'


" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif

" ultisnips configuration
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
"let g:UltiSnipsExpandTrigger="<C-e>"
" let g:UltiSnipsJumpForwardTrigger="<C-l>"
" let g:UltiSnipsJumpBackwardTrigger="<C-m>"
" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetsDirectories = ['~/vimfiles/UltiSnips/', '~/vimfiles/plugged/vim-snippets/UltiSnips']

" tpope vim-markdown configuration
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh', 'js', 'cpp', 'css']

" vim-markdown configuration
"let g:markdown_enable_spell_checking = 0
"let g:markdown_enable_conceal = 1
" vim-javascript configuration
let g:javascript_conceal_function       = "ƒ"
let g:javascript_conceal_null           = "ø"
let g:javascript_conceal_this           = "@"
let g:javascript_conceal_return         = "⇦"
let g:javascript_conceal_undefined      = "¿"
let g:javascript_conceal_NaN            = "ℕ"
let g:javascript_conceal_prototype      = "¶"
let g:javascript_conceal_static         = "•"
let g:javascript_conceal_super          = "Ω"
let g:javascript_conceal_arrow_function = "⇒"
let g:javascript_plugin_jsdoc = 1
" molokai configuration
let g:molokai_original = 1
" junegunn/rainbow_parentheses
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]
au VimEnter * RainbowParentheses
au BufEnter * RainbowParentheses
au Syntax * RainbowParentheses
" kien/rainbow_parentheses
" let g:rbpt_colorpairs = [
"     \ ['brown',       'RoyalBlue3'],
"     \ ['Darkblue',    'SeaGreen3'],
"     \ ['darkgray',    'DarkOrchid3'],
"     \ ['darkgreen',   'firebrick3'],
"     \ ['darkcyan',    'RoyalBlue3'],
"     \ ['darkred',     'SeaGreen3'],
"     \ ['darkmagenta', 'DarkOrchid3'],
"     \ ['brown',       'firebrick3'],
"     \ ['gray',        'RoyalBlue3'],
"     \ ['black',       'SeaGreen3'],
"     \ ['darkmagenta', 'DarkOrchid3'],
"     \ ['Darkblue',    'firebrick3'],
"     \ ['darkgreen',   'RoyalBlue3'],
"     \ ['darkcyan',    'SeaGreen3'],
"     \ ['darkred',     'DarkOrchid3'],
"     \ ['red',         'firebrick3'],
"     \ ]
" let g:rbpt_max = 16
" let g:rbpt_loadcmd_toggle = 0
" au VimEnter * RainbowParenthesesToggle
" au Syntax * RainbowParenthesesLoadRound
" au Syntax * RainbowParenthesesLoadSquare
" au Syntax * RainbowParenthesesLoadBraces

" rainbow configuration
" let g:rainbow_conf = {
"     \    'guifgs': ['darkorange3', 'seagreen3', 'firebrick',
"     \'brown', 'Darkblue', 'darkred', 'darkmagenta', 'darkcyan', 'darkgreen',
"     \'red', 'DarkOrchid3', 'gray', 'SpringGreen', 'CornflowerBlue'],
"     \    'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
"     \    'operators': '_,_',
"     \    'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
"     \    'separately': {
"     \        '*': {},
"     \        'tex': {
"     \            'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
"     \        },
"     \        'lisp': {
"     \            'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
"     \        },
"     \        'vim': {
"     \            'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
"     \        },
"     \        'html': {
"     \            'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
"     \        },
"     \        'css': 0,
"     \    }
"     \}
" let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle

" nerdtree-git-plugin
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }
" javascript-libraries-syntax
let g:used_javascript_libs = 'angularjs,angularui, jasmine'
" CtrlP-funky
nnoremap <Leader>fu :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>

" START - airline
" enable/disable displaying open splits per tab (only when tabs are opened). >
let g:airline#extensions#tabline#show_splits = 1
" enable/disable enhanced tabline. (c)
let g:airline#extensions#tabline#enabled = 1
"enable/disable displaying buffers with a single tab. (c)
let g:airline#extensions#tabline#show_buffers = 0

" END - airline
" vim devicons
let g:airline_powerline_fonts=1

" Conque-Shell
let g:ConqueTerm_PyExe = 'C:\Python27\python.exe'

"colorscheme
set background=dark

" colorscheme desert
" colorscheme vitamins
"colorscheme desert
"colorscheme base16-atelierestuary
if has('gui_running')
  colorscheme Monokai
else
  colorscheme CodeFactoryv3
endif

let g:pymode_lint_on_write = 1
" GitGutter
" if this flag is set to 1 gitgutter won't work on my machine
let g:gitgutter_async=0 
let g:gitgutter_realtime=1

" START -  nerdcommenter configs
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" END - nerdcommenter configs

" Theme customizations
hi Cursor ctermbg=Green guibg=Green
hi Normal ctermfg=White guifg=gray71

" don't highlight conceal
hi clear Conceal
