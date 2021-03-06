call plug#begin('~/.vim/plugged')
Plug 'gruvbox-community/gruvbox'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'sbdchd/neoformat'

Plug 'neovim/nvim-lspconfig'

Plug 'TimUntersberger/neogit'

" Competion plugins
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/nvim-cmp'

" Snippets
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
call plug#end()

let mapleader=" "

" Theme
colorscheme gruvbox
hi CursorLine ctermbg=none
highlight Normal guibg=none ctermbg=none

nnoremap <C-a> <C-^>
nnoremap <silent> <C-f> :silent !tmux neww tmux-sessionizer<CR>

" Neoformat look for prettier in node_modules
let g:neoformat_try_node_exe = 1

" Autoformat on save
augroup fmt
  autocmd!
  autocmd BufWritePre * undojoin | Neoformat
augroup END


lua require("init")
