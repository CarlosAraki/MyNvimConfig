":GenTocGFM Cria Sumário em md 

call plug#begin()
	Plug 'morhetz/gruvbox'
	Plug 'preservim/nerdcommenter'
	Plug 'tpope/vim-fugitive'
	Plug 'mzlogin/vim-markdown-toc'
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
set showcmd
set relativenumber
set mouse=a
set inccommand=split
set clipboard=unnamedplus
set ts=4 sw=4 sts=4 et
set timeoutlen=5000 

let mapleader=" "
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>
nnoremap <leader>cred :vsplit ~/Documents/Man/CRED/remember.md<cr>
nnoremap <leader>man :vsplit ~/Documents/Man/new.md<cr>
nnoremap <leader>pwd :echo expand('%:p') <cr>
nnoremap <leader>ga :!{hub add .}<cr>
nnoremap <leader>gc :!{hub commit -m ""}
nnoremap <leader>gph :!{hub push }
nnoremap <leader>gpl :!{hub pull }<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>


nnoremap <c-p> :Files<cr>
nnoremap <c-f> :Ag<space>
map <c-t> :NERDTreeToggle<cr>
map <c-l> :BlamerToggle<cr>
