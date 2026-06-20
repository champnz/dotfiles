local Plugin = { "akinsho/toggleterm.nvim" }

Plugin.version = "*"

Plugin.config = function()
	require("toggleterm").setup({
		direction = "float",
		float_opts = {
			border = "curved",
			winblend = 0,
		}
	})

	function _G.set_terminal_keymaps()
		local opts = { buffer = 0 }
		vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
	end

	-- if you only want these mappings for toggle term use term://*toggleterm#* instead
	vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
end

return Plugin
