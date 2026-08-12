-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- ファイルタイプ設定
vim.filetype.add({
  pattern = {
    [".*%.json%.golden"] = "json",
  },
})

-- ファイル保存時、末尾に改行を入れる
vim.opt.fixendofline = true

vim.opt.cmdheight = 1
