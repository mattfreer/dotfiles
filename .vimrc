
filetype on
filetype off

if isdirectory(expand("~/.vim"))
  execute pathogen#infect()
  colors zenburn
endif

filetype plugin indent on

set background=dark
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
set hlsearch

"always show file name at bottom of window
set ls=2

autocmd BufWritePre * :%s/\s\+$//e
syntax on
let g:ragtag_global_maps = 1

"Use Node.js for JavaScript interpretation
let $JS_CMD='node'

"Allow j and k to be used in the word completion menu
inoremap <expr> j ((pumvisible())?("\<C-n>"):("j"))
inoremap <expr> k ((pumvisible())?("\<C-p>"):("k"))

nmap <leader>z :tabedit %<CR>
