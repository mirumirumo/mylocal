return {
  "nvim-lualine/lualine.nvim",
  opts = function(_, opts)
    opts.options = vim.tbl_deep_extend("force", opts.options or {}, {
      theme = "kanagawa",
      globalstatus = true,
    })
  end,
}
