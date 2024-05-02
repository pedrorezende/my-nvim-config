local keymaps = vim.keymap

-- Increment / Decrement
keymaps.set("n", "+", "<C-a>")
keymaps.set("n", "-", "<C-x>")

-- Leave insert mode
keymaps.set("i", "kk", "<Esc>")
keymaps.set("i", "jj", "<Esc>")

-- Adding line without leaving normal mode
keymaps.set("n", "zo", "o<Esc>k")
keymaps.set("n", "zO", "O<Esc>j")

-- Select all
keymaps.set("n", "<C-a>", "gg<S-v>G")

-- Diagnostic keymaps
keymaps.set("n", "[e", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
keymaps.set("n", "]e", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
keymaps.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
keymaps.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Keybinds to make split navigation easier.
keymaps.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
keymaps.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
keymaps.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
keymaps.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

keymaps.set("n", "<leader>z", "<cmd>ZenMode<CR>")
