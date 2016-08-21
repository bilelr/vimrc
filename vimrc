"vundle setup
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"vundle plugins
Plugin 'gmarik/Vundle.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'kien/ctrlp.vim'
" Plugin 'itchyny/lightline.vim'
" Plugin 'bling/vim-bufferline'
Plugin 'vim-airline/vim-airline'
Plugin 'raimondi/delimitMate'
Plugin 'tomtom/tcomment_vim'
Plugin 'pangloss/vim-javascript'
Plugin 'elzr/vim-json'

"themes
Plugin 'crusoexia/vim-monokai'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'vim-scripts/pyte'

call vundle#end()
filetype plugin indent on
filetype plugin on

"set wildmode= type of completion see help.
set wildmenu "menu for auto-completion of commands
set scrolloff=5  "always keep 5 lines of context above and below current line
set gdefault "replace all occurrences in line by default
set relativenumber
set numberwidth=1

set nobackup
set noswapfile
set shiftwidth=4 tabstop=4 expandtab
set autoindent
set colorcolumn=90
set cursorline
syntax on
set incsearch
set ignorecase
set smartcase
set hlsearch
set background=light

set guifont=Droid\ Sans\ Mono\ 12
" set guifont=DejaVu\ Sans\ Mono\ 10
" colorscheme pyte
colorscheme PaperColor
set laststatus=2

nmap <leader>b :CtrlPBuffer<CR>

"Plugin Options
let delimitMate_expand_cr = 1
" let g:closetag_filenames = "*.xml,*.html,*.xhtml,*.phtml,*.js"
au FileType xml,html,phtml,xhtml,js let b:delimitMate_matchpairs = "(:),[:],{:}"

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

let g:monokai_gui_italic = 1

" Custom mappings
nnoremap <tab> <c-^>
noremap <leader>o i<CR><ESC>
noremap <c-a> <Esc>ggVG

