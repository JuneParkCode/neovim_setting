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
Plug 'nvim-lua/plenary.nvim' "									dependency for renamer
Plug 'filipdutescu/renamer.nvim', { 'branch': 'master' } " 		easy rename

" code completion Plugins
Plug 'neovim/nvim-lspconfig' "									LSP settings
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'L3MON4D3/LuaSnip' "										Snippet engine
Plug 'saadparwaiz1/cmp_luasnip'
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
lua require("plugins.renamer.settings")

" Set vim theme
let g:onedark_config = {'style' : 'deep'}
colorscheme onedark

" Set vim basic settings
syntax on
set nu
set autoindent
set cindent
set showmatch
set laststatus=2
set ruler
set ts=4
set sw=4
set mouse=a
" Set space to some character
set list listchars=tab:»\ ,trail:·,extends:>,precedes:<,eol:↲,nbsp:␣ 

" =======Key mapping=======
" Mapping for NvimTree
nmap nm :NvimTreeToggle<CR>
nmap n, :NvimTreeFocus<CR>
" Mapping for buffer explore
nmap ./ :bnext<CR>
nmap /. :bprevious<CR>
inoremap <silent> <F2> <cmd>lua require('renamer').rename()<cr>
nnoremap <silent> <F2> <cmd>lua require('renamer').rename()<cr>
vnoremap <silent> <leader>rn <cmd>lua require('renamer').rename()<cr>
