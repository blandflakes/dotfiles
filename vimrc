" Highlight words as they are tped
set incsearch
" Highlight search results
set hlsearch
" Make search case insensitive
set ignorecase
" ...Unless we type cased
set smartcase
" Make cursor jump to match when inserting a brace
set showmatch

" Tabs = 2 spaces
set tabstop=2
" Allow backspacing over auto indentation, line breaks,
" and start of an insert
set backspace=indent,eol,start
" Automatically copy indentation from previous line
set autoindent
" Make indent copy characters used to indent previous line
set copyindent
" Show line numbers
set number
" Show ruler (location within line and document)
set ruler
" Indent operations should move 2 spaces
set shiftwidth=2
" Move indented items to the next multiple of shiftwidth
set shiftround
" Use shiftwidth for tab width
set smarttab
" Use spaces instead of tabs
set expandtab

" Expand history
set history=100
" Increase number of undo levels
set undolevels=1000
" Flash instead of beeping
set visualbell
" Disable error bells
set noerrorbells
" Disable backups
set nobackup
" Disable swap file
set noswapfile

execute pathogen#infect()
syntax on
filetype on
filetype plugin indent on

" I would expect to need background=light here for the light bg, but dark
" does it.
set background=dark
colorscheme solarized

" Use w!! to write to a file that needs sudo
cnoreabbrev <expr> w!!
                \((getcmdtype() == ':' && getcmdline() == 'w!!')
                \?('!sudo tee % >/dev/null'):('w!!'))
" Avoid having to reach up to the escape key.
imap jj <Esc>

" Clojure-specific settings
let g:clojure_fuzzy_indent = 1
let g:clojure_align_multiline_strings = 1
let g:clojure_align_subforms = 1

" Idris-specific settings
let g:idris_indent_if = 3
let g:idris_indent_case = 5
let g:idris_indent_let = 4
let g:idris_indent_where = 6
let g:idris_indent_do = 3
let g:idris_indent_rewrite = 8

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
