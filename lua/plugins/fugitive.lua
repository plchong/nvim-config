return {
  "tpope/vim-fugitive",
  config = function()
    vim.keymap.set("n", "<leader>gs", function()
      vim.cmd("topleft Git")
    end, { desc = "Git Status" })
    vim.keymap.set("n", "<leader>gc", function()
      vim.cmd("topleft Git commit")
    end, { desc = "Git Commit" })
    vim.keymap.set("n", "<leader>gh", function()
      vim.cmd("vert abo Git log -- %")
      vim.cmd("vertical resize 60")
    end, { desc = "Git File History" })
  end,
}
