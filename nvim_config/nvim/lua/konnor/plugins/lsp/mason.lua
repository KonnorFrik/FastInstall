return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function()
    -- import mason
    local mason = require("mason")

    -- import mason-lspconfig
    local mason_lspconfig = require("mason-lspconfig")

    local mason_tool_installer = require("mason-tool-installer")
    -- enable mason and configure icons
    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    mason_lspconfig.setup({
      -- list of servers for mason to install
      ensure_installed = {
        "awk_ls",
        --"asm_lsp",
        "bashls",
        --"clangd",
        --"neocmake",
        "dockerls",
        "biome",
        "lua_ls",
        "autotools_ls",
        "markdown_oxide",
        "pylyzer",
        "sqlls",
        "vimls",
        "yamlls",
      },
    })

    mason_tool_installer.setup({
      liquid = { "prettier" },
      ensure_installed = {
        "prettier", -- prettier formatter
        "stylua", -- lua formatter
        "isort", -- python formatter
        "black", -- python formatter
        "pylint",
        "mypy",
        --"clangtidy",
        --"cppcheck",
        --"cpplint",
      },
    })
  end,
}
