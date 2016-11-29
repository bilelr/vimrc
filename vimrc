" vim-plug setup
call plug#begin('~/.vim/plugged')

Plug 'Yggdroot/indentLine'
Plug 'kien/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'raimondi/delimitMate'
Plug 'tomtom/tcomment_vim'
Plug 'pangloss/vim-javascript'
Plug 'elzr/vim-json'
Plug 'tpope/vim-surround'

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

set linespace=5 "wider space between lines
set nobackup
set noundofile
set noswapfile
set shiftwidth=4 tabstop=4 expandtab
autocmd FileType java setlocal shiftwidth=2 tabstop=2 expandtab
set autoindent
set colorcolumn=90
set cursorline
syntax on
set incsearch
set ignorecase
set smartcase
set hlsearch
set background=light

if has("gui_gtk2")
    set guifont=Consolas\ 13
elseif has("gui_win32")
    set guifont=Consolas:h11
endif

colorscheme PaperColor

set laststatus=2 "Always show the status line

"Plugin Options
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(class|exe|so|dll)$',
  \ }
let g:ctrlp_max_files=0

let delimitMate_expand_cr = 1
au FileType xml,html,phtml,xhtml,js let b:delimitMate_matchpairs = "(:),[:],{:}"

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

let g:monokai_gui_italic = 1

let g:vim_json_syntax_conceal=0 " json-vim plugin - disable hiding quotes.

" Custom mappings
nnoremap <tab> <c-^> " switch buffers by typing num followed by tab
noremap <leader>o i<CR><ESC>
nnoremap <silent> <c-j> :bn<cr>
nnoremap <silent> <c-k> :bp<cr>
nnoremap <leader>p :CtrlP %:p:h<CR>
nnoremap <leader>. :CtrlP .<CR>
nmap <leader>b :CtrlPBuffer<CR>
