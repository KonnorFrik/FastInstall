return {
    "mfussenegger/nvim-lint",
    event = { "BufReadPre", "BufNewFile" },

    config = function()
        local lint = require("lint")

        lint.linters_by_ft = {
            -- cpplint = { "cpplint" },
            -- cppcheck = { "cppcheck" },
            cpp = {
                "cpplint",
                "cppcheck",
            },

            cc = {
                "cpplint",
                "cppcheck",
            },
            c = {
                -- "cpplint",
                "cppcheck",
            },
        }

        local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

        vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
            group = lint_augroup,
            callback = function()
                lint.try_lint()
            end,
        })

        vim.keymap.set("n", "<leader>ll", function()
            lint.try_lint()
        end, { desc = "Run linter for current file" })
    end,
}
