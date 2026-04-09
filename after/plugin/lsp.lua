require('mason').setup({})

require('mason-lspconfig').setup({
    ensure_installed = {"clangd", "jdtls", "pyright", "rust_analyzer", "ts_ls",
                        "html", "cssls", "jsonls", "glsl_analyzer", "gopls",
                        "buf_ls"},
})

local lspconfig = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').default_capabilities()

vim.lsp.config('jdtls', { capabilities = capabilities })
vim.lsp.config('pyright', { capabilities = capabilities })
vim.lsp.config('ts_ls', { capabilities = capabilities })
vim.lsp.config('html', { capabilities = capabilities })
vim.lsp.config('cssls', { capabilities = capabilities })
vim.lsp.config('jsonls', { capabilities = capabilities })
vim.lsp.config('glsl_analyzer', { capabilities = capabilities })
vim.lsp.config('buf_ls', { capabilities = capabilities })

vim.lsp.config('clangd', {
    cmd = {
        'clangd',
        '--background-index=false'
    },
    filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "hpp" },
    capabilities = capabilities
})

-- vim.lsp.config('gopls', {
lspconfig.gopls.setup({
    root_dir = lspconfig.util.root_pattern("go.work", "go.mod", ".git"),
    capabilities = capabilities
})

vim.lsp.config('rust_analyzer', {
    settings = {
        ["rust-analyzer"] = {
            cargo = {
                allFeatures = true,
            },
            checkOnSave = {
                enable = false,
            },
        }
    },
    capabilities = capabilities
})
