local on_attach = function(_, bufnr)
	local bufmap = function(keys, func)
		vim.keymap.set("n", keys, func, { buffer = bufnr })
	end

	bufmap("<leader>r", "<Cmd>Lspsaga rename<CR>")
	bufmap("<leader>a", "<Cmd>Lspsaga code_action<CR>")

	bufmap("gd", "<Cmd>Lspsaga peek_definition<CR>")
	-- bufmap("gD", vim.lsp.buf.declaration)
	-- bufmap("gI", vim.lsp.buf.implementation)
	bufmap("<leader>D", vim.lsp.buf.type_definition)

	bufmap("gr", require("telescope.builtin").lsp_references)
	bufmap("<leader>s", require("telescope.builtin").lsp_document_symbols)
	bufmap("<leader>S", require("telescope.builtin").lsp_dynamic_workspace_symbols)

	bufmap("K", "<Cmd>Lspsaga hover_doc<CR>")

	vim.api.nvim_buf_create_user_command(bufnr, "Format", function(_)
		vim.lsp.buf.format()
	end, {})
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

-- mason
require("mason").setup()

require("mason-lspconfig").setup({
	ensure_installed = {
		"lua_ls",
		"pyright",
	},
})

require("mason-tool-installer").setup({
	ensure_installed = {
		"stylua",
		"black",
		"isort",
		"ruff",
		"shfmt",
	},
	run_on_start = true,
	start_delay = 300,
	debounce_hours = 5,
})

require("mason-lspconfig").setup_handlers({

	function(server_name)
		require("lspconfig")[server_name].setup({
			on_attach = on_attach,
			capabilities = capabilities,
		})
	end,

	["lua_ls"] = function()
		require("neodev").setup()
		require("lspconfig").lua_ls.setup({
			on_attach = on_attach,
			capabilities = capabilities,
			settings = {
				Lua = {
					workspace = { checkThirdParty = false },
					telemetry = { enable = false },
				},
			},
		})
	end,
	["pyright"] = function()
		require("lspconfig").pyright.setup({
			on_attach = on_attach,
			capabilities = capabilities,
			settings = {
				python = {
					analysis = {
						autoSearchPaths = true,
						diagnosticMode = "openFilesOnly",
						useLibraryCodeForTypes = true,
					},
				},
			},
		})
	end,
})
