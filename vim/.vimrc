
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

syntax enable
set background=dark
colorscheme solarized

"always show file name at bottom of window
set ls=2

" change the leader to <space>
map <space> <leader>

" enable jsx highlighting in .js files
let g:jsx_ext_required = 0

" lint javascript with jsxhint
let g:syntastic_javascript_checkers = ['jshint']

" disable markdown folding
let g:vim_markdown_folding_disabled=1

autocmd BufWritePre * :%s/\s\+$//e
syntax on

"Use Node.js for JavaScript interpretation
let $JS_CMD='node'

" Mimic the functionality of Ctrl-N (word-completion)
inoremap ;/ <C-N>

"Allow Ctrl-j and Ctrl-k to be used in the word completion menu
inoremap <expr> <C-j> ((pumvisible())?("\<C-n>"):("j"))
inoremap <expr> <C-k> ((pumvisible())?("\<C-p>"):("k"))

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
nnoremap U <C-R>

"Jump backward by words (no punctuation) and enter insert mode
nnoremap <leader>b <S-b>i

" Mimic the functionality of the Escape key
inoremap fd <Esc>

" Mimic the functionality of the Escape key
vnoremap fd <Esc>

" Format
vnoremap ff =

" Search and replace for visualy selected text
vnoremap <leader>s y:%s/<c-r>"/

" Grep
vnoremap <leader>g y:lvimgrep /<c-r>"/jg

" From Insert mode, escape to Normal mode and save
inoremap <leader>fs <Esc>:update<Cr>

" From Normal mode, save and return to Normal mode
nnoremap <leader>fs :update<CR>
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
