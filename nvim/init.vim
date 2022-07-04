syntax on
syntax enable
filetype plugin indent on

set cursorline
hi cursorline cterm=none term=none
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
highlight CursorLine guibg=#303000 ctermbg=234

let mapleader = " " 
let maplocalleader = " " 

call plug#begin('~/.vim/plugged')
									"Dashboard
	Plug 'mhinz/vim-startify'					"vim-startify	

	Plug 'kyazdani42/nvim-web-devicons' 				"Nvim Tree optional, for file icons
	Plug 'kyazdani42/nvim-tree.lua'					"Nvim Tree

	Plug 'nvim-telescope/telescope.nvim'				"Telescope

	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  	"Treesitter 
	
	Plug 'wting/rust.vim'						"Rust
	Plug 'fatih/vim-go'						"Golang

	Plug 'neovim/nvim-lspconfig'					"Language Server Protocol 
									"Collection of common configurations for the Nvim LSP client
	Plug 'nvim-lua/lsp_extensions.nvim'				"Extensions to built-in LSP, for example, providing type inlay hints
	Plug 'hrsh7th/cmp-nvim-lsp'					"Autocompletion framework for built-in LSP

	Plug 'hrsh7th/cmp-buffer'
	Plug 'hrsh7th/cmp-path'
	Plug 'hrsh7th/cmp-cmdline'
	Plug 'hrsh7th/nvim-cmp'

	Plug 'glepnir/lspsaga.nvim'

	Plug 'jose-elias-alvarez/null-ls.nvim'				"Typescript
	Plug 'jose-elias-alvarez/nvim-lsp-ts-utils'

	Plug 'nvim-lua/popup.nvim'					"Popu & Plenary
	Plug 'nvim-lua/plenary.nvim'

	Plug 'kyazdani42/nvim-web-devicons'				"Lua `fork` of vim-web-devicons for neovim

	Plug 'vim-airline/vim-airline'					"vim-arline
	Plug 'vim-airline/vim-airline-themes'

	Plug 'tpope/vim-fugitive'					"vim-fugitive

	Plug 'voldikss/vim-floaterm'					"vim-floaterm

	"harpoon
	"Plug 'ThePrimeagen/harpoon'

	Plug 'machakann/vim-highlightedyank'				"Vim highlighted yank 

	"vim smooth scrolling
	Plug 'psliwka/vim-smoothie'

	" eash motion
	Plug 'phaazon/hop.nvim'
									"---Debugging---
	Plug 'mfussenegger/nvim-dap'					"Nvim Dap Debugging
	Plug 'leoluz/nvim-dap-go'					"Nvim Dap Go 
	Plug 'rcarriga/nvim-dap-ui'					"Nvim Dap UI
	Plug 'theHamsta/nvim-dap-virtual-text'				"Nvim Dap virtual text
	Plug 'nvim-telescope/telescope-dap.nvim'			"Nvim Dap telescope

									"---Themes---
	Plug 'EdenEast/nightfox.nvim' 					"Nightfox 
call plug#end()

let g:startify_lists = [
  \ { 'type': 'sessions',  'header': ['   Sessions']       },
  \ { 'type': 'files',     'header': ['   MRU']            },
  \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
  \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
  \ { 'type': 'commands',  'header': ['   Commands']       },
  \ ]


colorscheme nightfox

nnoremap Y y$
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '>-2<CR>gv=gv

inoremap <C-j> <esc>:m .+1<CR>==
inoremap <C-k> <esc>:m .-2<CR>==
nnoremap <leader>k :m .-2<CR>==
nnoremap <leader>j :m .+1<CR>==


"-----terminal-----
nnoremap <leader>to <cmd>:terminal<cr>

"lspsaga mapping
nnoremap <silent> gh <cmd>lua require('lspsaga.provider').lsp_finder()<cr>
nnoremap <silent><leader>ca <cmd>lua require('lspsaga.codeaction').code_action()<cr>
nnoremap <silent> K <cmd>lua require('lspsaga.hover').render_hover_doc()<cr>
nnoremap <silent> <C-f> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<cr>
nnoremap <silent> <C-b> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<cr>



"insert mode mapping
:imap jj <Esc>
""
" Floatterm key mapping
nnoremap   <silent>   <F7>    :FloatermNew --height=0.95 --width=0.95 --wintype=float<CR>
tnoremap   <silent>   <F7>    <C-\><C-n>:FloatermNew<CR>
nnoremap   <silent>   <F8>    :FloatermPrev<CR>
tnoremap   <silent>   <F8>    <C-\><C-n>:FloatermPrev<CR>
nnoremap   <silent>   <F9>    :FloatermNext<CR>
tnoremap   <silent>   <F9>    <C-\><C-n>:FloatermNext<CR>
tnoremap   <silent>   <F10>    <C-\><C-n>:FloatermKill<CR>
nnoremap   <silent>   <F12>   :FloatermToggle<CR>
tnoremap   <silent>   <F12>   <C-\><C-n>:FloatermToggle<CR>
tnoremap   <silent>  <Esc>    <C-\><C-n>

command! Rg FloatermNew --width=0.8 --height=0.8 rg
nnoremap   <silent> <leader>rg

" Configuration example
" Set floaterm window background to gray once the cursor moves out from it
hi FloatermNC guibg=gray

lua require "init"

