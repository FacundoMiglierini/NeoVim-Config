require('lspconfig').lua_ls.setup{}
require('lspconfig').clangd.setup{}
require('lspconfig').pyright.setup{
    venvPath = "home/facundom/envs/data-science"
}
require('lspconfig').jdtls.setup{}
require('lspconfig').bashls.setup{}
require('lspconfig').marksman.setup{}
require('lspconfig').kotlin_language_server.setup{}
require('mason').setup()
require('mason-lspconfig').setup()
require('lsp-config/diagnostic_signs')
