return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.config").setup({
      ensure_installed = {},
      auto_install = true,
      highlight = { enable = true },
    })
  end,
}
