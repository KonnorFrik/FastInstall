return {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
        "hrsh7th/cmp-buffer",  -- source for text in buffer
        "hrsh7th/cmp-path",    -- source for file system paths
        "saadparwaiz1/cmp_luasnip",     -- for autocompletion
        "rafamadriz/friendly-snippets", -- useful snippets
        { -- snippets engine
          "L3MON4D3/LuaSnip",
          -- follow latest release.
          version = "v2.*", 
          -- install jsregexp (optional!).
          -- build = "make install_jsregexp",
        },
    },
    config = function()
        local cmp = require("cmp")
        local luasnip = require("luasnip")
        -- loads vscode style snippets from installed plugins (e.g. friendly-snippets)
        require("luasnip.loaders.from_vscode").lazy_load()

        cmp.setup({
            completion = {
                competeopt = "menu,menuone,preview,noselect",
            },

            snippet = {
                expand = function(args)
                    vim.snippet.expand(args.body) -- native nvim snippets
                    -- luasnip.lsp_expand(args.body)
                end,
            },

            mapping = cmp.mapping.preset.insert({
                ["<C-Space>"] = cmp.mapping.complete(), -- show completion suggestions
                ["<C-k>"] = cmp.mapping.select_prev_item(), -- move to prev
                ["<C-j>"] = cmp.mapping.select_next_item(), -- move to next
                ["<CR>"] = cmp.mapping.confirm({ select = false }), -- choose explicity current
            }),

            -- sources for autocompletion
            sources = cmp.config.sources({
                { name = "nvim_lsp" },
                { name = "luasnip" }, -- snippets
                { name = "buffer" }, -- text within current buffer
                { name = "path" }, -- file system paths
            }),
        })
    end,
}
