if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
map! <S-Insert> <MiddleMouse>
nmap ,ww :set nowrap
nmap ,w :set wrap
nmap ,pp :set autoindent
nmap ,p :set noautoindent
nmap ,l :set list!
nmap gx <Plug>NetrwBrowseX
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
map <S-Insert> <MiddleMouse>
let &cpo=s:cpo_save
unlet s:cpo_save
set tabstop=4
set shiftwidth=4
set hlsearch
set nowrap
set autoindent
set number
set background=dark
set backspace=indent,eol,start
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set helplang=en
set history=50
set nomodeline
" set mouse=a
set ruler
set runtimepath=~/.vim,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim72,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/after
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set termencoding=utf-8
set bs=2
" vim: set ft=vim :
set nocompatible
filetype plugin on
syntax on
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/
map <F2> a== <C-R>=strftime("%r")<CR> ==<CR><CR>
map <F7> :setlocal spell! spelllang=en_us<CR>
map <leader>tt <Plug>VimwikiToggleListItem
map <F3> :VimwikiSearch 
" function list
function! Browser ()
  let line0 = getline (".")
  let line = matchstr (line0, "http[^ ]*")
  :if line==""
  let line = matchstr (line0, "ftp[^ ]*")
  :endif
  :if line==""
  let line = matchstr (line0, "file[^ ]*")
  :endif
  " echo line
  exec ":silent !firefox ".line
endfunction
map <C-F3> :call Browser ()<CR>
