return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      go = { "goimports" },
      lua = { "stylua" },
      rust = { "rustfmt" },
      javascript = { "prettier" },
      typescript = { "prettier" },
      typescriptreact = { "prettier" },
      json = { "prettier" },
      html = { "prettier" },
      css = { "prettier" },
      scss = { "prettier" },
      markdown = { "prettier" },
    },
    formatters = {
      black = { prepend_args = { "--line-length", "100" } },
      rustfmt = { prepend_args = { "--config", "max_width=100" } },
      prettier = { prepend_args = { "--print-width", "100", "--prose-wrap", "preserve" } },
    },
  },
}
