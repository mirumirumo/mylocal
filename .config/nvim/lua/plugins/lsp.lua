return {
  -- InlayHintのグローバル無効化
  {
    "neovim/nvim-lspconfig",
    ops = {
      inlay_hint = {
        enable = false,
      },
    },
  },

  -- gopls用設定
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        gopls = {
          settings = {
            gopls = {
              staticcheck = false,
              hints = {
                assignVariableTypes = false,
                compositeLiteralFields = false,
                compositeLiteralTypes = false,
                constantValues = false,
                functionTypeParameters = false,
                parameterNames = false,
                rangeVariableTypes = false,
              },
              directoryFilters = {
                "-.git",
                "-.vscode",
                "-.idea",
                "-node_modules",
                "-vendor",
              },
            },
          },
        },
      },
    },
  },

  -- rust-analyzer用設定
  {
    "mrcjkb/rustaceanvim",
    opts = {
      server = {
        default_settings = {
          ["rust-analyzer"] = {
            inlayHints = {
              parameterHints = { enable = false },
              typeHints = { enable = true },
              chainingHints = { enable = true },
              closingBraceHints = { enable = true },
            },
          },
        },
      },
    },
  },
}
