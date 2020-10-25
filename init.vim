":GenTocGFM Cria Sumário em md 
":PresentingStart Modo de apresentacao
call plug#begin()
	Plug 'morhetz/gruvbox'
	Plug 'preservim/nerdcommenter'
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
let g:airline_powerline_fonts = 1
set t_Co=256

"function! GitBranch()
  "return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
"endfunction

"function! StatuslineGit()
  "let l:branchname = GitBranch()
  "return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
"endfunction

"set tabline=
"set tabline+=%#PmenuSel#
"set tabline+=%{StatuslineGit()}
"set tabline+=%#LineNr#
"set tabline+=\ %f
"set tabline+=%m\
"set tabline+=%=
"set tabline+=%#CursorColumn#
"set tabline+=\ %y
"set tabline+=\ %{&fileencoding?&fileencoding:&encoding}
"set tabline+=\[%{&fileformat}\]
"set tabline+=\ %p%%
"set tabline+=\ %l:%c
"set tabline+=\ %{battery#component()}
"set tabline+=\ 
"let g:airline_statusline_ontop=1
"let g:battery#update_tabline = 1    " For tabline.
"let g:battery#update_tabline = 1 " For statusline.

let g:airline_theme='deus'
let mapleader=" "
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>
nnoremap <leader>cred :vsplit ~/Documents/Man/CRED/remember.md<cr>
nnoremap <leader>man :vsplit ~/Documents/Man/new.md<cr>
nnoremap <leader>pwd :echo expand('%:p') <cr>
nnoremap <leader>ga :Git add . <cr>
nnoremap <leader>gc :Git commit <cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>
nnoremap <c-p> :Files<cr>
nnoremap <leader>bn :bn<cr>
nnoremap <leader>bp :bp<cr>
nnoremap <leader>bd :bd<cr>
nnoremap <leader>ls :ls<cr>
nnoremap <c-f> :Ag<space>
map <c-t> :NERDTreeToggle<cr>
map <c-l> :BlamerToggle<cr>
