return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    keys = {
        { "<leader>nt", ":Neotree toggle<CR>", desc = "Toggle NeoTree File Explorer" },
    },
    lazy = true,
    cmd = { "Neotree" },
}
