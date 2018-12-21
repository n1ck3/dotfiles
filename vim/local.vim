" colorscheme zenburn
" colorscheme neverland

" Set relative linenumbers
set number relativenumber

" Fold everything from start
set foldlevel=0

" Disable line wrapping from start
set tw=0

" Show line number plz
set number

" Make mouse available and stuff
set mouse=a

" Make sure we have nice and wide tabs for arduino
autocmd FileType python
  \ setlocal sw=4 |
  \ setlocal ts=4 |
  \ setlocal sts=4

" Make sure we have nice and wide tabs for arduino
autocmd FileType arduino
  \ setlocal sw=4 |
  \ setlocal ts=4 |
  \ setlocal sts=4

" Polybar dosini jazz ;(
autocmd FileType dosini
  \ setlocal commentstring=;\ %s

set tabstop=4
set shiftwidth=4
set softtabstop=4

" Fix automatic syntax highlighting for saltstack files
au BufReadPost *.sls set syntax=yaml

" Unmap ctrl z splitting
unmap <c-z>

" Remap zR and zM for folding madness
nnoremap zR zRzz
nnoremap zM zMzz

" Mappings for Commentary, yeah!
nmap ö :Commentary<CR>
vmap ö :Commentary<CR>gv

" Make sure we are loading plugins from <vim-folder>/plugin
let &rtp.='/.vim/plugin/'

" Reset default modelines parameter
set modelines=5

" Make sure to use the bg color of the running terminal
hi Normal ctermbg=NONE
hi NonText ctermbg=NONE
