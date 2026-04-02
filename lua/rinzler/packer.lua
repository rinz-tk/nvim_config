vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use 'nvim-lua/plenary.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use {
        'rebelot/kanagawa.nvim',
        as = 'kanagawa',
        config = function()
            vim.cmd('colorscheme kanagawa-dragon')
        end
    }

    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

    use {
        'ThePrimeagen/harpoon',
        branch = 'harpoon2',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use('neovim/nvim-lspconfig')

    use('williamboman/mason.nvim')
    use('williamboman/mason-lspconfig.nvim')

    use('hrsh7th/nvim-cmp')
    use('hrsh7th/cmp-nvim-lsp')
    use('L3MON4D3/LuaSnip')

    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make'}

    use('mbbill/undotree')

    use('tpope/vim-commentary')

    use('tpope/vim-surround')

    use {
        'smoka7/hop.nvim',
        tag = '*', -- optional but strongly recommended
    }

    use("stevearc/oil.nvim")
end)
