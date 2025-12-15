local Plugin = { "j-hui/fidget.nvim" }

Plugin.opts = {}

Plugin.config = function()
	require("fidget").setup({
		notification = {
			window = {
				winblend = 0,
				align = "bottom",
				relative = "win",
				avoid = {
					"NvimTree",
				},
			},
		},
	})
end

return Plugin
