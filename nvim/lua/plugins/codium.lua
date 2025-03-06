return {
    "Exafunction/codeium.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "MunifTanjim/nui.nvim", -- For chat UI
        "nvim-telescope/telescope.nvim",
        "hrsh7th/nvim-cmp",
    },
    event = 'BufEnter',
    config = function()
        codeium = require("codeium").setup({
            virtual_text = {
                enabled = true,
                key_bindings = {
                    -- Accept the current completion.
                    accept = "<Tab>",
                    -- Clear the virtual text.
                    clear = "<C-z>c",
                    -- Cycle to the next completion.
                    next = "<C-z>n",
                    -- Cycle to the previous completion.
                    prev = "<C-z>p",
                },
            },
        })
        -- Create toggle function for Codeium
        _G.toggle_codeium = function()
            vim.g.codeium_enabled = not vim.g.codeium_enabled
            print("Codeium " .. (vim.g.codeium_enabled and "enabled" or "disabled"))
        end

        -- Keymaps
        vim.api.nvim_set_keymap('n', '<leader>cc', ':Codeium Chat<CR>', { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', '<leader>ct', ':lua toggle_codeium()<CR>', { noremap = true, silent = true })

        -- Enable Codeium initially
        vim.g.codeium_enabled = true
    end
}
