return {
	{
		"numToStr/Comment.nvim",
		opts = {},
	},
	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000,
		config = function()
			require("gruvbox").setup({
				-- transparent_mode = true,
			})
			vim.cmd("colorscheme gruvbox")
		end,
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		opts = {
			icons_enabled = true,
			theme = "gruvbox",
		},
	},
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig",
	"WhoIsSethDaniel/mason-tool-installer.nvim",
	"neovim/nvim-lspconfig",
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"L3MON4D3/LuaSnip",
			"saadparwaiz1/cmp_luasnip",
			"rafamadriz/friendly-snippets",
			"hrsh7th/cmp-nvim-lsp",
		},
	},
	"folke/neodev.nvim",
	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope-file-browser.nvim",
			{
				"nvim-telescope/telescope-fzf-native.nvim",
				build = "make",
			},
		},
	},
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
	},
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			vim.cmd([[:highlight SignColumn guibg=#282828]])
			require("gitsigns").setup()
		end,
	},
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		init = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
		end,
		opts = {},
	},
	{
		"stevearc/conform.nvim",
		opts = {
			notify_on_error = false,
			format_on_save = {
				timeout_ms = 300,
				lsp_fallback = true,
			},
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "black" },
			},
		},
	},
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
	},
	{
		"goolord/alpha-nvim",
		lazy = true,
	},
	{
		"nvimdev/lspsaga.nvim",
		opts = {},
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
			"nvim-tree/nvim-web-devicons",
		},
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		opts = {},
	},
	{
		"folke/todo-comments.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		opts = { signs = false },
	},
	{
		"j-hui/fidget.nvim",
		opts = {},
	},
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
		},
		opts = {},
		config = function()
			vim.keymap.set("n", "<C-n>", "<Cmd>Neotree toggle<CR>", { silent = true, noremap = true })
		end,
	},
	{
		"rcarriga/nvim-notify",
		config = function()
			vim.notify = require("notify")
		end,
	},
}
