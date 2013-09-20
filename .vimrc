execute pathogen#infect()

" Colorscheme settings.
syntax enable
"set t_Co=256
"set background=dark
"colorscheme solarized

" Font
set guifont=Source\ Code\ Pro\ Light:h12

" Encoding
set encoding=utf8

" Numbered lines.
set number

" Keep cursor away from edges of screen.
set so=14


" Highlight cursor line.
"augroup CursorLine
"  au!
"  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
"  au VimEnter,WinEnter,BufWinEnter * setlocal cursorcolumn
"  au WinLeave * setlocal nocursorline
"  au WinLeave * setlocal nocursorcolumn
"augroup END

" Control character highlighting.
set list listchars=tab:⇥⇥,eol:↵

" Tab settings.
set expandtab
set shiftwidth=2
set ts=4
set smarttab
set cindent
let indent_guides_enable_on_vim_startup = 1

" Make trailing whitespace annoyingly highlighted.
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
