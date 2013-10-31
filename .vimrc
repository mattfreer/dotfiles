
filetype on
filetype off

if isdirectory(expand("~/.vim"))
  execute pathogen#infect()
  colors zenburn
endif

filetype plugin indent on

set background=light
set autoindent
set smartindent
set shiftwidth=2
set tabstop=2
set shiftwidth=2
set expandtab
set incsearch
set ruler
set vb t_vb=
set incsearch
set number
set spell

"always show file name at bottom of window
set ls=2

autocmd BufWritePre * :%s/\s\+$//e
syntax on
let g:ragtag_global_maps = 1

"Use Node.js for JavaScript interpretation
let $JS_CMD='node'

colors zenburn
