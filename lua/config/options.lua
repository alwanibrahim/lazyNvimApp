-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- taruh swap di satu tempat
vim.opt.swapfile = true
vim.opt.directory = vim.fn.stdpath("state") .. "/swap//"

if vim.g.neovide then
  vim.g.neovide_cursor_animation_length = 0
  vim.g.neovide_cursor_trail_size = 0
  vim.g.neovide_cursor_antialiasing = false

  -- (opsional) matikan animasi scroll juga
  vim.g.neovide_scroll_animation_length = 0
  local font_size = 9
  local font_name = "JetBrainsMono Nerd Font"

  local function set_font()
    vim.o.guifont = string.format("%s:h%d", font_name, font_size)
  end

  set_font()

  vim.keymap.set("n", "<C-=>", function()
    font_size = font_size + 1
    set_font()
  end)

  vim.keymap.set("n", "<C-->", function()
    font_size = math.max(8, font_size - 1)
    set_font()
  end)

  vim.keymap.set("n", "<C-0>", function()
    font_size = 14
    set_font()
  end)
end
