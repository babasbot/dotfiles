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

" Display the indention levels with thin vertical lines
Plug 'Yggdroot/indentLine'

" Insert or delete brackets, parens, quotes in pair
Plug 'jiangmiao/auto-pairs'

" Run your favorite search tool from Vim
Plug 'mileszs/ack.vim'

" Javascript indentation and syntax support
Plug 'pangloss/vim-javascript'

" React syntax highlighting and indenting plugin
Plug 'maxmellon/vim-jsx-pretty'

" Typescript syntax files for Vim
Plug 'leafgarland/typescript-vim'

" React JSX syntax highlighting for vim and Typescript
Plug 'peitalin/vim-jsx-typescript'

" Syntax-highlighting plugin, auto-indent plugin, and filetype plugin
" for the ca65 assembly language
Plug 'maxbane/vim-asm_ca65'

call plug#end()

" defines the leader key
let mapleader = ','

" sets the gruvbox color scheme
colorscheme gruvbox

" sets the grucbox theme for the airline plugin
let g:airline_theme='base16_gruvbox_dark_hard'

" runs test commands in a tmux pane
let test#strategy = 'tslime'

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

" uses the silver searcher instead of ack
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" highlight .inc, .s files
filetype plugin indent on
augroup filetypedetect
  au BufNewFile,BufRead *.s,*.inc set ft=asm_ca65
augroup END

" sets the indent line color to grey
let g:indentLine_setColors=1

" enable deoplete on startup
let g:deoplete#enable_at_startup = 1

" Enables colorful config flag for vim-jsx-pretty
let g:vim_jsx_pretty_colorful_config = 1

" run neomake when writing or reading a buffer, and on changes in insert and
" normal mode (after 500ms; no delay when writing)
call neomake#configure#automake('nrwi', 500)

" configures the powerline font for the airline plugin
let g:airline_powerline_fonts = 1

" display line numbers
set number

" highlight current line
set cursorline

" highlight curent column
set cursorcolumn
