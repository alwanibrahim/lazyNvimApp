-- ONLY CONFIG

vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.opt.clipboard = "unnamedplus"

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

local function toggle_hidden_files()
  vim.fn.VSCodeNotify("workbench.action.openSettingsJson")

  -- delay dikit biar settings kebuka
  vim.defer_fn(function()
    vim.cmd([[
      /"files.exclude"/
      normal! za
    ]])
  end, 100)
end
-- Leader timing (WAJIB)
vim.o.timeout = true
vim.o.timeoutlen = 500
map("n", "<leader>e", function()
  vim.fn.VSCodeCall("workbench.action.toggleSidebarVisibility")
end, opts)

-- === EXPLORER SUB-MAPS ===

-- Fokus explorer (biar bisa a, r, dll)
map("n", "<leader>ee", function()
  vim.fn.VSCodeCall("workbench.view.explorer")
end, opts)

-- New file
map("n", "<leader>ea", function()
  vim.fn.VSCodeCall("explorer.newFile")
end, opts)

-- New folder
map("n", "<leader>eA", function()
  vim.fn.VSCodeCall("explorer.newFolder")
end, opts)

-- Rename
map("n", "<leader>er", function()
  vim.fn.VSCodeCall("renameFile")
end, opts)

-- Delete
map("n", "<leader>ed", function()
  vim.fn.VSCodeCall("deleteFile")
end, opts)

map("n", "<leader>f", function()
  vim.fn.VSCodeNotify("workbench.action.quickOpen")
end, opts)

map("n", "<leader>t", function()
  vim.fn.VSCodeNotify("workbench.action.terminal.toggleTerminal")
end, opts)

map("n", "<leader>p", function()
  vim.fn.VSCodeNotify("workbench.action.showCommands")
end, opts)

map("n", "<leader>w", "<cmd>w<CR>", opts)
map("i", "jj", "<Esc>", opts)
map("i", "jk", "<Esc>", opts)
map("n", "sh", function()
  vim.fn.VSCodeCall("workbench.action.splitEditorDown")
end, opts)

map("n", "sv", function()
  vim.fn.VSCodeCall("workbench.action.splitEditorRight")
end, opts)
map("n", "<leader>q", function()
  vim.fn.VSCodeCall("workbench.action.closeActiveEditor")
end, opts)

-- Close ALL buffers (editors) in this window
map("n", "<leader>qa", function()
  vim.fn.VSCodeCall("workbench.action.closeAllEditors")
end, opts)

map("n", "<leader>gg", function()
  vim.fn.VSCodeCall("workbench.view.scm")
end, opts)

map("n", "<leader>/", function()
  vim.fn.VSCodeCall("editor.action.commentLine")
end, opts)

map("v", "<leader>/", function()
  vim.fn.VSCodeCall("editor.action.commentLine")
end, opts)

map("n", "<leader>gx", function()
  vim.fn.VSCodeCall("workbench.view.extensions")
end, opts)
map("n", "<leader>w", function()
  vim.fn.VSCodeCall("workbench.action.files.save")
  vim.fn.VSCodeCall("editor.action.formatDocument")
end, opts)

map("n", "<leader>k", function()
  vim.cmd("view ~/.config/nvim/CHEATSHEET.md")
end, opts)
