return {
  "amitds1997/remote-nvim.nvim",
  version = "*", -- pakai release stabil
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-telescope/telescope.nvim",
  },
  config = true,
  keys = {
    {
      "<leader>rs",
      "<cmd>RemoteStart<CR>",
      desc = "Remote SSH: Start",
    },
    {
      "<leader>rl",
      "<cmd>RemoteLog<CR>",
      desc = "Remote SSH: Logs",
    },
  },
}
