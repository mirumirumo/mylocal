return {
  "akinsho/bufferline.nvim",
  opts = function(_, opts)
    opts.options = vim.tbl_deep_extend("force", opts.options or {}, {
      separator_style = "thin",
      show_buffer_close_icons = true,
      show_close_icon = false,
      diagnostics = "nvim_lsp",
      integrations = {
        bufferline = true,
      },
    })
  end,
}
