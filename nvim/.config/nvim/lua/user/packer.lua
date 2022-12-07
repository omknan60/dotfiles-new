return require('packer').startup(function(use)

    -- Packer can manage itself
    use('wbthomason/packer.nvim')
    use('theprimeagen/harpoon')
    use('nvim-lua/plenary.nvim')

    -- Colorschemes
    use('gruvbox-community/gruvbox')
    use("tjdevries/colorbuddy.nvim")
    use("tjdevries/gruvbuddy.nvim")
    use("folke/tokyonight.nvim")
    use({"catppuccin/nvim", as = "catppuccin" })
    use({ 'rose-pine/neovim', as = 'rose-pine' })

    -- All the things
    use("neovim/nvim-lspconfig")
    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
    }

    use("hrsh7th/cmp-nvim-lsp")
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/cmp-path")
    use("hrsh7th/nvim-cmp")
    use("glepnir/lspsaga.nvim")
    use("onsails/lspkind-nvim")
    use("L3MON4D3/LuaSnip")
    use("saadparwaiz1/cmp_luasnip")

    use("nvim-treesitter/nvim-treesitter")
    use("nvim-treesitter/nvim-treesitter-context")

    use("mfussenegger/nvim-dap")
    use("rcarriga/nvim-dap-ui")
    use("theHamsta/nvim-dap-virtual-text")

end)
