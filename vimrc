set nocompatible

" Enable filetype plugins
filetype on
filetype plugin on
filetype indent on

syntax on

set hidden

" Set to auto read when a file is changed from the outside
set autoread

" colo murphy

set nowrap "don't wrap lines
" set wrap

set lazyredraw "don't update the display while executing macros
set showmode " show the mode you're in

set wildmenu " Enable enhanded command-line completion. Presumes you have compiled with +wildmenu; see :help 'wildmenu'
set encoding=utf8

set tabstop=4 " tab = four spaces
set backspace=indent,eol,start " allow backspacing over everything in insert modw
set autoindent " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
" set number        " always show line numbers
set relativenumber " always show relative line numbers
set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                    "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                    "    shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type

set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
" set novisualbell
set noerrorbells         " don't beep
set t_vb= " set the visual bell to never flash


"disable bells
autocmd GUIEnter * set vb t_vb= " for your GUI
autocmd VimEnter * set vb t_vb=

set tm=500

" Rust settings
let g:rustfmt_autosave=1

" --------------------------------------------
"  MAPPINGS
" --------------------------------------------
"
"treat jk as ESC
inoremap jk <ESC> 
" allow applying the last action to the selected text/lines
vnoremap . :norm.<CR> 

"unmap arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" allow saving with Ctrl + S
noremap <C-S> :update<CR>
vmap <C-s> <esc>:w<CR>gv
inoremap <c-s> <c-o>:Update<CR><CR>

" --------------------------------------------
"  PLUGINS
" --------------------------------------------

" Install Plug package manager
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/vimfiles/plugged')

" Plug 'lervag/vimtex'
Plug 'haya14busa/incsearch.vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'rust-lang/rust.vim'
" Plug 'elzr/vim-json'

" Initialize plugin system
call plug#end()

" command PdfLatex silent exec "!pdflatex -synctex=1 -interaction=nonstopmode main.tex"
" command Bibtex silent exec "!bibtex main"
" command PdfLatexDebug execute "!pdflatex -synctex=1 -interaction=nonstopmode main.tex"

" command PdfView silent! exec "!sumatrapdf main.pdf"

" noremap <leader>ll :PdfLatex <CR> :Bibtex <CR> :PdfLatex <CR> :PdfLatex <CR> 

" noremap <leader>lv :PdfView <CR>

" autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>

