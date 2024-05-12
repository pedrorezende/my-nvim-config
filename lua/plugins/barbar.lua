local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Move to previous/next
map("n", "H", "<Cmd>BufferPrevious<CR>", opts)
map("n", "L", "<Cmd>BufferNext<CR>", opts)
-- Re-order to previous/next
map("n", "b,", "<Cmd>BufferMovePrevious<CR>", opts)
map("n", "b.", "<Cmd>BufferMoveNext<CR>", opts)

-- Goto buffer in position...
map("n", "b1", "<Cmd>BufferGoto 1<CR>", opts)
map("n", "b2", "<Cmd>BufferGoto 2<CR>", opts)
map("n", "b3", "<Cmd>BufferGoto 3<CR>", opts)
map("n", "b4", "<Cmd>BufferGoto 4<CR>", opts)
map("n", "b5", "<Cmd>BufferGoto 5<CR>", opts)
map("n", "b6", "<Cmd>BufferGoto 6<CR>", opts)
map("n", "b7", "<Cmd>BufferGoto 7<CR>", opts)
map("n", "b8", "<Cmd>BufferGoto 8<CR>", opts)
map("n", "b9", "<Cmd>BufferGoto 9<CR>", opts)
map("n", "b0", "<Cmd>BufferLast<CR>", opts)
-- Pin/unpin buffer
map("n", "bp", "<Cmd>BufferPin<CR>", opts)
-- Close buffer
map("n", "bd", "<Cmd>BufferClose<CR>", opts)
map("n", "bD", "<Cmd>BufferClose!<CR>", opts)
map("n", "bP", "<Cmd>BufferCloseAllButPinned<CR>", opts)

-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
-- Magic buffer-picking mode
map("n", "<C-b>", "<Cmd>BufferPick<CR>", opts)
-- Sort automatically by...
map("n", "bb", "<Cmd>BufferOrderByBufferNumber<CR>", opts)
map("n", "bn", "<Cmd>BufferOrderByName<CR>", opts)
map("n", "bf", "<Cmd>BufferOrderByDirectory<CR>", opts)
map("n", "bl", "<Cmd>BufferOrderByLanguage<CR>", opts)
map("n", "bw", "<Cmd>BufferOrderByWindowNumber<CR>", opts)

return {
	"romgrk/barbar.nvim",
	dependencies = {
		"lewis6991/gitsigns.nvim", -- OPTIONAL: for git status
		"nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
	},
	init = function()
		vim.g.barbar_auto_setup = false
	end,
	opts = {
		animation = false,
		auto_hide = 0,
		-- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
		-- animation = true,
		-- insert_at_start = true,
		-- …etc.
	},
	version = "^1.0.0", -- optional: only update when a new 1.x version is released
}
