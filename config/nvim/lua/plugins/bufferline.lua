local Plugin = { "akinsho/bufferline.nvim" }

Plugin.dependencies = { "nvim-tree/nvim-web-devicons" }

Plugin.version = "*"

Plugin.config = function()
	require("bufferline").setup({
		options = {
			diagnostics = "nvim_lsp",
			diagnostics_update_on_event = true, -- use nvim's diagnostic handler
		}
	})
end

return Plugin
