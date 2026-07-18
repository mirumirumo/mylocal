return {
  {
    "romus204/tree-sitter-manager.nvim",
    config = function()
      require("tree-sitter-manager").setup({
        auto_install = true,
        ensure_installed = {
          -- Go
          "go",
          "gomod",
          "gosum",
          "gowork",
          -- TypeScript / React
          "typescript",
          "tsx",
          "javascript",
          -- 競技プログラミング / その他
          "cpp",
          "rust",
          "python",
          -- インフラ・設定系
          "bash",
          "json",
          "yaml",
          "toml",
          "html",
          "css",
          "sql",
          "dockerfile",
          "gitcommit",
          "gitignore",
          "diff",
          "regex",
          "printf",
          "xml",
        },

        noauto_install = {
          "c",
          "lua",
          "markdown",
          "markdown_inline",
          "query",
          "vim",
          "vimdoc",
        },

        -- 従来の正規表現ハイライトを使用
        -- nohighlight = { "yaml" },
      })

      -- fold: nvim-treesitter が担っていた treesitter fold を
      -- Neovim コアの foldexpr で代替する
      vim.o.foldmethod = "expr"
      vim.o.foldexpr = "v:lua.vim.treesitter.foldexpr()"
      vim.o.foldlevel = 99 -- 開いた状態を既定にする
    end,
  },
}
