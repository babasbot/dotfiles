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

call plug#end()

" sets the grucbox theme for the airline plugin
let g:airline_theme='base16_gruvbox_dark_hard'

" hides fzf status line
if has('nvim') && !exists('g:fzf_layout')
  autocmd! FileType fzf
  autocmd  FileType fzf set laststatus=0 noshowmode noruler
    \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
endif

" display line numbers
set number

" highlight current line
set cursorline
