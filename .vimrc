set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'lervag/vimtex'
Plugin 'dylanaraps/wal'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Plugin 'ervandew/supertab'
Plugin 'davidhalter/jedi-vim'
" Plugin 'fatih/vim-go'
Plugin 'w0rp/ale'
" Plugin 'Yggdroot/indentLine'
" Plugin 'tpope/vim-surround'
Plugin 'junegunn/goyo.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'machakann/vim-sandwich'

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on

" VIM OPTIONS
syntax on
colorscheme wal
set hidden
set wildmenu
set showcmd
set hlsearch
set ignorecase
set smartcase
set autoindent
set ruler
set relativenumber
set laststatus=2
set confirm
set mouse=a
set number
set foldmethod=indent
set foldlevelstart=99
set tabstop=4 shiftwidth=4 expandtab


" VIMTEX CONGIG
let g:tex_conceal=''
let g:tex_flavor='latex'
let g:vimtex_enabled=1
let g:vimtex_indent_enabled=1
let g:vimtex_view_method="zathura"
let g:vimtex_compiler_latexmk = {
\ 'background' : 0,
\ 'build_dir' : '',
\ 'callback' : 1,
\ 'continuous' : 1,
\ 'options' : [
\   '-xelatex',
\   '-verbose',
\   '-file-line-error',
\   '-synctex=1',
\   '-interaction=nonstopmode',
\ ],
\}

" AIRLINE CONGIG
let g:airline_powerline_fonts = 1
"let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'bubblegum'

" PYTHON AUTOCOMPLETE OPTIONS (JEDI-VIM)
let g:jedi#popup_on_dot = 0

" MARKDOWN CONCEAL SETTINGS
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
let g:markdown_syntax_conceal=0

" ALE SETTINGS
let g:ale_fixers = {'javascript': ['eslint']}
let g:ale_fix_on_save=1

" KEY BINDINGS
inoremap jj <ESC>
inoremap <C-BS> <C-W>
nnoremap <tab> za
nnoremap <Space><Space> :w<CR>
cabbrev h vert h
set pastetoggle=<F10>

" execute with F4
nnoremap <F2> :w<CR>:!./%<CR>

augroup myvimrchooks
    au!
    autocmd bufwritepost ~/.vimrc source ~/.vimrc
augroup END

autocmd FileType python setlocal completeopt-=preview
autocmd FileType tex setlocal softtabstop=2 shiftwidth=2 spelllang=en_gb spelllang=en_gb spell linebreak
autocmd FileType javascript setlocal softtabstop=2 shiftwidth=2
autocmd FileType markdown  setlocal spelllang=en_gb spell expandtab shiftwidth=4 tabstop=4 linebreak
