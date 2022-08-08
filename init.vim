"Plugins
call plug#begin()
Plug 'akinsho/toggleterm.nvim', {'tag' : 'v2.*'} "				toggle terminal
Plug 'kyazdani42/nvim-web-devicons' " 							optional, for file icons
Plug 'kyazdani42/nvim-tree.lua' " 								Nerdtree alternatvie
Plug 'navarasu/onedark.nvim' "									theme : onedark
Plug 'tomasiser/vim-code-dark' "								airline theme : codedark
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}	"	treesitter (syntax highlight)
Plug 'nvim-lua/plenary.nvim' "									Dependency for telescope
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' } "		to find files
Plug 'nvim-lualine/lualine.nvim' "								Statusbar
Plug 'lukas-reineke/indent-blankline.nvim' "					indent liner
Plug 'romgrk/barbar.nvim' "										buffer bar

" code completion Plugins
Plug 'neovim/nvim-lspconfig' "									LSP settings
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
call plug#end()

" Call Plugin Settings
lua require("plugins.toggleterms.settings")
lua require("plugins.nvimtree.settings")
lua require("plugins.lsp.settings")
lua require("plugins.treesitter.settings")
lua require("plugins.cmp.settings")
lua require("plugins.lualine.settings")
lua require("plugins.blankline.settings")
lua require("plugins.barbar.settings")

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
set mouse=a

" =======Key mapping=======
" Mapping for NvimTree
nmap nm :NvimTreeToggle<CR>
" Mapping for buffer explore
nmap ./ :bnext<CR>
nmap /. :bprevious<CR>
