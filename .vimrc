set nocompatible " be iMproved, required
filetype off     " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive' " Git wrapper
Plugin 'jpo/vim-railscasts-theme' " Color scheme
Plugin 'editorconfig/editorconfig-vim'
Plugin 'ervandew/supertab' "Auto completes with <tab>

" All of your Plugins must be added before the following line
call vundle#end()         " required
filetype plugin indent on " required
" Put your non-Plugin stuff after this line

syntax on
set autoindent tabstop=4 shiftwidth=4
set noexpandtab " Tab
set cursorline " Highlights current line
set colorcolumn=81 " Ruler

" Sets default register to system clipboard
set clipboard=unnamedplus " requires vim-gnome or vim-gtk to enable clipboard
" Auto closes brackets
imap {<CR> {<CR>}<left><CR><up><Tab>

set t_Co=256
colorscheme railscasts

set laststatus=2 " Show airline
let g:airline_powerline_fonts = 1
let g:airline_theme = 'ubaryd'
let g:airline#extensions#tabline#enabled = 1 " Enables airline tabline

