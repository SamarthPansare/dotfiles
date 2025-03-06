return {
    {
        "nvim-tree/nvim-web-devicons",
    },
    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            require("rose-pine").setup({
                disable_background = false,           -- Disables the background color
                disable_float_background = false,     -- Disables the float windows' background
            })
            vim.cmd("colorscheme rose-pine")
        end
    },
}
