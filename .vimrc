syntax on
"--------------------------------------------------------------------------------------------"
set tabstop=4
set shiftwidth=4
set expandtab
":retab

set mouse=r
set hlsearch
set number
set showcmd
set nowrap
" set scrolloff=10
" set so=999
"--------------------------------------------------------------------------------------------"
" Vim last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
  :autocmd VimEnter * normal! zz
endif
"--------------------------------------------------------------------------------------------"
":call Trimspace()
fun! Trimspace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun
":Trimspace
command! Trimspace call Trimspace()
"--------------------------------------------------------------------------------------------"
