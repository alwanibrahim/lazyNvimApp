-- -- Keymaps are automatically loaded on the VeryLazy event
-- -- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- -- Add any additional keymaps here
-- --
local map = vim.keymap.set

map("i", "jj", "<Esc>", { desc = "Exit insert (jj)" })
map("i", "jk", "<Esc>", { desc = "Exit insert (jk)" })

-- Terminal mode (WAJIB beda)
map("t", "jj", "<C-\\><C-n>", { desc = "Exit terminal (jj)" })
map("t", "jk", "<C-\\><C-n>", { desc = "Exit terminal (jk)" })
map("n", "<leader>gg", "<cmd>LazyGit<CR>", { desc = "LazyGit" })
-- map("n", "<leader>w", "<cmd>w<CR>", { desc = "Save file" })
map("n", "<leader>th", function()
  require("toggleterm").toggle(1, nil, nil, "horizontal")
end, { desc = "Terminal horizontal" })
map("n", "<leader>tv", function()
  require("toggleterm").toggle(2, nil, nil, "vertical")
end, { desc = "Terminal vertical" })
map("n", "<leader>tf", function()
  require("toggleterm").toggle(3, nil, nil, "float")
end, { desc = "Terminal float" })
map("n", "sh", "<cmd>split | wincmd j<CR>", { desc = "Horizontal split" })
map("n", "sv", "<cmd>vsplit | wincmd l<CR>", { desc = "Vertical split" })
map("n", "<leader>gr", function()
  vim.cmd("!git restore " .. vim.fn.expand("%"))
end, { desc = "Git restore current file" })

-- restore all files
map("n", "<leader>gR", function()
  vim.cmd("!git restore .")
end, { desc = "Git restore all" })
local cheats = require("util.cheats_picker")

vim.keymap.set("n", "<leader>cs", cheats.search(), {
  desc = "Search Cheatsheets",
})

vim.keymap.set("n", "<leader>cf", cheats.files(), {
  desc = "Find Cheatsheet File",
})
vim.keymap.set("n", "<leader>E", function()
  require("neo-tree.command").execute({
    toggle = true,
  })
end, { desc = "NeoTree toggle" })
