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
" VimShell does not work if this is set
"set autochdir " new files are saved automatically in dir of current file
set wildmenu
set wildmode=list:full,full

filetype plugin indent on
filetype plugin on

syntax on
syntax enable
set list
"set listchars=tab:!.,trail:.,extends:#,nbsp:.
set listchars=eol:⏎,tab:».,trail:.,extends:✄,nbsp:.
set mouse=a
set conceallevel=2
set textwidth=0
set wrapmargin=0

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

" +---------------------------------------------+
" |          +      MISC.   +                   |
" +---------------------------------------------+
Plug 'mattn/webapi-vim'
Plug 'tpope/vim-dispatch'
Plug 'wesQ3/vim-windowswap'
Plug 'mhinz/vim-startify'
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-surround'
Plug 'godlygeek/tabular'
Plug 'Konfekt/FastFold'
Plug 'justinmk/vim-gtfo'

" +---------------------------------------------+
" |   + Navigation/Movement/Editin  +           |
" +---------------------------------------------+
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
"Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline'
Plug 'terryma/vim-multiple-cursors'
Plug 'easymotion/vim-easymotion'
Plug 'haya14busa/vim-signjk-motion'
Plug 'terryma/vim-expand-region'
" Realtime search/replace highlighting
Plug 'osyo-manga/vim-over'
"Plug 'kana/vim-operator-user'
"Plug 'haya14busa/vim-operator-flashy'

" +---------------------------------------------+
" |      +  Source Code Mgmt. +                 |
" +---------------------------------------------+
Plug 'tpope/vim-fugitive'
Plug 'cohama/agit.vim'
Plug 'airblade/vim-gitgutter'
Plug 'gregsexton/gitv'
Plug 'xuyuanp/nerdtree-git-plugin'
"
" +---------------------------------------------+
" |       +      MARKDOWN   +                   |
" +---------------------------------------------+
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
"Plug 'tpope/vim-markdown'
"Plug 'jtratner/vim-flavored-markdown'
"Plug 'gabrielelana/vim-markdown', { 'for': 'markdown' }
"
" +---------------------------------------------+
" |       + TODOs and notes +                   |
" +---------------------------------------------+
Plug 'xolox/vim-notes'
Plug 'Dimercel/todo-vim'

" +---------------------------------------------+
" |    + Rainbow Parenthesis +                  |
" +---------------------------------------------+
Plug 'junegunn/rainbow_parentheses.vim'
" Plug 'kien/rainbow_parentheses.vim'
"Plug 'luochen1990/rainbow'

" +---------------------------------------------+
" |                 + Shells +                  |
" +---------------------------------------------+
Plug 'jewes/Conque-Shell'
Plug 'Shougo/vimproc.vim', { 'do': 'mingw32-make' }
Plug 'Shougo/vimshell.vim'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-shell'

" +---------------------------------------------+
" |            + General Dev +                  |
" +---------------------------------------------+
Plug 'ervandew/supertab'
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdcommenter'
"Plug 'tpope/vim-commentary'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'scrooloose/syntastic'
"Plug 'Shougo/neocomplete.vim' " obsoleted by YouCompleteMe
Plug 'Valloric/YouCompleteMe', { 'for': ['c', 'cpp', 'javascript', 'go',
                                        \'rust', 'cs', 'python',
                                        \'typescript', 'php', 'objc', 'objcpp']
                                \}
Plug 'tacahiroy/ctrlp-funky'
" fixing errors
"Plug 'stefandtw/quickfix-reflector.vim' " didn't know how it works

" +---------------------------------------------+
" |                 +  C++   +                  |
" +---------------------------------------------+
Plug 'Shougo/echodoc.vim'
Plug 'octol/vim-cpp-enhanced-highlight', { 'for': 'cpp' }
"Plug 'LucHermitte/lh-cpp'

" +---------------------------------------------+
" |                 +  C#    +                  |
" +---------------------------------------------+
" Plug 'OmniSharp/Omnisharp-vim', {'for': 'cs'}
Plug 'OrangeT/vim-csharp', {'for' : 'cs'}

" +---------------------------------------------+
" |                 +  JAVA  +                  |
" +---------------------------------------------+
Plug 'artur-shaik/vim-javacomplete2', {'for': 'java'}

" +---------------------------------------------+
" |                 +  WEB DEV +                |
" +---------------------------------------------+
Plug 'tpope/vim-ragtag', {'for': 'html'}
Plug 'mattn/emmet-vim', {'for': 'html'}
Plug 'othree/html5.vim', { 'for': 'html' }
Plug 'gregsexton/matchtag'
Plug 'hail2u/vim-css3-syntax', { 'for': 'css' }
Plug 'ap/vim-css-color', { 'for': 'css' }
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'jelera/vim-javascript-syntax', { 'for': 'javascript' }
Plug 'othree/javascript-libraries-syntax.vim', { 'for': 'javascript' }
Plug 'burnettk/vim-angular', { 'for': 'javascript' }
"Plug 'ternjs/tern_for_vim'
Plug 'othree/yajs.vim', { 'for': 'javascript' }
Plug 'heavenshell/vim-jsdoc', {'for': 'javascript'}

