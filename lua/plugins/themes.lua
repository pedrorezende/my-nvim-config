return {
	{
		"AlexvZyl/nordic.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("nordic").load()
		end,
	},
	{ "catppuccin/nvim", name = "catppuccin" },
	{ "rose-pine/neovim", name = "rose-pine" },
	{ "sainnhe/edge", name = "edge" },
}
