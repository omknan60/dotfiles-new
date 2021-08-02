return require('packer').startup(function()

  use 'wbthomason/packer.nvim'
  use 'tpope/vim-vinegar'
  use 'neovim/nvim-lspconfig'
  use 'kabouzeid/nvim-lspinstall'
  use 'hrsh7th/nvim-compe'
  use 'hrsh7th/vim-vsnip'
  use 'windwp/nvim-autopairs'
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  use 'hoob3rt/lualine.nvim'
  use 'kyazdani42/nvim-web-devicons'
end)
