return {
  "nvim-lualine/lualine.nvim",
  opts = function(_, opts)
    opts.options = vim.tbl_deep_extend("force", opts.options or {}, {
      theme = "tokyonight",
      globalstatus = true,
    })
  end,
  -- config = function(_, opts)
  --   require("lualine").setup(opts)
  --   vim.api.nvim_set_hl(0, "StatusLine", { bg = "#2a2a37" })
  -- end,
}
