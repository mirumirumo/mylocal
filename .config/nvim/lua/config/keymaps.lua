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

-- vim.snippet のデフォルト Tab マッピングを削除
pcall(vim.keymap.del, "i", "<Tab>")
pcall(vim.keymap.del, "s", "<Tab>")
pcall(vim.keymap.del, "i", "<S-Tab>")
pcall(vim.keymap.del, "s", "<S-Tab>")

