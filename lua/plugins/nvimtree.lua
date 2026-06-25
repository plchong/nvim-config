return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("nvim-tree").setup({
      view = { width = 35 },
      filters = { dotfiles = false, git_ignored = false },
    })
  end,
}
