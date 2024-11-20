-- General
vim.opt.clipboard = 'unnamedplus' -- use system clipboard
vim.opt.mouse = 'a'  -- mouse settings 'a' - enable, '' - disable
vim.opt.mousehide = true

-- Tab's
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.autoindent = true

-- UI config
vim.opt.number = true
vim.opt.relativenumber = true
-- vim.opt.hlsearch = true
vim.opt.syntax = 'on'
-- vim.opt.showmode = false -- turn on/off showing current mode ('--INSERT--', etc)

-- Searching
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Configure diagnostic
vim.diagnostic.config({
    virtual_text = true, -- show error message to right after text
    signs = false,        -- show signs at left before line number
    underline = true,    -- show underline at word where error found
    update_in_insert = false,
    float = {
        border = "rounded",
        source = true,
    },
    severity_sort = true,
})

-- Get list of linters by filetype for current open file
vim.api.nvim_create_user_command("LintInfo", function()
    local filetype = vim.bo.filetype
    local linters = require("lint").linters_by_ft[filetype]

    if linters then
        print("Linters for " .. filetype .. ": " .. table.concat(linters, ", "))
    else
        print("No linters configured for filetype: " .. filetype)
    end
end, {})
