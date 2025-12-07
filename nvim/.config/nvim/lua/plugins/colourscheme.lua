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
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            require("rose-pine").setup({
                disable_background = true,           -- Disables the background color
                disable_float_background = true,     -- Disables the float windows' background
            })
            vim.cmd("colorscheme rose-pine")
        end
    },
}
