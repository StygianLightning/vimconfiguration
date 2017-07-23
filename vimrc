" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

inoremap jk <ESC>

vnoremap . :norm.<CR>

set relativenumber

set ignorecase

set smartcase

set hlsearch

set incsearch 

set lazyredraw 

set showmatch

set noerrorbells

set novisualbell

set t_vb=

"disable bells
autocmd GUIEnter * set vb t_vb= " for your GUI
autocmd VimEnter * set vb t_vb=

set tm=500

set encoding=utf8

set smarttab

set tabstop=4

set ai

set si

set wrap

"unmap arrow keys

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>


noremap <C-S> :update<CR>
vmap <C-s> <esc>:w<CR>gv
inoremap <c-s> <c-o>:Update<CR><CR>

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/vimfiles/plugged')

Plug 'lervag/vimtex'

" Initialize plugin system
call plug#end()

command PdfLatex silent exec "!pdflatex -synctex=1 -interaction=nonstopmode main.tex"
command Bibtex silent exec "!bibtex main"
command PdfLatexDebug execute "!pdflatex -synctex=1 -interaction=nonstopmode main.tex"

command PdfView silent! exec "!sumatrapdf main.pdf"

noremap <leader>ll :PdfLatex <CR> :PdfLatex <CR> :Bibtex <CR> :PdfLatex <CR> 

noremap <leader>lv :PdfView <CR>

