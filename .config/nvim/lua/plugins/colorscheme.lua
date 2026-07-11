return {
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
        light = "wave",
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
    "tokyonight.nvim",
    opts = {
      style = "storm",
      light_style = "day",
      transparent = false,
      terminal_colors = true,
      styles = {
        comments = { italic = false },
        keywords = { italic = false },
        functions = {},
        variables = {},
        sidebars = "dark",
        floats = "dark",
      },
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
}
