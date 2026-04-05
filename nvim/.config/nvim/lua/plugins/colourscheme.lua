return {
    {
        "nvim-tree/nvim-web-devicons",
        config = function()
            require("nvim-web-devicons").setup({
                default = true,
            })
        end,
    },
    {
        -- "rose-pine/neovim",
        -- name = "rose-pine",
        "catppuccin/nvim",
        name = "catppuccin",
        config = function()
            require("catppuccin").setup({
                disable_background = true,           -- Disables the background color
                disable_float_background = true,     -- Disables the float windows' background
                transparent_background = true,
            })
            --- vim.cmd("colorscheme rose-pine")
            vim.cmd("colorscheme catppuccin")
        end
    },
}
