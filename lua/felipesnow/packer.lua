return require("packer").startup(function()
  use("wbthomason/packer.nvim")

  use("nvim-lua/plenary.nvim")
  use("nvim-telescope/telescope.nvim")

  use("williamboman/mason.nvim")
  use("williamboman/mason-lspconfig")
  use("neovim/nvim-lspconfig")

  use("hrsh7th/cmp-nvim-lsp")
  use("hrsh7th/cmp-buffer")
  use("hrsh7th/nvim-cmp")
  use("L3MON4D3/LuaSnip")

  use({ "nvim-treesitter/nvim-treesitter" })
  use("ur4ltz/surround.nvim")
  use("mhanberg/elixir.nvim")
  use("akinsho/flutter-tools.nvim")
  use 'ful1e5/onedark.nvim'

  use("ahmedkhalf/project.nvim")
  use("nvim-lualine/lualine.nvim")
  use("SmiteshP/nvim-navic")


  use("tpope/vim-fugitive")
  use("tommcdo/vim-fubitive")

  use("andweeb/presence.nvim")
  use("lewis6991/gitsigns.nvim")


  use("beauwilliams/focus.nvim")
  use({ "shaunsingh/oxocarbon.nvim", branch = 'fennel' })

  use('sam4llis/nvim-tundra')

  use('ThePrimeagen/vim-be-good')

  use("folke/zen-mode.nvim")


  use("nvim-tree/nvim-tree.lua")
  use("nvim-tree/nvim-web-devicons")
  use("Matsuuu/pinkmare")
end)
