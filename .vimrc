" vim-plug: Vim plugin manager
" ============================
" Download plug.vim and put it in ~/.vim/autoload
"
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" ... or ...
" wget -c https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim -P ~/.vim/autoload
"
" Edit your .vimrc
"
   call plug#begin('~/.vim/plugged')

   " Make sure you use single quotes

   " Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
   Plug 'junegunn/vim-easy-align'
   Plug 'vim-scripts/SQLUtilities'
   Plug 'vim-scripts/AutoComplPop'
   Plug 'vim-autoformat/vim-autoformat'

   "Github URL is allowed
   Plug 'https://github.com/junegunn/vim-github-dashboard.git'
   Plug 'https://github.com/davidhalter/jedi-vim.git'
   Plug 'https://github.com/vim-python/python-syntax.git'

   " Multiple Plug commands can be written in a single line using | separators
   Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

   " On-demand loading
   Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
   Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

   " Using a non-default branch
   Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

   " Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
   Plug 'fatih/vim-go', { 'tag': '*' }

   " Plugin options
   Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

   " Plugin outside ~/.vim/plugged with post-update hook
   Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

   " Unmanaged plugin (manually installed and updated)
   Plug '~/my-prototype-plugin'

   " Initialize plugin system
   call plug#end()
"
" Then reload .vimrc and :PlugInstall to install plugins
"--------------------------------------------------------------------------------------------"
syntax on
set filetype=python
set ruler
"--------------------------------------------------------------------------------------------"
" https://github.com/junegunn/vim-easy-align
" EasyAlign:  [ga*|] [ga* ]    
" EasyAlign *, {'lm': 1, 'stl': 0}
" EasyAlign *, {'lm': 0, 'stl': 1}  
" EasyAlign *, {'stick_to_left': 1, 'left_margin': 0}
"--------------------------------------------------------------------------------------------"
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
"--------------------------------------------------------------------------------------------"
" Default: The followings, it will be ignored.
let g:easy_align_ignore_groups = ['Comment', 'String']

"--------------------------------------------------------------------------------------------"
" Vim last position when reopening a file
"--------------------------------------------------------------------------------------------"
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
  :autocmd VimEnter * normal! zz
endif
"--------------------------------------------------------------------------------------------"
":Trimspace
"--------------------------------------------------------------------------------------------"
fun! Trimspace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun
command! Trimspace call Trimspace()
"--------------------------------------------------------------------------------------------"
" pip install sqlparse
",pt   (SQL formatter)
"--------------------------------------------------------------------------------------------"
autocmd FileType sql call SqlFormatter()
augroup end
function SqlFormatter()
    set noai
     map ,pt  :%!sqlformat -s --reindent --indent_after_first --indent_width 2 --comma_first COMMA_FIRST --keywords upper --identifiers upper -<CR>
     "map ,pt  :%!sqlformat -s --reindent --indent_after_first --indent_width 2 --comma_first COMMA_FIRST --keywords upper --identifiers upper --strip-comments -<CR>
endfunction
"--------------------------------------------------------------------------------------------"
set tabstop=4
set shiftwidth=4
set expandtab
set mouse=r
set hlsearch
set number
set showcmd
set nowrap
":retab
" set cursorline
" set scrolloff=10
" set so=999
"--------------------------------------------------------------------------------------------"

