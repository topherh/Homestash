" This must be first, because it changes other options as side effect
set nocompatible

"pathogen makes plugin management sane
call pathogen#infect()
call pathogen#helptags()

"python is happiest here
set tabstop=4
set shiftwidth=4
set expandtab

"plugin nirvana
filetype plugin indent on
let b:match_ignorecase = 1

"personal preferences
syntax on
set hlsearch
set nowrap
set autoindent
set number
set ruler
set history=1000
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set termencoding=utf-8
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set bs=2 " == set backspace=indent,eol,start
set laststatus=2 " Show statusline with and without split

"color improvement
colorscheme koehler
" Remove menu bar
set guioptions-=m
" Remove toolbar
set guioptions-=T

" New Status line including git support
set statusline=%F%m%r%h%w\ 
set statusline+=%{fugitive#statusline()}\    
set statusline+=[%{strlen(&fenc)?&fenc:&enc}]
set statusline+=\ [line\ %l\/%L]          

"locally set helper macros
nnoremap <silent> ,n :set number!<CR>
nnoremap <silent> ,l :set list!<CR>
nnoremap <silent> ,w :set wrap!<CR>
nnoremap <silent> ,p :set autoindent!<CR>
nnoremap <silent> ,d :diffthis<CR>
nnoremap <silent> ,D :diffoff<CR>
nnoremap <silent> ,DD :diffoff!<CR>
nnoremap <silent> ,tw :set tw=80<CR>
nnoremap <silent> ,TW :set tw=0<CR>
nnoremap <silent> <C-L> :noh<CR><C-L>
let @h = "yypVr"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim grep
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set grepprg=/usr/bin/grep\ -inr\ --color=auto\ --exclude=*.py?\ --exclude=*.{po,pot,mo,swp}
"better grep
map <leader>f :execute "grep -srnw --binary-files=without-match *.{svn,git,egg-info} --exclude=*.py?\ --exclude=*.{po,pot,mo,swp} . -e " . expand("<cword>") . " " <bar> cwindow<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" BufExplorer
let g:bufExplorerShowRelativePath=1

" Spelling
map <leader>sc :setlocal spell! spelllang=en_us<CR>

" NERDTree
" nmap <silent> <C-\> :NERDTreeToggle<CR>
" let g:netrw_list_hide = '.swp,\.swo,\.svn,\.pyo,\.pyc'
" let g:netrw_liststyle = 3
" let NERDTreeIgnore = ['\.vim$','\~$','\.sw[op]$','\.svn$','\.py[oc]$']
