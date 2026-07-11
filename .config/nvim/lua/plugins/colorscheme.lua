return {
  -- kanagawa 本体
  {
    "rebelot/kanagawa.nvim",
    opts = {
      compile = false,
      transparent = false,
      theme = "wave",
      commentStyle = { italic = false },
      keywordStyle = { italic = false },
      background = {
        dark = "wave",
        light = "lotus",
      },
      colors = {
        theme = {
          all = {
            ui = {
              bg_gutter = "none",
            },
          },
        },
      },
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa",
    },
  },
}
