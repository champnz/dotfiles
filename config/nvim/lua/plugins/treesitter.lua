local Plugin = { "nvim-treesitter/nvim-treesitter" }

Plugin.build = ":TSUpdate"

Plugin.lazy = false

Plugin.config = function()
	require('nvim-treesitter').install({
		"c",
		"cpp",
		"zig",
		"rust",
		"go",
		"dart",
		"javascript",
		"typescript",
		"tsx",
		"css",
		"html",
		"python",
		"markdown",
	})

	vim.api.nvim_create_autocmd("FileType", {
		pattern = {
			"c",
			"cpp",
			"zig",
			"rust",
			"go",
			"dart",
			"javascript",
			"typescript",
			"javascriptreact",
			"typescriptreact",
			"css",
			"html",
			"python",
			"markdown"
		},
		callback = function()
			vim.treesitter.start()
		end,
	})
end

return Plugin
