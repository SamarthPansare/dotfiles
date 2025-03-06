return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup({
                ui = {
                    border = "rounded", -- Options: "none", "single", "double", "rounded", "solid", "shadow"
                },
            })
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "pyright", "ts_ls"}
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            local capabilities = require('cmp_nvim_lsp').default_capabilities()
            local on_attach = function(client, bufnr)
                print("LSP attached: " .. client.name)

                vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = bufnr })
                vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { buffer = bufnr })
                vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { buffer = bufnr })
                vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, { buffer = bufnr })
            end
            lspconfig.lua_ls.setup({
                on_attach = on_attach,
                capabilities = capabilities
            })
            lspconfig.pyright.setup({
                on_attach = on_attach,
                capabilities = capabilities
            })
            lspconfig.ts_ls.setup({
                on_attach = on_attach,
                capabilities = capabilities
            })
        end

    }

}
