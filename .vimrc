" override system defaults
unlet! skip_defaults_vim
source $VIMRUNTIME/defaults.vim

set clipboard=unnamedplus
set bg=dark
set encoding=utf-8
set number relativenumber
set hlsearch
set fileformat=unix
syntax on
" Copy selected text to system clipboard (requires gvim/nvim/vim-x11 installed):
	vnoremap <C-c> "+y
	map <C-p> "+P

"Automatically deletes all trailing whitespace on save.
       autocmd BufWritePre * %s/\s\+$//e

" Splits open at the bottom and right, ctr-w-v
	set splitbelow splitright
	" remap keys for split window
	map <C-h> <C-w>h
	map <C-j> <C-w>j
	map <C-k> <C-w>k
	map <C-l> <C-w>l
