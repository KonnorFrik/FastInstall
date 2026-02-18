return {
    "neovim/nvim-lspconfig",

    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        -- don't know for what next
        -- { "antosha417/nvim-lsp-file-operations", config = true },
        { "folke/lazydev.nvim", opts = {} },
    },

    config = function()
        local cmp_nvim_lsp = require("cmp_nvim_lsp")
        local mason_lspconfig = require("mason-lspconfig")

        vim.api.nvim_create_autocmd("LspAttach", {
            group = vim.api.nvim_create_augroup("UserLspConfig", {}),
            callback = function(ev)
                local opts = { buffer = ev.buf, silent = true }

                -- keymap
                opts.desc = "Go to declaration"
                vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)

                opts.desc = "Go to definitions"
                vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)

                opts.desc = "Go to implementation"
                vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)

                -- opts.desc = "Show LSP type definitions"
                -- keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", opts)

                opts.desc = "Show documentation"
                vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)

                opts.desc = "Restart LSP"
                vim.keymap.set("n", "<leader>rs", ":LspRestart<CR>", opts) -- mapping to restart lsp if necessary
            end,
        })

        local capabilities = cmp_nvim_lsp.default_capabilities()
        local signs = { Error = "E", Warn = "W", Hint = "H", Info = "I" }

        for type, icon in pairs(signs) do
            local hl = "DiagnosticSign" .. type
            vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = ""})
        end

        vim.lsp.config("gopls", {
            settings = {
                gopls = {
                    semanticTokens = true,
                },
            },
        })

        mason_lspconfig.setup({
            handlers = {
                function(server_name)
                    vim.lsp.config(server_name).setup({}) -- Default setup for all servers
                end,
            },
        })
    end,
}
