call plug#begin()

" Retro groove color scheme
Plug 'morhetz/gruvbox'

" EditorConfig plugin
Plug 'editorconfig/editorconfig-vim'

" Shows a git diff in the gutter
Plug 'airblade/vim-gitgutter'

" A Git wrapper so awesome, it should be illegal
Plug 'tpope/vim-fugitive'

" Quoting/Parenthesizing made simple
Plug 'tpope/vim-surround'

" Lean & mean status/tabline that's light as air
Plug 'vim-airline/vim-airline'

" The official theme repository for vim-airline
Plug 'vim-airline/vim-airline-themes'

" A general-purpose command-line fuzzy finder
Plug '/usr/local/opt/fzf'

" Vim sugar for the UNIX shell commands
Plug 'tpope/vim-eunuch'

" Wisely add 'end' in ruby
Plug 'tpope/vim-endwise'

" Configurations for editing Ruby files
Plug 'vim-ruby/vim-ruby'

" Ruby on Rails power tools
Plug 'tpope/vim-rails'

" An asynchronous linting and make framework
Plug 'neomake/neomake'

" Asynchronous completion framework for neovim
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" Run your tests at the speed of thought
Plug 'janko/vim-test'

" Send command from vim to a running tmux session
Plug 'jgdavey/tslime.vim'

call plug#end()

" defines the leader key
let mapleader = ','

" sets the gruvbox color scheme
colorscheme gruvbox

" sets the grucbox theme for the airline plugin
let g:airline_theme='base16_gruvbox_dark_hard'

" vim-test mappings
nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> t<C-f> :TestFile<CR>
nmap <silent> t<C-s> :TestSuite<CR>
nmap <silent> t<C-l> :TestLast<CR>
nmap <silent> t<C-g> :TestVisit<CR>

" hides fzf status line
if has('nvim') && !exists('g:fzf_layout')
  autocmd! FileType fzf
  autocmd  FileType fzf set laststatus=0 noshowmode noruler
    \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
endif

" enable deoplete on startup
let g:deoplete#enable_at_startup = 1

" run neomake when writing or reading a buffer, and on changes in insert and
" normal mode (after 500ms; no delay when writing)
call neomake#configure#automake('nrwi', 500)

" display line numbers
set number

" highlight current line
set cursorline

" highlight curent column
set cursorcolumn
