require('nvim-treesitter.configs').setup {
    ensure_installed = {
		"lua",
		"python",
		"c",
		"cpp"
	},
    auto_install = false,
    highlight = { enable = true },
    indent = { enable = true },
}
