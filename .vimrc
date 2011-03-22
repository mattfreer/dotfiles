
filetype off
"filetype on

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



"Custom Mappings ----------------------------------------------------------

"This mapping uses <cword> to get the word under the cursor, and searches for
"it in the current directory and all subdirectories, opening the quickfix
"window when done:
map <F4> :execute "vimgrep /" . expand("<cword>") . "/jg **" <Bar> cw<CR>


"This mapping uses <cword> to get the word under the cursor, but also
"uses % to limit the search to the current file only:
command GREP :execute 'vimgrep /'.expand('<cword>').'/gj '.expand('%') | copen

