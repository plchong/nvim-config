-- Window navigation — arrow keys
vim.keymap.set("n", "<leader><Left>", "<C-w>h", { desc = "Window left" })
vim.keymap.set("n", "<leader><Down>", "<C-w>j", { desc = "Window down" })
vim.keymap.set("n", "<leader><Up>", "<C-w>k", { desc = "Window up" })
vim.keymap.set("n", "<leader><Right>", "<C-w>l", { desc = "Window right" })
vim.keymap.set("n", "<leader><leader>", "<C-w>w", { desc = "Cycle to next window" })

vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { desc = "Exit terminal mode" })

vim.keymap.set("t", "<leader><Left>", [[<C-\><C-n><C-w>h]], { desc = "Window left (term)" })
vim.keymap.set("t", "<leader><Down>", [[<C-\><C-n><C-w>j]], { desc = "Window down (term)" })
vim.keymap.set("t", "<leader><Up>", [[<C-\><C-n><C-w>k]], { desc = "Window up (term)" })
vim.keymap.set("t", "<leader><Right>", [[<C-\><C-n><C-w>l]], { desc = "Window right (term)" })
vim.keymap.set("t", "<leader><leader>", [[<C-\><C-n><C-w>w]], { desc = "Cycle to next window (term)" })

vim.keymap.set("t", "<leader>e", [[<C-\><C-n><cmd>NvimTreeToggle<cr>]])
vim.keymap.set("t", "<leader>tp", [[<C-\><C-n><cmd>NvimTreeFocus<cr>]])

-- Common editor keymaps
vim.keymap.set("n", "<leader>w", "<cmd>w<CR>", { desc = "Save" })
vim.keymap.set("n", "<leader>q", "<cmd>q<CR>", { desc = "Quit" })
vim.keymap.set("n", "<leader>Q", "<cmd>wq<CR>", { desc = "Save and quit" })
vim.keymap.set("n", "<leader>x", "<cmd>bdelete<CR>", { desc = "Close buffer" })
vim.keymap.set("n", "<leader>h", "<cmd>nohl<CR>", { desc = "Clear search highlight" })
vim.keymap.set("n", "<leader>vs", "<cmd>vsplit<CR>", { desc = "Vertical split" })
vim.keymap.set("n", "<leader>ss", "<cmd>split<CR>", { desc = "Horizontal split" })
vim.keymap.set("i", "<C-s>", "<cmd>w<CR>", { desc = "Save in insert mode" })

vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<cr>")
vim.keymap.set("n", "<leader>tp", "<cmd>NvimTreeFocus<cr>")

vim.keymap.set("n", "<leader>th", "<cmd>execute v:count . 'ToggleTerm'<cr>")
vim.keymap.set("n", "<leader>tv", "<cmd>ToggleTerm size=50 direction=vertical<cr>")

-- Shift+arrows for visual selection
vim.keymap.set("n", "<S-Right>", "v<Right>", { desc = "Visual select right" })
vim.keymap.set("n", "<S-Left>", "v<Left>", { desc = "Visual select left" })
vim.keymap.set("n", "<S-Up>", "vk", { desc = "Visual select up" })
vim.keymap.set("n", "<S-Down>", "vj", { desc = "Visual select down" })
vim.keymap.set("v", "<S-Right>", "<Right>", { desc = "Extend selection right" })
vim.keymap.set("v", "<S-Left>", "<Left>", { desc = "Extend selection left" })
vim.keymap.set("v", "<S-Up>", "k", { desc = "Extend selection up" })
vim.keymap.set("v", "<S-Down>", "j", { desc = "Extend selection down" })

-- Clipboard: Cmd+C to copy (iTerm2 sends F13 via Neovim profile)
vim.keymap.set("v", "<F13>", '"+y', { desc = "Copy (Cmd+C)" })
vim.keymap.set("n", "<F13>", function()
  vim.cmd("normal! V\"+y")
end, { desc = "Copy (Cmd+C)" })

-- Clipboard: Cmd+V to paste (iTerm2 sends F14 via Neovim profile)
vim.keymap.set("i", "<F14>", '<C-r>+', { desc = "Paste (Cmd+V)" })
vim.keymap.set("n", "<F14>", '"+p', { desc = "Paste (Cmd+V)" })
vim.keymap.set("v", "<F14>", '"+p', { desc = "Paste (Cmd+V)" })

-- Yank highlight
vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank({ higroup = "Visual", timeout = 200 })
  end,
})

-- Diff vs saved file
vim.keymap.set("n", "<leader>d", function()
  vim.cmd("DiffSaved")
end, { desc = "Diff vs saved file" })

-- Comment toggle
vim.keymap.set("n", "<leader>/", "gcc", { desc = "Toggle comment" })

-- Buffer navigation
vim.keymap.set("n", "]b", "<cmd>bnext<CR>", { desc = "Next buffer" })
vim.keymap.set("n", "[b", "<cmd>bprevious<CR>", { desc = "Previous buffer" })
vim.keymap.set("n", "<leader>bd", "<cmd>bdelete<CR>", { desc = "Delete buffer" })
vim.keymap.set("n", "<leader>bl", "<cmd>buffers<CR>", { desc = "List buffers" })
