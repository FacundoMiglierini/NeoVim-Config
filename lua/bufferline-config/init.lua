require("bufferline").setup{
  options = {
    offsets = {
        {
            filetype = "NvimTree",
            text = "File Explorer",
            highlight = "Directory",
            separator = true -- use a "true" to enable the default, or set your own character
        }
    },
    hover = {
        enabled = true,
        delay = 200,
        reveal = {'close'}
    },
    numbers = "ordinal",
  }
}

vim.cmd[[
nnoremap <silent><TAB> :BufferLineCycleNext<CR>
nnoremap <silent><S-TAB> :BufferLineCyclePrev<CR>
]]
