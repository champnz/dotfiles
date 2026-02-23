local Plugin = { "m4xshen/autoclose.nvim" }

Plugin.config = function()
	require("autoclose").setup()
end

return Plugin
