vim.g.mapleader = ' '
local map = vim.api.nvim_set_keymap
map('n', '<C-h>', '<C-w>h', {noremap = true, silent = false})
map('n', '<C-l>', '<C-w>l', {noremap = true, silent = false})
map('n', '<C-j>', '<C-w>j', {noremap = true, silent = false})
map('n', '<C-k>', '<C-w>k', {noremap = true, silent = false})

map('i', 'jk', '<ESC>', {noremap = true, silent = false})
map('i', 'kj', '<ESC>', {noremap = true, silent = false})

map('n', '<leader>e', ':NvimTreeToggle<CR>', {noremap = true, silent = true})

map('v', '<', '<gv', {noremap = true, silent = false})
map('v', '>', '>gv', {noremap = true, silent = false})

--LSPsaga
map("n", "t", "<cmd>Lspsaga term_toggle<CR>", {noremap=true})
map("n", "1", "<cmd>Lspsaga hover_doc<CR>", {noremap=true})
map("n", "2", "<cmd>Lspsaga hover_doc ++keep<CR>", {noremap=true})
map("n", "3", "<cmd>Lspsaga outline<CR>", {noremap=true})
map("n", "4", "<cmd>Lspsaga code_action<CR>", {noremap=true})
map("n", "gd", "<cmd>Lspsaga goto_definition<CR>", {noremap=true})
map("n", "gtd", "<cmd>Lspsaga goto_type_definition<CR>", {noremap=true})
map("n", "ew", "<cmd>Lspsaga diagnostic_jump_prev<CR>", {noremap=true})
map("n", "er", "<cmd>Lspsaga diagnostic_jump_next<CR>", {noremap=true})
map("n", "5", "<cmd>Lspsaga finder ref<CR>", {noremap=true})
map("n", "6", "<cmd>Lspsaga finder def<CR>", {noremap=true})
map("n", "f", "<cmd>Lspsaga rename<CR>", {noremap=true})

vim.g.copilot_no_tab_map = true
vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })

vim.cmd[[tnoremap <Esc> <C-\><C-n>]]
