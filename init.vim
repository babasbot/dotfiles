call plug#begin()

Plug '/usr/local/opt/fzf'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'airblade/vim-gitgutter'
Plug 'editorconfig/editorconfig-vim'
Plug 'neomake/neomake'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-surround'
Plug 'vim-ruby/vim-ruby'

call plug#end()

let g:deoplete#enable_at_startup = 1
let mapleader = ','

set cursorcolumn
set cursorline
set number

" call neomake when writing or reading a buffer, and on changes in insert and
" normal mode (after 500ms; no delay when writing)
call neomake#configure#automake('nrwi', 500)
