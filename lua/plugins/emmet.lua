return {
	"olrtg/nvim-emmet",
	config = function()
		vim.keymap.set({ "n", "v" }, "<leader>x", require("nvim-emmet").wrap_with_abbreviation)
	end,
	opts = {
		includeLanguages = { typescriptreact = "javascriptreact", javascript = "javascriptreact" },
	},
}