" +---------------------------------------------+
" |                  +   GO  +                  |
" +---------------------------------------------+
Plug 'fatih/vim-go', {'for': 'go'}
Plug 'garyburd/go-explorer', {'for': 'go'}

" +---------------------------------------------+
" |                +   RUST  +                  |
" +---------------------------------------------+
Plug 'rust-lang/rust.vim', {'for': 'rust'}
Plug 'timonv/vim-cargo', {'for': 'rust'}

" +---------------------------------------------+
" |                + THEMES  +                  |
" +---------------------------------------------+
Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline-themes'
Plug 'nanotech/jellybeans.vim'
Plug 'flazz/vim-colorschemes'
Plug 'godlygeek/csapprox'
Plug 'tomasr/molokai'
Plug 'ryanoasis/vim-devicons'
Plug 'kabbamine/yowish.vim'


"Plug 'gelguy/Cmd2.vim'
" distraction free vim
"Plug 'junegunn/goyo.vim'

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

" "Note: This option must be set in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" " Disable AutoComplPop.
" let g:acp_enableAtStartup = 0
" " Use neocomplete.
" let g:neocomplete#enable_at_startup = 1
" " Use smartcase.
" let g:neocomplete#enable_smart_case = 1
" " Set minimum syntax keyword length.
" let g:neocomplete#sources#syntax#min_keyword_length = 3
" let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'


" Define keyword.
" if !exists('g:neocomplete#keyword_patterns')
"     let g:neocomplete#keyword_patterns = {}
" endif
" let g:neocomplete#keyword_patterns['default'] = '\h\w*'


" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType java setlocal omnifunc=javacomplete#Complete

" Enable heavy omni completion.
" if !exists('g:neocomplete#sources#omni#input_patterns')
"   let g:neocomplete#sources#omni#input_patterns = {}
" endif

"  START - startify configuration
let g:startify_custom_header = [
    \ '           ____  _____  ______ _      _____ _    _          _   _ _____ ' ,
    \ '     /\   |  _ \|  __ \|  ____| |    / ____| |  | |   /\   | \ | |_   _|' ,
    \ '    /  \  | |_) | |  | | |__  | |   | |  __| |__| |  /  \  |  \| | | |  ' ,
    \ '   / /\ \ |  _ <| |  | |  __| | |   | | |_ |  __  | / /\ \ | . ` | | |  ' ,
    \ '  / ____ \| |_) | |__| | |____| |___| |__| | |  | |/ ____ \| |\  |_| |_ ' ,
    \ ' /_/    \_\____/|_____/|______|______\_____|_|  |_/_/    \_\_| \_|_____|' ,
    \ '                                                                        ' ,
    \ '                                                                        ' ,
    \ ]
"  END startify configuration

" ultisnips configuration
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
"let g:UltiSnipsExpandTrigger="<C-e>"
" let g:UltiSnipsJumpForwardTrigger="<C-l>"
" let g:UltiSnipsJumpBackwardTrigger="<C-m>"
" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" YouCompleteMe configuration
let g:ycm_global_ycm_extra_conf = '~/vimfiles/.ycm_extra_conf.py'
let g:ycm_error_symbol = '⌦'
let g:ycm_warning_symbol = '⌦'

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
let g:markdown_enable_spell_checking = 0
let g:markdown_enable_conceal = 1
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

" START - vim-jsDoc configuration
nmap <silent> <leader>gd <Plug>(jsdoc)
" END - vim-jsdoc configuration
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
" START NERDTree configuration
let NERDTreeIgnore = ['\.pyc$']
" END NERDTree configuration
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
let g:used_javascript_libs = 'angularjs,angularui,angularuirouter,jasmine'

" START - CtrlP configuration
let g:ctrlp_extensions = ['tag', 'buffertag', 'quickfix', 'dir',
                          \ 'line', 'changes', 'mixed', 'bookmarkdir']

"END CtrlP configuration

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

" START OmniSharp configuration
" let g:OmniSharp_selector_ui = 'ctrlp'  " Use ctrlp.vim
" let g:OmniSharp_server_type = 'roslyn'

"Move the preview window (code documentation) to the bottom of the screen, so it doesn't move the code!
"You might also want to look at the echodoc plugin
" set splitbelow

