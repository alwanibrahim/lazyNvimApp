local M = {}

local actions = require("telescope.actions")

M.commands = {
  grep = "live_grep",
  files = "find_files",
}

function M.open(command, opts)
  opts = opts or {}
  opts = vim.deepcopy(opts)

  command = M.commands[command] or command
  opts.cwd = opts.cwd or (vim.fn.stdpath("config") .. "/cheats")

  -- ❗ jangan paksa normal mode untuk live_grep
  if command ~= "live_grep" then
    opts.initial_mode = "normal"
  end

  -- 🔥 INI KUNCI: samakan behavior dengan LazyVim/snacks
  opts.attach_mappings = function(_, map)
    map("n", "q", actions.close) -- normal mode: q = close
    map("i", "<Esc>", actions.close) -- insert mode: Esc = close
    map("i", "q", actions.close) -- optional tapi enak
    return true
  end

  require("telescope.builtin")[command](opts)
end

function M.wrap(command, opts)
  opts = opts or {}
  return function()
    M.open(command, opts)
  end
end

-- public helpers (ini yang dipakai di keymaps)
function M.search()
  return M.wrap("grep")
end

function M.files()
  return M.wrap("files")
end

return M
