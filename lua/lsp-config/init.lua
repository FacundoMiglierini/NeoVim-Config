require('lspconfig').lua_ls.setup{}
require('lspconfig').clangd.setup{}
require('lspconfig').pyright.setup{
    venvPath = "home/facundom/github/Envs/data-science"
}
require('lspconfig').jdtls.setup{}
require('lspconfig').bashls.setup{}
require('lspconfig').marksman.setup{}
require('mason').setup()
require('mason-lspconfig').setup()
require('lsp-config/diagnostic_signs')
