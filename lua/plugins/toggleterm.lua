return {
  "akinsho/toggleterm.nvim",
  config = function()
    require("toggleterm").setup({
      size = 80,
      open_mapping = "<leader>tt",
      direction = "vertical",
      highlights = {
        Normal = { guifg = "#00ff41", guibg = "#000000" },
      },
    })
  end,
}
