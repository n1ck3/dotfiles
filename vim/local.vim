" colorscheme zenburn
" colorscheme neverland

" Fold everything from start
set foldlevel=0

" Disable line wrapping from start
set tw=0

" Show line number plz
set number

" Make mouse available and stuff
set mouse=a

" Make sure we have nice and wide tabs for arduino
autocmd FileType arduino
  \ setlocal sw=4 |
  \ setlocal ts=4 |
  \ setlocal sts=4
