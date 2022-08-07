" Plugins
call plug#begin()
Plug 'akinsho/toggleterm.nvim', {'tag' : 'v2.*'} "	toggle terminal
Plug 'kyazdani42/nvim-web-devicons' " 			optional, for file icons
Plug 'kyazdani42/nvim-tree.lua' " 			Nerdtree alternatvie
Plug 'bling/vim-airline' "				vim-airline
Plug 'navarasu/onedark.nvim' "				theme : onedark
Plug 'tomasiser/vim-code-dark' "			airline theme : codedark
call plug#end()

" Call Plugin Settings
lua require("plugins.toggleterms.settings")
lua require("plugins.nvimtree.settings")

" Set vim theme
let g:onedark_config = {'style' : 'deep'}
colorscheme onedark

" Set airline
let g:airline_theme='codedark'
let g:airline#extensions#tabline#enabled = 1 "		turn on buffer list

" Set vim basic settings
syntax on
set nu
set autoindent
set cindent
set showmatch
set laststatus=2
set ruler
set ts=4

" =======Key mapping=======
" Mapping for NvimTree
nmap nm :NvimTreeToggle<CR>
" Mapping for buffer explore
nmap ./ :bnext<CR>
nmap /. :bprevious<CR>