call plug#begin()
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'itchyny/lightline.vim'
call plug#end()

set laststatus=2

colorscheme catppuccin-mocha

let g:lightline = {'colorscheme': 'catppuccin'}
