return {
  {
    "windwp/nvim-ts-autotag",
    event = "InsertEnter",
    opts = {},
  },
  {
    "windwp/nvim-autopairs",
    opts = {
      check_ts = true,
    },
    config = function(_, opts)
      local npairs = require("nvim-autopairs")
      local Rule = require("nvim-autopairs.rule")
      local cond = require("nvim-autopairs.conds")

      npairs.setup(opts)

      -- ジェネリクス用: 直前が識別子のときだけ補完（Vec< / Array< / Foo::< など）
      npairs.add_rule(
        Rule("<", ">", { "typescript", "typescriptreact", "rust", "java", "cpp", "cs" })
          :with_pair(cond.before_regex("%a+:?:?$", 3))
          :with_move(function(o)
            return o.char == ">"
          end)
      )

      -- マークアップ用: 常に補完
      npairs.add_rule(Rule("<", ">", { "html", "xml", "vue", "svelte" }):with_move(function(o)
        return o.char == ">"
      end))
    end,
  },
  {
    "kylechui/nvim-surround",
    version = "^4.0.0", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
  },
}
