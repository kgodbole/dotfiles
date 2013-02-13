filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" automatically load changed vimrc
autocmd! bufwritepost .vimrc source %


" syntax highlighting and file types
syntax on
filetype on
filetype plugin indent on


" general options
set ts=4
set sw=4
set incsearch
set hlsearch


" folding
set foldmethod=indent
set foldlevel=99


" tasklist
map <leader>td <Plug>TaskList


" history toggle (gundo plugin)
map <leader>g :GundoToggle<CR>


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

