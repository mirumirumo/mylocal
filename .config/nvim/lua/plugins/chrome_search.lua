return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      -- カーソル下の単語をChromeで検索
      {
        "<leader><C-w>s",
        function()
          local word = vim.fn.expand("<cword>")
          vim.fn.jobstart({ "open", "-a", "Google Chrome", "https://www.google.com/search?q=" .. word })
        end,
        desc = "Chrome: search word under cursor",
      },
      -- 任意のキーワードを入力して検索
      {
        "<leader><C-w>S",
        function()
          vim.ui.input({ prompt = "Google: " }, function(input)
            if input and input ~= "" then
              local query = input:gsub(" ", "+")
              vim.fn.jobstart({ "open", "-a", "Google Chrome", "https://www.google.com/search?q=" .. query })
            end
          end)
        end,
        desc = "Chrome: search prompt",
      },
    },
  },
}
