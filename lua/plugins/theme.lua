return {
  "pablobfonseca/cyberpunk-theme",
  priority = 1000,
  config = function()
    require("cyberpunk").setup({
      style = "storm",
      transparent = false,
      terminal_colors = true,
      styles = {
        comments = { italic = true },
        keywords = { bold = true },
        functions = { bold = true },
        sidebars = "dark",
        floats = "dark",
      },
      plugins = {
        treesitter = true,
        lsp = true,
        telescope = true,
        nvim_tree = true,
        bufferline = true,
        lualine = false,
        cmp = true,
        gitsigns = true,
        toggleterm = true,
        indent_blankline = true,
      },
      on_colors = function(colors)
        colors.bg = "#000000"
        colors.terminal.black = "#000000"
        colors.terminal.white = "#00ff41"
        colors.terminal.bright_black = "#0a0e14"
        colors.terminal.bright_white = "#00ff41"
        colors.terminal.red = "#ff007f"
        colors.terminal.bright_red = "#ff4499"
        colors.terminal.green = "#66ff66"
        colors.terminal.bright_green = "#99ff99"
        colors.terminal.yellow = "#ffff00"
        colors.terminal.bright_yellow = "#ffff66"
        colors.terminal.blue = "#0080ff"
        colors.terminal.bright_blue = "#4499ff"
        colors.terminal.magenta = "#bf00ff"
        colors.terminal.bright_magenta = "#dd66ff"
        colors.terminal.cyan = "#00ffff"
        colors.terminal.bright_cyan = "#66ffff"
      end,
    })

    vim.cmd.colorscheme("cyberpunk")

    vim.cmd("highlight Normal guifg=#e0e6f0 guibg=#000000")
    vim.cmd("highlight Terminal guibg=#000000 guifg=#00ff41")
    vim.cmd("highlight Visual guibg=#5a1a7a guifg=#ddaaff")
  end,
}
