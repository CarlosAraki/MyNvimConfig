call plug#begin()
	Plug 'morhetz/gruvbox'
	Plug 'sotte/presenting.vim'
	Plug 'terryma/vim-multiple-cursors'
	Plug 'sheerun/vim-polyglot' 
	Plug 'dense-analysis/ale'
	Plug 'jiangmiao/auto-pairs'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'roxma/nvim-completion-manager'
	Plug 'junegunn/fzf.vim'
	Plug 'goerz/jupytext.vim'
	Plug 'preservim/nerdtree'
	Plug 'APZelos/blamer.nvim'
call plug#end()

colorscheme gruvbox

set hidden
set number
set relativenumber
set mouse=a
set inccommand=split
set clipboard=unnamedplus
set ts=4 sw=4 sts=4 et

let mapleader="/<space>"
nnoremap <leader>; A;<esc>
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>


nnoremap <c-p> :Files<cr>
nnoremap <c-f> :Ag<space>
map <c-t> :NERDTreeToggle<cr>
map <c-l> :BlamerToggle<cr>
