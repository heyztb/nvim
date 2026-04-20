return {
	-- here only for wrapping html tags
	-- the language server handles expansion/completion; this plugin is just for wrapping tags
	"olrtg/nvim-emmet",
	config = function()
		vim.keymap.set({ "n", "v" }, "<leader>xe", require("nvim-emmet").wrap_with_abbreviation)
	end,
}
