":GenTocGFM Cria Sumário em md 
":PresentingStart Modo de apresentacao
call plug#begin()
	Plug 'mateusbraga/vim-spell-pt-br' 
    Plug 'ryanoasis/vim-devicons'
    Plug 'thaerkh/vim-indentguides'
    Plug 'NLKNguyen/papercolor-theme'
    Plug 'tomasr/molokai'
    Plug 'gko/vim-coloresque'
    Plug 'junegunn/vim-emoji'
	Plug 'preservim/nerdcommenter'
	Plug 'airblade/vim-gitgutter'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
    Plug 'lambdalisue/battery.vim'
	Plug 'tpope/vim-fugitive'
	Plug 'mzlogin/vim-markdown-toc'
	Plug 'sotte/presenting.vim'
	Plug 'terryma/vim-multiple-cursors'
    Plug 'kshenoy/vim-signature'
	Plug 'sheerun/vim-polyglot' 
	Plug 'dense-analysis/ale'
	Plug 'jiangmiao/auto-pairs'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	Plug 'goerz/jupytext.vim'
	Plug 'preservim/nerdtree'
	Plug 'APZelos/blamer.nvim'
call plug#end()

set background=dark
colorscheme PaperColor
set spell spelllang=pt
set autowrite
set hidden
"set backup
set list
set listchars=tab:>-,trail:-
set number
set showcmd
set relativenumber
set encoding=utf-8
set history=10000
set noswapfile
set mouse=a
set switchbuf=usetab
set inccommand=split
set backupext=.bak
set mps+=<:>
set ignorecase
set clipboard=unnamedplus
set ts=4 sw=4 sts=4 et
set timeoutlen=5000 
set t_Co=256

"let g:vdebug_options = {}
"let g:vdebug_options["port"] = 9000
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
nnoremap <leader>pwd :echo expand('%:p') <cr>
nnoremap <leader>ga :Git add . <cr>
nnoremap <leader>w :w <cr>
nnoremap <leader>pt :set spell spelllang=pt<cr>
nnoremap <leader>en :set spell spelllang=en_us<cr>
nnoremap <leader>gc :Git commit <cr>
nnoremap <leader>F :.!toilet -w 200  <cr>
nnoremap <leader>f :.!toilet -w 200 <cr>
nnoremap <leader>1 :.!toilet -w 200 -F border <cr>
nnoremap <leader>t :Toch <cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>
nnoremap <c-p> :Files<cr>
nnoremap <leader>fbd :bd!<cr>
nnoremap <leader>bn :bn<cr>
nnoremap <leader>bp :bp<cr>
nnoremap <leader>bd :bd<cr>
nnoremap <leader>ls :ls<cr>
vnoremap <C-c> "+y<CR>
nnoremap <c-f> :Ag<space>
map <c-t> :NERDTreeToggle<cr>
map <c-l> :BlamerToggle<cr>


" Configurações do Vim IndentGuides

let g:indentguides_spacechar = '▏'
let g:indentguides_tabchar = '▏'

" Fim das configurações do Vim IndentGuides
