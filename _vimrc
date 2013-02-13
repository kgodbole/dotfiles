filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" automatically load changed vimrc
autocmd! bufwritepost .vimrc source %


" syntax highlighting and file types
syntax on
filetype on
filetype plugin indent on


" tabs and spaces
set ts=4
set sw=4
set softtabstop=4
set expandtab
set backspace=indent,eol,start
set hidden


" search related
nnoremap / /\v
vnoremap / /\v
set incsearch
set showmatch
set hlsearch
set ignorecase
set smartcase
set gdefault
nnoremap <tab> %
vnoremap <tab> %


" width and wrap
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85


" movement
nnoremap j gj
nnoremap k gk


" avoid typing Shift :
nnoremap ; :


" save when focus is lost
au FocusLost * :wa


" misc
set relativenumber
set undofile


" folding
set foldmethod=indent
set foldlevel=99


" better copy and paste
set pastetoggle=<F2>
set clipboard=unnamed


" paragraph formatting
vmap Q gq
nmap Q gqap


" easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l


" command line autocomplete
set wildmenu
set wildmode=list:longest


" clear highlighted search
nmap <silent> ,/ :nohlsearch<CR>



"
" PLUGINS
"

" tasklist
map <leader>td <Plug>TaskList


" history toggle (gundo plugin)
map <leader>h :GundoToggle<CR>


" pep8 plugin
let g:pep8_map='<leader>8'


" pyflakes config
let g:pyflakes_use_quickfix = 0


" supertab config
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview


" Ack search plugin config
"nmap <leader>a <Esc>:Ack!


" NERDTree
map <leader>n :NERDTreeToggle<CR>


" MiniBufExplorer
let g:miniBufExplMapCTabSwitchBufs = 1


" vim-powerline
set nocompatible
set laststatus=2
set encoding=utf-8
set t_Co=256
let g:Powerline_symbols = 'fancy'


" taglist
map <leader>ta :TlistToggle<CR>


" ropevim
map <leader>j :RopeGotoDefinition<CR>
map <leader>r :RopeRename<CR>
