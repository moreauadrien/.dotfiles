call plug#begin('~/.vim/plugged')
Plug 'gruvbox-community/gruvbox'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/nvim-cmp'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'

Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'evanleck/vim-svelte', {'branch': 'main'}

Plug 'sbdchd/neoformat'
call plug#end()

lua require("init")


colorscheme gruvbox
hi CursorLine ctermbg=none
highlight Normal guibg=none ctermbg=none


let mapleader=" "

fun! TrimWhitespace()
	let l:save = winsaveview()
	keeppatterns %s/\s\+$//e
	call winrestview(l:save)
endfun

augroup ADRIEN
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
augroup END

nnoremap <leader>pr <cmd>Neoformat<cr>

let g:neoformat_try_node_exe = 1
