# nvim-config

A modular Neovim configuration built with [lazy.nvim](https://github.com/folke/lazy.nvim) for full-stack development. Supports TypeScript, Rust, Go, and Lua with LSP, Telescope, nvim-cmp, conform formatting, and a Matrix-themed UI.

## Requirements

- Neovim 0.10+
- [ripgrep](https://github.com/BurntSushi/ripgrep) (`brew install ripgrep`)
- A [Nerd Font](https://www.nerdfonts.com/) for icons

## Quick Start

```bash
git clone git@github.com:plchong/nvim-config.git ~/.config/nvim
nvim
```

lazy.nvim auto-installs all plugins on first launch.

## Key Features

| Feature | Plugin | Keymaps |
|---------|--------|---------|
| File explorer | nvim-tree | `<leader>e` toggle, `<leader>tp` focus |
| Fuzzy find | Telescope | `<leader>ff` files, `<leader>fg` grep, `<leader>fb` buffers |
| Code completion | nvim-cmp | `<C-Space>` complete, `<CR>` confirm |
| LSP | nvim-lspconfig | `gd` definition, `K` hover, `grr` references, `gra` code action, `<leader>rn` rename |
| Formatting | conform.nvim | `<leader>F` format, auto-format on save |
| Git | vim-fugitive + gitsigns | `<leader>gs` status, `<leader>gc` commit, `<leader>gh` file history |
| UI | mini.nvim | mini.ai (textobjects), mini.surround, mini.statusline |
| Terminal | toggleterm | `<leader>th` horizontal, `<leader>tv` vertical |
| Buffer nav | Built-in | `]b` next, `[b` previous |
| Which-key | which-key.nvim | `<leader>?` show all keymaps |

## LSP Servers

- `ts_ls` — TypeScript / JavaScript
- `rust_analyzer` — Rust
- `gopls` — Go
- `lua_ls` — Lua

## Formatters

- stylua (Lua)
- prettierd / prettier (TypeScript, JavaScript, CSS, JSON, Markdown)
- ruff_format (Python)
- sqlfluff (SQL)

## Structure

```
~/.config/nvim/
├── init.lua              # Options, diagnostics, commands
├── lua/
│   ├── config/
│   │   └── lazy.lua      # lazy.nvim bootstrap
│   └── plugins/          # One file per plugin
└── plugin/
    └── remap.lua         # All custom keymaps
```

## macOS Integration

- Cmd+C maps to `F13` → `"+y` (copy to system clipboard)
- Cmd+V maps to `F14` → `"+p` (paste from system clipboard)
- Works with iTerm2 auto-profile-switching

## License

MIT
