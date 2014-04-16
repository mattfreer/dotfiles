
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

" change the mapleader from \ to ,
let mapleader=","

autocmd BufWritePre * :%s/\s\+$//e
syntax on
let g:ragtag_global_maps = 1

"Use Node.js for JavaScript interpretation
let $JS_CMD='node'

" Mimic the functionality of Ctrl-N (word-completion)
inoremap ;/ <C-N>

"Allow j and k to be used in the word completion menu
inoremap <expr> j ((pumvisible())?("\<C-n>"):("j"))
inoremap <expr> k ((pumvisible())?("\<C-p>"):("k"))

nmap <leader>z :tabedit %<CR>
nmap <leader>n :set number!<CR>
nmap <leader>t :NERDTree<CR>
nmap <leader>q :q<CR>

" Find next/last occurrence of word
nmap <leader>f <S-*>
nmap <leader>d <S-#>

" Mimic the functionality of Ctrl-W (split navigation)
nmap <leader>w <C-W>

" Mimic the functionality of Ctrl-R (redo)
nmap <leader>r <C-R>

" Mimic the functionality of $a (go to end of line, and enter insert mode)
nnoremap <leader>l $a
"
" Mimic the functionality of ^i (go to start of line, and enter insert mode)
nnoremap <leader>h ^i

"find the next occurrence of ")", go to it, and enter insert mode
nnoremap <leader>( /)<Enter>i

"find the next occurrence of "{", go to it, and enter insert mode
nnoremap <leader>{ /{<Enter>a

"find the next occurrence of "}", go to it, and enter insert mode
nnoremap <leader>} /}<Enter>i

"find the next occurrence of "[", go to it, and enter insert mode
nnoremap <leader>[ /[<Enter>a

"find the next occurrence of "]", go to it, and enter insert mode
nnoremap <leader>] /]<Enter>i

"Jump backward by words (no punctuation) and enter insert mode
nnoremap <leader>b <S-b>i

" Mimic the functionality of the Escape key
inoremap ;l <Esc>

" Mimic the functionality of the Escape key
vnoremap ;l <Esc>

" Select to end of line
vnoremap <leader>l $

" Select to start of line
vnoremap <leader>h ^

" From Insert mode, escape to Normal mode and save
inoremap ;k <Esc>:update<Cr>

" From Insert mode, escape to Normal mode, save and return to Insert mode
inoremap ;j <C-O>:update<Cr>

" From Normal mode, save and return to Normal mode
nnoremap ;j :update<CR>


