
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

"vim-note config
:let g:notes_directory = '/Users/matt/Documents/Resources/vim-notes/Notes'
:let g:notes_indexfile =  '/Users/matt/Documents/Resources/vim-notes/.config/index.pickle'
:let g:notes_tagsindex =  '/Users/matt/Documents/Resources/vim-notes/.config/index.tags'

highlight link notesRealURL Underlined
