
filetype off
filetype on

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
autocmd BufWritePre * :%s/\s\+$//e
syntax on


