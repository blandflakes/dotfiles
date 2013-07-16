set incsearch
set ignorecase
set smartcase
set showmatch
set hlsearch

set nowrap
set tabstop=2
set backspace=indent,eol,start
set autoindent
set copyindent
set number
set shiftwidth=2
set shiftround
set smarttab
set expandtab

set history=100
set undolevels=1000
set notitle
set visualbell
set noerrorbells
set nobackup
set noswapfile
set ruler

syntax enable

"I would expect to need background=light here for the light bg, but dark
"does it.
set background=dark
colorscheme solarized

"clears search buffer with ,/
nmap <silent> ,/ : nohlsearch<CR>

"use w!! to write to a file that needs sudo
cnoreabbrev <expr> w!!
                \((getcmdtype() == ':' && getcmdline() == 'w!!')
                \?('!sudo tee % >/dev/null'):('w!!'))

map ,hi :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">" . " FG:" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"fg#")

"avoid having to reach up to the escape key.
imap jj <Esc>
