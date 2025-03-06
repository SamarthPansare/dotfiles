return {
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = function()
            require('nvim-autopairs').setup({
                disable_filetype = { "TelescopePrompt", "vim" },
            })
        end
    },
    {
        "tpope/vim-commentary",
    },
    {
        "ray-x/lsp_signature.nvim", -- Signature help plugin
        config = function()
            require("lsp_signature").setup({
                bind = true, -- Mandatory, otherwise border config won't work
                floating_window = true, -- Show signature in a floating window
                hint_enable = true, -- Show hints as you type
                hint_prefix = "🐾 ", -- Fancy icons or text
                handler_opts = {
                    border = "rounded", -- Border style
                },
            })
        end
    },
    {
        "hrsh7th/cmp-nvim-lsp",
    },
    {
        'L3MON4D3/LuaSnip',
        dependencies = {
            'saadparwaiz1/cmp_luasnip',
            "rafamadriz/friendly-snippets"
        },
        config = function()
            local ls = require "luasnip"
            require("luasnip.loaders.from_vscode").lazy_load()

            -- LuaSnip Keymaps
            vim.keymap.set("i", "<C-k>", function()
                if ls.expand_or_jumpable() then
                    ls.expand_or_jump()
                end
            end, { silent = true })

            vim.keymap.set("i", "<C-j>", function()
                if ls.jumpable(-1) then
                    ls.jump(-1)
                end
            end, { silent = true })

            vim.keymap.set("s", "<C-k>", function()
                if ls.jumpable(1) then
                    ls.jump(1)
                end
            end, { silent = true })
        end
    },
    {
        "hrsh7th/nvim-cmp",
        config = function()
            local cmp = require 'cmp'
            require("luasnip.loaders.from_vscode").lazy_load()
            cmp.setup({
                snippet = {
                    expand = function(args)
                        require('luasnip').lsp_expand(args.body)
                    end,
                },
                mapping = cmp.mapping.preset.insert({
                    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
                    ['<C-f>'] = cmp.mapping.scroll_docs(4),
                    ['<C-Space>'] = cmp.mapping.complete(),
                    ['<C-e>'] = cmp.mapping.abort(),
                    ['<CR>'] = cmp.mapping.confirm({ select = true }),
                    -- New Keymaps for Snippets, Variables, and Functions
                    ['<C-s>'] = cmp.mapping(function(fallback)
                        cmp.complete({ config = { sources = { { name = 'luasnip' } } } })
                    end, { 'i', 's' }),
                    ['<C-v>'] = cmp.mapping(function(fallback)
                        cmp.complete({ config = { sources = { { name = 'buffer' } } } })
                    end, { 'i', 's' }),
                    ['<C-f>'] = cmp.mapping(function(fallback)
                        cmp.complete({ config = { sources = { { name = 'nvim_lsp' } } } })
                    end, { 'i', 's' }),
                }),
                window = {
                    completion = {
                        border = 'rounded', -- Adds a rounded border to the completion menu
                    },
                    documentation = {
                        border = 'rounded', -- Adds a rounded border to the documentation window
                    },
                },
                sources = cmp.config.sources({
                    --{ name = 'codeium' },
                    { name = 'nvim_lsp' },
                    { name = 'luasnip' }, -- For luasnip users.
                }, {
                    { name = 'buffer' },
                })
            })
        end
    }
}
