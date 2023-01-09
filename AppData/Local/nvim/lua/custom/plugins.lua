return function (use)
  use({
    "folke/which-key.nvim",
      config = function()
        require("which-key").setup({})
      end
  })

  use({ "omnisharp/omnisharp-vim" })

  use { "ellisonleao/gruvbox.nvim" }

  use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })

  use({
    'rose-pine/neovim',
    as = 'rose-pine',
  })
end
