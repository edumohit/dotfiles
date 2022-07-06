vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local keymap = vim.api.nvim_set_keymap

default_options = {noremap = true, silent = true}
expr_options = {noremap = true, expr = true, silent = true}

-- Modes
-- 	normal_mode 	  = "n"
-- 	insert_mode 	  = "i"
-- 	visual_mode 	  = "v"
-- 	visual_block_mode = "x"
-- 	term_mode 	  = "t"
-- 	command_mode 	  = "c"

-- keymap the leader key
keymap("n", "<Space>", "<NOP>", default_options)

-- dashboard
	--dashboard
keymap("n", "<leader>db", ":Startify<cr>", default_options) 			-- <l>db   => dashboard
	--session
keymap("n", "<leader>sl", ":SLoad<cr>", default_options)    			-- <l>sl   => session load 
keymap("n", "<leader>ss", ":SSave<cr>", default_options)    			-- <l>ss   => session save 
keymap("n", "<leader>sd", ":SDelete<cr>", default_options)  			-- <l>sd   => session delete
keymap("n", "<leader>sc", ":SClose<cr>", default_options)   			-- <l>sc   => session close

keymap("n", "<C-n>", ":NvimTreeFindFileToggle<CR>", default_options)

-- config open file mappings
open_vim_config_cmd = ":e ~/.config/nvim/init.vim<CR>"
open_alacritty_config_cmd = ":e ~/.config/alacritty/alacritty.yml<CR>"
open_tmux_config_cmd = ":e ~/.tmux.conf"

keymap("n", "<leader>cov", open_vim_config_cmd, default_options)		-- <l>cov  => config open vim
keymap("n", "<leader>coa", open_alacritty_config_cmd, default_options)		-- <l>coa  => config open alacritty
keymap("n", "<leader>cot", open_tmux_config_cmd, default_options)		-- <l>cot  => config open tmux

-- buffer mappings
buf_builtin = "<cmd>lua require('telescope.builtin').buffers()<cr>"
keymap("n", "<leader>bn", ":bn<cr>", default_options)				-- <l>bn   => buffer next
keymap("n", "<Leader>bp", ":bp<cr>", default_options)				-- <l>bp   => buffer previous
keymap("n", "<leader>bf", ":bf<cr>", default_options)				-- <l>bf   => buffer first
keymap("n", "<leader>bl", ":bl<cr>", default_options)				-- <l>bl   => buffer last
keymap("n", "<leader>bl", ":e#<cr>", default_options)				-- <l>bl   => buffer last
keymap("n", "<leader>bb", buf_builtin, default_options)				-- <l>bb   => buffer 
keymap("n", "<leader>btd", ":e ~/buffers/todo<CR>", default_options)		-- <l>btd  => buffer todo
keymap("n", "<leader>bsc", ":e ~/buffers/scratch<CR>", default_options)		-- <l>bsc  => buffer scratch

-- file mappings
live_grep_fn = "<cmd>lua require('telescope.builtin').live_grep()<cr>"
find_file_fn = "<cmd>lua require('telescope.builtin').find_files()<cr>"
keymap("n", "<leader>fg", live_grep_fn, default_options)			-- <l>fg => file grep
keymap("n", "<leader>fs", "<esc>:w<cr>", default_options)			-- <l>fs => file save
keymap("n", "<leader>ff", find_file_fn, default_options)			-- <l>ff => file find
keymap("n", "<leader>fr", ":let @+ = expand('%')<cr>", default_options)		-- <l>fr => file relative path in clipboard	
keymap("n", "<leader>fp", ":let @+ = expand('%:p')<cr>", default_options)	-- <l>fp => file path in clipboard
keymap("n", "<leader>fn", ":let @+ = expand('%:t')<cr>", default_options)	-- <l>fn => file name in clipboard

-- debugger mappings
continue_fn 		= ":lua require'dap'.continue()<cr>"
toggle_breakpoint_fn 	= ":lua require'dap'.toggle_breakpoint()<cr>"
keymap("n", "<F5>", continue_fn, default_options)				
keymap("n", "<leader>b", toggle_breakpoint_fn, default_options)			-- <l>b    => debug breakpoint

-- Go to tab by number
-- noremap <leader>1 1gt
-- noremap <leader>2 2gt
-- noremap <leader>3 3gt
-- noremap <leader>4 4gt
-- noremap <leader>5 5gt
-- noremap <leader>6 6gt
-- noremap <leader>7 7gt
-- noremap <leader>8 8gt
-- noremap <leader>9 9gt
-- noremap <leader>0 :tablast<cr>

keymap("n", "<leader>1", "1gt", default_options)
keymap("n", "<leader>2", "2gt", default_options)
keymap("n", "<leader>3", "3gt", default_options)
keymap("n", "<leader>4", "4gt", default_options)
keymap("n", "<leader>5", "5gt", default_options)
keymap("n", "<leader>6", "6gt", default_options)
keymap("n", "<leader>7", "7gt", default_options)
keymap("n", "<leader>8", "8gt", default_options)
keymap("n", "<leader>9", "9gt", default_options)
keymap("n", "<leader>0", ":tablast<cr>", default_options)

keymap("n", "<leader>ww", "<C-w><C-w>", default_options)
keymap("n", "<leader>wq", ":q<cr>", default_options)
keymap("n", "<leader>wc", ":q<cr>", default_options)
keymap("n", "<leader>wh", "5<C-w><", default_options)
keymap("n", "<leader>wj", "5<C-w>-", default_options)
keymap("n", "<leader>wk", "5<C-w>+", default_options)
keymap("n", "<leader>wl", "5<C-w>>", default_options)

keymap("n", "<leader>hg", "<cmd>lua require('telescope.builtin').help_tags()<cr>", default_options)
keymap("n", "<leader>m", "<cmd>lua require('telescope.builtin').marks()<cr>", default_options)
--keymap("n", "<leader>cb", require('telescope.builtin').current_buffer_fuzzy_find({sorting_strategy="ascending", prompt_position="top"})<cr>, default_options)
keymap("n", "<leader>lr", "<cmd>lua require('telescope.builtin').lsp_reference()<cr>", default_options)

