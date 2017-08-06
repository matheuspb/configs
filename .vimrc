syntax on                   " Syntax highlighting
set autoindent              " Automatically indents new line
set tabstop=4 shiftwidth=4  " Tab character and indent size = 4 spaces
set noexpandtab             " <Tab> inserts tab character
set cursorline              " Highlights current line
set colorcolumn=81          " Ruler
set mouse=a                 " Enables mouse interaction
set spelllang=pt_br,en_us   " Spell check language

" Sets default register to system clipboard (requires 'gvim' package)
set clipboard=unnamedplus

" Auto closes brackets
imap {<CR> {<CR>}<left><CR><up><Tab>

nmap j gj
nmap k gk

map <C-n> :NERDTreeToggle<CR>
map <F8>  :set spell!<CR>

set t_Co=256
colorscheme desert

set laststatus=2
let g:airline#extensions#tabline#enabled=1
let g:airline_theme='raven'
