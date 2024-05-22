vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 4       -- spaces for tab
opt.shiftwidth = 4    -- spaces for indent
opt.expandtab = true  -- expand tab to spaces
opt.autoindent = true -- copy indent from cur line when start new

-- use newline for long string or hide them in edges
opt.wrap = true

-- seach settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true  -- case-sensitive search if include mixed case in search

opt.cursorline = false

-- for iterm2 or any other true color terminal
--opt.termguicolor = true
--opt.background = "dark"
--opt.signcolumn = "yer"

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split window
opt.splitright = true -- split vert to right as default
opt.splitbelow = true -- split hor to bottom as default
