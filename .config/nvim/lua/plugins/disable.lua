return {

  -- disable trouble
  -- { "folke/trouble.nvim", enabled = false },
  {
    "folke/noice.nvim",
    opts = {
      cmdline = {
        enabled = false,
      },
      messages = { enabled = false },
    },
  },
  -- {
  --   { "nvim-treesitter/nvim-treesitter", enabled = false },
  -- },
  -- {
  --   { "nvim-treesitter/nvim-treesitter-textobjects", enabled = false },
  -- },
}
