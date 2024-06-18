local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = ' '

local plugins = {
     'shaunsingh/nord.nvim',
     'ful1e5/onedark.nvim',
     'folke/tokyonight.nvim',
     'EdenEast/nightfox.nvim',
     'marko-cerovac/material.nvim',
     {'nvim-treesitter/nvim-treesitter', build = ":TSUpdate"},
     {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons', lazy = true }
    },
    {'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons'},
    {'nvim-tree/nvim-tree.lua', dependencies = { 'nvim-tree/nvim-web-devicons'}, version = "nightly"},
    {'windwp/nvim-ts-autotag'},
    {'p00f/nvim-ts-rainbow'},
    {'windwp/nvim-autopairs'},
    {'folke/which-key.nvim'},
    {
    'nvim-telescope/telescope.nvim',
    dependencies = { {'nvim-lua/plenary.nvim'} },
    },
     'nvim-tree/nvim-web-devicons',
     'hrsh7th/cmp-nvim-lsp',
     'hrsh7th/cmp-buffer',
     'hrsh7th/cmp-path',
     'hrsh7th/cmp-cmdline',
     'hrsh7th/nvim-cmp',
     'hrsh7th/cmp-vsnip',
     'hrsh7th/vim-vsnip',
     'skywind3000/vim-terminal-help',
    {
    'jedrzejboczar/possession.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    },
     'gbrlsnchs/winpick.nvim',
     'mechatroner/rainbow_csv',
    {
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
        'neovim/nvim-lspconfig',
    },
     'nvimdev/lspsaga.nvim',
     'lambdalisue/suda.vim',
     'onsails/lspkind-nvim',
     'tzachar/local-highlight.nvim',
     'nmac427/guess-indent.nvim',
     'norcalli/nvim-colorizer.lua',
}

require("lazy").setup(plugins, {})
