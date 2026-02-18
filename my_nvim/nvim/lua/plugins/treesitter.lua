return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufRead", "BufReadPre", "BufNewFile" },
  lazy = false,
  branch = "main",
  build = ":TSUpdate",
  opts = {
    auto_install = true,
    highlight = { enable = true },
    indent = { enable = false },
    autotag = { enable = true },
    ensure_installed = {
      "c",
      "lua",
      "go",
      "make",
      "bash",
    },
  },

  config = function(_, opts)
    require("nvim-treesitter.config").setup(opts)
  end,
}
