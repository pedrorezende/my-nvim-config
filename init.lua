--
-- https://github.com/nvim-lua/kickstart.nvim
--
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.have_nerd_font = true

local opt = vim.opt
opt.number = true
opt.autowrite = true
opt.ignorecase = true
opt.relativenumber = true
opt.mouse = "a"
opt.expandtab = true
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.showmode = false
opt.clipboard = "unnamedplus"
opt.breakindent = true
opt.undofile = true
opt.smartcase = true
opt.signcolumn = "yes"
opt.updatetime = 250
opt.timeoutlen = 300
opt.splitright = true
opt.splitbelow = true
opt.inccommand = "split"
opt.cursorline = true
opt.scrolloff = 10
opt.virtualedit = "block"
opt.wrap = false -- Disable line wrap
opt.hlsearch = true
opt.spelllang = { "en" }

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

require("keymaps")

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

-- [[ Install `lazy.nvim` plugin manager ]]
--    See `:help lazy.nvim.txt` or https://github.com/folke/lazy.nvim for more info
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

-- [[ Configure and install plugins ]]
require("lazy").setup({
	{ import = "plugins" },
	"tpope/vim-sleuth", -- Detect tabstop and shiftwidth automatically
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	{ "numToStr/Comment.nvim", opts = {} }, -- "gc" to comment visual regions/lines
})

vim.cmd("colorscheme catppuccin")
require("cmp").setup({
	formatting = { format = require("tailwindcss-colorizer-cmp").formatter },
})
-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
