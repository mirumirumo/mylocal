return {
  "stevearc/conform.nvim",
  optional = true,
  opts = {
    formatters = {
      black    = { prepend_args = { "--line-length", "120" } },
      rustfmt  = { prepend_args = { "--config", "max_width=120" } },
      prettier = { prepend_args = { "--print-width", "120", "--prose-wrap", "never" } },
    },
  },
}