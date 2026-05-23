-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set
map("t", "<esc>", [[<C-\><C-n>]], { desc = "Escape terminal mode" })
-- Resize window using <ctrl> arrow keys
map("n", "<leader><C-k>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
map("n", "<leader><C-j>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
map("n", "<leader><C-l>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
map("n", "<leader><C-h>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })

-- 番号付きフロートを Normal モードから開く
map("n", "<leader>t1", "<cmd>1ToggleTerm direction=float<cr>", { desc = "Float Term 1" })
map("n", "<leader>t2", "<cmd>2ToggleTerm direction=float<cr>", { desc = "Float Term 2" })
map("n", "<leader>t3", "<cmd>3ToggleTerm direction=float<cr>", { desc = "Float Term 3" })
map("n", "<leader>t4", "<cmd>4ToggleTerm direction=float<cr>", { desc = "Float Term 4" })

-- 開いているターミナルから選んで切り替え
map("n", "<leader>ts", "<cmd>TermSelect<cr>", { desc = "Select Terminal" })

-- vim.snippet のデフォルト Tab マッピングを削除
pcall(vim.keymap.del, "i", "<Tab>")
pcall(vim.keymap.del, "s", "<Tab>")
pcall(vim.keymap.del, "i", "<S-Tab>")
pcall(vim.keymap.del, "s", "<S-Tab>")
