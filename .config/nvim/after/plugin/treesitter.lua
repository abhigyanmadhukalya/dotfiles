local status, treesitter = pcall(require, "nvim-treesitter.configs")

treesitter.setup({
	ensure_installed = {
		"lua",
		"python",
		"c",
		"cpp",
		"go",
		"markdown",
		"markdown_inline",
	},
	auto_install = true,
	highlight = { enable = true },
	indent = { enable = true },
})
