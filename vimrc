set nocompatible

" Enable filetype plugins
filetype on
filetype plugin on
filetype indent on

syntax on

set hidden

" Better display for messages
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Set to auto read when a file is changed from the outside
set autoread

" Colourscheme
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
set relativenumber " always show relative line numbers
set number        " always show line numbers
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

" --------------------------------------------
"  MAPPINGS
" --------------------------------------------
inoremap jk <ESC> 
" allow applying the last action to the selected text/lines
vnoremap . :norm.<CR> 
nmap ; :

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
"  LEADER MAPPINGS
" --------------------------------------------
nmap <leader>v :vsplit<CR>
nmap <leader>s :split<CR>
nmap <leader>t :tabnew<CR>
nmap <leader>q :qa<CR>

" --------------------------------------------
"  PLUGINS
" --------------------------------------------

" Install Plug package manager
" These instructions are for vim; update them as necessary for nvim!
" if empty(glob('~/.vim/autoload/plug.vim'))
  " silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    " \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  " autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
" endif

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')

Plug 'lervag/vimtex'
Plug 'haya14busa/incsearch.vim'
Plug 'scrooloose/nerdtree'
" Plug 'tpope/vim-fugitive'  " don't need this
" Plug 'rust-lang/rust.vim' " disable this for now
Plug 'elzr/vim-json'
Plug 'sakhnik/nvim-gdb', { 'do': ':!./install.sh \| UpdateRemotePlugins' }

" Removed in favour of YouCompleteMe
" Coc: code completion https://github.com/neoclide/coc.nvim
" Use release branch (Recommend)
" Plug 'neoclide/coc.nvim', {'branch': 'release'}

"YCM autocompletion
Plug 'Valloric/YouCompleteMe'

" Toml support
Plug 'cespare/vim-toml', { 'branch': 'main' }


" Initialize plugin system
call plug#end()

" uncomment this to automatically open NERDTree upon starting nvim
" autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>


" https://home.geeklint.com/git/violet/etc/src/branch/master/vimrc
" YMC configuration
let g:ycm_always_populate_location_list = 1
let g:ycm_language_server =
\ [
\   {
\     'name': 'rust',
\     'cmdline': ['rust-analyzer'],
\     'filetypes': ['rust'],
\     'project_root_files': ['Cargo.toml']
\   }
\ ]

let g:ycm_global_ycm_extra_conf = '~/configuration/vimconfiguration/ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_completion = 1

nnoremap <M-d> :YcmC GoToDefinition<CR>
nnoremap <M-u> :YcmC GoToReferences<CR>
nnoremap <M-r> :YcmC RefactorRename  
nmap <leader>d :YcmC GetDoc<CR>

" Alt + Enter -> FixIt
nnoremap <M-CR> : YcmC FixIt<CR> 
autocmd BufWritePost *.rs exec "!rustfmt %" | e | redraw

