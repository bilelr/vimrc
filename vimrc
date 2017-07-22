" vim-plug setup
call plug#begin('~/.vim/plugged')

Plug 'Yggdroot/indentLine'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'raimondi/delimitMate'
Plug 'tomtom/tcomment_vim'
Plug 'pangloss/vim-javascript'
Plug 'elzr/vim-json'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'

" Typescript
Plug 'HerringtonDarkholme/yats.vim'
Plug 'Quramy/tsuquyomi'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}

" themes
" Plug 'crusoexia/vim-monokai'
Plug 'NLKNguyen/papercolor-theme'
" Plug 'vim-scripts/pyte'
call plug#end()

let mapleader = ","

" GUI options
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

set encoding=utf-8
set nocompatible
set modelines=0
" set wildmode=list:longest type of completion see help.
set wildmenu "menu for auto-completion of commands
set scrolloff=5  "always keep 5 lines of context above and below current line
set gdefault "replace all occurrences in line by default
set relativenumber
set numberwidth=1

" set linespace=10 "wider space between lines
set nobackup
set noundofile
set noswapfile
set shiftwidth=4 softtabstop=4 tabstop=4 expandtab
autocmd FileType java setlocal shiftwidth=2 tabstop=2 expandtab
set autoindent
set colorcolumn=80
set lines=50 columns=83
set cursorline
syntax on
set incsearch
set ignorecase
set smartcase
set hlsearch
set background=light
set laststatus=2
set ttyfast
set lazyredraw


" Theme
if has("gui_gtk2")
    " set guifont=Consolas\ 13
    set guifont=Droid\ Sans\ Mono\ for\ Powerline\ 11
    " set guifont=Inconsolata\ for\ Powerline\ 13
    " set guifont=Source\ Code\ Pro\ for\ Powerline\ 12
    " set guifont=Roboto\ Mono\ for\ Powerline\ 11
    " set guifont=Space\ Mono\ for\ Powerline\ 10
elseif has("gui_win32")
    set guifont=Consolas:h11
endif
set list " Show invisible characters like tabs and eol
nnoremap <leader>l :set list!<CR>
set listchars=tab:▸\ ,eol:¬ " tab and eol symbols"
colorscheme PaperColor
set laststatus=2 "Always show the status line
" End of Theme

"Plugin Options
" delimitMate
let delimitMate_expand_cr = 1
au FileType xml,html,phtml,xhtml,js let b:delimitMate_matchpairs = "(:),[:],{:}"
" CtrlP
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(class|exe|so|dll)$',
  \ }
let g:ctrlp_max_files=0
nmap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>p :CtrlP %:p:h<CR>
nnoremap <leader>. :CtrlP .<CR>

" vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'base16'

" monokai
" let g:monokai_gui_italic = 1

" json-vim
let g:vim_json_syntax_conceal=0 " json-vim plugin - disable hiding quotes.
" End of Plugin Options

" Custom mappings
nnoremap ; :

" Jump to buffer by pressing num + -
nnoremap - <c-^>

" Break in line at cursor
nnoremap <leader>o i<CR><ESC>

" Buffer next and previous using Ctrl-j and Ctrl-k
nnoremap <silent> <c-j> :bn<cr>
nnoremap <silent> <c-k> :bp<cr>

" Remove search highlighting
nnoremap <leader><space> :noh<cr>

" Match brackets using tab
" nnoremap <tab> %
" vnoremap <tab> %

" Disable F1 help key
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

nnoremap <tab> <c-^> " switch buffers by typing num followed by tab
