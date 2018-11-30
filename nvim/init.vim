call plug#begin('~/.config/nvim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'scrooloose/syntastic'
Plug 'airblade/vim-gitgutter'
Plug 'majutsushi/tagbar'
Plug 'valloric/youcompleteme'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-commentary'
Plug 'junegunn/fzf'
Plug 'terryma/vim-multiple-cursors'
Plug 'plasticboy/vim-markdown'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-markdown'
Plug 'davidhalter/jedi-vim'
Plug 'othree/html5.vim'
Plug 'elzr/vim-json'
Plug 'nvie/vim-flake8'
"Plug 'klen/python-mode'
Plug 'bronson/vim-trailing-whitespace'
Plug 'itchyny/lightline.vim'
Plug 'lervag/vimtex'
Plug 'tpope/vim-eunuch'
Plug 'ekalinin/dockerfile.vim'
Plug 'suan/vim-instant-markdown'
Plug 'matze/vim-move'
Plug 'jalvesaq/Nvim-R'
"Plug 'tmhedberg/SimpylFold'
Plug 'vim-scripts/indentpython.vim'
Plug 'kien/ctrlp.vim'
Plug 'mlent/ale'
Plug 'w0rp/ale'
Plug 'eagletmt/ghcmod-vim'
Plug 'Shougo/vimproc'
Plug 'vim-airline/vim-airline'
Plug 'lifepillar/vim-solarized8'
Plug 'fati/vim-go'
call plug#end()

" color schemes
let g:solarized_use16 = 1
set background=dark
colorscheme solarized8
":command Light :color PaperColor

:imap kj <Esc>

map <C-t> :NERDTreeToggle<CR>

" R syntax checking
let g:syntastic_enable_r_lintr_checker = 1

let g:airline#extensions#ale#enabled = 1

" line numbers
set number

" 4-spaces for tab
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent

" python setup
let python_highlight_all=1
syntax on
au BufNewFile, BufRead *.py
    \ set softabstop=4
    \ set textwidth=79
    \ set fileformat=unix

au BufRead, BufNewFile, *.py, *.pw, *.c, *.h match BadWhitespace /\s\+$/
" hide .pyc files in nerd tree, don't need to see them
let NERDTreeIgnore=['\.pc$', '\~$']

" front-end stuff in case I ever need that
au BufNewFile, BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

let g:SimpylFold_docstring_preview=1
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g   :YcmCompleter GoToDefinitionElseDeclaration<CR>

" haskell stuff
nnoremap <Leader>ht :GhcModType<cr>
nnoremap <Leader>htc :GhcModTypeClear<cr>
autocmd FileType haskell nnoremap <buffer> <leader>? :call ale#cursor#ShowCursorDetail()<cr>
