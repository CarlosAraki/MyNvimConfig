":GenTocGFM Cria Sumário em md 
":PresentingStart Modo de apresentacao
call plug#begin()
	Plug 'mateusbraga/vim-spell-pt-br' 
	Plug 'ashisha/image.vim'
	Plug 'morhetz/gruvbox'
	Plug 'preservim/nerdcommenter'
	Plug 'airblade/vim-gitgutter'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
    Plug 'lambdalisue/battery.vim'
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
set spell spelllang=pt
set hidden
set number
set showcmd
set relativenumber
set encoding=utf-8
set history=1000
set noswapfile
set mouse=a
set switchbuf=usetab
set inccommand=split
set clipboard=unnamedplus
set ts=4 sw=4 sts=4 et
set timeoutlen=5000 
set t_Co=256
let g:airline_powerline_fonts = 1
let mapleader=" "

inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>m :call mkdir(expand("%:p:h"), "p")<cr>
nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>
nnoremap <leader>cred :vsplit ~/Documents/Man/CRED/remember.md<cr>
nnoremap <leader>man :vsplit ~/Documents/Man/new.md<cr>
nnoremap <leader>pwd :echo expand('%:p') <cr>
nnoremap <leader>ga :Git add . <cr>
nnoremap <leader>pt :set spell spelllang=pt<cr>
nnoremap <leader>en :set spell spelllang=en_us<cr>
nnoremap <leader>gc :Git commit <cr>
nnoremap <leader>F :.!toilet -w 200 -f standard <cr>
nnoremap <leader>f :.!toilet -w 200 -f small <cr>
nnoremap <leader>1 :.!toilet -w 200 -f term -F border <cr>
nnoremap <leader>t :Toch <cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>
nnoremap <c-p> :Files<cr>
nnoremap <leader>BD :!bd<cr>
nnoremap <leader>bn :bn<cr>
nnoremap <leader>bp :bp<cr>
nnoremap <leader>bd :bd<cr>
nnoremap <leader>ls :ls<cr>
nnoremap <c-f> :Ag<space>
map <c-t> :NERDTreeToggle<cr>
map <c-l> :BlamerToggle<cr>
