"Set Line Numbers
set number

"Set relative line numbers
set relativenumber

"Toggle relative line numbers in Insert Mode
"au InsertEnter * :set number
"au InsertLeave * :set relativenumber

"Set Ruler
set ruler

"Highlight current line
set cul

if has('gui_running')
  "Open with fullscreen
  set lines=999 columns=9999
endif

"Lines of history
 set history=700

"Set gui font
set guifont=Monaco

"Shows what you are typing as a command
set showcmd

"Ignore case during search
set ignorecase
"Highlight search results
set hlsearch
"Autoread when file is modified from outside
set autoread

"Move cursor to the matched word while searching
set incsearch
"Case sensitive only if Uppercase
set smartcase

"Match brackets
set showmatch
"How many tenths of a second to blink when matching brackets
"set match=2

"Filetype plugins ON indent ON
filetype plugin on
filetype indent on

"Syntax highlighting
syntax enable

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

" Cool tab completion stuff
set wildmenu
set wildmode=list:longest,full

" Enable mouse support in console
set mouse=a

"Save reaching to the Esc key
":inoremap jk <esc>

" Save your backups to a less annoying place than the current directory.
" Otherwise it saves it to ~/.vim-backup or . if all else fails.
if isdirectory('~/.vim-backup') == 0
  :silent !mkdir -p ~/.vim-backup >/dev/null 2>&1
endif
set backupdir=~/.vim-backup//,.

" Save your swp files to a less annoying place than the current directory.
" Otherwise it saves it to ~/.vim-swap, or .
if isdirectory($HOME . '/.vim-swap') == 0
  :silent !mkdir -p ~/.vim-swap >/dev/null 2>&1
endif
set directory=~/.vim-swap//,.

" Uncomment the following to have Vim jump to the last position when                                                       
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
"    \| exe "normal! g'\"" | endif
"endif
"Use '" to go to the line, use `" to go to the position

" Change directory to the last opened one
" Some plugins may not work correctly
set autochdir

" Switch to the open tab or window
" Applies only to sbuf?
set switchbuf=useopen,usetab

" Scroll offset
" While scrolling, there's a buffer of 3 lines to provide context
set scrolloff=3
