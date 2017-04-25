" See https://github.com/VundleVim/Vundle.vim#quick-start
" to make these configs work on vim

" Beginning of Vundle configs
set nocompatible " be iMproved, required
filetype off     " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugins installed and managed by Vundle:
Plugin 'vim-airline/vim-airline'         " Fancy status bar
Plugin 'vim-airline/vim-airline-themes'  " Themes for status bar
Plugin 'jpo/vim-railscasts-theme'        " Color scheme
Plugin 'editorconfig/editorconfig-vim'   " See http://editorconfig.org/
Plugin 'ervandew/supertab'               " Auto completes with <tab>

" All of your Plugins must be added before the following line
call vundle#end()         " required
filetype plugin indent on " required
" End of Vundle configs

syntax on                   " Syntax highlighting
set autoindent              " Automatically indents new line
set tabstop=4 shiftwidth=4  " Tab character and indent size = 4 spaces
set noexpandtab             " <Tab> inserts tab character
set cursorline              " Highlights current line
set colorcolumn=81          " Ruler

" Sets default register to system clipboard (requires 'gvim' package)
set clipboard=unnamedplus

" Auto closes brackets
imap {<CR> {<CR>}<left><CR><up><Tab>

set t_Co=256
colorscheme railscasts

set laststatus=2
let g:airline#extensions#tabline#enabled=1
let g:airline_theme='ubaryd'
