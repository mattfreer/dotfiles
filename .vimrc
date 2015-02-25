
filetype on
filetype off

if isdirectory(expand("~/.vim"))
  execute pathogen#infect()
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
set iskeyword+=-

"show all characters that aren't whitespace
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set list

" highlight margin after specified textwidth
set colorcolumn=72

set background=dark
colorscheme base16-default

"always show file name at bottom of window
set ls=2

" change the mapleader from \ to ,
let mapleader=","

" enable jsx highlighting in .js files
let g:jsx_ext_required = 0

" lint JavaScript files after saving it
let jshint2_save = 1

autocmd BufWritePre * :%s/\s\+$//e
syntax on

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

"find the next occurrence of "(", go to it, and enter insert mode
nnoremap <leader>( /(<Enter>a

"find the next occurrence of ")", go to it, and enter insert mode
nnoremap <leader>) /(<Enter>%i,<Space>

"find the next occurrence of "{", go to it, and enter insert mode
nnoremap <leader>{ /{<Enter>a

"find the next occurrence of "}", go to it, and enter insert mode
nnoremap <leader>} /{<Enter>%O

"find the next occurrence of "[", go to it, and enter insert mode
nnoremap <leader>[ /[<Enter>a

"find the next occurrence of "]", go to it, and enter insert mode
nnoremap <leader>] /[<Enter>%i,<Space>

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

" Format
vnoremap ff =

" Search and replace for visualy selected text
vnoremap <leader>s y:%s/<c-r>"/

" Grep
vnoremap <leader>g y:lvimgrep /<c-r>"/jg

" From Insert mode, escape to Normal mode and save
inoremap ;k <Esc>:update<Cr>

" From Insert mode, escape to Normal mode, save and return to Insert mode
inoremap ;j <C-O>:update<Cr>

" From Normal mode, save and return to Normal mode
nnoremap ;j :update<CR>
"
" From Normal mode, Ctrl-H mapping for vim-howdoi plugin
"nnoremap <leader>k <C-h>
nmap ;, <C-h>

" GitGutter Mappings
let g:gitgutter_map_keys = 0
nmap <leader>g :GitGutterNextHunk<CR>
nmap <leader>G :GitGutterPrevHunk<CR>
nmap <Leader>gu :GitGutterRevertHunk<CR>

"customization of vimdiff view:
" turn off code folding
" turn on wrapping for long lines
" add mapping for jumping to next change
function! Diff()
  if &diff
    set foldlevel=999999
    :windo setl wrap
    noremap <space> ]cz.
  endif
endfunction
