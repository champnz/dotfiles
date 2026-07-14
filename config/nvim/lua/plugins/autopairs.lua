local Plugin = { 'windwp/nvim-autopairs' }

Plugin.event = "InsertEnter"

Plugin.config = function()
	require("nvim-autopairs").setup({
		check_ts = true,
	})
end

return Plugin
