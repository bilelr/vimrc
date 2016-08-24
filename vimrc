" vim-plug setup
call plug#begin('~/.vim/plugged')

Plug 'Yggdroot/indentLine'
Plug 'kien/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'raimondi/delimitMate'
Plug 'tomtom/tcomment_vim'
Plug 'pangloss/vim-javascript'
Plug 'elzr/vim-json'

" themes
Plug 'crusoexia/vim-monokai'
Plug 'NLKNguyen/papercolor-theme'
Plug 'vim-scripts/pyte'

call plug#end()

"set wildmode= type of completion see help.
set wildmenu "menu for auto-completion of commands
set scrolloff=5  "always keep 5 lines of context above and below current line
set gdefault "replace all occurrences in line by default
set relativenumber
set numberwidth=1

set linespace=10 "wider space between lines
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

set guifont=Consolas\ 13
" set guifont=Droid\ Sans\ Mono\ 12
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
nnoremap <silent> <c-j> :bn<cr>
nnoremap <silent> <c-k> :bp<cr>
