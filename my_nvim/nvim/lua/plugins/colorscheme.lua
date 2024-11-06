return {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    -- opts = {},
    config = function()
        local bg = "#011628" -- main backgraund
        local bg_dark = "#021d31" -- example - mini.files window bg
        local bg_highlight = "#143652" -- hl vert. or hor. lines
        local bg_search = "#0A64AC"
        local bg_visual = "#275378" -- ?
        local fg = "#CBE0F0" -- ex. func, vars naming
        local fg_dark = "#B4D0E9" -- ex. file names at bottom
        local fg_gutter = "#627E97" -- ex. line numbers
        local border = "#547998" -- ex. vert. line on split

        require("tokyonight").setup({
            style = "night",
            styles = {
                comments = { italic = false },
                keywords = { italic = false },
            },

            on_colors = function(colors)
                colors.bg = bg
                colors.bg_dark = bg_dark
                colors.bg_float = "#032b49"
                colors.bg_highlight = "#000099"
                colors.bg_popup = bg_dark
                colors.bg_search = bg_search
                colors.bg_sidebar = bg_dark
                colors.bg_statusline = bg_dark
                colors.bg_visual = bg_visual
                colors.border = border
                colors.fg = fg
                colors.fg_dark = fg_dark
                colors.fg_float = fg
                colors.fg_gutter = fg_gutter
                colors.fg_sidebar = fg_dark
                colors.comment = "#626d9d" -- little darker - "#626d9d"
            end,
        })

        -- load the colorshceme
        vim.cmd([[colorscheme tokyonight]])
    end,
}
