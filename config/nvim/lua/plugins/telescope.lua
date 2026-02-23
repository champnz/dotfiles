local Plugin = { "nvim-telescope/telescope.nvim" }

Plugin.version = "*"

Plugin.dependencies = {
	'nvim-lua/plenary.nvim',
	-- optional but recommended
	{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
}

return Plugin
