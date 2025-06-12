-- Ensure Mason is set up first
require('mason').setup()

-- Set up mason-lspconfig
require('mason-lspconfig').setup({
    -- List of servers to ensure are installed by Mason
    ensure_installed = {
        "pyright",
        "lua_ls",
        -- Add other servers you use
    },
    -- This is where you configure individual LSP servers
    handlers = {
        -- Default handler for most servers (if you don't need specific overrides)
        function(server_name)
            require('lspconfig')[server_name].setup({
                on_attach = function(client, bufnr)
                    -- Your common on_attach keymaps, etc.
                    -- e.g., require('keymaps.lsp').on_attach(client, bufnr)
                    -- Or directly define them here
                    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
                    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = bufnr })
                    -- ... other keymaps
                end,
                capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities()),
                -- Add any global settings you want for all servers
            })
        end,

        -- Specific handler for Pyright to define its root_dir
        pyright = function()
            local lspconfig = require('lspconfig')
            local util = require('lspconfig/util')

            lspconfig.pyright.setup({
                on_attach = function(client, bufnr)
                    -- Your on_attach logic for Pyright (can be the same as global or specific)
                    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
                    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = bufnr })
                    -- ...
                end,
                capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities()),
                
                -- *** THIS IS THE CRUCIAL PART FOR ROOT DIR ***
                root_dir = function(fname)
                    local root_files = {
                        "pyproject.toml",
                        "setup.py",
                        "setup.cfg",
                        "requirements.txt",
                        "Pipfile",
                        "pyrightconfig.json",
                    }
                    return util.root_pattern(unpack(root_files))(fname) or util.find_git_ancestor(fname) or util.path.dirname(fname)
                end,
                -- You can also add Pyright-specific settings here
                settings = {
                    python = {
                        analysis = {
                            autoSearchPaths = true,
                            diagnosticMode = "openFilesOnly",
                            useLibraryCodeForTypes = true,
                            typeCheckingMode = "basic",
                        },
                    },
                },
            })
        end,
        -- Add other specific server handlers here if needed
    }
})
