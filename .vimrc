" === Basic Commands ===
syntax on
set number
set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set showmatch
set expandtab
set laststatus=2
set ttyfast
set nostartofline
set ignorecase
set smartcase
set nojoinspaces
set pastetoggle=<F2>
set scrolloff=0

" === Stats Line ===
set statusline=
set statusline +=%1*\ %n\ %*            "buffer number
set statusline +=%5*%{&ff}%*            "file format
set statusline +=%3*%y%*                "file type
set statusline +=%4*\ %<%F%*            "full path
set statusline +=%2*%m%*                "modified flag
set statusline +=%1*%=%5l%*             "current line
set statusline +=%2*/%L%*               "total lines
set statusline +=%1*%4v\ %*             "virtual column number
set statusline +=%2*0x%04B\ %*          "character under cursor

" === Key Mappings ===
imap jj <ESC>
map [ :tabp<CR>
map ] :tabn<CR>
" Disable arrow keys in normal, visual, select, operator pending, and insert
map <UP> <NOP>
map <DOWN> <NOP>
map <LEFT> <NOP>
map <RIGHT> <NOP>
imap <UP> <NOP>
imap <DOWN> <NOP>
imap <LEFT> <NOP>
imap <RIGHT> <NOP>

" === Visual Help ===
highlight OverLength ctermbg=darkgrey ctermfg=white guibg=#592929
match OverLength /\%81v.\+/
set cursorline
highlight clear CursorLine
highlight CursorLineNR term=bold cterm=NONE ctermfg=darkgrey ctermbg=grey gui=NONE guifg=darkgrey guibg=grey
set hlsearch
