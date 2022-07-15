" Stone's Neovim Config
" -----------------------------

" Probably bad practice, but share the vim directory:
set rtp +=~/.vim/ 

" Plugins:
call plug#begin('~/.vim/pdata')

if has('nvim-0.7')

	Plug 'williamboman/nvim-lsp-installer'
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
	Plug 'neovim/nvim-lspconfig'

	" Autocompletion
	Plug 'hrsh7th/nvim-cmp'
	Plug 'hrsh7th/cmp-buffer'
	Plug 'hrsh7th/cmp-path'
	Plug 'saadparwaiz1/cmp_luasnip'
	Plug 'hrsh7th/cmp-nvim-lsp'
	Plug 'hrsh7th/cmp-nvim-lua'

	"  Snippets
	Plug 'L3MON4D3/LuaSnip'
	Plug 'rafamadriz/friendly-snippets'


Plug 'folke/lsp-colors.nvim'

Plug 'VonHeikemen/lsp-zero.nvim'

Plug 'christoomey/vim-tmux-navigator'
Plug 'RRethy/nvim-base16'

Plug 'kyazdani42/nvim-web-devicons'
Plug 'folke/trouble.nvim'

Plug 'RishabhRD/popfix'
Plug 'RishabhRD/nvim-lsputils'

Plug 'stevearc/dressing.nvim'

endif

Plug 'tomasiser/vim-code-dark'

call plug#end()

filetype plugin indent on

set foldmethod=expr

if has('nvim-0.7')
	set foldexpr=nvim_treesitter#foldexpr()
	lua require('nvim-init')
else
	echo "Warning: Please use nvim to enable all features."

endif


source ~/.vim/settings.vim


source ~/.vim/commands.vim
source ~/.vim/undo.vim
source ~/.vim/theme.vim
source ~/.vim/keybinds.vim


" Not sure why this is here, TODO move it:
let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <C-w>h :TmuxNavigateLeft<cr>
nnoremap <silent> <C-w>j :TmuxNavigateDown<cr>
nnoremap <silent> <C-w>k :TmuxNavigateUp<cr>
nnoremap <silent> <C-w>l :TmuxNavigateRight<cr>
nnoremap <silent> <C-w>\ :TmuxNavigatePrevious<cr>


