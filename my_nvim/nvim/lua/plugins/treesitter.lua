return {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",
    dependencies = {
        "windwp/nvim-ts-autotag",
    },

    config = function()
        local ts = require("nvim-treesitter.configs")

        ts.setup({
            highlight = { enable = true },
            indent = { enable = false },
            autotag = { enable = true },
            ensure_installed = {
                "c",
                "cpp",
                "lua",
                "go",

                "make",
                "bash",
            },
        })
    end,
}
