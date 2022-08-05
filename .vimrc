" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
" call plug#begin('~/.vim/plugged')

set textwidth=100
autocmd FileType python setlocal textwidth=88

" https://stackoverflow.com/a/1413352/2668831
function SetShellOptions()
  setlocal shiftwidth=2
  setlocal expandtab
  setlocal tabstop=2
endfunction

set viminfo='100,<1000,s200,h

autocmd FileType sh,bash call SetShellOptions()

execute pathogen#infect()
syntax on
filetype plugin indent on

" Set this so that `:term` will open the terminal pane below
set splitbelow
" Set this so that `:vert term` will open the terminal pane on the RHS
set splitright

" via https://unix.stackexchange.com/a/141104/89254
set foldmethod=indent   
set foldnestmax=10
set nofoldenable
set foldlevel=2
" Set this variable to 1 to fix files when you save them.
let g:ale_fix_on_save = 1

" Tone down the visual distraction of the 'sign gutter' from any linters
highlight clear ALEErrorSign
highlight clear ALEWarningSign
" Disable highlighting on code from any linters
let g:ale_set_highlights = 0

" Only run linters named in ale_linters settings.
let g:ale_linters_explicit = 1
