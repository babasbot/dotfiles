call plug#begin()

Plug '/usr/local/opt/fzf'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Yggdroot/indentLine'
Plug 'airblade/vim-gitgutter'
Plug 'editorconfig/editorconfig-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'mileszs/ack.vim'
Plug 'neomake/neomake'
Plug 'phanviet/vim-monokai-pro'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-ruby/vim-ruby'
Plug 'vim-test/vim-test'

call plug#end()

" use the silver searcher with ack.vim
if executable('ag')
  let g:ackprg = 'ag --nogroup --nocolor --column'
endif

let g:deoplete#enable_at_startup = 1
let mapleader = ','

" vim-test mappings
nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> t<C-f> :TestFile<CR>
nmap <silent> t<C-s> :TestSuite<CR>
nmap <silent> t<C-l> :TestLast<CR>
nmap <silent> t<C-g> :TestVisit<CR>

set cursorcolumn
set cursorline
set number
set termguicolors

set colorcolumn=80

colorscheme monokai_pro

" call neomake when writing or reading a buffer, and on changes in insert and
" normal mode (after 500ms; no delay when writing)
call neomake#configure#automake('nrwi', 500)
