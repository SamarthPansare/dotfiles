return  {
    "nvim-treesitter/nvim-treesitter",
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = { "lua", "python", "javascript", "typescript" },
            highlight = {
                enable = true,
            },
        })
    end
}

