local Plugin = { "nvim-treesitter/nvim-treesitter" }

Plugin.build = ":TSUpdate"

Plugin.lazy = false

Plugin.config = function()
	require('nvim-treesitter').install({ "c", "cpp", "zig", "rust", "go", "dart", "python" })

	vim.api.nvim_create_autocmd("FileType", {
		pattern = { "c", "cpp", "zig", "rust", "go", "dart", "python" },
		callback = function()
			vim.treesitter.start()
		end,
	})
end

return Plugin
