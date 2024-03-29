-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'shaunsingh/nord.nvim'
    use 'ful1e5/onedark.nvim'
    use 'folke/tokyonight.nvim'
    use 'EdenEast/nightfox.nvim'
    use 'marko-cerovac/material.nvim'
    use {'nvim-treesitter/nvim-treesitter', run = ":TSUpdate"}
    use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
    use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }
    use {'windwp/nvim-ts-autotag'}
    use {'p00f/nvim-ts-rainbow'}
    use {"windwp/nvim-autopairs"}
    use {"folke/which-key.nvim"}
    use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
    }
    use 'nvim-tree/nvim-web-devicons'

    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'
    use 'skywind3000/vim-terminal-help'
    use {
    'jedrzejboczar/possession.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
    }
    use 'gbrlsnchs/winpick.nvim'
    use 'mechatroner/rainbow_csv'
    use {
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
        'neovim/nvim-lspconfig',
    }
    use 'nvimdev/lspsaga.nvim'
    use 'lambdalisue/suda.vim'
    use 'onsails/lspkind-nvim'
    use 'folke/trouble.nvim'
    use 'tzachar/local-highlight.nvim'
end)
