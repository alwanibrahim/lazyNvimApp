return {
  "akinsho/toggleterm.nvim",
  keys = {
    {
      "<leader>dd",
      function()
        local Terminal = require("toggleterm.terminal").Terminal
        if not _LAZYDOCKER then
          _LAZYDOCKER = Terminal:new({
            cmd = "lazydocker",
            direction = "float",
            hidden = true,
            float_opts = {
              border = "rounded",
            },
          })
        end
        _LAZYDOCKER:toggle()
      end,
      desc = "LazyDocker",
    },
  },
}
