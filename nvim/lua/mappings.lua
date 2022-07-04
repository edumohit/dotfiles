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
keymap("n", "<leader>db", ":Startify<cr>", default_options) --show dashboard
	--session
keymap("n", "<leader>sl", ":SLoad<cr>", default_options)    --load a session
keymap("n", "<leader>ss", ":SSave<cr>", default_options)    --save a session
keymap("n", "<leader>sd", ":SDelete<cr>", default_options)  --delete a session
keymap("n", "<leader>sc", ":SClose<cr>", default_options)   --close current session

keymap("n", "<C-n>", ":NvimTreeFindFileToggle<CR>", default_options)

-- config open file mappings
keymap("n", "<leader>cov", ":e ~/.config/nvim/init.vim<CR>", default_options)
keymap("n", "<leader>coa", ":e ~/.config/alacritty/alacritty.yml<CR>", default_options)
keymap("n", "<leader>cot", ":e ~/.tmux.conf", default_options)

-- buffer mappings
keymap("n", "<leader>bl", ":e#<cr>", default_options)
keymap("n", "<Leader>bp", ":bp<cr>", default_options)
keymap("n", "<leader>bn", ":bn<cr>", default_options)
keymap("n", "<leader>bf", ":bf<cr>", default_options)
keymap("n", "<leader>bl", ":bl<cr>", default_options)
keymap("n", "<leader>bb", "<cmd>lua require('telescope.builtin').buffers()<cr>", default_options)
keymap("n", "<leader>btd", ":e ~/buffers/todo<CR>", default_options)
keymap("n", "<leader>bsh", ":e ~/buffers/scratch<CR>", default_options)

-- file mappings
keymap("n", "<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>", default_options)
keymap("n", "<leader>fs", "<esc>:w<cr>", default_options)
keymap("n", "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>", default_options)
--"nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files({find_command={"rg", ignore=true, hidden=true}, ignore=true, hidden=true, prompt_prefix="üîç"})<cr>
keymap("n", "<leader>fp", "<C-^>", default_options)

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

