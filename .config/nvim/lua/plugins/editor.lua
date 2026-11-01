return {
  {
    "windwp/nvim-ts-autotag",
    event = "InsertEnter",
    opts = {
      -- タグ記法を使わない言語では ">" を autopairs に任せる（ジェネリクスの > スキップ用）
      per_filetype = {
        rust = { enable_close = false },
        typescript = { enable_close = false },
      },
    },
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

      -- 直後が ">" のとき ">" 入力で上書き移動する
      local move_gt = function(o)
        return o.char == ">"
      end

      -- ジェネリクス用: 直前が識別子のときだけ補完（Vec< / Array< / Foo::< など）
      npairs.add_rule(
        Rule("<", ">", { "typescript", "typescriptreact", "rust", "java", "cpp", "cs" })
          :with_pair(cond.before_regex("%a+:?:?$", 3))
          :with_move(move_gt)
      )

      -- マークアップ用: 常に補完
      npairs.add_rule(Rule("<", ">", { "html", "xml", "vue", "svelte" }):with_move(move_gt))

      -- 全言語共通: ペア挿入はせず ">" の上書き移動のみ（スニペット由来の <> にも効かせる）
      npairs.add_rule(Rule("<", ">"):with_pair(cond.none()):with_move(move_gt))
    end,
  },
  {
    "kylechui/nvim-surround",
    version = "^4.0.0", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
  },
}
