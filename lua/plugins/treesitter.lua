return {
  "nvim-treesitter/nvim-treesitter",
  event = {"BufReadPre", "BufNewFile"},
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.install").prefer_git = false
    require("nvim-treesitter.install").compilers = { "clang", "gcc" }
    require("nvim-treesitter.configs").setup({
      highlight = { enable = true},
      indent = {enable = true},
      ensure_installed = {
        "markdown",
        "json",
        "html",
        "css",
        "javascript",
        "typescript",
        "yaml",
        "lua",
        "gitignore",
        "python",
        "c",
        "vim"
      },

      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
    })
  end,
}