" Get Code Issues and syntax errors
" let g:syntastic_cs_checkers = ['syntax', 'semantic', 'issues']
" If you are using the omnisharp-roslyn backend, use the following
" let g:syntastic_cs_checkers = ['code_checker']
" augroup omnisharp_commands
"     autocmd!
"
"     "Set autocomplete function to OmniSharp (if not using YouCompleteMe completion plugin)
"     autocmd FileType cs setlocal omnifunc=OmniSharp#Complete
"
"     " Synchronous build (blocks Vim)
"     "autocmd FileType cs nnoremap <F5> :wa!<cr>:OmniSharpBuild<cr>
"     " Builds can also run asynchronously with vim-dispatch installed
"     autocmd FileType cs nnoremap <leader>b :wa!<cr>:OmniSharpBuildAsync<cr>
"     " automatic syntax check on events (TextChanged requires Vim 7.4)
"     autocmd BufEnter,TextChanged,InsertLeave *.cs SyntasticCheck
"
"     " Automatically add new cs files to the nearest project on save
"     autocmd BufWritePost *.cs call OmniSharp#AddToProject()
"
"     "show type information automatically when the cursor stops moving
"     autocmd CursorHold *.cs call OmniSharp#TypeLookupWithoutDocumentation()
"
"     "The following commands are contextual, based on the current cursor position.
"
"     autocmd FileType cs nnoremap gd :OmniSharpGotoDefinition<cr>
"     autocmd FileType cs nnoremap <leader>fi :OmniSharpFindImplementations<cr>
"     autocmd FileType cs nnoremap <leader>ft :OmniSharpFindType<cr>
"     autocmd FileType cs nnoremap <leader>fs :OmniSharpFindSymbol<cr>
"     autocmd FileType cs nnoremap <leader>fu :OmniSharpFindUsages<cr>
"     "finds members in the current buffer
"     autocmd FileType cs nnoremap <leader>fm :OmniSharpFindMembers<cr>
"     " cursor can be anywhere on the line containing an issue
"     autocmd FileType cs nnoremap <leader>x  :OmniSharpFixIssue<cr>
"     autocmd FileType cs nnoremap <leader>fx :OmniSharpFixUsings<cr>
"     autocmd FileType cs nnoremap <leader>tt :OmniSharpTypeLookup<cr>
"     autocmd FileType cs nnoremap <leader>dc :OmniSharpDocumentation<cr>
"     "navigate up by method/property/field
"     autocmd FileType cs nnoremap <C-K> :OmniSharpNavigateUp<cr>
"     "navigate down by method/property/field
"     autocmd FileType cs nnoremap <C-J> :OmniSharpNavigateDown<cr>
"
" augroup END
" this setting controls how long to wait (in ms) before fetching type / symbol information.
" set updatetime=500
" Remove 'Press Enter to continue' message when type information is longer than one line.
"set cmdheight=2

" Contextual code actions (requires CtrlP or unite.vim)
" nnoremap <leader><space> :OmniSharpGetCodeActions<cr>
" Run code actions with text selected in visual mode to extract method
" vnoremap <leader><space> :call OmniSharp#GetCodeActions('visual')<cr>

" rename with dialog
" nnoremap <leader>nm :OmniSharpRename<cr>
" nnoremap <F2> :OmniSharpRename<cr>
" rename without dialog - with cursor on the symbol to rename... ':Rename newname'
" command! -nargs=1 Rename :call OmniSharp#RenameTo("<args>")

" Force OmniSharp to reload the solution. Useful when switching branches etc.
" nnoremap <leader>rl :OmniSharpReloadSolution<cr>
" nnoremap <leader>cf :OmniSharpCodeFormat<cr>
" Load the current .cs file to the nearest project
" nnoremap <leader>tp :OmniSharpAddToProject<cr>

" (Experimental - uses vim-dispatch or vimproc plugin) - Start the omnisharp server for the current solution
" nnoremap <leader>ss :OmniSharpStartServer<cr>
" nnoremap <leader>sp :OmniSharpStopServer<cr>

" Add syntax highlighting for types and interfaces
" nnoremap <leader>th :OmniSharpHighlightTypes<cr>
" Enable snippet completion, requires completeopt-=preview
" let g:OmniSharp_want_snippet=1
"Super tab settings - uncomment the next 4 lines
" let g:SuperTabDefaultCompletionType = 'context'
" let g:SuperTabContextDefaultCompletionType = "<c-x><c-o>"
" let g:SuperTabDefaultCompletionTypeDiscovery = ["&omnifunc:<c-x><c-o>","&completefunc:<c-x><c-n>"]
" let g:SuperTabClosePreviewOnPopupClose = 1
"Move the preview window (code documentation) to the bottom of the screen, so it doesn't move the code!
"You might also want to look at the echodoc plugin
set splitbelow

"Showmatch significantly slows down omnicomplete
"when the first match contains parentheses.
" set noshowmatch

" END OmniSharp configuration

" START todo configuration"
nmap <leader>td :TODOToggle<cr>
" END todo configuration

" Theme customizations
hi Cursor ctermbg=Green guibg=Green
hi Normal ctermfg=White guifg=gray71

" don't highlight conceal
hi clear Conceal

