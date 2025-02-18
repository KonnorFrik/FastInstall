return {
    "mfussenegger/nvim-lint",
    event = { "BufReadPre", "BufNewFile" },

    config = function()
        local lint = require("lint")

        lint.linters_by_ft = {
            ["c"] = {
                "cppcheck",
            },
            ["h"] = {
                "cppcheck",
            },

            ["cpp"] = {
                "cpplint",
                "cppcheck",
            },
            ["hpp"] = {
                "cpplint",
                "cppcheck",
            },
            ["cc"] = {
                "cpplint",
                "cppcheck",
            },

            -- ["go"] = {
            --     -- "staticcheck", -- work, not show nothing
            -- },
        }

        -- auto-run linters
        -- local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })
        -- vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
        --     group = lint_augroup,
        --     callback = function()
        --         lint.try_lint()
        --     end,
        -- })

        vim.keymap.set("n", "<leader>ll", function()
            local filetype = vim.bo.filetype
            local linters = lint.linters_by_ft[filetype]
            if linters then
                lint.try_lint(linters)
            else 
                print("No linters for filetype: " .. filetype)
            end
        end, { desc = "Run linter for current file" })
    end,
}
