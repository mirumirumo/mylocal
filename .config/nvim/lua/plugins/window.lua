-- ~/.config/nvim/lua/plugins/winresizer.lua
return {
  {
    "simeji/winresizer",
    keys = {
      { "<C-e>", "<cmd>WinResizerStartResize<cr>", desc = "Start WinResizer" },
    },
  },
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    event = "VeryLazy",
    opts = {
      open_mapping = [[<C-.>]], -- 開閉キー
      direction = "float", -- float / horizontal / vertical / tab
      size = function(term)
        if term.direction == "horizontal" then
          return 15
        elseif term.direction == "vertical" then
          return vim.o.columns * 0.4
        end
      end,
      float_opts = {
        border = "curved", -- single / double / shadow / curved
        winblend = 0, -- 透過度（0で不透明）
      },
      shading_factor = 2, -- 非フロート時、ターミナル背景を少し暗くする
      start_in_insert = true, -- 開いたらすぐ入力モード
      persist_size = true,
      persist_mode = true,
    },
    config = function(_, opts)
      require("toggleterm").setup(opts)

      function _G.set_terminal_keymaps()
        local o = { buffer = 0 }
        -- Esc でターミナルモードを抜ける
        vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], o)
        -- 各ウィンドウへの移動（t モードから直接）
        vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], o)
        vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], o)
        vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], o)
        vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], o)
      end

      vim.cmd("autocmd! TermOpen term://*toggleterm#* lua set_terminal_keymaps()")
    end,
  },
}
