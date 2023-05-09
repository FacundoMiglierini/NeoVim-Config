local function session_name()
    return require('possession.session').session_name or ''
end

require('lualine').setup({
  options = { theme = 'tokyonight', },
  sections = {
    lualine_a = { session_name,'lsp_progress'},
  }
})

