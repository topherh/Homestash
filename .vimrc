call pathogen#infect()
"python is happiest here
set tabstop=4
set shiftwidth=4
set expandtab

"plugin nirvana
filetype plugin on
let b:match_ignorecase = 1
syntax on
"personal preferences
set hlsearch
set nowrap
set autoindent
set number
set ruler
set history=150
set termencoding=utf-8
set backspace=indent,eol,start
"not sure on this one
set bs=2
"locally set helper macros
nnoremap <silent> ,n :set number!<CR>
nnoremap <silent> ,l :set list!<CR>
nnoremap <silent> ,w :set wrap!<CR>
nnoremap <silent> ,p :set autoindent!<CR>
let @h = "yypVr"

"editor improvements
set helplang=en
colorscheme koehler
" Remove menu bar
set guioptions-=m
" Remove toolbar
set guioptions-=T

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NerdTree
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <silent> <C-\> :NERDTreeToggle<CR>
let g:netrw_list_hide = '.swp,\.swo,\.svn,\.pyo,\.pyc'
let g:netrw_liststyle = 3
let NERDTreeIgnore = ['\.vim$','\~$','\.sw[op]$','\.svn$','\.py[oc]$']
