local status, telescope = pcall(require, "telescope")
if not status then
	return
end

telescope.setup({
	extensions = {
		fzf = {
			fuzzy = true, -- false will only do exact matching
			override_generic_sorter = true, -- override the generic sorter
			override_file_sorter = true, -- override the file sorter
			case_mode = "smart_case", -- or "ignore_case" or "respect_case"
			-- the default case_mode is "smart_case"
		},
	},
})

telescope.load_extension("fzf")

vim.keymap.set("n", "sf", function()
	local function telescope_buffer_dir()
		return vim.fn.expand("%:p:h")
	end

	telescope.extensions.file_browser.file_browser({
		path = "%:p:h",
		cwd = telescope_buffer_dir(),
		respect_gitignore = false,
		hidden = true,
		grouped = true,
		previewer = false,
		initial_mode = "normal",
		layout_config = { height = 40 },
	})
end)

vim.keymap.set("n", ";f", function()
	local builtin = require("telescope.builtin")
	builtin.find_files({
		no_ignore = false,
		hidden = true,
	})
end)

vim.keymap.set("n", "\\\\", function()
	local builtin = require("telescope.builtin")
	builtin.buffers()
end)

vim.keymap.set("n", ";t", function()
	local builtin = require("telescope.builtin")
	builtin.help_tags()
end)

vim.keymap.set("n", ";;", function()
	local builtin = require("telescope.builtin")
	builtin.resume()
end)

vim.keymap.set("n", ";s", function()
	local builtin = require("telescope.builtin")
	builtin.treesitter()
end)
