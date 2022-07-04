local treesitter_config = require'nvim-treesitter.configs'

treesitter_config.setup({
	ensure_installed = {"go", "rust"},
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
})
