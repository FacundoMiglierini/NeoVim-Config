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
    {'HiPhish/rainbow-delimiters.nvim'},
    {'windwp/nvim-ts-autotag'},
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
    {
      "iamcco/markdown-preview.nvim",
      cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
      build = "cd app && yarn install",
      init = function()
        vim.g.mkdp_filetypes = { "markdown" }
      end,
      ft = { "markdown" },
    },
    {
      "folke/snacks.nvim",
      priority = 1000,
      lazy = false,
      ---@type snacks.Config
      opts = {
        bigfile = { enabled = true },
        dashboard = { enabled = true },
        explorer = { enabled = true },
        git = { enabled = true },
        indent = { enabled = true },
        input = { enabled = true },
        picker = { enabled = true },
        notifier = { enabled = true },
        quickfile = { enabled = true },
        rename = { enabled = true },
        scope = { enabled = true },
        scroll = { enabled = true },
        statuscolumn = { enabled = true },
        words = { enabled = true },
      },
    }
}

require("lazy").setup(plugins, {})
