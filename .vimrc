
filetype on
filetype off

call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
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

"show line-numbers
set number

"always show file name at bottom of window
set ls=2

autocmd BufWritePre * :%s/\s\+$//e
syntax on
let g:ragtag_global_maps = 1

"Use Node.js for JavaScript interpretation
let $JS_CMD='node'

"Specifies location of marvim macro repository
let marvim_store = '/Users/matt/.vim/.marvim'
let marvim_find_key = '<Space>' " change find key from <F2> to 'space'
let marvim_store_key = 'ms'     " change store key from <F3> to 'ms'
let marvim_prefix = 0           " disable default syntax based prefix

