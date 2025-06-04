require('plugins') --Plugins installation
require('keybindings') --Keybindings
require('options') --Settings
require('lualine-config') --Statusline
require('bufferline-config') --Bufferline
require('nvim-tree-config') --FileExplorer
require('treesitter-config') --Highlighter
require('autopairs-config') --Autopair
require('whichkey-config') --Keybindings 2
require('telescope-config') --Telescope
require('devicons-config') --Icon Pack for nvim-tree
require('cmp-config') --Autocomplete
require('possession-config') --Sessions management
require('lsp-config') --LSP
require('lspsaga-config') --LSP management
require('local-highlight-config') --Highlight word under cursor
require('guess-indent-config') --Automatic indentation 
require('nvim-colorizer-config') --Colorizer for Hexa strings

--THEMES
require('nord-config')
vim.cmd('colorscheme nord')
--vim.cmd('colorscheme onedark')
--vim.cmd('colorscheme nightfox')
--require('tokyo-night') --Tokyo night theme 
--vim.cmd('colorscheme tokyonight-night')
--vim.g.material_style = "palenight"
