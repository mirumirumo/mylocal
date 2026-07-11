return {
  {
    "rebelot/kanagawa.nvim",
    opts = {
      compile = false,
      transparent = false,
      theme = "dragon",
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
      on_highlights = function(hl, c)
        hl.NvimTreeOpenedFile = { fg = c.orange, bold = true, italic = false }
        hl.NvimTreeOpenedHL = { fg = c.orange, bold = true, italic = false }
        hl.NvimTreeModifiedFile = { fg = c.red }
      end,
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
}
